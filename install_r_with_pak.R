# install_packages.R

# 安装 pak 本身（若尚未安装）
install.packages("pak", repos = "https://cran.rstudio.com")

# 使用 pak 安装 CRAN 包和 GitHub/Bioc 包
pak::pak(c(
  # CRAN 包
  "argparser",
  "rlang",
  "ape",
  "vcfR",
  "glue",
  "plotly",
  "htmlwidgets",

  # GitHub 包
  "hemstrow/snpR",

  # Bioconductor 包（pak 会自动识别）
  "bioc::ggtree"
))
