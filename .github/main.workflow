workflow "New workflow" {
  on = "push"
  resolves = ["test", "echo"]
}

action "test" {
  uses = "./test"
}

action "filter" {
  uses = "./filter"
  args = "master"
}

action "echo" {
  uses = "./echo"
  needs = [ "filter" ]
}
