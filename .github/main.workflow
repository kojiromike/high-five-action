# Workflow defines what we want to call a set of actions.
workflow "on push, high five" {
  # On push defines that whenever a pr event is fired this workflow will run
  on = "push"

  # What is the ending action or actions that we are running.
  resolves = ["high five"]
}

# This is our action
action "high five" {
  # Point to a repo or a docker image
  uses = "kojiromike/high-five-action@master"

  secrets = ["GITHUB_TOKEN"]
}
