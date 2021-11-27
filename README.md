# App

This repo contains a fresh install of the latest available version of Ruby on
Rails. The purpose of this repo is to have a bare bones complete setup that
people can use to start their new projects.

Here are a few notables in this repo:

* Ruby 3.2.1
* Ruby on Rails v7.0.4
* Alpine 3.17
* PG configured
* Redis configured
* Hotwire
* Importmaps
* Bulma CSS

## Installation Notes

The Rails application was setup with the following command:

```
rails new . -d postgresql -j importmap
```

## Usage

For more information, have a look at my blog post: [https://roelbondoc.com/2021/12/04/my-app-github-repo/](https://roelbondoc.com/2021/12/04/my-app-github-repo/)
