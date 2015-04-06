# == Class hive::frontend
#
# Hive client.
#
class spark::frontend {
  include 'spark::frontend::install'
  include 'spark::frontend::config'

  Class['spark::frontend::install'] ->
  Class['spark::frontend::config'] ->
  Class['spark::frontend']
}
