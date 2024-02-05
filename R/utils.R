# Copyright 2024 Disy Informationssysteme GmbH
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This function is invoked when creating a new Plumber API project in the
# RStudio IDE. The function will be called when the user invokes the
# New Project wizard using the project template defined in the file at:
#
#   inst/rstudio/templates/project/new-rstudio-project.dcf

# The new project template mechanism is documented at:
# https://rstudio.github.io/rstudio-extensions/rstudio_project_templates.html

#' Create Analytics Extension
#' @export
create_analytics_extension <- function(path, ...) {

  # ensure path exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # copy 'resources' folder to path
  resources <- system.file("rstudio", "templates", "project", "resources",
                           package = "plumber", mustWork = TRUE)

  files <- list.files(resources, recursive = TRUE, include.dirs = FALSE)
  source <- file.path(resources, files)
  target <- file.path(path, files)
  file.copy(source, target)
}
