import React from 'react';
import UserOptionsIndexItem from '../headers/user_options_index_item';
import Modal from 'react-modal';
import DeleteModal from './delete_modal';
import { withRouter } from 'react-router-dom';

class OptionsModal extends React.Component  {
  constructor(props) {
    super(props);

    this.state = {
      entity: undefined,
      isOwner: false,
      editModalOpen: false,
      deleteModalOpen: false
    };

    this.toggleEntityAndOwnership = this.toggleEntityAndOwnership.bind(this);

    this.openDeleteModal = this.openDeleteModal.bind(this);
    this.closeDeleteModal = this.closeDeleteModal.bind(this);
    this.handleDelete = this.handleDelete.bind(this);
  }

  openDeleteModal() {
    this.setState({ deleteModalOpen: true });
  }
  closeDeleteModal() {
    this.setState({ deleteModalOpen: false });
    this.props.closeOptionsModal();
    document.title = "Ashai";
  }

  handleDelete(e) {
    if (this.state.entity === "Project") {
      this.props.requestToDeleteProject(this.props.project.id)
      .then(this.returnToHome());
    } else {
      this.props.requestToDeleteTeam(this.props.team.id)
      .then(this.returnToHome());
    }
  }

  returnToHome() {
    this.props.history.push("/app");
  }

  handleClickOff() {
    this.props.closeUserOptions();
  }

  componentWillMount() {
    this.setState({ entity: this.toggleEntityAndOwnership() });
  }

  toggleEntityAndOwnership() {
    if(this.props.team === undefined) {
      if (this.props.currentUser.id === this.props.project.project_owner_id) {
        this.setState({ isOwner: true });
      }
      return "Project";
    } else {
      if (this.props.currentUser.id === this.props.team.team_owner_id) {
        this.setState({ isOwner: true });
      }
      return "Team";
    }
  }

  renderOptions() {
    if (this.state.isOwner === true) {
      return <div>
        <UserOptionsIndexItem
          action={() => undefined}
          actionName={`Manage ${this.state.entity} Settings`}/>
        <UserOptionsIndexItem
          action={() => this.openDeleteModal}
          actionName={`Transfer ${this.state.entity} Ownership`}/>
        <UserOptionsIndexItem
          className="header-options-delete"
          action={this.openDeleteModal}
          actionName={`Delete ${this.state.entity}`}/>
          <Modal
            isOpen={this.state.deleteModalOpen}
            onRequestClose={this.closeDeleteModal}
            overlayClassName={
              {base: "root-modal-container",
                afterOpen: "root-modal-container",
                beforeClose: "root-modal-container"}
              }
            className={
              { base: "override-content-default",
                afterOpen: "override-content-default",
                beforeClose: "override-content-default"}
              }>
            <DeleteModal
              entity={this.state.entity}
              closeDeleteModal={this.closeDeleteModal}
              onDelete={this.handleDelete}/>
          </Modal>
      </div>;
    } else {
        return <UserOptionsIndexItem
          action={() => undefined}
          actionName={`Leave ${this.state.entity}`}/>;
      }
  }


  render() {
    return(<div className="home-header-options-modal">
    <UserOptionsIndexItem
      action={() => undefined}
      actionName="Add Members"/>
    {this.renderOptions()}
    </div>);
  }
}

export default withRouter(OptionsModal);