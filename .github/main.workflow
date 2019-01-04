workflow "Check commit" {
  on = "push"
  resolves = "GraphQL"
}

workflow "Check Pull Request" {
  on = "pull_request"
  resolves = "GraphQL"
}

action "GraphQL" {
  uses = "kamilkisiela/graphql-inspector@actions"
  secrets = ["GITHUB_TOKEN"]
}
