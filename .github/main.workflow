workflow "New workflow" {
  on = "push"
  resolves = ["test"]
}

action "test" {
  uses = "./test"
}
