# encoding: ascii-8bit
# frozen-string-literal: false
#
# The module storing Ruby interpreter configurations on building.
#
# This file was created by mkconfig.rb when ruby was built.  It contains
# build information for ruby which is used e.g. by mkmf to build
# compatible native extensions.  Any changes made to this file will be
# lost the next time ruby is built.

module RbConfig
  RUBY_VERSION.start_with?("2.6.") or
    raise "ruby lib version (2.6.3) doesn't match executable version (#{RUBY_VERSION})"

  # Ruby installed directory.
  TOPDIR = File.dirname(__FILE__).chomp!("/lib/ruby/2.6.0/x86_64-msys")
  # DESTDIR on make install.
  DESTDIR = '' unless defined? DESTDIR
  # The hash configurations stored.
  CONFIG = {}
  CONFIG["DESTDIR"] = DESTDIR
  CONFIG["MAJOR"] = "2"
  CONFIG["MINOR"] = "6"
  CONFIG["TEENY"] = "3"
  CONFIG["PATCHLEVEL"] = "62"
  CONFIG["INSTALL"] = '/usr/bin/install -c'
  CONFIG["EXEEXT"] = ".exe"
  CONFIG["prefix"] = (TOPDIR || DESTDIR + "/usr")
  CONFIG["ruby_install_name"] = "$(RUBY_BASE_NAME)"
  CONFIG["RUBY_INSTALL_NAME"] = "$(RUBY_BASE_NAME)"
  CONFIG["RUBY_SO_NAME"] = "$(RUBY_BASE_NAME)$(MAJOR)$(MINOR)0"
  CONFIG["exec"] = "exec"
  CONFIG["ruby_pc"] = "ruby-2.6.pc"
  CONFIG["CC_WRAPPER"] = ""
  CONFIG["PACKAGE"] = "ruby"
  CONFIG["BUILTIN_TRANSSRCS"] = " enc/trans/newline.c"
  CONFIG["MANTYPE"] = "doc"
  CONFIG["vendorarchhdrdir"] = "$(vendorhdrdir)/$(sitearch)"
  CONFIG["sitearchhdrdir"] = "$(sitehdrdir)/$(sitearch)"
  CONFIG["rubyarchhdrdir"] = "$(rubyhdrdir)/$(arch)"
  CONFIG["vendorhdrdir"] = "$(rubyhdrdir)/vendor_ruby"
  CONFIG["sitehdrdir"] = "$(rubyhdrdir)/site_ruby"
  CONFIG["rubyhdrdir"] = "$(includedir)/$(RUBY_VERSION_NAME)"
  CONFIG["RUBY_SEARCH_PATH"] = ""
  CONFIG["UNIVERSAL_INTS"] = ""
  CONFIG["UNIVERSAL_ARCHNAMES"] = ""
  CONFIG["configure_args"] = " '--build=x86_64-pc-msys' '--prefix=/usr' '--exec_prefix=/usr' '--sysconfdir=/etc' '--localstatedir=/var' '--sharedstatedir=/var/lib' '--libexecdir=/usr/lib/ruby' '--enable-shared' '--disable-rpath' '--with-dbm-type=gdbm_compat' 'LDSHARED=gcc -shared' 'DLDFLAGS=-Wl,--export-all-symbols' 'build_alias=x86_64-pc-msys' 'CFLAGS=-march=x86-64 -mtune=generic -O2 -pipe -fno-strict-aliasing ' 'LDFLAGS=-pipe' 'CPPFLAGS=' 'CXXFLAGS=-march=x86-64 -mtune=generic -O2 -pipe -fno-strict-aliasing '"
  CONFIG["CONFIGURE"] = "configure"
  CONFIG["vendorarchdir"] = "$(vendorlibdir)/$(sitearch)"
  CONFIG["vendorlibdir"] = "$(vendordir)/$(ruby_version)"
  CONFIG["vendordir"] = "$(rubylibprefix)/vendor_ruby"
  CONFIG["sitearchdir"] = "$(sitelibdir)/$(sitearch)"
  CONFIG["sitelibdir"] = "$(sitedir)/$(ruby_version)"
  CONFIG["sitedir"] = "$(rubylibprefix)/site_ruby"
  CONFIG["rubyarchdir"] = "$(rubylibdir)/$(arch)"
  CONFIG["rubylibdir"] = "$(rubylibprefix)/$(ruby_version)"
  CONFIG["ruby_version"] = "2.6.0"
  CONFIG["sitearch"] = "$(arch)"
  CONFIG["arch"] = "x86_64-msys"
  CONFIG["sitearchincludedir"] = "$(includedir)/$(sitearch)"
  CONFIG["archincludedir"] = "$(includedir)/$(arch)"
  CONFIG["sitearchlibdir"] = "$(libdir)/$(sitearch)"
  CONFIG["archlibdir"] = "$(libdir)/$(arch)"
  CONFIG["libdirname"] = "libdir"
  CONFIG["RUBY_EXEC_PREFIX"] = "/usr"
  CONFIG["RUBY_LIB_VERSION"] = ""
  CONFIG["RUBY_LIB_VERSION_STYLE"] = "3\t/* full */"
  CONFIG["RI_BASE_NAME"] = "ri"
  CONFIG["ridir"] = "$(datarootdir)/$(RI_BASE_NAME)"
  CONFIG["rubysitearchprefix"] = "$(rubylibprefix)/$(sitearch)"
  CONFIG["rubyarchprefix"] = "$(rubylibprefix)/$(arch)"
  CONFIG["MAKEFILES"] = "Makefile GNUmakefile"
  CONFIG["PLATFORM_DIR"] = ""
  CONFIG["THREAD_MODEL"] = "pthread"
  CONFIG["SYMBOL_PREFIX"] = ""
  CONFIG["EXPORT_PREFIX"] = ""
  CONFIG["COMMON_HEADERS"] = ""
  CONFIG["COMMON_MACROS"] = ""
  CONFIG["COMMON_LIBS"] = ""
  CONFIG["MAINLIBS"] = "-lpthread -lrt -lrt -lgmp -ldl -lcrypt "
  CONFIG["ENABLE_SHARED"] = "yes"
  CONFIG["DLDSHARED"] = "gcc -shared"
  CONFIG["DLDLIBS"] = ""
  CONFIG["SOLIBS"] = "$(MAINLIBS)"
  CONFIG["LIBRUBYARG_SHARED"] = "-l$(RUBY_SO_NAME)"
  CONFIG["LIBRUBYARG_STATIC"] = "-l$(RUBY_SO_NAME)-static $(MAINLIBS)"
  CONFIG["LIBRUBYARG"] = "$(LIBRUBYARG_SHARED)"
  CONFIG["LIBRUBY"] = "lib$(RUBY_SO_NAME).dll.a"
  CONFIG["LIBRUBY_ALIASES"] = ""
  CONFIG["LIBRUBY_SONAME"] = "lib$(RUBY_SO_NAME).$(SOEXT).$(RUBY_API_VERSION)"
  CONFIG["LIBRUBY_SO"] = "msys-$(RUBY_SO_NAME).dll"
  CONFIG["LIBRUBY_A"] = "lib$(RUBY_SO_NAME)-static.a"
  CONFIG["RUBYW_INSTALL_NAME"] = ""
  CONFIG["rubyw_install_name"] = ""
  CONFIG["EXTDLDFLAGS"] = ""
  CONFIG["EXTLDFLAGS"] = ""
  CONFIG["strict_warnflags"] = ""
  CONFIG["warnflags"] = "-Wall -Wextra -Wdeclaration-after-statement -Wdeprecated-declarations -Wduplicated-cond -Wimplicit-function-declaration -Wimplicit-int -Wmisleading-indentation -Wpointer-arith -Wrestrict -Wwrite-strings -Wimplicit-fallthrough=0 -Wmissing-noreturn -Wno-cast-function-type -Wno-constant-logical-operand -Wno-long-long -Wno-missing-field-initializers -Wno-overlength-strings -Wno-packed-bitfield-compat -Wno-parentheses-equality -Wno-self-assign -Wno-tautological-compare -Wno-unused-parameter -Wno-unused-value -Wsuggest-attribute=format -Wsuggest-attribute=noreturn -Wunused-variable"
  CONFIG["debugflags"] = "-ggdb3"
  CONFIG["optflags"] = "-O3"
  CONFIG["NULLCMD"] = ":"
  CONFIG["ENABLE_DEBUG_ENV"] = ""
  CONFIG["DLNOBJ"] = "dln.o"
  CONFIG["INSTALL_STATIC_LIBRARY"] = "no"
  CONFIG["MJIT_SUPPORT"] = "yes"
  CONFIG["EXECUTABLE_EXTS"] = ".exe .com .cmd .bat"
  CONFIG["ARCHFILE"] = ""
  CONFIG["LIBRUBY_RELATIVE"] = "no"
  CONFIG["EXTOUT"] = ".ext"
  CONFIG["PREP"] = "miniruby$(EXEEXT)"
  CONFIG["CROSS_COMPILING"] = "no"
  CONFIG["TEST_RUNNABLE"] = "yes"
  CONFIG["rubylibprefix"] = "$(libdir)/$(RUBY_BASE_NAME)"
  CONFIG["setup"] = "Setup"
  CONFIG["ENCSTATIC"] = ""
  CONFIG["EXTSTATIC"] = ""
  CONFIG["STRIP"] = "strip"
  CONFIG["SOEXT"] = "so"
  CONFIG["TRY_LINK"] = ""
  CONFIG["PRELOADENV"] = ""
  CONFIG["LIBPATHENV"] = "PATH"
  CONFIG["RPATHFLAG"] = ""
  CONFIG["LIBPATHFLAG"] = " -L%s"
  CONFIG["LINK_SO"] = ""
  CONFIG["ASMEXT"] = "S"
  CONFIG["LIBEXT"] = "a"
  CONFIG["DLEXT2"] = ""
  CONFIG["DLEXT"] = "so"
  CONFIG["LDSHAREDXX"] = "g++ -shared"
  CONFIG["LDSHARED"] = "gcc -shared"
  CONFIG["CCDLFLAGS"] = ""
  CONFIG["STATIC"] = ""
  CONFIG["ARCH_FLAG"] = ""
  CONFIG["DLDFLAGS"] = "-Wl,--export-all-symbols -Wl,--enable-auto-image-base,--enable-auto-import"
  CONFIG["ALLOCA"] = ""
  CONFIG["MATHN"] = "yes"
  CONFIG["dsymutil"] = ""
  CONFIG["codesign"] = ""
  CONFIG["POSTLINK"] = ":"
  CONFIG["WERRORFLAG"] = "-Werror"
  CONFIG["CHDIR"] = "cd"
  CONFIG["RMALL"] = "rm -fr"
  CONFIG["RMDIRS"] = "rmdir --ignore-fail-on-non-empty -p"
  CONFIG["RMDIR"] = "rmdir --ignore-fail-on-non-empty"
  CONFIG["CP"] = "cp"
  CONFIG["RM"] = "rm -f"
  CONFIG["PKG_CONFIG"] = "pkg-config"
  CONFIG["DOXYGEN"] = "doxygen"
  CONFIG["DOT"] = ""
  CONFIG["MAKEDIRS"] = "/usr/bin/mkdir -p"
  CONFIG["MKDIR_P"] = "/usr/bin/mkdir -p"
  CONFIG["INSTALL_DATA"] = "$(INSTALL) -m 644"
  CONFIG["INSTALL_SCRIPT"] = "$(INSTALL)"
  CONFIG["INSTALL_PROGRAM"] = "$(INSTALL)"
  CONFIG["SET_MAKE"] = ""
  CONFIG["LN_S"] = "cp -pR"
  CONFIG["NM"] = "nm"
  CONFIG["DLLWRAP"] = "dllwrap"
  CONFIG["WINDRES"] = "windres"
  CONFIG["OBJCOPY"] = ":"
  CONFIG["OBJDUMP"] = "objdump"
  CONFIG["ASFLAGS"] = ""
  CONFIG["AS"] = "as"
  CONFIG["ARFLAGS"] = "rcD "
  CONFIG["AR"] = "ar"
  CONFIG["RANLIB"] = "ranlib"
  CONFIG["try_header"] = ""
  CONFIG["CC_VERSION_MESSAGE"] = "gcc (GCC) 7.4.0\nCopyright (C) 2017 Free Software Foundation, Inc.\nThis is free software; see the source for copying conditions.  There is NO\nwarranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE."
  CONFIG["CC_VERSION"] = "$(CC) --version"
  CONFIG["CSRCFLAG"] = ""
  CONFIG["COUTFLAG"] = "-o "
  CONFIG["OUTFLAG"] = "-o "
  CONFIG["CPPOUTFILE"] = "-o conftest.i"
  CONFIG["GNU_LD"] = "yes"
  CONFIG["LD"] = "ld"
  CONFIG["GCC"] = "yes"
  CONFIG["EGREP"] = "/usr/bin/grep -E"
  CONFIG["GREP"] = "/usr/bin/grep"
  CONFIG["CPP"] = "$(CC) -E"
  CONFIG["CXXFLAGS"] = "-march=x86-64 -mtune=generic -O2 -pipe -fno-strict-aliasing "
  CONFIG["CXX"] = "g++"
  CONFIG["OBJEXT"] = "o"
  CONFIG["CPPFLAGS"] = "-D_XOPEN_SOURCE -D_GNU_SOURCE $(DEFS) $(cppflags)"
  CONFIG["LDFLAGS"] = "-L. -pipe -fstack-protector-strong"
  CONFIG["CFLAGS"] = "-march=x86-64 -mtune=generic -O2 -pipe -fno-strict-aliasing "
  CONFIG["CC"] = "gcc"
  CONFIG["target_os"] = "msys"
  CONFIG["target_vendor"] = "pc"
  CONFIG["target_cpu"] = "x86_64"
  CONFIG["target"] = "x86_64-pc-msys"
  CONFIG["host_os"] = "msys"
  CONFIG["host_vendor"] = "pc"
  CONFIG["host_cpu"] = "x86_64"
  CONFIG["host"] = "x86_64-pc-msys"
  CONFIG["RUBY_VERSION_NAME"] = "$(RUBY_BASE_NAME)-$(ruby_version)"
  CONFIG["RUBYW_BASE_NAME"] = "rubyw"
  CONFIG["RUBY_BASE_NAME"] = "ruby"
  CONFIG["build_os"] = "msys"
  CONFIG["build_vendor"] = "pc"
  CONFIG["build_cpu"] = "x86_64"
  CONFIG["build"] = "x86_64-pc-msys"
  CONFIG["RUBY_API_VERSION"] = "$(MAJOR).$(MINOR)"
  CONFIG["RUBY_PROGRAM_VERSION"] = "2.6.3"
  CONFIG["HAVE_GIT"] = "yes"
  CONFIG["GIT"] = "git"
  CONFIG["cxxflags"] = "$(optflags) $(debugflags) $(warnflags)"
  CONFIG["cppflags"] = ""
  CONFIG["cflags"] = "$(optflags) $(debugflags) $(warnflags)"
  CONFIG["target_alias"] = ""
  CONFIG["host_alias"] = ""
  CONFIG["build_alias"] = "x86_64-pc-msys"
  CONFIG["LIBS"] = ""
  CONFIG["ECHO_T"] = ""
  CONFIG["ECHO_N"] = "-n"
  CONFIG["ECHO_C"] = ""
  CONFIG["DEFS"] = ""
  CONFIG["mandir"] = "$(datarootdir)/man"
  CONFIG["localedir"] = "$(datarootdir)/locale"
  CONFIG["libdir"] = "$(exec_prefix)/lib"
  CONFIG["psdir"] = "$(docdir)"
  CONFIG["pdfdir"] = "$(docdir)"
  CONFIG["dvidir"] = "$(docdir)"
  CONFIG["htmldir"] = "$(docdir)"
  CONFIG["infodir"] = "$(datarootdir)/info"
  CONFIG["docdir"] = "$(datarootdir)/doc/$(PACKAGE)"
  CONFIG["oldincludedir"] = "/usr/include"
  CONFIG["includedir"] = "$(prefix)/include"
  CONFIG["localstatedir"] = "$(DESTDIR)/var"
  CONFIG["sharedstatedir"] = "$(DESTDIR)/var/lib"
  CONFIG["sysconfdir"] = "$(DESTDIR)/etc"
  CONFIG["datadir"] = "$(datarootdir)"
  CONFIG["datarootdir"] = "$(prefix)/share"
  CONFIG["libexecdir"] = "$(DESTDIR)/usr/lib/ruby"
  CONFIG["sbindir"] = "$(exec_prefix)/sbin"
  CONFIG["bindir"] = "$(exec_prefix)/bin"
  CONFIG["exec_prefix"] = "$(DESTDIR)/usr"
  CONFIG["PACKAGE_URL"] = ""
  CONFIG["PACKAGE_BUGREPORT"] = ""
  CONFIG["PACKAGE_STRING"] = ""
  CONFIG["PACKAGE_VERSION"] = ""
  CONFIG["PACKAGE_TARNAME"] = ""
  CONFIG["PACKAGE_NAME"] = ""
  CONFIG["PATH_SEPARATOR"] = ":"
  CONFIG["SHELL"] = "/bin/sh"
  CONFIG["UNICODE_VERSION"] = "12.1.0"
  CONFIG["UNICODE_EMOJI_VERSION"] = "12.0"
  CONFIG["archdir"] = "$(rubyarchdir)"
  CONFIG["topdir"] = File.dirname(__FILE__)
  # Almost same with CONFIG. MAKEFILE_CONFIG has other variable
  # reference like below.
  #
  #   MAKEFILE_CONFIG["bindir"] = "$(exec_prefix)/bin"
  #
  # The values of this constant is used for creating Makefile.
  #
  #   require 'rbconfig'
  #
  #   print <<-END_OF_MAKEFILE
  #   prefix = #{Config::MAKEFILE_CONFIG['prefix']}
  #   exec_prefix = #{Config::MAKEFILE_CONFIG['exec_prefix']}
  #   bindir = #{Config::MAKEFILE_CONFIG['bindir']}
  #   END_OF_MAKEFILE
  #
  #   => prefix = /usr/local
  #      exec_prefix = $(prefix)
  #      bindir = $(exec_prefix)/bin  MAKEFILE_CONFIG = {}
  #
  # RbConfig.expand is used for resolving references like above in rbconfig.
  #
  #   require 'rbconfig'
  #   p Config.expand(Config::MAKEFILE_CONFIG["bindir"])
  #   # => "/usr/local/bin"
  MAKEFILE_CONFIG = {}
  CONFIG.each{|k,v| MAKEFILE_CONFIG[k] = v.dup}

  # call-seq:
  #
  #   RbConfig.expand(val)         -> string
  #   RbConfig.expand(val, config) -> string
  #
  # expands variable with given +val+ value.
  #
  #   RbConfig.expand("$(bindir)") # => /home/foobar/all-ruby/ruby19x/bin
  def RbConfig::expand(val, config = CONFIG)
    newval = val.gsub(/\$\$|\$\(([^()]+)\)|\$\{([^{}]+)\}/) {
      var = $&
      if !(v = $1 || $2)
	'$'
      elsif key = config[v = v[/\A[^:]+(?=(?::(.*?)=(.*))?\z)/]]
	pat, sub = $1, $2
	config[v] = false
	config[v] = RbConfig::expand(key, config)
	key = key.gsub(/#{Regexp.quote(pat)}(?=\s|\z)/n) {sub} if pat
	key
      else
	var
      end
    }
    val.replace(newval) unless newval == val
    val
  end
  CONFIG.each_value do |val|
    RbConfig::expand(val)
  end

  # :nodoc:
  # call-seq:
  #
  #   RbConfig.fire_update!(key, val)               -> string
  #   RbConfig.fire_update!(key, val, mkconf, conf) -> string
  #
  # updates +key+ in +mkconf+ with +val+, and all values depending on
  # the +key+ in +mkconf+.
  #
  #   RbConfig::MAKEFILE_CONFIG.values_at("CC", "LDSHARED") # => ["gcc", "$(CC) -shared"]
  #   RbConfig::CONFIG.values_at("CC", "LDSHARED")          # => ["gcc", "gcc -shared"]
  #   RbConfig.fire_update!("CC", "gcc-8")                  # => ["CC", "LDSHARED"]
  #   RbConfig::MAKEFILE_CONFIG.values_at("CC", "LDSHARED") # => ["gcc-8", "$(CC) -shared"]
  #   RbConfig::CONFIG.values_at("CC", "LDSHARED")          # => ["gcc-8", "gcc-8 -shared"]
  #
  # returns updated keys list, or +nil+ if nothing changed.
  def RbConfig.fire_update!(key, val, mkconf = MAKEFILE_CONFIG, conf = CONFIG)
    return if (old = mkconf[key]) == val
    mkconf[key] = val
    keys = [key]
    deps = []
    begin
      re = Regexp.new("\\$\\((?:%1$s)\\)|\\$\\{(?:%1$s)\\}" % keys.join('|'))
      deps |= keys
      keys.clear
      mkconf.each {|k,v| keys << k if re =~ v}
    end until keys.empty?
    deps.each {|k| conf[k] = mkconf[k].dup}
    deps.each {|k| expand(conf[k])}
    deps
  end

  # call-seq:
  #
  #   RbConfig.ruby -> path
  #
  # returns the absolute pathname of the ruby command.
  def RbConfig.ruby
    File.join(
      RbConfig::CONFIG["bindir"],
      RbConfig::CONFIG["ruby_install_name"] + RbConfig::CONFIG["EXEEXT"]
    )
  end
end
CROSS_COMPILING = nil unless defined? CROSS_COMPILING
