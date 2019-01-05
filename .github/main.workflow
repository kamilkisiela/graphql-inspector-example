workflow "On Push" {
  on = "push"
  resolves = "Check GraphQL"
}

workflow "On Pull Request" {
  on = "pull_request"
  resolves = "Check GraphQL"
}

action "Check GraphQL" {
  uses = "kamilkisiela/graphql-inspector@master"
  secrets = ["GITHUB_TOKEN"]
}
