//utils
import {
    connect
} from 'react-redux';
import _ from 'lodash';

//actions
import {
    createNewTeamMembership
} from '../../actions/team_actions';
import {
    createNewProjectMembership
} from '../../actions/project_actions';
import {
    requestAllUsers
} from '../../actions/user_actions';

//components
import ResultsIndex from './results_index';

//map slices of state as arrays for limited rendering using Array.slice();
const mapStateToProps = (state, ownProps) => {
    let defaults = {
        currentUser: state.session.currentUser,
        userSearchResults: Object.values(state.entities.searches.users)
    };
    switch (ownProps.source) {
        case "global-header":
            return _.merge({}, defaults, {
                projectSearchResults: Object.values(state.entities.searches.projects),
                teamSearchResults: Object.values(state.entities.searches.teams),
                taskSearchResults: Object.values(state.entities.searches.tasks),
                users: state.entities.users
            });
        case "sidebar-group-members-index":
            return _.merge({}, defaults, {
                group: ownProps.group,
                groupType: ownProps.groupType
            });
        case "project-members-index":
            return _.merge({}, defaults, {
                group: ownProps.group,
                groupType: ownProps.groupType
            });
        default:
            return defaults;
    }
};

const mapDispatchToProps = (dispatch, ownProps) => {
    switch (ownProps.source) {
        case "sidebar-group-members-index":
            if (ownProps.groupType === "team") {
                return {
                    createNewMembership: (teamMembershipRequest) =>
                        dispatch(createNewTeamMembership(teamMembershipRequest))
                };
            } else if (ownProps.groupType === "project") {
                return {
                    createNewMembership: (projectMembershipRequest) =>
                        dispatch(createNewProjectMembership(projectMembershipRequest))
                };
            } else {
                return {};
            }
        case "project-detail":
            if (ownProps.groupType === "team") {
                return {
                    createNewMembership: (teamMembershipRequest) =>
                        dispatch(createNewTeamMembership(teamMembershipRequest))
                };
            } else if (ownProps.groupType === "project") {
                return {
                    createNewMembership: (projectMembershipRequest) =>
                        dispatch(createNewProjectMembership(projectMembershipRequest))
                };
            } else {
                return {};
            }
        case "global-header":
            return {
                requestAllUsers: () => dispatch(requestAllUsers())
            };
        default:
            return {};
    }
};

export default connect(mapStateToProps, mapDispatchToProps)(ResultsIndex);