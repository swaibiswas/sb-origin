name 'build_cookbook'
maintainer 'Swati Biswas'
maintainer_email 'swati_biswas@persistent.co.in'
license 'all_rights'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'delivery-truck'
