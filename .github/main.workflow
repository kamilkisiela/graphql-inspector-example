workflow "Main" {
  on = ["push", "pull_request"]
  resolves = "GraphQL"
}

action "GraphQL" {
  uses = "kamilkisiela/graphql-inspector@actions"
  secrets = ["GITHUB_TOKEN"]
}
