import { connect } from 'react-redux';
import { createNewProject } from '../../actions/project_actions';

import Sidebar from './sidebar';

const mapStateToProps = (state, ownProps) => ({
  currentUser: state.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({
  createNewProject: formProject => dispatch(createNewProject(formProject))
});

export default connect(mapStateToProps, mapDispatchToProps)(Sidebar);
