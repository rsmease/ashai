//utils
import _ from 'lodash';

//actions
import {
    RECEIVE_ALL_USERS,
    RECEIVE_USER
} from '../../actions/user_actions';

import {
    RECEIVE_TASK,
    REMOVE_TASK
} from '../../actions/task_actions';

import {
    addUniqueToArray,
    removeDeleted
} from '../selectors';

export default (state = {}, action) => {
    switch (action.type) {
        case RECEIVE_USER:
            const receivedUser = action.user;
            return _.merge({}, state, {
                [receivedUser.id]: receivedUser
            });
        case RECEIVE_ALL_USERS:
            const users = action.users;
            return _.merge({}, state, users);
        case RECEIVE_TASK:
            let updatedUserId = action.assigneeId;
            if (updatedUserId === undefined) {
                return _.merge({}, state);
            }
            state[updatedUserId].tasks_assigned_to_user =
                addUniqueToArray(
                    action.task,
                    state[updatedUserId].tasks_assigned_to_user,
                    state[updatedUserId]);
            return _.merge({}, state);
        case REMOVE_TASK:
            updatedUserId = action.assigneeId;
            if (updatedUserId === null) {
                return state;
            }
            state[updatedUserId].tasks_assigned_to_user = removeDeleted(action.taskId, state[updatedUserId].tasks_assigned_to_user);
            return _.merge({}, state);
        default:
            return state;
    }
};
// state[udpatedUserId].tasks_assigned_to_user =
//     removeDeleted(action.taskId, state[updatedUserId].tasks_assigned_to_user);