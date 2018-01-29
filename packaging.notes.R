devtools::use_build_ignore("packaging.notes.R")
# Ignore this file.

# General best practices:
devtools::use_testthat()
devtools::use_test("dtanb")
devtools::use_test("ptanb")
# devtools::use_test("rtanb")
# devtools::use_test("htanb")
# devtools::use_test("stanb")
devtools::use_package_doc()
devtools::use_cran_badge()
devtools::use_code_of_conduct()
devtools::use_mit_license()

devtools::use_vignette("TanB-and-PacketData")
# No spaces in the name.


lintr::lint_package()
# Lint the code.
