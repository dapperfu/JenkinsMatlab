%% Start Script.
fprintf('########## Started ##########\n');
try
    % Jenkins Set Environment Variables
    % https://wiki.jenkins-ci.org/display/JENKINS/Building+a+software+project#Buildingasoftwareproject-below
    envs = {'BUILD_NUMBER', 'BUILD_ID', 'BUILD_URL', 'NODE_NAME', 'JOB_NAME', 'BUILD_TAG', 'JENKINS_URL', 'EXECUTOR_NUMBER', 'WORKSPACE'};
    for env = envs
        env = env{1};
        fprintf('%s: %s\n', env, getenv(env))
    end
    %% BEGIN YOUR CODE HERE
    slbuild('example_mdl');
    %% END YOUR CODE
catch me
    fprintf('########## Failed ##########\n');
    % Print error
    fprintf('ERROR: %s (%s)\n\n',me.message, me.identifier)
    % Print full stack
    for i = numel(me.stack):-1:1
        fprintf('[Line %02d]: %s\n',me.stack(i).line,me.stack(i).file)
    end
    % Exit with non 0 error.
    exit(1);
end
fprintf('########## Finished ##########\n');
exit(0);
