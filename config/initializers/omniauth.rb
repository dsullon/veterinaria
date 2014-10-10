Rails.application.config.middleware.use OmniAuth::Builder do
	provider :developer unless Rails.env.production?
    provider :twitter, 'NC520fQqEX1WbopbRhaMZtlAk', 'cE1FxYuT5n4hn2UtBSVv2CW9VOvdWFInJZSrXEc19PpXj57wjb'
    provider :facebook, '1402145543343737', '787e59c05fae81d516d0e652a23ad02c'
end