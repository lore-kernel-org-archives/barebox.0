Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glcOC-00013k-Jd
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 16:25:35 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 22 Jan 2019 01:25:10 +0900
Message-Id: <1548087912-22262-1-git-send-email-yamada.masahiro@socionext.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] kbuild: cherry-pick changes from Linux v5.0-rc3
To: barebox@lists.infradead.org

Not synced completely.

Just cherry-picking low-hanging fruits.

  0b35786d77ba  kbuild: call make once for all targets when O=.. is used
  5e54d5e5fbc1  kbuild: kill EXTRA_ARFLAGS
  836caba77c29  kbuild: kill backward compatibility checks
  3156fd0529b5  kbuild: fix some minor typoes
  b8b0618cf6fa  kbuild: remove extra ifdef/endif of top Makefile
  16f890988114  kbuild: Remove reference to uninitialised variable
  9319f4539c18  kbuild: support simultaneous "make %config" and "make all"
  9d5db8949f1e  scripts/Makefile.clean: clean also $(extra-m) and $(extra-)
  a4954fd7724c  kbuild: remove obj-n and lib-n handling
  371fdc77af44  kbuild: collect shorthands into scripts/Kbuild.include
  a29b82326ed4  kbuild: Remove duplicate $(cmd) definition in Makefile.clean
  a1e7b7bb1ab5  Makefile: sort list of defconfig targets in make help output
  34948e0bbf98  kbuild: Drop support for clean-rule
  4218affdf57f  kbuild: remove warning about "make depend"
  9c8fa9bc08f6  kbuild: fix if_change and friends to consider argument order
  39a33ff80a25  kbuild: remove cc-option-align
  a7f924190924  kbuild: add %.dtb.S and %.dtb to 'targets' automatically
  54a702f70589  kbuild: mark $(targets) as .SECONDARY and remove .PRECIOUS markers
  9564a8cf422d  Kbuild: fix # escaping in .cmd files for future Make
  bd412d81b7ea  kbuild: .PHONY is not a variable, but PHONY is
  6916162c7308  kbuild: remove duplicated comments about PHONY
  d6c6ab93e17f  kbuild: remove deprecated host-progs variable
  7d0ea2524202  kbuild: use 'else ifeq' for checksrc to improve readability
  3f80babd9ca4  kbuild: remove unused cc-fullversion variable
  bd352a739fde  kbuild: remove unused baseprereq
  b421b8a6cb87  kbuild: remove unused archmrproper

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 Makefile                 | 65 +++++++++++++++++++++---------------------------
 scripts/Kbuild.include   | 33 ++++++++++--------------
 scripts/Makefile.build   | 63 +++++++++++-----------------------------------
 scripts/Makefile.clean   | 27 ++++----------------
 scripts/Makefile.lib     |  4 +--
 scripts/Makefile.modpost |  4 ---
 6 files changed, 62 insertions(+), 134 deletions(-)

diff --git a/Makefile b/Makefile
index 6a58374..f8c3d75 100644
--- a/Makefile
+++ b/Makefile
@@ -35,10 +35,8 @@ MAKEFLAGS += -rR --no-print-directory
 # To put more focus on warnings, be less verbose as default
 # Use 'make V=1' to see the full commands
 
-ifdef V
-  ifeq ("$(origin V)", "command line")
-    KBUILD_VERBOSE = $(V)
-  endif
+ifeq ("$(origin V)", "command line")
+  KBUILD_VERBOSE = $(V)
 endif
 ifndef KBUILD_VERBOSE
   KBUILD_VERBOSE = 0
@@ -54,10 +52,8 @@ endif
 # See the file "Documentation/sparse.txt" for more details, including
 # where to get the "sparse" utility.
 
-ifdef C
-  ifeq ("$(origin C)", "command line")
-    KBUILD_CHECKSRC = $(C)
-  endif
+ifeq ("$(origin C)", "command line")
+  KBUILD_CHECKSRC = $(C)
 endif
 ifndef KBUILD_CHECKSRC
   KBUILD_CHECKSRC = 0
@@ -69,10 +65,8 @@ endif
 ifdef SUBDIRS
   KBUILD_EXTMOD ?= $(SUBDIRS)
 endif
-ifdef M
-  ifeq ("$(origin M)", "command line")
-    KBUILD_EXTMOD := $(M)
-  endif
+ifeq ("$(origin M)", "command line")
+  KBUILD_EXTMOD := $(M)
 endif
 
 
@@ -98,10 +92,8 @@ ifeq ($(KBUILD_SRC),)
 
 # OK, Make called in directory where kernel src resides
 # Do we want to locate output files in a separate directory?
-ifdef O
-  ifeq ("$(origin O)", "command line")
-    KBUILD_OUTPUT := $(O)
-  endif
+ifeq ("$(origin O)", "command line")
+  KBUILD_OUTPUT := $(O)
 endif
 
 # That's our default target when none is given on the command line
@@ -117,12 +109,16 @@ KBUILD_OUTPUT := $(shell mkdir -p $(KBUILD_OUTPUT) && cd $(KBUILD_OUTPUT) \
 $(if $(KBUILD_OUTPUT),, \
      $(error failed to create output directory "$(saved-output)"))
 
-PHONY += $(MAKECMDGOALS)
+PHONY += $(MAKECMDGOALS) sub-make
 
-$(filter-out _all,$(MAKECMDGOALS)) _all:
+$(filter-out _all sub-make,$(MAKECMDGOALS)) _all: sub-make
+	@:
+
+sub-make: FORCE
 	$(if $(KBUILD_VERBOSE:1=),@)$(MAKE) -C $(KBUILD_OUTPUT) \
 	KBUILD_SRC=$(CURDIR) \
-	KBUILD_EXTMOD="$(KBUILD_EXTMOD)" -f $(CURDIR)/Makefile $@
+	KBUILD_EXTMOD="$(KBUILD_EXTMOD)" -f $(CURDIR)/Makefile \
+	$(filter-out _all sub-make,$(MAKECMDGOALS))
 
 # Leave processing to above invocation of make
 skip-makefile := 1
@@ -394,8 +390,16 @@ ifeq ($(mixed-targets),1)
 # We're called with mixed targets (*config and build targets).
 # Handle them one by one.
 
-%:: FORCE
-	$(Q)$(MAKE) -C $(srctree) KBUILD_SRC= $@
+PHONY += $(MAKECMDGOALS) __build_one_by_one
+
+$(filter-out __build_one_by_one, $(MAKECMDGOALS)): __build_one_by_one
+	@:
+
+__build_one_by_one:
+	$(Q)set -e; \
+	for i in $(MAKECMDGOALS); do \
+		$(MAKE) -f $(srctree)/Makefile $$i; \
+	done
 
 else
 ifeq ($(config-targets),1)
@@ -881,12 +885,6 @@ include/generated/utsrelease.h: include/config/kernel.release FORCE
 	$(call filechk,utsrelease.h)
 
 # ---------------------------------------------------------------------------
-
-PHONY += depend dep
-depend dep:
-	@echo '*** Warning: make $@ is unnecessary now.'
-
-# ---------------------------------------------------------------------------
 # Modules
 
 ifdef CONFIG_MODULES
@@ -1007,11 +1005,11 @@ mrproper: rm-dirs  := $(wildcard $(MRPROPER_DIRS))
 mrproper: rm-files := $(wildcard $(MRPROPER_FILES))
 mrproper-dirs      := $(addprefix _mrproper_,scripts)
 
-PHONY += $(mrproper-dirs) mrproper archmrproper
+PHONY += $(mrproper-dirs) mrproper
 $(mrproper-dirs):
 	$(Q)$(MAKE) $(clean)=$(patsubst _mrproper_%,%,$@)
 
-mrproper: clean archmrproper $(mrproper-dirs)
+mrproper: clean $(mrproper-dirs)
 	$(call cmd,rmdirs)
 	$(call cmd,rmfiles)
 
@@ -1043,7 +1041,7 @@ rpm: include/config/kernel.release FORCE
 # ---------------------------------------------------------------------------
 
 boards := $(wildcard $(srctree)/arch/$(ARCH)/configs/*_defconfig)
-boards := $(notdir $(boards))
+boards := $(sort $(notdir $(boards)))
 
 help:
 	@echo  'Cleaning targets:'
@@ -1174,11 +1172,6 @@ ifneq ($(cmd_files),)
   include $(cmd_files)
 endif
 
-# Shorthand for $(Q)$(MAKE) -f scripts/Makefile.clean obj=dir
-# Usage:
-# $(Q)$(MAKE) $(clean)=dir
-clean := -f $(if $(KBUILD_SRC),$(srctree)/)scripts/Makefile.clean obj
-
 endif	# skip-makefile
 
 PHONY += FORCE
@@ -1187,6 +1180,6 @@ FORCE:
 # Cancel implicit rules on top Makefile, `-rR' will apply to sub-makes.
 Makefile: ;
 
-# Declare the contents of the .PHONY variable as phony.  We keep that
+# Declare the contents of the PHONY variable as phony.  We keep that
 # information in a variable so we can use it in if_changed and friends.
 .PHONY: $(PHONY)
diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index edfe27e..5fa7f16 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -7,6 +7,8 @@ quote   := "
 squote  := '
 empty   :=
 space   := $(empty) $(empty)
+space_escape := _-_SPACE_-_
+pound := \#
 
 ###
 # Name of target with a '.' as filename prefix. foo/bar.o => foo/.bar.o
@@ -22,10 +24,6 @@ depfile = $(subst $(comma),_,$(dot-target).d)
 basetarget = $(basename $(notdir $@))
 
 ###
-# filename of first prerequisite with directory and extension stripped
-baseprereq = $(basename $(notdir $<))
-
-###
 # Escape single quote for use in echo statements
 escsq = $(subst $(squote),'\$(squote)',$1)
 
@@ -118,11 +116,6 @@ cc-option = $(call try-run,\
 cc-option-yn = $(call try-run,\
 	$(CC) $(KBUILD_CPPFLAGS) $(CFLAGS) $(1) -c -xc /dev/null -o "$$TMP",y,n)
 
-# cc-option-align
-# Prefix align with either -falign or -malign
-cc-option-align = $(subst -functions=0,,\
-	$(call cc-option,-falign-functions=0,-malign-functions=0))
-
 # cc-disable-warning
 # Usage: cflags-y += $(call cc-disable-warning,unused-but-set-variable)
 cc-disable-warning = $(call try-run,\
@@ -132,11 +125,6 @@ cc-disable-warning = $(call try-run,\
 # Usage gcc-ver := $(call cc-version)
 cc-version = $(shell $(CONFIG_SHELL) $(srctree)/scripts/gcc-version.sh $(CC))
 
-# cc-fullversion
-# Usage gcc-ver := $(call cc-fullversion)
-cc-fullversion = $(shell $(CONFIG_SHELL) \
-	$(srctree)/scripts/gcc-version.sh -p $(CC))
-
 # cc-ifversion
 # Usage:  EXTRA_CFLAGS += $(call cc-ifversion, -lt, 0402, -O1)
 cc-ifversion = $(shell [ $(call cc-version, $(CC)) $(1) $(2) ] && echo $(3))
@@ -170,6 +158,11 @@ build := -f $(if $(KBUILD_SRC),$(srctree)/)scripts/Makefile.build obj
 # $(Q)$(MAKE) $(modbuiltin)=dir
 modbuiltin := -f $(if $(KBUILD_SRC),$(srctree)/)scripts/Makefile.modbuiltin obj
 
+# Shorthand for $(Q)$(MAKE) -f scripts/Makefile.clean obj=dir
+# Usage:
+# $(Q)$(MAKE) $(clean)=dir
+clean := -f $(if $(KBUILD_SRC),$(srctree)/)scripts/Makefile.clean obj
+
 # Prefix -I with $(srctree) if it is not an absolute path.
 # skip if -I has no parameter
 addtree = $(if $(patsubst -I%,%,$(1)), \
@@ -198,21 +191,21 @@ objectify = $(foreach o,$(1),$(if $(filter /%,$(o)),$(o),$(obj)/$(o)))
 # See Documentation/kbuild/makefiles.txt for more info
 
 ifneq ($(KBUILD_NOCMDDEP),1)
-# Check if both arguments has same arguments. Result is empty string if equal.
-# User may override this check using make KBUILD_NOCMDDEP=1
-arg-check = $(strip $(filter-out $(cmd_$(1)), $(cmd_$@)) \
-                    $(filter-out $(cmd_$@),   $(cmd_$(1))) )
+# Check if both arguments are the same including their order. Result is empty
+# string if equal. User may override this check using make KBUILD_NOCMDDEP=1
+arg-check = $(filter-out $(subst $(space),$(space_escape),$(strip $(cmd_$@))), \
+                         $(subst $(space),$(space_escape),$(strip $(cmd_$1))))
 else
 arg-check = $(if $(strip $(cmd_$@)),,1)
 endif
 
 # Replace >$< with >$$< to preserve $ when reloading the .cmd file
 # (needed for make)
-# Replace >#< with >\#< to avoid starting a comment in the .cmd file
+# Replace >#< with >$(pound)< to avoid starting a comment in the .cmd file
 # (needed for make)
 # Replace >'< with >'\''< to be able to enclose the whole string in '...'
 # (needed for the shell)
-make-cmd = $(call escsq,$(subst \#,\\\#,$(subst $$,$$$$,$(cmd_$(1)))))
+make-cmd = $(call escsq,$(subst $(pound),$$(pound),$(subst $$,$$$$,$(cmd_$(1)))))
 
 # Find any prerequisites that is newer than target or that does not exist.
 # PHONY targets skipped in both cases.
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 3c686e4..2c45ea8 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -42,14 +42,7 @@ include $(if $(wildcard $(kbuild-dir)/Kbuild), $(kbuild-dir)/Kbuild, $(kbuild-di
 
 include scripts/Makefile.lib
 
-ifdef host-progs
-ifneq ($(hostprogs-y),$(host-progs))
-$(warning kbuild: $(obj)/Makefile - Usage of host-progs is deprecated. Please replace with hostprogs-y!)
-hostprogs-y += $(host-progs)
-endif
-endif
-
-# Do not include host rules unles needed
+# Do not include host rules unless needed
 ifneq ($(hostprogs-y)$(hostprogs-m),)
 include scripts/Makefile.host
 endif
@@ -63,31 +56,6 @@ _dummy := $(shell [ -d $(obj) ] || mkdir -p $(obj))
 _dummy := $(foreach d,$(obj-dirs), $(shell [ -d $(d) ] || mkdir -p $(d)))
 endif
 
-
-ifdef EXTRA_TARGETS
-$(warning kbuild: $(obj)/Makefile - Usage of EXTRA_TARGETS is obsolete in 2.6. Please fix!)
-endif
-
-ifdef build-targets
-$(warning kbuild: $(obj)/Makefile - Usage of build-targets is obsolete in 2.6. Please fix!)
-endif
-
-ifdef export-objs
-$(warning kbuild: $(obj)/Makefile - Usage of export-objs is obsolete in 2.6. Please fix!)
-endif
-
-ifdef O_TARGET
-$(warning kbuild: $(obj)/Makefile - Usage of O_TARGET := $(O_TARGET) is obsolete in 2.6. Please fix!)
-endif
-
-ifdef L_TARGET
-$(error kbuild: $(obj)/Makefile - Use of L_TARGET is replaced by lib-y in 2.6. Please fix!)
-endif
-
-ifdef list-multi
-$(warning kbuild: $(obj)/Makefile - list-multi := $(list-multi) is obsolete in 2.6. Please fix!)
-endif
-
 ifndef obj
 $(warning kbuild: Makefile.build is included improperly)
 endif
@@ -98,7 +66,7 @@ ifneq ($(strip $(lib-y) $(lib-m) $(lib-n) $(lib-)),)
 lib-target := $(obj)/lib.a
 endif
 
-ifneq ($(strip $(obj-y) $(obj-m) $(obj-n) $(obj-) $(lib-target) $(pbl-y)),)
+ifneq ($(strip $(obj-y) $(obj-m) $(obj-) $(lib-target) $(pbl-y)),)
 builtin-target := $(obj)/built-in.o
 endif
 
@@ -116,17 +84,14 @@ __build: $(if $(KBUILD_BUILTIN),$(builtin-target) $(lib-target) $(pbl-target) $(
 	@:
 
 # Linus' kernel sanity checking tool
-ifneq ($(KBUILD_CHECKSRC),0)
-  ifeq ($(KBUILD_CHECKSRC),2)
-    quiet_cmd_force_checksrc = CHECK   $<
-          cmd_force_checksrc = $(CHECK) $(CHECKFLAGS) $(c_flags) $< ;
-  else
-      quiet_cmd_checksrc     = CHECK   $<
-            cmd_checksrc     = $(CHECK) $(CHECKFLAGS) $(c_flags) $< ;
-  endif
+ifeq ($(KBUILD_CHECKSRC),1)
+  quiet_cmd_checksrc       = CHECK   $<
+        cmd_checksrc       = $(CHECK) $(CHECKFLAGS) $(c_flags) $<
+else ifeq ($(KBUILD_CHECKSRC),2)
+  quiet_cmd_force_checksrc = CHECK   $<
+        cmd_force_checksrc = $(CHECK) $(CHECKFLAGS) $(c_flags) $<
 endif
 
-
 # Compile C sources (.c)
 # ---------------------------------------------------------------------------
 
@@ -341,7 +306,7 @@ endif # pbl-target
 #
 ifdef lib-target
 quiet_cmd_link_l_target = AR      $@
-cmd_link_l_target = rm -f $@; $(AR) $(EXTRA_ARFLAGS) rcs $@ $(lib-y)
+cmd_link_l_target = rm -f $@; $(AR) rcs $@ $(lib-y)
 
 $(lib-target): $(lib-y) FORCE
 	$(call if_changed,link_l_target)
@@ -385,9 +350,13 @@ targets := $(filter-out $(PHONY), $(targets))
 intermediate_targets = $(foreach sfx, $(2), \
 				$(patsubst %$(strip $(1)),%$(sfx), \
 					$(filter %$(strip $(1)), $(targets))))
+# %.asn1.o <- %.asn1.[ch] <- %.asn1
+# %.dtb.o <- %.dtb.S <- %.dtb <- %.dts
 # %.lex.o <- %.lex.c <- %.l
 # %.tab.o <- %.tab.[ch] <- %.y
-targets += $(call intermediate_targets, .lex.o, .lex.c) \
+targets += $(call intermediate_targets, .asn1.o, .asn1.c .asn1.h) \
+	   $(call intermediate_targets, .dtb.o, .dtb.S .dtb) \
+	   $(call intermediate_targets, .lex.o, .lex.c) \
 	   $(call intermediate_targets, .tab.o, .tab.c .tab.h)
 
 # Descending
@@ -416,8 +385,4 @@ ifneq ($(cmd_files),)
   include $(cmd_files)
 endif
 
-
-# Declare the contents of the .PHONY variable as phony.  We keep that
-# information in a variable se we can use it in if_changed and friends.
-
 .PHONY: $(PHONY)
diff --git a/scripts/Makefile.clean b/scripts/Makefile.clean
index cff3349..41712f8 100644
--- a/scripts/Makefile.clean
+++ b/scripts/Makefile.clean
@@ -7,10 +7,7 @@ src := $(obj)
 PHONY := __clean
 __clean:
 
-# Shorthand for $(Q)$(MAKE) scripts/Makefile.clean obj=dir
-# Usage:
-# $(Q)$(MAKE) $(clean)=dir
-clean := -f $(if $(KBUILD_SRC),$(srctree)/)scripts/Makefile.clean obj
+include scripts/Kbuild.include
 
 # The filename Kbuild has precedence over Makefile
 kbuild-dir := $(if $(filter /%,$(src)),$(src),$(srctree)/$(src))
@@ -23,26 +20,23 @@ __subdir-y	:= $(patsubst %/,%,$(filter %/, $(obj-y)))
 subdir-y	+= $(__subdir-y)
 __subdir-m	:= $(patsubst %/,%,$(filter %/, $(obj-m)))
 subdir-m	+= $(__subdir-m)
-__subdir-n	:= $(patsubst %/,%,$(filter %/, $(obj-n)))
-subdir-n	+= $(__subdir-n)
 __subdir-	:= $(patsubst %/,%,$(filter %/, $(obj-)))
 subdir-		+= $(__subdir-)
 
 # Subdirectories we need to descend into
 
 subdir-ym	:= $(sort $(subdir-y) $(subdir-m))
-subdir-ymn      := $(sort $(subdir-ym) $(subdir-n) $(subdir-))
+subdir-ymn      := $(sort $(subdir-ym) $(subdir-))
 
 # Add subdir path
 
 subdir-ymn	:= $(addprefix $(obj)/,$(subdir-ymn))
 
-# build a list of files to remove, usually releative to the current
+# build a list of files to remove, usually relative to the current
 # directory
 
-__clean-files	:= $(extra-y) $(EXTRA_TARGETS) $(always) \
-		   $(targets) $(clean-files)             \
-		   $(host-progs)                         \
+__clean-files	:= $(extra-y) $(extra-m) $(extra-)       \
+		   $(always) $(targets) $(clean-files)   \
 		   $(hostprogs-y) $(hostprogs-m) $(hostprogs-)
 
 # as clean-files is given relative to the current directory, this adds
@@ -74,9 +68,6 @@ endif
 ifneq ($(strip $(__clean-dirs)),)
 	+$(call cmd,cleandir)
 endif
-ifneq ($(strip $(clean-rule)),)
-	+$(clean-rule)
-endif
 	@:
 
 
@@ -91,12 +82,4 @@ PHONY += $(subdir-ymn)
 $(subdir-ymn):
 	$(Q)$(MAKE) $(clean)=$@
 
-# If quiet is set, only print short version of command
-
-cmd = @$(if $($(quiet)cmd_$(1)),echo '  $($(quiet)cmd_$(1))' &&) $(cmd_$(1))
-
-
-# Declare the contents of the .PHONY variable as phony.  We keep that
-# information in a variable se we can use it in if_changed and friends.
-
 .PHONY: $(PHONY)
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index afe4875..7b8643b 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -1,5 +1,3 @@
-# Backward compatibility - to be removed...
-extra-y	+= $(EXTRA_TARGETS)
 # Figure out what we need to build from the various variables
 # ===========================================================================
 
@@ -216,7 +214,7 @@ $(obj)/%:: $(src)/%_shipped
 #	target: source(s) FORCE
 #		$(if_changed,ld/objcopy/gzip)
 #
-#	and add target to EXTRA_TARGETS so that we know we have to
+#	and add target to extra-y so that we know we have to
 #	read in the saved command line
 
 # Linking
diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
index 7620c60..78e6edd 100644
--- a/scripts/Makefile.modpost
+++ b/scripts/Makefile.modpost
@@ -125,8 +125,4 @@ ifneq ($(cmd_files),)
   include $(cmd_files)
 endif
 
-
-# Declare the contents of the .PHONY variable as phony.  We keep that
-# information in a variable se we can use it in if_changed and friends.
-
 .PHONY: $(PHONY)
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
