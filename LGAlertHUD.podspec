Pod::Spec.new do |s|
  s.name         = "LGAlertHUD"
  s.version      = "1.0.1"
  s.summary      = "提示框,进度条"

  # 项目主页地址
  s.homepage     = "https://github.com/LYajun/LGAlertHUD"
 
  # 许可证
  s.license      = "MIT"
 
  # 作者
  s.author             = { "刘亚军" => "liuyajun1999@icloud.com" }
 

  # 支持平台
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = '8.0'

  # 项目的地址
  s.source       = { 
            :git => "https://github.com/LYajun/LGAlertHUD.git", 
            :tag => s.version 
  }

  # 需要包含的源文件
  s.source_files = "LGAlertHUD/*.{h,m}", "LGAlertHUD/AlertView/*.{h,m}"
  

   # 资源文件
  s.resources = "LGAlertHUD/LGAlertHUD.bundle"

  # 是否支持ARC 
  s.requires_arc = true

end
