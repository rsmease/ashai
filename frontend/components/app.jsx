//import
import React from 'react';
import { Route } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

//placeholder components
import PlaceholderComponent from './placeholder';

//session form components
import LoginContainer from './session/login_container';
import SignupContainer from './session/signup_container';
import HorizontalLogoNamed from './headers/horizontal_logo_named';
import { LoginFooter, SignupFooter } from './footers/footer';
import MainAppHeader from './headers/main_header';
import MainSidebar from './sidebar/main_sidebar';
import TaskList from './tasks/task_list';


export default () => (
  <div>

    <Route exact path="/" component={PlaceholderComponent}/>

    <AuthRoute path="/signup" component={HorizontalLogoNamed}/>
    <AuthRoute path="/signup" component={SignupContainer}/>
    <AuthRoute path="/signup" component={SignupFooter}/>

    <AuthRoute path="/login" component={HorizontalLogoNamed}/>
    <AuthRoute path="/login" component={LoginContainer}/>
    <AuthRoute path="/login" component={LoginFooter}/>

    <ProtectedRoute path="/app" component={MainAppHeader}/>
    <ProtectedRoute path="/app" component={MainSidebar}/>
    <ProtectedRoute path="/app" component={TaskList}/>
  </div>
);
