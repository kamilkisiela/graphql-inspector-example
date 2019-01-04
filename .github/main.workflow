workflow "Main" {
  on = "push"
  resolves = "GraphQL Inspector"
}

action "GraphQL Inspector" {
  uses = "kamilkisiela/graphql-inspector@actions"
  secrets = ["GITHUB_TOKEN"]
}
