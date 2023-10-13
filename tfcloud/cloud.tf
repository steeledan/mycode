terraform {
  cloud {
    organization = "SAIC-steeledan"

    workspaces {
      name = "my-example"
    }
  }
}
