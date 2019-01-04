workflow "Main" {
  on = "push"
  resolves = "GraphQL Inspector"
}

action "GraphQL Inspector" {
  uses = "kamilkisiela/graphql-inspector@master"
  secrets = ["GITHUB_TOKEN"]
}
