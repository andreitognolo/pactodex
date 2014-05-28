# -*- encoding: utf-8 -*-
# stub: tins 1.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "tins"
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Florian Frank"]
  s.date = "2014-05-13"
  s.description = "All the stuff that isn't good/big enough for a real library."
  s.email = "flori@ping.de"
  s.extra_rdoc_files = ["README.rdoc", "lib/dslkit.rb", "lib/dslkit/polite.rb", "lib/dslkit/rude.rb", "lib/spruz.rb", "lib/tins.rb", "lib/tins/alias.rb", "lib/tins/annotate.rb", "lib/tins/ask_and_send.rb", "lib/tins/attempt.rb", "lib/tins/bijection.rb", "lib/tins/concern.rb", "lib/tins/count_by.rb", "lib/tins/date_dummy.rb", "lib/tins/date_time_dummy.rb", "lib/tins/deep_const_get.rb", "lib/tins/deep_dup.rb", "lib/tins/dslkit.rb", "lib/tins/extract_last_argument_options.rb", "lib/tins/file_binary.rb", "lib/tins/find.rb", "lib/tins/generator.rb", "lib/tins/go.rb", "lib/tins/hash_symbolize_keys_recursive.rb", "lib/tins/hash_union.rb", "lib/tins/if_predicate.rb", "lib/tins/limited.rb", "lib/tins/lines_file.rb", "lib/tins/memoize.rb", "lib/tins/method_description.rb", "lib/tins/minimize.rb", "lib/tins/module_group.rb", "lib/tins/named_set.rb", "lib/tins/null.rb", "lib/tins/once.rb", "lib/tins/p.rb", "lib/tins/partial_application.rb", "lib/tins/proc_compose.rb", "lib/tins/proc_prelude.rb", "lib/tins/range_plus.rb", "lib/tins/require_maybe.rb", "lib/tins/responding.rb", "lib/tins/rotate.rb", "lib/tins/round.rb", "lib/tins/secure_write.rb", "lib/tins/sexy_singleton.rb", "lib/tins/shuffle.rb", "lib/tins/string_byte_order_mark.rb", "lib/tins/string_camelize.rb", "lib/tins/string_underscore.rb", "lib/tins/string_version.rb", "lib/tins/subhash.rb", "lib/tins/terminal.rb", "lib/tins/thread_local.rb", "lib/tins/time_dummy.rb", "lib/tins/time_freezer.rb", "lib/tins/to.rb", "lib/tins/to_proc.rb", "lib/tins/token.rb", "lib/tins/uniq_by.rb", "lib/tins/version.rb", "lib/tins/write.rb", "lib/tins/xt.rb", "lib/tins/xt/annotate.rb", "lib/tins/xt/ask_and_send.rb", "lib/tins/xt/attempt.rb", "lib/tins/xt/blank.rb", "lib/tins/xt/concern.rb", "lib/tins/xt/count_by.rb", "lib/tins/xt/date_dummy.rb", "lib/tins/xt/date_time_dummy.rb", "lib/tins/xt/deep_const_get.rb", "lib/tins/xt/deep_dup.rb", "lib/tins/xt/dslkit.rb", "lib/tins/xt/extract_last_argument_options.rb", "lib/tins/xt/file_binary.rb", "lib/tins/xt/full.rb", "lib/tins/xt/hash_symbolize_keys_recursive.rb", "lib/tins/xt/hash_union.rb", "lib/tins/xt/if_predicate.rb", "lib/tins/xt/irb.rb", "lib/tins/xt/method_description.rb", "lib/tins/xt/named.rb", "lib/tins/xt/null.rb", "lib/tins/xt/p.rb", "lib/tins/xt/partial_application.rb", "lib/tins/xt/proc_compose.rb", "lib/tins/xt/proc_prelude.rb", "lib/tins/xt/range_plus.rb", "lib/tins/xt/require_maybe.rb", "lib/tins/xt/responding.rb", "lib/tins/xt/rotate.rb", "lib/tins/xt/round.rb", "lib/tins/xt/secure_write.rb", "lib/tins/xt/sexy_singleton.rb", "lib/tins/xt/shuffle.rb", "lib/tins/xt/string.rb", "lib/tins/xt/string_byte_order_mark.rb", "lib/tins/xt/string_camelize.rb", "lib/tins/xt/string_underscore.rb", "lib/tins/xt/string_version.rb", "lib/tins/xt/subhash.rb", "lib/tins/xt/symbol_to_proc.rb", "lib/tins/xt/time_dummy.rb", "lib/tins/xt/to.rb", "lib/tins/xt/uniq_by.rb", "lib/tins/xt/write.rb"]
  s.files = [".gitignore", ".travis.yml", "COPYING", "Gemfile", "README.rdoc", "Rakefile", "TODO", "VERSION", "examples/add_one.png", "examples/add_one.stm", "examples/bb3.png", "examples/bb3.stm", "examples/bb3_19.stm", "examples/concatenate_compare.mtm", "examples/concatenate_compare.png", "examples/concatenate_compare_19.mtm", "examples/length_difference.mtm", "examples/length_difference.png", "examples/length_difference_19.mtm", "examples/let.rb", "examples/mail.rb", "examples/minsky.rb", "examples/multiply.reg", "examples/null_pattern.rb", "examples/ones_difference-mtm.png", "examples/ones_difference-stm.png", "examples/ones_difference.mtm", "examples/ones_difference.stm", "examples/ones_difference_19.mtm", "examples/ones_difference_19.stm", "examples/prefix-equals-suffix-reversed-with-infix.png", "examples/prefix-equals-suffix-reversed-with-infix.stm", "examples/prefix-equals-suffix-reversed-with-infix_19.stm", "examples/recipe.rb", "examples/recipe2.rb", "examples/recipe_common.rb", "examples/subtract.reg", "examples/turing-graph.rb", "examples/turing.rb", "lib/dslkit.rb", "lib/dslkit/polite.rb", "lib/dslkit/rude.rb", "lib/spruz", "lib/spruz.rb", "lib/tins.rb", "lib/tins/alias.rb", "lib/tins/annotate.rb", "lib/tins/ask_and_send.rb", "lib/tins/attempt.rb", "lib/tins/bijection.rb", "lib/tins/concern.rb", "lib/tins/count_by.rb", "lib/tins/date_dummy.rb", "lib/tins/date_time_dummy.rb", "lib/tins/deep_const_get.rb", "lib/tins/deep_dup.rb", "lib/tins/dslkit.rb", "lib/tins/extract_last_argument_options.rb", "lib/tins/file_binary.rb", "lib/tins/find.rb", "lib/tins/generator.rb", "lib/tins/go.rb", "lib/tins/hash_symbolize_keys_recursive.rb", "lib/tins/hash_union.rb", "lib/tins/if_predicate.rb", "lib/tins/limited.rb", "lib/tins/lines_file.rb", "lib/tins/memoize.rb", "lib/tins/method_description.rb", "lib/tins/minimize.rb", "lib/tins/module_group.rb", "lib/tins/named_set.rb", "lib/tins/null.rb", "lib/tins/once.rb", "lib/tins/p.rb", "lib/tins/partial_application.rb", "lib/tins/proc_compose.rb", "lib/tins/proc_prelude.rb", "lib/tins/range_plus.rb", "lib/tins/require_maybe.rb", "lib/tins/responding.rb", "lib/tins/rotate.rb", "lib/tins/round.rb", "lib/tins/secure_write.rb", "lib/tins/sexy_singleton.rb", "lib/tins/shuffle.rb", "lib/tins/string_byte_order_mark.rb", "lib/tins/string_camelize.rb", "lib/tins/string_underscore.rb", "lib/tins/string_version.rb", "lib/tins/subhash.rb", "lib/tins/terminal.rb", "lib/tins/thread_local.rb", "lib/tins/time_dummy.rb", "lib/tins/time_freezer.rb", "lib/tins/to.rb", "lib/tins/to_proc.rb", "lib/tins/token.rb", "lib/tins/uniq_by.rb", "lib/tins/version.rb", "lib/tins/write.rb", "lib/tins/xt.rb", "lib/tins/xt/annotate.rb", "lib/tins/xt/ask_and_send.rb", "lib/tins/xt/attempt.rb", "lib/tins/xt/blank.rb", "lib/tins/xt/concern.rb", "lib/tins/xt/count_by.rb", "lib/tins/xt/date_dummy.rb", "lib/tins/xt/date_time_dummy.rb", "lib/tins/xt/deep_const_get.rb", "lib/tins/xt/deep_dup.rb", "lib/tins/xt/dslkit.rb", "lib/tins/xt/extract_last_argument_options.rb", "lib/tins/xt/file_binary.rb", "lib/tins/xt/full.rb", "lib/tins/xt/hash_symbolize_keys_recursive.rb", "lib/tins/xt/hash_union.rb", "lib/tins/xt/if_predicate.rb", "lib/tins/xt/irb.rb", "lib/tins/xt/method_description.rb", "lib/tins/xt/named.rb", "lib/tins/xt/null.rb", "lib/tins/xt/p.rb", "lib/tins/xt/partial_application.rb", "lib/tins/xt/proc_compose.rb", "lib/tins/xt/proc_prelude.rb", "lib/tins/xt/range_plus.rb", "lib/tins/xt/require_maybe.rb", "lib/tins/xt/responding.rb", "lib/tins/xt/rotate.rb", "lib/tins/xt/round.rb", "lib/tins/xt/secure_write.rb", "lib/tins/xt/sexy_singleton.rb", "lib/tins/xt/shuffle.rb", "lib/tins/xt/string.rb", "lib/tins/xt/string_byte_order_mark.rb", "lib/tins/xt/string_camelize.rb", "lib/tins/xt/string_underscore.rb", "lib/tins/xt/string_version.rb", "lib/tins/xt/subhash.rb", "lib/tins/xt/symbol_to_proc.rb", "lib/tins/xt/time_dummy.rb", "lib/tins/xt/to.rb", "lib/tins/xt/uniq_by.rb", "lib/tins/xt/write.rb", "tests/annotate_test.rb", "tests/ask_and_send_test.rb", "tests/attempt_test.rb", "tests/bijection_test.rb", "tests/blank_full_test.rb", "tests/concern_test.rb", "tests/count_by_test.rb", "tests/date_dummy_test.rb", "tests/date_time_dummy_test.rb", "tests/deep_const_get_test.rb", "tests/deep_dup_test.rb", "tests/delegate_test.rb", "tests/dslkit_test.rb", "tests/dynamic_scope_test.rb", "tests/extract_last_argument_options_test.rb", "tests/file_binary_test.rb", "tests/find_test.rb", "tests/from_module_test.rb", "tests/generator_test.rb", "tests/go_test.rb", "tests/hash_symbolize_keys_recursive_test.rb", "tests/hash_union_test.rb", "tests/if_predicate_test.rb", "tests/limited_test.rb", "tests/lines_file_test.rb", "tests/memoize_test.rb", "tests/method_description_test.rb", "tests/minimize_test.rb", "tests/module_group_test.rb", "tests/named_set_test.rb", "tests/named_test.rb", "tests/null_test.rb", "tests/p_test.rb", "tests/partial_application_test.rb", "tests/proc_compose_test.rb", "tests/proc_prelude_test.rb", "tests/range_plus_test.rb", "tests/require_maybe_test.rb", "tests/responding_test.rb", "tests/rotate_test.rb", "tests/round_test.rb", "tests/scope_test.rb", "tests/secure_write_test.rb", "tests/sexy_singleton_test.rb", "tests/shuffle_test.rb", "tests/string_byte_order_mark_test.rb", "tests/string_camelize_test.rb", "tests/string_underscore_test.rb", "tests/string_version_test.rb", "tests/subhash_test.rb", "tests/test_helper.rb", "tests/time_dummy_test.rb", "tests/time_freezer_test.rb", "tests/to_test.rb", "tests/token_test.rb", "tests/uniq_by_test.rb", "tins.gemspec"]
  s.homepage = "http://flori.github.com/tins"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--title", "Tins - Useful stuff.", "--main", "README.rdoc"]
  s.rubygems_version = "2.2.2"
  s.summary = "Useful stuff."
  s.test_files = ["tests/annotate_test.rb", "tests/ask_and_send_test.rb", "tests/attempt_test.rb", "tests/bijection_test.rb", "tests/blank_full_test.rb", "tests/concern_test.rb", "tests/count_by_test.rb", "tests/date_dummy_test.rb", "tests/date_time_dummy_test.rb", "tests/deep_const_get_test.rb", "tests/deep_dup_test.rb", "tests/delegate_test.rb", "tests/dslkit_test.rb", "tests/dynamic_scope_test.rb", "tests/extract_last_argument_options_test.rb", "tests/file_binary_test.rb", "tests/find_test.rb", "tests/from_module_test.rb", "tests/generator_test.rb", "tests/go_test.rb", "tests/hash_symbolize_keys_recursive_test.rb", "tests/hash_union_test.rb", "tests/if_predicate_test.rb", "tests/limited_test.rb", "tests/lines_file_test.rb", "tests/memoize_test.rb", "tests/method_description_test.rb", "tests/minimize_test.rb", "tests/module_group_test.rb", "tests/named_set_test.rb", "tests/named_test.rb", "tests/null_test.rb", "tests/p_test.rb", "tests/partial_application_test.rb", "tests/proc_compose_test.rb", "tests/proc_prelude_test.rb", "tests/range_plus_test.rb", "tests/require_maybe_test.rb", "tests/responding_test.rb", "tests/rotate_test.rb", "tests/round_test.rb", "tests/scope_test.rb", "tests/secure_write_test.rb", "tests/sexy_singleton_test.rb", "tests/shuffle_test.rb", "tests/string_byte_order_mark_test.rb", "tests/string_camelize_test.rb", "tests/string_underscore_test.rb", "tests/string_version_test.rb", "tests/subhash_test.rb", "tests/test_helper.rb", "tests/time_dummy_test.rb", "tests/time_freezer_test.rb", "tests/to_test.rb", "tests/token_test.rb", "tests/uniq_by_test.rb", "tests/annotate_test.rb", "tests/ask_and_send_test.rb", "tests/attempt_test.rb", "tests/bijection_test.rb", "tests/blank_full_test.rb", "tests/concern_test.rb", "tests/count_by_test.rb", "tests/date_dummy_test.rb", "tests/date_time_dummy_test.rb", "tests/deep_const_get_test.rb", "tests/deep_dup_test.rb", "tests/delegate_test.rb", "tests/dslkit_test.rb", "tests/dynamic_scope_test.rb", "tests/extract_last_argument_options_test.rb", "tests/file_binary_test.rb", "tests/find_test.rb", "tests/from_module_test.rb", "tests/generator_test.rb", "tests/go_test.rb", "tests/hash_symbolize_keys_recursive_test.rb", "tests/hash_union_test.rb", "tests/if_predicate_test.rb", "tests/limited_test.rb", "tests/lines_file_test.rb", "tests/memoize_test.rb", "tests/method_description_test.rb", "tests/minimize_test.rb", "tests/module_group_test.rb", "tests/named_set_test.rb", "tests/named_test.rb", "tests/null_test.rb", "tests/p_test.rb", "tests/partial_application_test.rb", "tests/proc_compose_test.rb", "tests/proc_prelude_test.rb", "tests/range_plus_test.rb", "tests/require_maybe_test.rb", "tests/responding_test.rb", "tests/rotate_test.rb", "tests/round_test.rb", "tests/scope_test.rb", "tests/secure_write_test.rb", "tests/sexy_singleton_test.rb", "tests/shuffle_test.rb", "tests/string_byte_order_mark_test.rb", "tests/string_camelize_test.rb", "tests/string_underscore_test.rb", "tests/string_version_test.rb", "tests/subhash_test.rb", "tests/time_dummy_test.rb", "tests/time_freezer_test.rb", "tests/to_test.rb", "tests/token_test.rb", "tests/uniq_by_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<gem_hadar>, ["~> 1.0.0"])
      s.add_development_dependency(%q<test-unit>, ["~> 2.5"])
    else
      s.add_dependency(%q<gem_hadar>, ["~> 1.0.0"])
      s.add_dependency(%q<test-unit>, ["~> 2.5"])
    end
  else
    s.add_dependency(%q<gem_hadar>, ["~> 1.0.0"])
    s.add_dependency(%q<test-unit>, ["~> 2.5"])
  end
end