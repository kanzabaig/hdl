


source ../../scripts/adi_env.tcl
source $ad_hdl_dir/projects/scripts/adi_project.tcl

adi_project_create ad9625x2_fmc_vc707
adi_project_files ad9625x2_fmc_vc707 [list \
  "$ad_hdl_dir/library/common/ad_iobuf.v" \
  "../common/ad9625x2_fmc_spi.v" \
  "system_top.v" \
  "system_constr.xdc"\
  "$ad_hdl_dir/projects/common/vc707/vc707_system_constr.xdc" ]

set_property PROCESSING_ORDER EARLY [get_files $ad_hdl_dir/projects/common/vc707/vc707_system_constr.xdc]
set_property PROCESSING_ORDER EARLY [get_files system_constr.xdc]

adi_project_run ad9625x2_fmc_vc707


