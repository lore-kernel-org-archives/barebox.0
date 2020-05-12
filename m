Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYONk-0001RR-02
 for barebox@lists.infradead.org; Tue, 12 May 2020 06:27:16 +0000
Date: Tue, 12 May 2020 08:27:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200512062709.GW5877@pengutronix.de>
References: <20200511014016.1610102-1-masahiroy@kernel.org>
 <20200511014016.1610102-2-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511014016.1610102-2-masahiroy@kernel.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] kbuild: resync top Makefile, mkmakefile, tags.sh
 with Linux 5.7-rc4
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Mon, May 11, 2020 at 10:40:15AM +0900, Masahiro Yamada wrote:
> The prologue of the build system is not specific to Linux or Barebox.
> Paritially resync with Linux 5.7-rc4
> 
> - In Linux, $(objtree) is always '.', and $(srctree) might be relative.
>   I am keeping both absolute for now to avoid unexpected breakage.
> 
> - I did not resync single target for now. We need to touch
>   Makefile.build a lot if we want to resync it.
> 
> - 'export CDPATH=' is Barebox-only code, which was added by
>   commit 6cc8d0544658 ("Makefile: disable CDPATH"). Keep it.
> 
> - KBUILD_SRC no longer exists in the upstream Linux. I replaced it
>   with building_out_of_srctree.
> 
> - scripts/mkmakefile does not contain anything specific to Linux or
>   Barebox. Resync it with Linux 5.7-rc4
> 
> - scripts/tags was imported from Linux 3.6 with some cherry-picks on
>   top of that. Resync it with Linux 5.7-rc4
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

I can't say I reviewed it, I only tested it. It seems to work, so
applied.

Sascha


> 
>  Makefile               | 605 +++++++++++++++++++++++------------------
>  firmware/Makefile      |   2 +-
>  scripts/Makefile.build |   2 +-
>  scripts/Makefile.host  |   2 +-
>  scripts/Makefile.lib   |   2 +-
>  scripts/mkmakefile     |  43 +--
>  scripts/tags.sh        | 282 ++++++++++++-------
>  7 files changed, 538 insertions(+), 400 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index be9f2a211..837ae47e2 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1,3 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0
>  VERSION = 2020
>  PATCHLEVEL = 04
>  SUBLEVEL = 0
> @@ -10,11 +11,9 @@ NAME = None
>  # Comments in this file are targeted only to the developer, do not
>  # expect to learn how to build the kernel reading this file.
>  
> -# Do not:
> -# o  use make's built-in rules and variables
> -#    (this increases performance and avoids hard-to-debug behaviour);
> -# o  print "Entering directory ...";
> -MAKEFLAGS += -rR --no-print-directory
> +# That's our default target when none is given on the command line
> +PHONY := _all
> +_all:
>  
>  # We are using a recursive build, so we need to do a little thinking
>  # to get the ordering right.
> @@ -22,8 +21,8 @@ MAKEFLAGS += -rR --no-print-directory
>  # Most importantly: sub-Makefiles should only ever modify files in
>  # their own directory. If in some directory we have a dependency on
>  # a file in another dir (which doesn't happen often, but it's often
> -# unavoidable when linking the built-in.o targets which finally
> -# turn into barebox), we will call a sub make in that other dir, and
> +# unavoidable when linking the built-in.a targets which finally
> +# turn into vmlinux), we will call a sub make in that other dir, and
>  # after that we are sure that everything which is in that other dir
>  # is now up to date.
>  #
> @@ -32,6 +31,45 @@ MAKEFLAGS += -rR --no-print-directory
>  # descending is started. They are now explicitly listed as the
>  # prepare rule.
>  
> +ifneq ($(sub_make_done),1)
> +
> +# Do not use make's built-in rules and variables
> +# (this increases performance and avoids hard-to-debug behaviour)
> +MAKEFLAGS += -rR
> +
> +# Avoid funny character set dependencies
> +unexport LC_ALL
> +LC_COLLATE=C
> +LC_NUMERIC=C
> +export LC_COLLATE LC_NUMERIC
> +
> +# Avoid interference with shell env settings
> +unexport GREP_OPTIONS
> +
> +# Beautify output
> +# ---------------------------------------------------------------------------
> +#
> +# Normally, we echo the whole command before executing it. By making
> +# that echo $($(quiet)$(cmd)), we now have the possibility to set
> +# $(quiet) to choose other forms of output instead, e.g.
> +#
> +#         quiet_cmd_cc_o_c = Compiling $(RELDIR)/$@
> +#         cmd_cc_o_c       = $(CC) $(c_flags) -c -o $@ $<
> +#
> +# If $(quiet) is empty, the whole command will be printed.
> +# If it is set to "quiet_", only the short version will be printed.
> +# If it is set to "silent_", nothing will be printed at all, since
> +# the variable $(silent_cmd_cc_o_c) doesn't exist.
> +#
> +# A simple variant is to prefix commands with $(Q) - that's useful
> +# for commands that shall be hidden in non-verbose mode.
> +#
> +#	$(Q)ln $@ :<
> +#
> +# If KBUILD_VERBOSE equals 0 then the above command will be hidden.
> +# If KBUILD_VERBOSE equals 1 then the above command is displayed.
> +# If KBUILD_VERBOSE equals 2 then give the reason why each target is rebuilt.
> +#
>  # To put more focus on warnings, be less verbose as default
>  # Use 'make V=1' to see the full commands
>  
> @@ -42,6 +80,119 @@ ifndef KBUILD_VERBOSE
>    KBUILD_VERBOSE = 0
>  endif
>  
> +ifeq ($(KBUILD_VERBOSE),1)
> +  quiet =
> +  Q =
> +else
> +  quiet=quiet_
> +  Q = @
> +endif
> +
> +# If the user is running make -s (silent mode), suppress echoing of
> +# commands
> +
> +ifneq ($(findstring s,$(filter-out --%,$(MAKEFLAGS))),)
> +  quiet=silent_
> +endif
> +
> +export quiet Q KBUILD_VERBOSE
> +
> +# Kbuild will save output files in the current working directory.
> +# This does not need to match to the root of the kernel source tree.
> +#
> +# For example, you can do this:
> +#
> +#  cd /dir/to/store/output/files; make -f /dir/to/kernel/source/Makefile
> +#
> +# If you want to save output files in a different location, there are
> +# two syntaxes to specify it.
> +#
> +# 1) O=
> +# Use "make O=dir/to/store/output/files/"
> +#
> +# 2) Set KBUILD_OUTPUT
> +# Set the environment variable KBUILD_OUTPUT to point to the output directory.
> +# export KBUILD_OUTPUT=dir/to/store/output/files/; make
> +#
> +# The O= assignment takes precedence over the KBUILD_OUTPUT environment
> +# variable.
> +
> +# Do we want to change the working directory?
> +ifeq ("$(origin O)", "command line")
> +  KBUILD_OUTPUT := $(O)
> +endif
> +
> +ifneq ($(KBUILD_OUTPUT),)
> +# Make's built-in functions such as $(abspath ...), $(realpath ...) cannot
> +# expand a shell special character '~'. We use a somewhat tedious way here.
> +abs_objtree := $(shell mkdir -p $(KBUILD_OUTPUT) && cd $(KBUILD_OUTPUT) && pwd)
> +$(if $(abs_objtree),, \
> +     $(error failed to create output directory "$(KBUILD_OUTPUT)"))
> +
> +# $(realpath ...) resolves symlinks
> +abs_objtree := $(realpath $(abs_objtree))
> +else
> +abs_objtree := $(CURDIR)
> +endif # ifneq ($(KBUILD_OUTPUT),)
> +
> +ifeq ($(abs_objtree),$(CURDIR))
> +# Suppress "Entering directory ..." unless we are changing the work directory.
> +MAKEFLAGS += --no-print-directory
> +else
> +need-sub-make := 1
> +endif
> +
> +abs_srctree := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
> +
> +ifneq ($(words $(subst :, ,$(abs_srctree))), 1)
> +$(error source directory cannot contain spaces or colons)
> +endif
> +
> +ifneq ($(abs_srctree),$(abs_objtree))
> +# Look for make include files relative to root of kernel src
> +#
> +# This does not become effective immediately because MAKEFLAGS is re-parsed
> +# once after the Makefile is read. We need to invoke sub-make.
> +MAKEFLAGS += --include-dir=$(abs_srctree)
> +need-sub-make := 1
> +endif
> +
> +ifneq ($(filter 3.%,$(MAKE_VERSION)),)
> +# 'MAKEFLAGS += -rR' does not immediately become effective for GNU Make 3.x
> +# We need to invoke sub-make to avoid implicit rules in the top Makefile.
> +need-sub-make := 1
> +# Cancel implicit rules for this Makefile.
> +$(lastword $(MAKEFILE_LIST)): ;
> +endif
> +
> +export abs_srctree abs_objtree
> +export sub_make_done := 1
> +
> +ifeq ($(need-sub-make),1)
> +
> +PHONY += $(MAKECMDGOALS) sub-make
> +
> +$(filter-out _all sub-make $(lastword $(MAKEFILE_LIST)), $(MAKECMDGOALS)) _all: sub-make
> +	@:
> +
> +# Invoke a second make in the output directory, passing relevant variables
> +sub-make:
> +	$(Q)$(MAKE) -C $(abs_objtree) -f $(abs_srctree)/Makefile $(MAKECMDGOALS)
> +
> +endif # need-sub-make
> +endif # sub_make_done
> +
> +# We process the rest of the Makefile if this is the final invocation of make
> +ifeq ($(need-sub-make),)
> +
> +# CDPATH can have sideeffects; disable, since we do know where we want to cd to
> +export CDPATH=
> +
> +# Do not print "Entering directory ...",
> +# but we want to display it when entering to the output directory
> +# so that IDEs/editors are able to understand relative filenames.
> +MAKEFLAGS += --no-print-directory
> +
>  # Call a source code checker (by default, "sparse") as part of the
>  # C compilation.
>  #
> @@ -49,8 +200,8 @@ endif
>  # Use 'make C=2' to enable checking of *all* source files, regardless
>  # of whether they are re-compiled or not.
>  #
> -# See the file "Documentation/sparse.txt" for more details, including
> -# where to get the "sparse" utility.
> +# See the file "Documentation/dev-tools/sparse.rst" for more details,
> +# including where to get the "sparse" utility.
>  
>  ifeq ("$(origin C)", "command line")
>    KBUILD_CHECKSRC = $(C)
> @@ -59,91 +210,108 @@ ifndef KBUILD_CHECKSRC
>    KBUILD_CHECKSRC = 0
>  endif
>  
> -# Use make M=dir to specify directory of external module to build
> -# Old syntax make ... SUBDIRS=$PWD is still supported
> -# Setting the environment variable KBUILD_EXTMOD take precedence
> -ifdef SUBDIRS
> -  KBUILD_EXTMOD ?= $(SUBDIRS)
> -endif
> +# Use make M=dir or set the environment variable KBUILD_EXTMOD to specify the
> +# directory of external module to build. Setting M= takes precedence.
>  ifeq ("$(origin M)", "command line")
>    KBUILD_EXTMOD := $(M)
>  endif
>  
> +export KBUILD_CHECKSRC KBUILD_EXTMOD
>  
> -# kbuild supports saving output files in a separate directory.
> -# To locate output files in a separate directory two syntaxes are supported.
> -# In both cases the working directory must be the root of the kernel src.
> -# 1) O=
> -# Use "make O=dir/to/store/output/files/"
> -#
> -# 2) Set KBUILD_OUTPUT
> -# Set the environment variable KBUILD_OUTPUT to point to the directory
> -# where the output files shall be placed.
> -# export KBUILD_OUTPUT=dir/to/store/output/files/
> -# make
> -#
> -# The O= assignment takes precedence over the KBUILD_OUTPUT environment
> -# variable.
> +ifeq ($(abs_srctree),$(abs_objtree))
> +        # building in the source tree
> +	building_out_of_srctree :=
> +else
> +	building_out_of_srctree := 1
> +endif
>  
> +srctree		:= $(abs_srctree)
> +objtree		:= $(abs_objtree)
> +src		:= $(srctree)
> +obj		:= $(objtree)
>  
> -# KBUILD_SRC is set on invocation of make in OBJ directory
> -# KBUILD_SRC is not intended to be used by the regular user (for now)
> -ifeq ($(KBUILD_SRC),)
> +VPATH		:= $(srctree)
>  
> -# OK, Make called in directory where kernel src resides
> -# Do we want to locate output files in a separate directory?
> -ifeq ("$(origin O)", "command line")
> -  KBUILD_OUTPUT := $(O)
> -endif
> +export building_out_of_srctree srctree objtree VPATH
>  
> -# That's our default target when none is given on the command line
> -PHONY := _all
> -_all:
> +# To make sure we do not include .config for any of the *config targets
> +# catch them early, and hand them over to scripts/kconfig/Makefile
> +# It is allowed to specify more targets when calling make, including
> +# mixing *config targets and build targets.
> +# For example 'make oldconfig all'.
> +# Detect when mixed targets is specified, and make a second invocation
> +# of make so .config is not included in this case either (for *config).
>  
> -ifneq ($(KBUILD_OUTPUT),)
> -# Invoke a second make in the output directory, passing relevant variables
> -# check that the output directory actually exists
> -saved-output := $(KBUILD_OUTPUT)
> -KBUILD_OUTPUT := $(shell mkdir -p $(KBUILD_OUTPUT) && cd $(KBUILD_OUTPUT) \
> -								&& /bin/pwd)
> -$(if $(KBUILD_OUTPUT),, \
> -     $(error failed to create output directory "$(saved-output)"))
> +version_h := include/generated/version.h
>  
> -PHONY += $(MAKECMDGOALS) sub-make
> +clean-targets := %clean mrproper cleandocs
> +no-dot-config-targets := $(clean-targets) \
> +			 cscope gtags TAGS tags help% %docs \
> +			 $(version_h) kernelversion outputmakefile
> +no-sync-config-targets := $(no-dot-config-targets) install %install \
> +			   kernelrelease
>  
> -$(filter-out _all sub-make,$(MAKECMDGOALS)) _all: sub-make
> -	@:
> +config-build	:=
> +mixed-build	:=
> +need-config	:= 1
> +may-sync-config	:= 1
>  
> -sub-make: FORCE
> -	$(if $(KBUILD_VERBOSE:1=),@)$(MAKE) -C $(KBUILD_OUTPUT) \
> -	KBUILD_SRC=$(CURDIR) \
> -	KBUILD_EXTMOD="$(KBUILD_EXTMOD)" -f $(CURDIR)/Makefile \
> -	$(filter-out _all sub-make,$(MAKECMDGOALS))
> +ifneq ($(filter $(no-dot-config-targets), $(MAKECMDGOALS)),)
> +	ifeq ($(filter-out $(no-dot-config-targets), $(MAKECMDGOALS)),)
> +		need-config :=
> +	endif
> +endif
>  
> -# Leave processing to above invocation of make
> -skip-makefile := 1
> -endif # ifneq ($(KBUILD_OUTPUT),)
> -endif # ifeq ($(KBUILD_SRC),)
> +ifneq ($(filter $(no-sync-config-targets), $(MAKECMDGOALS)),)
> +	ifeq ($(filter-out $(no-sync-config-targets), $(MAKECMDGOALS)),)
> +		may-sync-config :=
> +	endif
> +endif
>  
> -# We process the rest of the Makefile if this is the final invocation of make
> -ifeq ($(skip-makefile),)
> +ifneq ($(KBUILD_EXTMOD),)
> +	may-sync-config :=
> +endif
>  
> -# If building an external module we do not care about the all: rule
> -# but instead _all depend on modules
> -PHONY += all
> -_all: all
> +ifeq ($(KBUILD_EXTMOD),)
> +        ifneq ($(filter config %config,$(MAKECMDGOALS)),)
> +		config-build := 1
> +                ifneq ($(words $(MAKECMDGOALS)),1)
> +			mixed-build := 1
> +                endif
> +        endif
> +endif
>  
> -# CDPATH can have sideeffects; disable, since we do know where we want to cd to
> -export CDPATH=
> +# For "make -j clean all", "make -j mrproper defconfig all", etc.
> +ifneq ($(filter $(clean-targets),$(MAKECMDGOALS)),)
> +        ifneq ($(filter-out $(clean-targets),$(MAKECMDGOALS)),)
> +		mixed-build := 1
> +        endif
> +endif
>  
> -srctree		:= $(if $(KBUILD_SRC),$(KBUILD_SRC),$(CURDIR))
> -objtree		:= $(CURDIR)
> -src		:= $(srctree)
> -obj		:= $(objtree)
> +ifdef mixed-build
> +# ===========================================================================
> +# We're called with mixed targets (*config and build targets).
> +# Handle them one by one.
>  
> -VPATH		:= $(srctree)$(if $(KBUILD_EXTMOD),:$(KBUILD_EXTMOD))
> +PHONY += $(MAKECMDGOALS) __build_one_by_one
>  
> -export srctree objtree VPATH
> +$(filter-out __build_one_by_one, $(MAKECMDGOALS)): __build_one_by_one
> +	@:
> +
> +__build_one_by_one:
> +	$(Q)set -e; \
> +	for i in $(MAKECMDGOALS); do \
> +		$(MAKE) -f $(srctree)/Makefile $$i; \
> +	done
> +
> +else # !mixed-build
> +
> +include scripts/Kbuild.include
> +
> +# Read KERNELRELEASE from include/config/kernel.release (if it exists)
> +KERNELRELEASE = $(shell cat include/config/kernel.release 2> /dev/null)
> +KERNELVERSION = $(VERSION)$(if $(PATCHLEVEL),.$(PATCHLEVEL)$(if $(SUBLEVEL),.$(SUBLEVEL)))$(EXTRAVERSION)
> +export VERSION PATCHLEVEL SUBLEVEL KERNELRELEASE KERNELVERSION
>  
>  # Cross compiling and selecting different set of gcc/bin-utils
>  # ---------------------------------------------------------------------------
> @@ -202,80 +370,6 @@ KBUILD_HOSTCXXFLAGS := -Wall -O2 $(HOST_LFS_CFLAGS) $(HOSTCXXFLAGS)
>  KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
>  KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
>  
> -# Decide whether to build built-in, modular, or both.
> -# Normally, just do built-in.
> -
> -KBUILD_MODULES :=
> -KBUILD_BUILTIN := 1
> -
> -#	If we have only "make modules", don't compile built-in objects.
> -#	When we're building modules with modversions, we need to consider
> -#	the built-in objects during the descend as well, in order to
> -#	make sure the checksums are up to date before we record them.
> -
> -ifeq ($(MAKECMDGOALS),modules)
> -  KBUILD_BUILTIN := $(if $(CONFIG_MODVERSIONS),1)
> -endif
> -
> -#	If we have "make <whatever> modules", compile modules
> -#	in addition to whatever we do anyway.
> -#	Just "make" or "make all" shall build modules as well
> -
> -ifneq ($(filter all _all modules,$(MAKECMDGOALS)),)
> -  KBUILD_MODULES := 1
> -endif
> -
> -export KBUILD_MODULES KBUILD_BUILTIN
> -export KBUILD_CHECKSRC KBUILD_SRC
> -
> -# Beautify output
> -# ---------------------------------------------------------------------------
> -#
> -# Normally, we echo the whole command before executing it. By making
> -# that echo $($(quiet)$(cmd)), we now have the possibility to set
> -# $(quiet) to choose other forms of output instead, e.g.
> -#
> -#         quiet_cmd_cc_o_c = Compiling $(RELDIR)/$@
> -#         cmd_cc_o_c       = $(CC) $(c_flags) -c -o $@ $<
> -#
> -# If $(quiet) is empty, the whole command will be printed.
> -# If it is set to "quiet_", only the short version will be printed.
> -# If it is set to "silent_", nothing will be printed at all, since
> -# the variable $(silent_cmd_cc_o_c) doesn't exist.
> -#
> -# A simple variant is to prefix commands with $(Q) - that's useful
> -# for commands that shall be hidden in non-verbose mode.
> -#
> -#	$(Q)ln $@ :<
> -#
> -# If KBUILD_VERBOSE equals 0 then the above command will be hidden.
> -# If KBUILD_VERBOSE equals 1 then the above command is displayed.
> -
> -ifeq ($(KBUILD_VERBOSE),1)
> -  quiet =
> -  Q =
> -else
> -  quiet=quiet_
> -  Q = @
> -endif
> -
> -# If the user is running make -s (silent mode), suppress echoing of
> -# commands
> -
> -ifneq ($(findstring s,$(MAKEFLAGS)),)
> -  quiet=silent_
> -endif
> -
> -export quiet Q KBUILD_VERBOSE
> -
> -
> -# Look for make include files relative to root of kernel src
> -MAKEFLAGS += --include-dir=$(srctree)
> -
> -# We need some generic definitions.
> -include $(srctree)/scripts/Kbuild.include
> -include $(srctree)/scripts/Makefile.lib
> -
>  # Make variables (CC, etc...)
>  
>  AS		= $(CROSS_COMPILE)as
> @@ -296,6 +390,7 @@ KALLSYMS	= scripts/kallsyms
>  PERL		= perl
>  PYTHON3		= python3
>  CHECK		= sparse
> +BASH		= bash
>  
>  CHECKFLAGS     := -D__linux__ -Dlinux -D__STDC__ -Dunix -D__unix__ -Wbitwise $(CF)
>  CFLAGS_KERNEL	=
> @@ -311,7 +406,7 @@ export MODVERDIR := $(if $(KBUILD_EXTMOD),$(firstword $(KBUILD_EXTMOD))/).tmp_ve
>  # Use LINUXINCLUDE when you must reference the include/ directory.
>  # Needed to be compatible with the O= option
>  LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
> -                   $(if $(KBUILD_SRC), -I$(srctree)/include) \
> +                   $(if $(building_out_of_srctree), -I$(srctree)/include) \
>  		   -I$(srctree)/arch/$(SRCARCH)/include \
>  		   -I$(objtree)/arch/$(SRCARCH)/include \
>                     -include $(srctree)/include/linux/kconfig.h
> @@ -330,12 +425,7 @@ LDFLAGS_barebox	:= -Map barebox.map
>  LDFLAGS_barebox += $(call ld-option, --no-dynamic-linker)
>  LDFLAGS_pbl += $(call ld-option, --no-dynamic-linker)
>  
> -# Read KERNELRELEASE from include/config/kernel.release (if it exists)
> -KERNELRELEASE = $(shell cat include/config/kernel.release 2> /dev/null)
> -KERNELVERSION = $(VERSION).$(PATCHLEVEL).$(SUBLEVEL)$(EXTRAVERSION)
> -
> -export VERSION PATCHLEVEL SUBLEVEL KERNELRELEASE KERNELVERSION
> -export ARCH SRCARCH CONFIG_SHELL HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
> +export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
>  export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL PYTHON3 UTS_MACHINE
>  export LEX YACC
>  export HOSTCXX CHECK CHECKFLAGS
> @@ -351,78 +441,45 @@ export CFLAGS_UBSAN
>  
>  # Files to ignore in find ... statements
>  
> -RCS_FIND_IGNORE := \( -name SCCS -o -name BitKeeper -o -name .svn -o -name CVS -o -name .pc -o -name .hg -o -name .git \) -prune -o
> -export RCS_TAR_IGNORE := --exclude SCCS --exclude BitKeeper --exclude .svn --exclude CVS --exclude .pc --exclude .hg --exclude .git
> +export RCS_FIND_IGNORE := \( -name SCCS -o -name BitKeeper -o -name .svn -o    \
> +			  -name CVS -o -name .pc -o -name .hg -o -name .git \) \
> +			  -prune -o
> +export RCS_TAR_IGNORE := --exclude SCCS --exclude BitKeeper --exclude .svn \
> +			 --exclude CVS --exclude .pc --exclude .hg --exclude .git
>  
>  # ===========================================================================
>  # Rules shared between *config targets and build targets
>  
> -# Basic helpers built in scripts/
> +# Basic helpers built in scripts/basic/
>  PHONY += scripts_basic
>  scripts_basic:
>  	$(Q)$(MAKE) $(build)=scripts/basic
>  
> -# To avoid any implicit rule to kick in, define an empty command.
> -scripts/basic/%: scripts_basic ;
> -
>  PHONY += outputmakefile
> +# Before starting out-of-tree build, make sure the source tree is clean.
>  # outputmakefile generates a Makefile in the output directory, if using a
>  # separate output directory. This allows convenient use of make in the
>  # output directory.
> +# At the same time when output Makefile generated, generate .gitignore to
> +# ignore whole output directory
>  outputmakefile:
> -ifneq ($(KBUILD_SRC),)
> -	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkmakefile \
> -	    $(srctree) $(objtree) $(VERSION) $(PATCHLEVEL)
> -endif
> -
> -# To make sure we do not include .config for any of the *config targets
> -# catch them early, and hand them over to scripts/kconfig/Makefile
> -# It is allowed to specify more targets when calling make, including
> -# mixing *config targets and build targets.
> -# For example 'make oldconfig all'.
> -# Detect when mixed targets is specified, and make a second invocation
> -# of make so .config is not included in this case either (for *config).
> -
> -no-dot-config-targets := clean mrproper distclean \
> -			 cscope TAGS tags help %docs check% \
> -			 include/generated/version.h headers_% \
> -			 kernelrelease kernelversion
> -
> -config-targets := 0
> -mixed-targets  := 0
> -dot-config     := 1
> -
> -ifneq ($(filter $(no-dot-config-targets), $(MAKECMDGOALS)),)
> -	ifeq ($(filter-out $(no-dot-config-targets), $(MAKECMDGOALS)),)
> -		dot-config := 0
> -	endif
> -endif
> -
> -ifneq ($(filter config %config,$(MAKECMDGOALS)),)
> -        config-targets := 1
> -	ifneq ($(filter-out config %config,$(MAKECMDGOALS)),)
> -		mixed-targets := 1
> -	endif
> +ifdef building_out_of_srctree
> +	$(Q)if [ -f $(srctree)/.config -o \
> +		 -d $(srctree)/include/config -o \
> +		 -d $(srctree)/arch/$(SRCARCH)/include/generated ]; then \
> +		echo >&2 "***"; \
> +		echo >&2 "*** The source tree is not clean, please run 'make$(if $(findstring command line, $(origin ARCH)), ARCH=$(ARCH)) mrproper'"; \
> +		echo >&2 "*** in $(abs_srctree)";\
> +		echo >&2 "***"; \
> +		false; \
> +	fi
> +	$(Q)ln -fsn $(srctree) source
> +	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkmakefile $(srctree)
> +	$(Q)test -e .gitignore || \
> +	{ echo "# this is build directory, ignore it"; echo "*"; } > .gitignore
>  endif
>  
> -ifeq ($(mixed-targets),1)
> -# ===========================================================================
> -# We're called with mixed targets (*config and build targets).
> -# Handle them one by one.
> -
> -PHONY += $(MAKECMDGOALS) __build_one_by_one
> -
> -$(filter-out __build_one_by_one, $(MAKECMDGOALS)): __build_one_by_one
> -	@:
> -
> -__build_one_by_one:
> -	$(Q)set -e; \
> -	for i in $(MAKECMDGOALS); do \
> -		$(MAKE) -f $(srctree)/Makefile $$i; \
> -	done
> -
> -else
> -ifeq ($(config-targets),1)
> +ifdef config-build
>  # ===========================================================================
>  # *config targets only - make sure prerequisites are updated, and descend
>  # in scripts/kconfig to make the *config target
> @@ -433,34 +490,65 @@ ifeq ($(config-targets),1)
>  include $(srctree)/arch/$(SRCARCH)/Makefile
>  export KBUILD_DEFCONFIG
>  
> -config: scripts_basic outputmakefile FORCE
> +config: outputmakefile scripts_basic FORCE
>  	$(Q)$(MAKE) $(build)=scripts/kconfig $@
>  
> -%config: scripts_basic outputmakefile FORCE
> +%config: outputmakefile scripts_basic FORCE
>  	$(Q)$(MAKE) $(build)=scripts/kconfig $@
>  
> -else
> +else #!config-build
>  # ===========================================================================
>  # Build targets only - this includes barebox, arch specific targets, clean
>  # targets and others. In general all targets except *config targets.
>  
> -# Additional helpers built in scripts/
> -# Carefully list dependencies so we do not try to build scripts twice
> -# in parallel
> -PHONY += scripts
> -scripts: scripts_basic
> -	$(Q)$(MAKE) $(build)=$(@)
> +# If building an external module we do not care about the all: rule
> +# but instead _all depend on modules
> +PHONY += all
> +ifeq ($(KBUILD_EXTMOD),)
> +_all: all
> +else
> +_all: modules
> +endif
> +
> +# Decide whether to build built-in, modular, or both.
> +# Normally, just do built-in.
> +
> +KBUILD_MODULES :=
> +KBUILD_BUILTIN := 1
> +
> +# If we have only "make modules", don't compile built-in objects.
> +# When we're building modules with modversions, we need to consider
> +# the built-in objects during the descend as well, in order to
> +# make sure the checksums are up to date before we record them.
> +
> +ifeq ($(MAKECMDGOALS),modules)
> +  KBUILD_BUILTIN := $(if $(CONFIG_MODVERSIONS),1)
> +endif
> +
> +# If we have "make <whatever> modules", compile modules
> +# in addition to whatever we do anyway.
> +# Just "make" or "make all" shall build modules as well
> +
> +ifneq ($(filter all _all modules,$(MAKECMDGOALS)),)
> +  KBUILD_MODULES := 1
> +endif
> +
> +export KBUILD_MODULES KBUILD_BUILTIN
>  
> -ifeq ($(dot-config),1)
> +ifdef need-config
>  include include/config/auto.conf
>  endif
>  
> +# We need some generic definitions.
> +include $(srctree)/scripts/Makefile.lib
> +
>  # Objects we will link into barebox / subdirs we need to visit
>  common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/
>  
>  include $(srctree)/arch/$(SRCARCH)/Makefile
>  
> -ifeq ($(dot-config),1)
> +ifdef need-config
> +ifdef may-sync-config
>  # Read in dependencies to all Kconfig* files, make sure to run syncconfig if
>  # changes are detected. This should be included after arch/$(SRCARCH)/Makefile
>  # because some architectures define CROSS_COMPILE there.
> @@ -484,7 +572,23 @@ $(KCONFIG_CONFIG):
>  # (Note: use the grouped target '&:' when we bump to GNU Make 4.3)
>  %/auto.conf %/auto.conf.cmd: $(KCONFIG_CONFIG)
>  	$(Q)$(MAKE) -f $(srctree)/Makefile syncconfig
> -endif # $(dot-config)
> +else # !may-sync-config
> +# External modules and some install targets need include/generated/autoconf.h
> +# and include/config/auto.conf but do not care if they are up-to-date.
> +# Use auto.conf to trigger the test
> +PHONY += include/config/auto.conf
> +
> +include/config/auto.conf:
> +	$(Q)test -e include/generated/autoconf.h -a -e $@ || (		\
> +	echo >&2;							\
> +	echo >&2 "  ERROR: Kernel configuration is invalid.";		\
> +	echo >&2 "         include/generated/autoconf.h or $@ are missing.";\
> +	echo >&2 "         Run 'make oldconfig && make prepare' on kernel src to fix it.";	\
> +	echo >&2 ;							\
> +	/bin/false)
> +
> +endif # may-sync-config
> +endif # need-config
>  
>  KBUILD_CFLAGS		+= -ggdb3
>  
> @@ -800,6 +904,13 @@ include/config/kernel.release: FORCE
>  	$(Q)rm -f $@
>  	$(Q)echo $(KERNELVERSION)$(localversion) > $@
>  
> +# Additional helpers built in scripts/
> +# Carefully list dependencies so we do not try to build scripts twice
> +# in parallel
> +PHONY += scripts
> +scripts: scripts_basic
> +	$(Q)$(MAKE) $(build)=$(@)
> +
>  # Things we need to do before we recursively start building the kernel
>  # or the modules are listed in "prepare".
>  # A multi level approach is used. prepareN is processed before prepareN-1.
> @@ -807,42 +918,20 @@ include/config/kernel.release: FORCE
>  # version.h and scripts_basic is processed / created.
>  
>  # Listed in dependency order
> -PHONY += prepare archprepare prepare0 prepare1 prepare2 prepare3
> -
> -# prepare-all is deprecated, use prepare as valid replacement
> -PHONY += prepare-all
> -
> -# prepare3 is used to check if we are building in a separate output directory,
> -# and if so do:
> -# 1) Check that make has not been executed in the kernel src $(srctree)
> -prepare3: include/config/kernel.release
> -ifneq ($(KBUILD_SRC),)
> -	@echo '  Using $(srctree) as source for barebox'
> -	$(Q)if [ -f $(srctree)/.config -o -d $(srctree)/include/config ]; then \
> -		echo "  $(srctree) is not clean, please run 'make mrproper'";\
> -		echo "  in the '$(srctree)' directory.";\
> -		false; \
> -	fi;
> -endif
> -
> -# prepare2 creates a makefile if using a separate output directory
> -prepare2: prepare3 outputmakefile
> +PHONY += prepare archprepare prepare0
>  
> -prepare1: prepare2 include/generated/version.h include/generated/utsrelease.h \
> -                   include/config.h
> +archprepare: outputmakefile scripts_basic include/config/kernel.release \
> +	$(version_h) include/generated/utsrelease.h include/config.h
>  
> +prepare0: archprepare FORCE
>  ifneq ($(KBUILD_MODULES),)
>  	$(Q)mkdir -p $(MODVERDIR)
>  	$(Q)rm -f $(MODVERDIR)/*
>  endif
> -
> -archprepare: prepare1 scripts_basic
> -
> -prepare0: archprepare FORCE
>  	$(Q)$(MAKE) $(build)=.
>  
>  # All the preparing..
> -prepare prepare-all: prepare0
> +prepare: prepare0
>  
>  # Leave this as default for preprocessing barebox.lds.S, which is now
>  # done in arch/$(SRCARCH)/kernel/Makefile
> @@ -1095,9 +1184,9 @@ help:
>  # Generate tags for editors
>  # ---------------------------------------------------------------------------
>  quiet_cmd_tags = GEN     $@
> -      cmd_tags = $(CONFIG_SHELL) $(srctree)/scripts/tags.sh $@
> +      cmd_tags = $(BASH) $(srctree)/scripts/tags.sh $@
>  
> -tags TAGS cscope: FORCE
> +tags TAGS cscope gtags: FORCE
>  	$(call cmd,tags)
>  
>  SPHINXBUILD   = sphinx-build
> @@ -1109,9 +1198,6 @@ docs: FORCE
>  	@$(SPHINXBUILD) -b html -d $(objtree)/doctrees $(srctree)/Documentation \
>  		$(objtree)/Documentation/html
>  
> -endif #ifeq ($(config-targets),1)
> -endif #ifeq ($(mixed-targets),1)
> -
>  # Single targets
>  # ---------------------------------------------------------------------------
>  # Single targets are compatible with:
> @@ -1175,14 +1261,13 @@ ifneq ($(cmd_files),)
>    include $(cmd_files)
>  endif
>  
> -endif	# skip-makefile
> +endif # config-build
> +endif # mixed-build
> +endif # need-sub-make
>  
>  PHONY += FORCE
>  FORCE:
>  
> -# Cancel implicit rules on top Makefile, `-rR' will apply to sub-makes.
> -Makefile: ;
> -
>  # Declare the contents of the PHONY variable as phony.  We keep that
>  # information in a variable so we can use it in if_changed and friends.
>  .PHONY: $(PHONY)
> diff --git a/firmware/Makefile b/firmware/Makefile
> index 3f2c31868..020d48440 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -56,7 +56,7 @@ $(patsubst %,$(obj)/pbl-%.gen.o, $(fw-external-y)): $(obj)/pbl-%.gen.o: $(fwdir)
>  
>  obj-pbl-y			 += $(patsubst %,%.gen.o, $(fw-external-y))
>  
> -ifeq ($(KBUILD_SRC),)
> +ifndef building_out_of_srctree
>  # Makefile.build only creates subdirectories for O= builds, but external
>  # firmware might live outside the kernel source tree
>  _dummy := $(foreach d,$(addprefix $(obj)/,$(dir $(fw-external-y))), $(shell [ -d $(d) ] || mkdir -p $(d)))
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 2273d815c..023215857 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -49,7 +49,7 @@ ifneq ($(hostprogs)$(hostprogs-y)$(hostprogs-m),)
>  include scripts/Makefile.host
>  endif
>  
> -ifneq ($(KBUILD_SRC),)
> +ifdef building_out_of_srctree
>  # Create output directory if not already present
>  _dummy := $(shell [ -d $(obj) ] || mkdir -p $(obj))
>  
> diff --git a/scripts/Makefile.host b/scripts/Makefile.host
> index 9740f3106..55b565ce3 100644
> --- a/scripts/Makefile.host
> +++ b/scripts/Makefile.host
> @@ -86,7 +86,7 @@ _hostc_flags   = $(KBUILD_HOSTCFLAGS)   $(HOST_EXTRACFLAGS)   \
>  _hostcxx_flags = $(KBUILD_HOSTCXXFLAGS) $(HOST_EXTRACXXFLAGS) \
>                   $(HOSTCXXFLAGS_$(target-stem).o)
>  
> -ifeq ($(KBUILD_SRC),)
> +ifndef building_out_of_srctree
>  __hostc_flags	= $(_hostc_flags)
>  __hostcxx_flags	= $(_hostcxx_flags)
>  else
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 985fc1303..39cc24b19 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -147,7 +147,7 @@ endif
>  # If building barebox in a separate objtree expand all occurrences
>  # of -Idir to -I$(srctree)/dir except for absolute paths (starting with '/').
>  
> -ifeq ($(KBUILD_SRC),)
> +ifndef building_out_of_srctree
>  __c_flags	= $(_c_flags)
>  __a_flags	= $(_a_flags)
>  __cpp_flags     = $(_cpp_flags)
> diff --git a/scripts/mkmakefile b/scripts/mkmakefile
> index 84af27bf0..1cb174751 100755
> --- a/scripts/mkmakefile
> +++ b/scripts/mkmakefile
> @@ -1,52 +1,17 @@
>  #!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
>  # Generates a small Makefile used in the root of the output
>  # directory, to allow make to be started from there.
>  # The Makefile also allow for more convinient build of external modules
>  
>  # Usage
>  # $1 - Kernel src directory
> -# $2 - Output directory
> -# $3 - version
> -# $4 - patchlevel
>  
> -
> -test ! -r $2/Makefile -o -O $2/Makefile || exit 0
> -# Only overwrite automatically generated Makefiles
> -# (so we do not overwrite kernel Makefile)
> -if test -e $2/Makefile && ! grep -q Automatically $2/Makefile
> -then
> -	exit 0
> -fi
>  if [ "${quiet}" != "silent_" ]; then
> -	echo "  GEN     $2/Makefile"
> +	echo "  GEN     Makefile"
>  fi
>  
> -cat << EOF > $2/Makefile
> +cat << EOF > Makefile
>  # Automatically generated by $0: don't edit
> -
> -VERSION = $3
> -PATCHLEVEL = $4
> -
> -lastword = \$(word \$(words \$(1)),\$(1))
> -makedir := \$(dir \$(call lastword,\$(MAKEFILE_LIST)))
> -
> -ifeq ("\$(origin V)", "command line")
> -VERBOSE := \$(V)
> -endif
> -ifneq (\$(VERBOSE),1)
> -Q := @
> -endif
> -
> -MAKEARGS := -C $1
> -MAKEARGS += O=\$(if \$(patsubst /%,,\$(makedir)),\$(CURDIR)/)\$(patsubst %/,%,\$(makedir))
> -
> -MAKEFLAGS += --no-print-directory
> -
> -.PHONY: __sub-make \$(MAKECMDGOALS)
> -
> -__sub-make:
> -	\$(Q)\$(MAKE) \$(MAKEARGS) \$(MAKECMDGOALS)
> -
> -\$(filter-out __sub-make, \$(MAKECMDGOALS)): __sub-make
> -	@:
> +include $1/Makefile
>  EOF
> diff --git a/scripts/tags.sh b/scripts/tags.sh
> index 8ae44642a..4e18ae528 100755
> --- a/scripts/tags.sh
> +++ b/scripts/tags.sh
> @@ -1,70 +1,64 @@
> -#!/bin/sh
> +#!/bin/bash
> +# SPDX-License-Identifier: GPL-2.0-only
>  # Generate tags or cscope files
>  # Usage tags.sh <mode>
>  #
>  # mode may be any of: tags, TAGS, cscope
>  #
>  # Uses the following environment variables:
> -# ARCH, SUBARCH, SRCARCH, srctree, src, obj
> +# SUBARCH, SRCARCH, srctree
>  
>  if [ "$KBUILD_VERBOSE" = "1" ]; then
>  	set -x
>  fi
>  
> -# This is a duplicate of RCS_FIND_IGNORE without escaped '()'
> -ignore="( -name SCCS -o -name BitKeeper -o -name .svn -o \
> -          -name CVS  -o -name .pc       -o -name .hg  -o \
> -          -name .git )                                   \
> -          -prune -o"
> +# RCS_FIND_IGNORE has escaped ()s -- remove them.
> +ignore="$(echo "$RCS_FIND_IGNORE" | sed 's|\\||g' )"
> +# tags and cscope files should also ignore MODVERSION *.mod.c files
> +ignore="$ignore ( -name *.mod.c ) -prune -o"
>  
> -# Do not use full path if we do not use O=.. builds
> -# Use make O=. {tags|cscope}
> +# Use make KBUILD_ABS_SRCTREE=1 {tags|cscope}
>  # to force full paths for a non-O= build
> -if [ "${KBUILD_SRC}" = "" ]; then
> +if [ "${srctree}" = "." -o -z "${srctree}" ]; then
>  	tree=
>  else
>  	tree=${srctree}/
>  fi
>  
> -# Find all available archs
> -find_all_archs()
> -{
> -	ALLSOURCE_ARCHS=""
> -	for arch in `ls ${tree}arch`; do
> -		ALLSOURCE_ARCHS="${ALLSOURCE_ARCHS} "${arch##\/}
> -	done
> -}
> +# ignore userspace tools
> +ignore="$ignore ( -path ${tree}tools ) -prune -o"
>  
>  # Detect if ALLSOURCE_ARCHS is set. If not, we assume SRCARCH
>  if [ "${ALLSOURCE_ARCHS}" = "" ]; then
>  	ALLSOURCE_ARCHS=${SRCARCH}
>  elif [ "${ALLSOURCE_ARCHS}" = "all" ]; then
> -	find_all_archs
> +	ALLSOURCE_ARCHS=$(find ${tree}arch/ -mindepth 1 -maxdepth 1 -type d -printf '%f ')
>  fi
>  
> -# find sources in arch/$ARCH
> +# find sources in arch/$1
>  find_arch_sources()
>  {
>  	for i in $archincludedir; do
>  		prune="$prune -wholename $i -prune -o"
>  	done
> -	find ${tree}arch/$1 $ignore $prune -name "$2" -print;
> +	find ${tree}arch/$1 $ignore $prune -name "$2" -not -type l -print;
>  }
>  
>  # find sources in arch/$1/include
>  find_arch_include_sources()
>  {
> -	include=$(find ${tree}arch/$1/ -name include -type d);
> +	include=$(find ${tree}arch/$1/ -name include -type d -print);
>  	if [ -n "$include" ]; then
>  		archincludedir="$archincludedir $include"
> -		find $include $ignore -name "$2" -print;
> +		find $include $ignore -name "$2" -not -type l -print;
>  	fi
>  }
>  
>  # find sources in include/
>  find_include_sources()
>  {
> -	find ${tree}include $ignore -name config -prune -o -name "$1" -print;
> +	find ${tree}include $ignore -name config -prune -o -name "$1" \
> +		-not -type l -print;
>  }
>  
>  # find sources in rest of tree
> @@ -72,8 +66,8 @@ find_include_sources()
>  find_other_sources()
>  {
>  	find ${tree}* $ignore \
> -	     \( -name include -o -name arch -o -name '.tmp_*' \) -prune -o \
> -	       -name "$1" -print;
> +	     \( -path ${tree}include -o -path ${tree}arch -o -name '.tmp_*' \) -prune -o \
> +	       -name "$1" -not -type l -print;
>  }
>  
>  find_sources()
> @@ -95,8 +89,37 @@ all_sources()
>  	find_other_sources '*.[chS]'
>  }
>  
> +all_compiled_sources()
> +{
> +	for i in $(all_sources); do
> +		case "$i" in
> +			*.[cS])
> +				j=${i/\.[cS]/\.o}
> +				j="${j#$tree}"
> +				if [ -e $j ]; then
> +					echo $i
> +				fi
> +				;;
> +			*)
> +				echo $i
> +				;;
> +		esac
> +	done
> +}
> +
> +all_target_sources()
> +{
> +	if [ -n "$COMPILED_SOURCE" ]; then
> +		all_compiled_sources
> +	else
> +		all_sources
> +	fi
> +}
> +
>  all_kconfigs()
>  {
> +	find ${tree}arch/ -maxdepth 1 $ignore \
> +	       -name "Kconfig*" -not -type l -print;
>  	for arch in $ALLSOURCE_ARCHS; do
>  		find_sources $arch 'Kconfig*'
>  	done
> @@ -105,93 +128,159 @@ all_kconfigs()
>  
>  docscope()
>  {
> -	(echo \-k; echo \-q; all_sources) > cscope.files
> +	(echo \-k; echo \-q; all_target_sources) > cscope.files
>  	cscope -b -f cscope.out
>  }
>  
>  dogtags()
>  {
> -	all_sources | gtags -i -f -
> +	all_target_sources | gtags -i -f -
> +}
> +
> +# Basic regular expressions with an optional /kind-spec/ for ctags and
> +# the following limitations:
> +# - No regex modifiers
> +# - Use \{0,1\} instead of \?, because etags expects an unescaped ?
> +# - \s is not working with etags, use a space or [ \t]
> +# - \w works, but does not match underscores in etags
> +# - etags regular expressions have to match at the start of a line;
> +#   a ^[^#] is prepended by setup_regex unless an anchor is already present
> +regex_asm=(
> +	'/^\(ENTRY\|_GLOBAL\)(\([[:alnum:]_\\]*\)).*/\2/'
> +)
> +regex_c=(
> +	'/^SYSCALL_DEFINE[0-9](\([[:alnum:]_]*\).*/sys_\1/'
> +	'/^BPF_CALL_[0-9](\([[:alnum:]_]*\).*/\1/'
> +	'/^COMPAT_SYSCALL_DEFINE[0-9](\([[:alnum:]_]*\).*/compat_sys_\1/'
> +	'/^TRACE_EVENT(\([[:alnum:]_]*\).*/trace_\1/'
> +	'/^TRACE_EVENT(\([[:alnum:]_]*\).*/trace_\1_rcuidle/'
> +	'/^DEFINE_EVENT([^,)]*, *\([[:alnum:]_]*\).*/trace_\1/'
> +	'/^DEFINE_EVENT([^,)]*, *\([[:alnum:]_]*\).*/trace_\1_rcuidle/'
> +	'/^DEFINE_INSN_CACHE_OPS(\([[:alnum:]_]*\).*/get_\1_slot/'
> +	'/^DEFINE_INSN_CACHE_OPS(\([[:alnum:]_]*\).*/free_\1_slot/'
> +	'/^PAGEFLAG(\([[:alnum:]_]*\).*/Page\1/'
> +	'/^PAGEFLAG(\([[:alnum:]_]*\).*/SetPage\1/'
> +	'/^PAGEFLAG(\([[:alnum:]_]*\).*/ClearPage\1/'
> +	'/^TESTSETFLAG(\([[:alnum:]_]*\).*/TestSetPage\1/'
> +	'/^TESTPAGEFLAG(\([[:alnum:]_]*\).*/Page\1/'
> +	'/^SETPAGEFLAG(\([[:alnum:]_]*\).*/SetPage\1/'
> +	'/\<__SETPAGEFLAG(\([[:alnum:]_]*\).*/__SetPage\1/'
> +	'/\<TESTCLEARFLAG(\([[:alnum:]_]*\).*/TestClearPage\1/'
> +	'/\<__TESTCLEARFLAG(\([[:alnum:]_]*\).*/TestClearPage\1/'
> +	'/\<CLEARPAGEFLAG(\([[:alnum:]_]*\).*/ClearPage\1/'
> +	'/\<__CLEARPAGEFLAG(\([[:alnum:]_]*\).*/__ClearPage\1/'
> +	'/^__PAGEFLAG(\([[:alnum:]_]*\).*/__SetPage\1/'
> +	'/^__PAGEFLAG(\([[:alnum:]_]*\).*/__ClearPage\1/'
> +	'/^PAGEFLAG_FALSE(\([[:alnum:]_]*\).*/Page\1/'
> +	'/\<TESTSCFLAG(\([[:alnum:]_]*\).*/TestSetPage\1/'
> +	'/\<TESTSCFLAG(\([[:alnum:]_]*\).*/TestClearPage\1/'
> +	'/\<SETPAGEFLAG_NOOP(\([[:alnum:]_]*\).*/SetPage\1/'
> +	'/\<CLEARPAGEFLAG_NOOP(\([[:alnum:]_]*\).*/ClearPage\1/'
> +	'/\<__CLEARPAGEFLAG_NOOP(\([[:alnum:]_]*\).*/__ClearPage\1/'
> +	'/\<TESTCLEARFLAG_FALSE(\([[:alnum:]_]*\).*/TestClearPage\1/'
> +	'/^PAGE_TYPE_OPS(\([[:alnum:]_]*\).*/Page\1/'
> +	'/^PAGE_TYPE_OPS(\([[:alnum:]_]*\).*/__SetPage\1/'
> +	'/^PAGE_TYPE_OPS(\([[:alnum:]_]*\).*/__ClearPage\1/'
> +	'/^TASK_PFA_TEST([^,]*, *\([[:alnum:]_]*\))/task_\1/'
> +	'/^TASK_PFA_SET([^,]*, *\([[:alnum:]_]*\))/task_set_\1/'
> +	'/^TASK_PFA_CLEAR([^,]*, *\([[:alnum:]_]*\))/task_clear_\1/'
> +	'/^DEF_MMIO_\(IN\|OUT\)_[XD](\([[:alnum:]_]*\),[^)]*)/\2/'
> +	'/^DEBUGGER_BOILERPLATE(\([[:alnum:]_]*\))/\1/'
> +	'/^DEF_PCI_AC_\(\|NO\)RET(\([[:alnum:]_]*\).*/\2/'
> +	'/^PCI_OP_READ(\(\w*\).*[1-4])/pci_bus_read_config_\1/'
> +	'/^PCI_OP_WRITE(\(\w*\).*[1-4])/pci_bus_write_config_\1/'
> +	'/\<DEFINE_\(RT_MUTEX\|MUTEX\|SEMAPHORE\|SPINLOCK\)(\([[:alnum:]_]*\)/\2/v/'
> +	'/\<DEFINE_\(RAW_SPINLOCK\|RWLOCK\|SEQLOCK\)(\([[:alnum:]_]*\)/\2/v/'
> +	'/\<DECLARE_\(RWSEM\|COMPLETION\)(\([[:alnum:]_]\+\)/\2/v/'
> +	'/\<DECLARE_BITMAP(\([[:alnum:]_]*\)/\1/v/'
> +	'/\(^\|\s\)\(\|L\|H\)LIST_HEAD(\([[:alnum:]_]*\)/\3/v/'
> +	'/\(^\|\s\)RADIX_TREE(\([[:alnum:]_]*\)/\2/v/'
> +	'/\<DEFINE_PER_CPU([^,]*, *\([[:alnum:]_]*\)/\1/v/'
> +	'/\<DEFINE_PER_CPU_SHARED_ALIGNED([^,]*, *\([[:alnum:]_]*\)/\1/v/'
> +	'/\<DECLARE_WAIT_QUEUE_HEAD(\([[:alnum:]_]*\)/\1/v/'
> +	'/\<DECLARE_\(TASKLET\|WORK\|DELAYED_WORK\)(\([[:alnum:]_]*\)/\2/v/'
> +	'/\(^\s\)OFFSET(\([[:alnum:]_]*\)/\2/v/'
> +	'/\(^\s\)DEFINE(\([[:alnum:]_]*\)/\2/v/'
> +	'/\<\(DEFINE\|DECLARE\)_HASHTABLE(\([[:alnum:]_]*\)/\2/v/'
> +	'/\<DEFINE_ID\(R\|A\)(\([[:alnum:]_]\+\)/\2/'
> +	'/\<DEFINE_WD_CLASS(\([[:alnum:]_]\+\)/\1/'
> +	'/\<ATOMIC_NOTIFIER_HEAD(\([[:alnum:]_]\+\)/\1/'
> +	'/\<RAW_NOTIFIER_HEAD(\([[:alnum:]_]\+\)/\1/'
> +	'/\<DECLARE_FAULT_ATTR(\([[:alnum:]_]\+\)/\1/'
> +	'/\<BLOCKING_NOTIFIER_HEAD(\([[:alnum:]_]\+\)/\1/'
> +	'/\<DEVICE_ATTR_\(RW\|RO\|WO\)(\([[:alnum:]_]\+\)/dev_attr_\2/'
> +	'/\<DRIVER_ATTR_\(RW\|RO\|WO\)(\([[:alnum:]_]\+\)/driver_attr_\2/'
> +	'/\<\(DEFINE\|DECLARE\)_STATIC_KEY_\(TRUE\|FALSE\)\(\|_RO\)(\([[:alnum:]_]\+\)/\4/'
> +)
> +regex_kconfig=(
> +	'/^[[:blank:]]*\(menu\|\)config[[:blank:]]\+\([[:alnum:]_]\+\)/\2/'
> +	'/^[[:blank:]]*\(menu\|\)config[[:blank:]]\+\([[:alnum:]_]\+\)/CONFIG_\2/'
> +)
> +setup_regex()
> +{
> +	local mode=$1 lang tmp=() r
> +	shift
> +
> +	regex=()
> +	for lang; do
> +		case "$lang" in
> +		asm)       tmp=("${regex_asm[@]}") ;;
> +		c)         tmp=("${regex_c[@]}") ;;
> +		kconfig)   tmp=("${regex_kconfig[@]}") ;;
> +		esac
> +		for r in "${tmp[@]}"; do
> +			if test "$mode" = "exuberant"; then
> +				regex[${#regex[@]}]="--regex-$lang=${r}b"
> +			else
> +				# Remove ctags /kind-spec/
> +				case "$r" in
> +				/*/*/?/)
> +					r=${r%?/}
> +				esac
> +				# Prepend ^[^#] unless already anchored
> +				case "$r" in
> +				/^*) ;;
> +				*)
> +					r="/^[^#]*${r#/}"
> +				esac
> +				regex[${#regex[@]}]="--regex=$r"
> +			fi
> +		done
> +	done
>  }
>  
>  exuberant()
>  {
> -	all_sources | xargs $1 -a                               \
> -	-I __initdata,__exitdata,__acquires,__releases          \
> -	-I __read_mostly,____cacheline_aligned                  \
> +	setup_regex exuberant asm c
> +	all_target_sources | xargs $1 -a                        \
> +	-I __initdata,__exitdata,__initconst,__ro_after_init	\
> +	-I __initdata_memblock					\
> +	-I __refdata,__attribute,__maybe_unused,__always_unused \
> +	-I __acquires,__releases,__deprecated,__always_inline	\
> +	-I __read_mostly,__aligned,____cacheline_aligned        \
>  	-I ____cacheline_aligned_in_smp                         \
> +	-I __cacheline_aligned,__cacheline_aligned_in_smp	\
>  	-I ____cacheline_internodealigned_in_smp                \
> -	-I EXPORT_SYMBOL,EXPORT_SYMBOL_GPL                      \
> +	-I __used,__packed,__packed2__,__must_check,__must_hold	\
> +	-I EXPORT_SYMBOL,EXPORT_SYMBOL_GPL,ACPI_EXPORT_SYMBOL   \
>  	-I DEFINE_TRACE,EXPORT_TRACEPOINT_SYMBOL,EXPORT_TRACEPOINT_SYMBOL_GPL \
> -	--extra=+f --c-kinds=+px                                \
> -	--regex-asm='/^(ENTRY|_GLOBAL)\(([^)]*)\).*/\2/'        \
> -	--regex-c='/^SYSCALL_DEFINE[[:digit:]]?\(([^,)]*).*/sys_\1/' \
> -	--regex-c++='/^TRACE_EVENT\(([^,)]*).*/trace_\1/'		\
> -	--regex-c++='/^DEFINE_EVENT\([^,)]*, *([^,)]*).*/trace_\1/'	\
> -	--regex-c++='/PAGEFLAG\(([^,)]*).*/Page\1/'			\
> -	--regex-c++='/PAGEFLAG\(([^,)]*).*/SetPage\1/'			\
> -	--regex-c++='/PAGEFLAG\(([^,)]*).*/ClearPage\1/'		\
> -	--regex-c++='/TESTSETFLAG\(([^,)]*).*/TestSetPage\1/'		\
> -	--regex-c++='/TESTPAGEFLAG\(([^,)]*).*/Page\1/'			\
> -	--regex-c++='/SETPAGEFLAG\(([^,)]*).*/SetPage\1/'		\
> -	--regex-c++='/__SETPAGEFLAG\(([^,)]*).*/__SetPage\1/'		\
> -	--regex-c++='/TESTCLEARFLAG\(([^,)]*).*/TestClearPage\1/'	\
> -	--regex-c++='/__TESTCLEARFLAG\(([^,)]*).*/TestClearPage\1/'	\
> -	--regex-c++='/CLEARPAGEFLAG\(([^,)]*).*/ClearPage\1/'		\
> -	--regex-c++='/__CLEARPAGEFLAG\(([^,)]*).*/__ClearPage\1/'	\
> -	--regex-c++='/__PAGEFLAG\(([^,)]*).*/__SetPage\1/'		\
> -	--regex-c++='/__PAGEFLAG\(([^,)]*).*/__ClearPage\1/'		\
> -	--regex-c++='/PAGEFLAG_FALSE\(([^,)]*).*/Page\1/'		\
> -	--regex-c++='/TESTSCFLAG\(([^,)]*).*/TestSetPage\1/'		\
> -	--regex-c++='/TESTSCFLAG\(([^,)]*).*/TestClearPage\1/'		\
> -	--regex-c++='/SETPAGEFLAG_NOOP\(([^,)]*).*/SetPage\1/'		\
> -	--regex-c++='/CLEARPAGEFLAG_NOOP\(([^,)]*).*/ClearPage\1/'	\
> -	--regex-c++='/__CLEARPAGEFLAG_NOOP\(([^,)]*).*/__ClearPage\1/'	\
> -	--regex-c++='/TESTCLEARFLAG_FALSE\(([^,)]*).*/TestClearPage\1/' \
> -	--regex-c++='/_PE\(([^,)]*).*/PEVENT_ERRNO__\1/'		\
> -	--regex-c='/PCI_OP_READ\(([a-z]*[a-z]).*[1-4]\)/pci_bus_read_config_\1/' \
> -	--regex-c='/PCI_OP_WRITE\(([a-z]*[a-z]).*[1-4]\)/pci_bus_write_config_\1/'
> +	-I static,const						\
> +	--extra=+fq --c-kinds=+px --fields=+iaS --langmap=c:+.h \
> +	"${regex[@]}"
>  
> +	setup_regex exuberant kconfig
>  	all_kconfigs | xargs $1 -a                              \
> -	--langdef=kconfig --language-force=kconfig              \
> -	--regex-kconfig='/^[[:blank:]]*(menu|)config[[:blank:]]+([[:alnum:]_]+)/\2/' \
> -	--regex-kconfig='/^[[:blank:]]*(menu|)config[[:blank:]]+([[:alnum:]_]+)/CONFIG_\2/'
> +	--langdef=kconfig --language-force=kconfig "${regex[@]}"
> +
>  }
>  
>  emacs()
>  {
> -	all_sources | xargs $1 -a                               \
> -	--regex='/^(ENTRY|_GLOBAL)(\([^)]*\)).*/\2/'            \
> -	--regex='/^SYSCALL_DEFINE[0-9]?(\([^,)]*\).*/sys_\1/'   \
> -	--regex='/^TRACE_EVENT(\([^,)]*\).*/trace_\1/'		\
> -	--regex='/^DEFINE_EVENT([^,)]*, *\([^,)]*\).*/trace_\1/' \
> -	--regex='/PAGEFLAG\(([^,)]*).*/Page\1/'			\
> -	--regex='/PAGEFLAG\(([^,)]*).*/SetPage\1/'		\
> -	--regex='/PAGEFLAG\(([^,)]*).*/ClearPage\1/'		\
> -	--regex='/TESTSETFLAG\(([^,)]*).*/TestSetPage\1/'	\
> -	--regex='/TESTPAGEFLAG\(([^,)]*).*/Page\1/'		\
> -	--regex='/SETPAGEFLAG\(([^,)]*).*/SetPage\1/'		\
> -	--regex='/__SETPAGEFLAG\(([^,)]*).*/__SetPage\1/'	\
> -	--regex='/TESTCLEARFLAG\(([^,)]*).*/TestClearPage\1/'	\
> -	--regex='/__TESTCLEARFLAG\(([^,)]*).*/TestClearPage\1/'	\
> -	--regex='/CLEARPAGEFLAG\(([^,)]*).*/ClearPage\1/'	\
> -	--regex='/__CLEARPAGEFLAG\(([^,)]*).*/__ClearPage\1/'	\
> -	--regex='/__PAGEFLAG\(([^,)]*).*/__SetPage\1/'		\
> -	--regex='/__PAGEFLAG\(([^,)]*).*/__ClearPage\1/'	\
> -	--regex='/PAGEFLAG_FALSE\(([^,)]*).*/Page\1/'		\
> -	--regex='/TESTSCFLAG\(([^,)]*).*/TestSetPage\1/'	\
> -	--regex='/TESTSCFLAG\(([^,)]*).*/TestClearPage\1/'	\
> -	--regex='/SETPAGEFLAG_NOOP\(([^,)]*).*/SetPage\1/'	\
> -	--regex='/CLEARPAGEFLAG_NOOP\(([^,)]*).*/ClearPage\1/'	\
> -	--regex='/__CLEARPAGEFLAG_NOOP\(([^,)]*).*/__ClearPage\1/' \
> -	--regex='/TESTCLEARFLAG_FALSE\(([^,)]*).*/TestClearPage\1/' \
> -	--regex='/_PE\(([^,)]*).*/PEVENT_ERRNO__\1/'		\
> -	--regex='/PCI_OP_READ\(([a-z]*[a-z]).*[1-4]\)/pci_bus_read_config_\1/' \
> -	--regex='/PCI_OP_WRITE\(([a-z]*[a-z]).*[1-4]\)/pci_bus_write_config_\1/'
> +	setup_regex emacs asm c
> +	all_target_sources | xargs $1 -a "${regex[@]}"
>  
> -	all_kconfigs | xargs $1 -a                              \
> -	--regex='/^[ \t]*\(\(menu\)*config\)[ \t]+\([a-zA-Z0-9_]+\)/\3/' \
> -	--regex='/^[ \t]*\(\(menu\)*config\)[ \t]+\([a-zA-Z0-9_]+\)/CONFIG_\3/'
> +	setup_regex emacs kconfig
> +	all_kconfigs | xargs $1 -a "${regex[@]}"
>  }
>  
>  xtags()
> @@ -201,11 +290,10 @@ xtags()
>  	elif $1 --version 2>&1 | grep -iq emacs; then
>  		emacs $1
>  	else
> -		all_sources | xargs $1 -a
> -        fi
> +		all_target_sources | xargs $1 -a
> +	fi
>  }
>  
> -
>  # Support um (which uses SUBARCH)
>  if [ "${ARCH}" = "um" ]; then
>  	if [ "$SUBARCH" = "i386" ]; then
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
