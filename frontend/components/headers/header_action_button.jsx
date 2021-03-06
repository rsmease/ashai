import React from 'react';
import * as MaterialDesign from 'react-icons/lib/md';
import onClickOutside from 'react-onclickoutside';
import { Router, Link, WithRouter } from 'react-router-dom';

import HeaderActionIndexContainer from './header_action_index_container';

class HeaderActionButton extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            dropdownOpen: false,
        };
        this.toggleDropdown = this.toggleDropdown.bind(this);
    }

    toggleDropdown() {
        this.setState({ dropdownOpen: !this.state.dropdownOpen });
    }

    toggleDropdownClass() {
        return this.state.dropdownOpen ? "action-index-container-visible" : "action-index-container-hidden";
    }

    handleClickOutside() {
        if (this.state.dropdownOpen) {
            this.toggleDropdown();
        }
    }

    toggleAffordanceIconPosition() {
        return this.state.dropdownOpen ? "-active" : "";
    }

    showAffordanceIcon() {
        switch (this.props.source) {
            case "global-header-left":
                return <MaterialDesign.MdAdd
                    className="global-header-left-action-button"
                    onClick={this.toggleDropdown} />;
            case "global-header-right":
                return (
                    <div className="global-header-right-action-button"
                        onClick={this.toggleDropdown}>
                        <a className="header-link"> {this.props.currentUser.name} </a>
                        <img
                            src={this.props.currentUser.profile_image_url}
                            className="global-header-profile-image"></img>
                    </div>
                );
            case "local-header":
                return <MaterialDesign.MdChevronRight
                    className={`local-header-action-button${this.toggleAffordanceIconPosition()}`}
                    onClick={this.toggleDropdown} />;
            default:
                break;
        }
    }

    render() {
        return (<div className="header-action-button-container">
            {this.showAffordanceIcon()}
            <div className={this.toggleDropdownClass()}>
                <HeaderActionIndexContainer
                    targetGroup={this.props.targetGroup}
                    entityType={this.props.entityType}
                    currentUserIsOwner={this.props.currentUserIsOwner}
                    currentUser={this.props.currentUser}
                    toggleDropdown={this.toggleDropdown}
                    source={this.props.source} />
            </div>
        </div>);
    }
}

export default onClickOutside(HeaderActionButton);