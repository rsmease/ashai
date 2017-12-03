import React from 'react';
import ResultsIndex from './results_index';
import * as MaterialDesign from 'react-icons/lib/md';

class AddMembersSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchVal: '',
      placeholderVal: 'Search Users',
      isOwner: false
    };
    this.handleChange = this.handleChange.bind(this);
    this.clearState = this.clearState.bind(this);
    this.removePlaceholderVal = this.removePlaceholderVal.bind(this);
  }

  componentWillMount() {
    if (this.props.group.team_owner_id === undefined)
    if (this.props.currentUser.id ==)
  }

  handleChange(e) {
    e.preventDefault();
    const newVal = e.target.value;
    this.setState({ searchVal: newVal}, () => {
      this.props.searchUsers(this.state.searchVal);
    });
  }

  clearState() {
    this.setState({
      searchVal: '',
      firstTime: false,
      placeholderVal: 'Search'
    });
  }

  handleClose() {
    this.clearState();
  }

  removePlaceholderVal() {
    this.setState({ placeholderVal: ''});
  }

  render() {
    return (
      <div className="add-members-form">
        <h2 className="add-members-header-primary">
          {`${this.props.group.name}`}</h2>
        <h2 className="add-members-header-secondary">
          Add Members</h2>
        <div className="sidebar-members-search-container">
          <div className="search-field">
            <MaterialDesign.MdSearch/>
            <input onChange={this.handleChange} type="text"
              placeholder={this.state.placeholderVal}
              value={this.state.searchVal}
              onFocus={this.removePlaceholderVal}>
            </input>
            <ResultsIndex
              parent={this.props.parent}
              userSearchResults={Object.values(this.props.userSearchResults)}
              currentUser={this.props.currentUser}
              searchVal={this.state.searchVal}
              clearState={this.clearState}/>
          </div>
      </div>
      </div>
    );
  }


}

export default AddMembersSearch;