Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU1Wt-0002Nw-Dy
 for barebox@lists.infradead.org; Thu, 30 Apr 2020 05:14:38 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 30 Apr 2020 14:13:56 +0900
Message-Id: <20200430051357.766084-3-masahiroy@kernel.org>
In-Reply-To: <20200430051357.766084-1-masahiroy@kernel.org>
References: <20200430051357.766084-1-masahiroy@kernel.org>
MIME-Version: 1.0
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
Subject: [PATCH 3/4] kbuild: sync if_changed and friends with Linux 5.7-rc2
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Resync cmd, if_change, if_changed_dep, and if_changed_rule.

Clean up the users of if_changed_rule.

I deleted the modversions rule. It is dead code because barebox
does not define CONFIG_MODVERSIONS. It does not work without
scripts/genksyms/ anyway.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile               | 14 ++-------
 scripts/Kbuild.include | 47 +++++++++++++++---------------
 scripts/Makefile.build | 66 +++++-------------------------------------
 3 files changed, 34 insertions(+), 93 deletions(-)

diff --git a/Makefile b/Makefile
index 59e041fed..9485f5551 100644
--- a/Makefile
+++ b/Makefile
@@ -626,24 +626,18 @@ quiet_cmd_barebox_version = GEN     .version
 	$(MAKE) $(build)=common
 
 # Generate System.map
-quiet_cmd_sysmap = SYSMAP
-      cmd_sysmap = $(CONFIG_SHELL) $(srctree)/scripts/mksysmap
+quiet_cmd_sysmap = SYSMAP  System.map
+      cmd_sysmap = $(CONFIG_SHELL) $(srctree)/scripts/mksysmap $@ System.map
 
 # Link of barebox
 # If CONFIG_KALLSYMS is set .version is already updated
 # Generate System.map and verify that the content is consistent
 # Use + in front of the barebox_version rule to silent warning with make -j2
-# First command is ':' to allow us to use + in front of the rule
 define rule_barebox__
-	:
 	$(if $(CONFIG_KALLSYMS),,+$(call cmd,barebox_version))
 	$(call cmd,barebox__)
-
 	$(Q)echo 'cmd_$@ := $(cmd_barebox__)' > $(@D)/.$(@F).cmd
-
-	$(Q)$(if $($(quiet)cmd_sysmap),                                      \
-	  echo '  $($(quiet)cmd_sysmap)  System.map' &&)                     \
-	$(cmd_sysmap) $@ System.map
+	$(call cmd,sysmap)
 endef
 
 ifdef CONFIG_KALLSYMS
@@ -684,10 +678,8 @@ endef
 
 # Update barebox version before link
 # Use + in front of this rule to silent warning about make -j1
-# First command is ':' to allow us to use + in front of this rule
 cmd_ksym_ld = $(cmd_barebox__)
 define rule_ksym_ld
-	:
 	+$(call cmd,barebox_version)
 	$(call cmd,barebox__)
 	$(Q)echo 'cmd_$@ := $(cmd_barebox__)' > $(@D)/.$(@F).cmd
diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 983329e40..074d2db04 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -165,7 +165,7 @@ echo-cmd = $(if $($(quiet)cmd_$(1)),\
 	echo '  $(call escsq,$($(quiet)cmd_$(1)))$(echo-why)';)
 
 # printing commands
-cmd = @$(echo-cmd) $(cmd_$(1))
+cmd = @set -e; $(echo-cmd) $(cmd_$(1))
 
 # Add $(obj)/ for paths that are not absolute
 objectify = $(foreach o,$(1),$(if $(filter /%,$(o)),$(o),$(obj)/$(o)))
@@ -176,15 +176,15 @@ objectify = $(foreach o,$(1),$(if $(filter /%,$(o)),$(o),$(obj)/$(o)))
 # if_changed_dep  - as if_changed, but uses fixdep to reveal dependencies
 #                   including used config symbols
 # if_changed_rule - as if_changed but execute rule instead
-# See Documentation/kbuild/makefiles.txt for more info
+# See Documentation/kbuild/makefiles.rst for more info
 
 ifneq ($(KBUILD_NOCMDDEP),1)
-# Check if both arguments are the same including their order. Result is empty
+# Check if both commands are the same including their order. Result is empty
 # string if equal. User may override this check using make KBUILD_NOCMDDEP=1
-arg-check = $(filter-out $(subst $(space),$(space_escape),$(strip $(cmd_$@))), \
+cmd-check = $(filter-out $(subst $(space),$(space_escape),$(strip $(cmd_$@))), \
                          $(subst $(space),$(space_escape),$(strip $(cmd_$1))))
 else
-arg-check = $(if $(strip $(cmd_$@)),,1)
+cmd-check = $(if $(strip $(cmd_$@)),,1)
 endif
 
 # Replace >$< with >$$< to preserve $ when reloading the .cmd file
@@ -195,34 +195,33 @@ endif
 # (needed for the shell)
 make-cmd = $(call escsq,$(subst $(pound),$$(pound),$(subst $$,$$$$,$(cmd_$(1)))))
 
-# Find any prerequisites that is newer than target or that does not exist.
+# Find any prerequisites that are newer than target or that do not exist.
+# (This is not true for now; $? should contain any non-existent prerequisites,
+# but it does not work as expected when .SECONDARY is present. This seems a bug
+# of GNU Make.)
 # PHONY targets skipped in both cases.
-any-prereq = $(filter-out $(PHONY),$?) $(filter-out $(PHONY) $(wildcard $^),$^)
+newer-prereqs = $(filter-out $(PHONY),$?)
 
 # Execute command if command has changed or prerequisite(s) are updated.
-#
-if_changed = $(if $(strip $(any-prereq) $(arg-check)),                       \
-	@set -e;                                                             \
-	$(echo-cmd) $(cmd_$(1));                                             \
-	printf '%s\n' 'cmd_$@ := $(make-cmd)' > $(dot-target).cmd)
+if_changed = $(if $(newer-prereqs)$(cmd-check),                              \
+	$(cmd);                                                              \
+	printf '%s\n' 'cmd_$@ := $(make-cmd)' > $(dot-target).cmd, @:)
 
 # Execute the command and also postprocess generated .d dependencies file.
-if_changed_dep = $(if $(strip $(any-prereq) $(arg-check) ),                  \
-	@set -e;                                                             \
-	$(echo-cmd) $(cmd_$(1));                                             \
-	scripts/basic/fixdep $(depfile) $@ '$(make-cmd)' > $(dot-target).tmp;\
-	rm -f $(depfile);                                                    \
-	mv -f $(dot-target).tmp $(dot-target).cmd)
+if_changed_dep = $(if $(newer-prereqs)$(cmd-check),$(cmd_and_fixdep),@:)
+
+cmd_and_fixdep =                                                             \
+	$(cmd);                                                              \
+	scripts/basic/fixdep $(depfile) $@ '$(make-cmd)' > $(dot-target).cmd;\
+	rm -f $(depfile)
 
 # Usage: $(call if_changed_rule,foo)
 # Will check if $(cmd_foo) or any of the prerequisites changed,
 # and if so will execute $(rule_foo).
-if_changed_rule = $(if $(strip $(any-prereq) $(arg-check) ),                 \
-	@set -e;                                                             \
-	$(rule_$(1)))
+if_changed_rule = $(if $(newer-prereqs)$(cmd-check),$(rule_$(1)),@:)
 
 ###
-# why - tell why a a target got build
+# why - tell why a target got built
 #       enabled by make V=2
 #       Output (listed in the order they are checked):
 #          (1) - due to target is PHONY
@@ -244,8 +243,8 @@ ifeq ($(KBUILD_VERBOSE),2)
 why =                                                                        \
     $(if $(filter $@, $(PHONY)),- due to target is PHONY,                    \
         $(if $(wildcard $@),                                                 \
-            $(if $(strip $(any-prereq)),- due to: $(any-prereq),             \
-                $(if $(arg-check),                                           \
+            $(if $(newer-prereqs),- due to: $(newer-prereqs),                \
+                $(if $(cmd-check),                                           \
                     $(if $(cmd_$@),- due to command line change,             \
                         $(if $(filter $@, $(targets)),                       \
                             - due to missing .cmd file,                      \
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 002afd245..2273d815c 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -88,10 +88,10 @@ __build: $(if $(KBUILD_BUILTIN),$(builtin-target) $(lib-target) $(pbl-target) $(
 # Linus' kernel sanity checking tool
 ifeq ($(KBUILD_CHECKSRC),1)
   quiet_cmd_checksrc       = CHECK   $<
-        cmd_checksrc       = $(CHECK) $(CHECKFLAGS) $(c_flags) $< ;
+        cmd_checksrc       = $(CHECK) $(CHECKFLAGS) $(c_flags) $<
 else ifeq ($(KBUILD_CHECKSRC),2)
   quiet_cmd_force_checksrc = CHECK   $<
-        cmd_force_checksrc = $(CHECK) $(CHECKFLAGS) $(c_flags) $< ;
+        cmd_force_checksrc = $(CHECK) $(CHECKFLAGS) $(c_flags) $<
 endif
 
 # Compile C sources (.c)
@@ -137,73 +137,23 @@ cmd_cc_i_c       = $(CPP) $(c_flags)   -o $@ $<
 %.i: %.c FORCE
 	$(call if_changed_dep,cc_i_c)
 
-quiet_cmd_cc_symtypes_c = SYM $(quiet_modtag) $@
-cmd_cc_symtypes_c	   = \
-		$(CPP) -D__GENKSYMS__ $(c_flags) $<			\
-		| $(GENKSYMS) -T $@ >/dev/null;				\
-		test -s $@ || rm -f $@
-
-%.symtypes : %.c FORCE
-	$(call if_changed_dep,cc_symtypes_c)
-
 # C (.c) files
 # The C file is compiled and updated dependency information is generated.
 # (See cmd_cc_o_c + relevant part of rule_cc_o_c)
 
 quiet_cmd_cc_o_c = CC $(quiet_modtag)  $@
+      cmd_cc_o_c = $(CC) $(c_flags) -c -o $@ $<
 quiet_cmd_pbl_cc_o_c = PBLCC   $@
-
-ifndef CONFIG_MODVERSIONS
-cmd_cc_o_c = $(CC) $(c_flags) -c -o $@ $<
-cmd_pbl_cc_o_c = $(CC) -D__PBL__ $(c_flags) $(PBL_CPPFLAGS) -c -o $@ $<
-
-else
-# When module versioning is enabled the following steps are executed:
-# o compile a .tmp_<file>.o from <file>.c
-# o if .tmp_<file>.o doesn't contain a __ksymtab version, i.e. does
-#   not export symbols, we just rename .tmp_<file>.o to <file>.o and
-#   are done.
-# o otherwise, we calculate symbol versions using the good old
-#   genksyms on the preprocessed source and postprocess them in a way
-#   that they are usable as a linker script
-# o generate <file>.o from .tmp_<file>.o using the linker to
-#   replace the unresolved symbols __crc_exported_symbol with
-#   the actual value of the checksum generated by genksyms
-
-cmd_cc_o_c = $(CC) $(c_flags) -c -o $(@D)/.tmp_$(@F) $<
-cmd_modversions =							\
-	if $(OBJDUMP) -h $(@D)/.tmp_$(@F) | grep -q __ksymtab; then	\
-		$(CPP) -D__GENKSYMS__ $(c_flags) $<			\
-		| $(GENKSYMS) $(if $(KBUILD_SYMTYPES),			\
-			      -T $(@D)/$(@F:.o=.symtypes)) 		\
-		> $(@D)/.tmp_$(@F:.o=.ver);				\
-									\
-		$(LD) $(KBUILD_LDFLAGS) -r -o $@ $(@D)/.tmp_$(@F) 		\
-			-T $(@D)/.tmp_$(@F:.o=.ver);			\
-		rm -f $(@D)/.tmp_$(@F) $(@D)/.tmp_$(@F:.o=.ver);	\
-	else								\
-		mv -f $(@D)/.tmp_$(@F) $@;				\
-	fi;
-endif
+      cmd_pbl_cc_o_c = $(CC) -D__PBL__ $(c_flags) $(PBL_CPPFLAGS) -c -o $@ $<
 
 define rule_cc_o_c
-	$(call echo-cmd,checksrc) $(cmd_checksrc)			  \
-	$(call echo-cmd,cc_o_c) $(cmd_cc_o_c);				  \
-	$(cmd_modversions)						  \
-	scripts/basic/fixdep $(depfile) $@ '$(call make-cmd,cc_o_c)' >    \
-	                                              $(dot-target).tmp;  \
-	rm -f $(depfile);						  \
-	mv -f $(dot-target).tmp $(dot-target).cmd
+	$(call cmd,checksrc)
+	$(call cmd_and_fixdep,cc_o_c)
 endef
 
 define rule_pbl_cc_o_c
-	$(call echo-cmd,checksrc) $(cmd_checksrc)			  \
-	$(call echo-cmd,pbl_cc_o_c) $(cmd_pbl_cc_o_c);			  \
-	$(cmd_modversions)						  \
-	scripts/basic/fixdep $(depfile) $@ '$(call make-cmd,pbl_cc_o_c)' >    \
-	                                              $(dot-target).tmp;  \
-	rm -f $(depfile);						  \
-	mv -f $(dot-target).tmp $(dot-target).cmd
+	$(call cmd,checksrc)
+	$(call cmd_and_fixdep,pbl_cc_o_c)
 endef
 
 # Built-in and composite module parts
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
