# # encoding: utf-8

# Inspec test for recipe manage_users::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('swati')  do
    it { should exist }
    its('gid') { should eq 'adminstrators' }
  end

  describe user('vivek') do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
#describe port(80), :skip do
#  it { should_not be_listening }
#end
