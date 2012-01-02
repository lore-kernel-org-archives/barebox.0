Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhiOD-0000a4-O1
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 13:57:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Jan 2012 14:57:10 +0100
Message-Id: <1325512634-25797-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1325512634-25797-1-git-send-email-s.hauer@pengutronix.de>
References: <1325512634-25797-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] scripts/Kbuild.include: update to latest kernel version
To: barebox@lists.infradead.org

To get cc-disable-warning

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Kbuild.include |  143 ++++++++++++++++++++++++++++++++++--------------
 1 files changed, 102 insertions(+), 41 deletions(-)

diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 95e7746..912cfd8 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -1,7 +1,7 @@
 ####
 # kbuild: Generic definitions
 
-# Convinient variables
+# Convenient variables
 comma   := ,
 squote  := '
 empty   :=
@@ -21,10 +21,21 @@ depfile = $(subst $(comma),_,$(dot-target).d)
 basetarget = $(basename $(notdir $@))
 
 ###
+# filename of first prerequisite with directory and extension stripped
+baseprereq = $(basename $(notdir $<))
+
+###
 # Escape single quote for use in echo statements
 escsq = $(subst $(squote),'\$(squote)',$1)
 
 ###
+# Easy method for doing a status message
+       kecho := :
+ quiet_kecho := echo
+silent_kecho := :
+kecho := $($(quiet)kecho)
+
+###
 # filechk is used to check if the content of a generated file is updated.
 # Sample usage:
 # define filechk_sample
@@ -41,13 +52,13 @@ escsq = $(subst $(squote),'\$(squote)',$1)
 #   to specify a valid file as first prerequisite (often the kbuild file)
 define filechk
 	$(Q)set -e;				\
-	echo '  CHK     $@';			\
+	$(kecho) '  CHK     $@';		\
 	mkdir -p $(dir $@);			\
 	$(filechk_$(1)) < $< > $@.tmp;		\
 	if [ -r $@ ] && cmp -s $@ $@.tmp; then	\
 		rm -f $@.tmp;			\
 	else					\
-		echo '  UPD     $@';		\
+		$(kecho) '  UPD     $@';	\
 		mv -f $@.tmp $@;		\
 	fi
 endef
@@ -56,56 +67,95 @@ endef
 # gcc support functions
 # See documentation in Documentation/kbuild/makefiles.txt
 
+# cc-cross-prefix
+# Usage: CROSS_COMPILE := $(call cc-cross-prefix, m68k-linux-gnu- m68k-linux-)
+# Return first prefix where a prefix$(CC) is found in PATH.
+# If no $(CC) found in PATH with listed prefixes return nothing
+cc-cross-prefix =  \
+	$(word 1, $(foreach c,$(1),                                   \
+		$(shell set -e;                                       \
+		if (which $(strip $(c))$(CC)) > /dev/null 2>&1 ; then \
+			echo $(c);                                    \
+		fi)))
+
 # output directory for tests below
 TMPOUT := $(if $(KBUILD_EXTMOD),$(firstword $(KBUILD_EXTMOD))/)
 
+# try-run
+# Usage: option = $(call try-run, $(CC)...-o "$$TMP",option-ok,otherwise)
+# Exit code chooses option. "$$TMP" is can be used as temporary file and
+# is automatically cleaned up.
+try-run = $(shell set -e;		\
+	TMP="$(TMPOUT).$$$$.tmp";	\
+	TMPO="$(TMPOUT).$$$$.o";	\
+	if ($(1)) >/dev/null 2>&1;	\
+	then echo "$(2)";		\
+	else echo "$(3)";		\
+	fi;				\
+	rm -f "$$TMP" "$$TMPO")
+
 # as-option
-# Usage: cflags-y += $(call as-option, -Wa$(comma)-isa=foo,)
+# Usage: cflags-y += $(call as-option,-Wa$(comma)-isa=foo,)
 
-as-option = $(shell if $(CC) $(CFLAGS) $(1) -Wa,-Z -c -o /dev/null \
-	     -xassembler /dev/null > /dev/null 2>&1; then echo "$(1)"; \
-	     else echo "$(2)"; fi ;)
+as-option = $(call try-run,\
+	$(CC) $(CFLAGS) $(1) -c -xassembler /dev/null -o "$$TMP",$(1),$(2))
 
 # as-instr
-# Usage: cflags-y += $(call as-instr, instr, option1, option2)
+# Usage: cflags-y += $(call as-instr,instr,option1,option2)
 
-as-instr = $(shell if echo -e "$(1)" | \
-		      $(CC) $(AFLAGS) -c -xassembler - \
-			    -o $(TMPOUT)astest$$$$.out > /dev/null 2>&1; \
-		   then rm $(TMPOUT)astest$$$$.out; echo "$(2)"; \
-		   else echo "$(3)"; fi)
+as-instr = $(call try-run,\
+	/bin/echo -e "$(1)" | $(CC) $(KBUILD_AFLAGS) -c -xassembler -o "$$TMP" -,$(2),$(3))
 
 # cc-option
-# Usage: cflags-y += $(call cc-option, -march=winchip-c6, -march=i586)
+# Usage: cflags-y += $(call cc-option,-march=winchip-c6,-march=i586)
 
-cc-option = $(shell if $(CC) $(CFLAGS) $(1) -S -o /dev/null -xc /dev/null \
-             > /dev/null 2>&1; then echo "$(1)"; else echo "$(2)"; fi ;)
+cc-option = $(call try-run,\
+	$(CC) $(KBUILD_CPPFLAGS) $(CFLAGS) $(1) -c -xc /dev/null -o "$$TMP",$(1),$(2))
 
 # cc-option-yn
-# Usage: flag := $(call cc-option-yn, -march=winchip-c6)
-cc-option-yn = $(shell if $(CC) $(CFLAGS) $(1) -S -o /dev/null -xc /dev/null \
-                > /dev/null 2>&1; then echo "y"; else echo "n"; fi;)
+# Usage: flag := $(call cc-option-yn,-march=winchip-c6)
+cc-option-yn = $(call try-run,\
+	$(CC) $(KBUILD_CPPFLAGS) $(CFLAGS) $(1) -c -xc /dev/null -o "$$TMP",y,n)
 
 # cc-option-align
 # Prefix align with either -falign or -malign
 cc-option-align = $(subst -functions=0,,\
 	$(call cc-option,-falign-functions=0,-malign-functions=0))
 
+# cc-disable-warning
+# Usage: cflags-y += $(call cc-disable-warning,unused-but-set-variable)
+cc-disable-warning = $(call try-run,\
+	$(CC) $(KBUILD_CPPFLAGS) $(CFLAGS) -W$(strip $(1)) -c -xc /dev/null -o "$$TMP",-Wno-$(strip $(1)))
+
 # cc-version
-# Usage gcc-ver := $(call cc-version, $(CC))
+# Usage gcc-ver := $(call cc-version)
 cc-version = $(shell $(CONFIG_SHELL) $(srctree)/scripts/gcc-version.sh $(CC))
 
+# cc-fullversion
+# Usage gcc-ver := $(call cc-fullversion)
+cc-fullversion = $(shell $(CONFIG_SHELL) \
+	$(srctree)/scripts/gcc-version.sh -p $(CC))
+
 # cc-ifversion
 # Usage:  EXTRA_CFLAGS += $(call cc-ifversion, -lt, 0402, -O1)
-cc-ifversion = $(shell if [ $(call cc-version, $(CC)) $(1) $(2) ]; then \
-                       echo $(3); fi;)
+cc-ifversion = $(shell [ $(call cc-version, $(CC)) $(1) $(2) ] && echo $(3))
+
+# cc-ldoption
+# Usage: ldflags += $(call cc-ldoption, -Wl$(comma)--hash-style=both)
+cc-ldoption = $(call try-run,\
+	$(CC) $(1) -nostdlib -xc /dev/null -o "$$TMP",$(1),$(2))
 
 # ld-option
-# Usage: ldflags += $(call ld-option, -Wl$(comma)--hash-style=both)
-ld-option = $(shell if $(CC) $(1) -nostdlib -xc /dev/null \
-			     -o $(TMPOUT)ldtest$$$$.out > /dev/null 2>&1; \
-             then rm $(TMPOUT)ldtest$$$$.out; echo "$(1)"; \
-             else echo "$(2)"; fi)
+# Usage: LDFLAGS += $(call ld-option, -X)
+ld-option = $(call try-run,\
+	$(CC) /dev/null -c -o "$$TMPO" ; $(LD) $(1) "$$TMPO" -o "$$TMP",$(1),$(2))
+
+# ar-option
+# Usage: KBUILD_ARFLAGS := $(call ar-option,D)
+# Important: no spaces around options
+ar-option = $(call try-run, $(AR) rc$(1) "$$TMP",$(1),$(2))
+
+######
 
 ###
 # Shorthand for $(Q)$(MAKE) -f scripts/Makefile.build obj=
@@ -113,15 +163,29 @@ ld-option = $(shell if $(CC) $(1) -nostdlib -xc /dev/null \
 # $(Q)$(MAKE) $(build)=dir
 build := -f $(if $(KBUILD_SRC),$(srctree)/)scripts/Makefile.build obj
 
-# Prefix -I with $(srctree) if it is not an absolute path
-addtree = $(if $(filter-out -I/%,$(1)),$(patsubst -I%,-I$(srctree)/%,$(1))) $(1)
+###
+# Shorthand for $(Q)$(MAKE) -f scripts/Makefile.modbuiltin obj=
+# Usage:
+# $(Q)$(MAKE) $(modbuiltin)=dir
+modbuiltin := -f $(if $(KBUILD_SRC),$(srctree)/)scripts/Makefile.modbuiltin obj
+
+# Prefix -I with $(srctree) if it is not an absolute path.
+# skip if -I has no parameter
+addtree = $(if $(patsubst -I%,%,$(1)), \
+$(if $(filter-out -I/%,$(1)),$(patsubst -I%,-I$(srctree)/%,$(1))) $(1))
+
 # Find all -I options and call addtree
 flags = $(foreach o,$($(1)),$(if $(filter -I%,$(o)),$(call addtree,$(o)),$(o)))
 
-# If quiet is set, only print short version of command
+# echo command.
+# Short version is used, if $(quiet) equals `quiet_', otherwise full one.
+echo-cmd = $(if $($(quiet)cmd_$(1)),\
+	echo '  $(call escsq,$($(quiet)cmd_$(1)))$(echo-why)';)
+
+# printing commands
 cmd = @$(echo-cmd) $(cmd_$(1))
 
-# Add $(obj)/ for paths that is not absolute
+# Add $(obj)/ for paths that are not absolute
 objectify = $(foreach o,$(1),$(if $(filter /%,$(o)),$(o),$(obj)/$(o)))
 
 ###
@@ -133,16 +197,14 @@ objectify = $(foreach o,$(1),$(if $(filter /%,$(o)),$(o),$(obj)/$(o)))
 # See Documentation/kbuild/makefiles.txt for more info
 
 ifneq ($(KBUILD_NOCMDDEP),1)
-# Check if both arguments has same arguments. Result in empty string if equal
+# Check if both arguments has same arguments. Result is empty string if equal.
 # User may override this check using make KBUILD_NOCMDDEP=1
 arg-check = $(strip $(filter-out $(cmd_$(1)), $(cmd_$@)) \
                     $(filter-out $(cmd_$@),   $(cmd_$(1))) )
+else
+arg-check = $(if $(strip $(cmd_$@)),,1)
 endif
 
-# echo command. Short version is $(quiet) equals quiet, otherwise full command
-echo-cmd = $(if $($(quiet)cmd_$(1)), \
-	echo '  $(call escsq,$($(quiet)cmd_$(1)))$(echo-why)';)
-
 # >'< substitution is for echo to work,
 # >$< substitution to preserve $ when reloading .cmd file
 # note: when using inline perl scripts [perl -e '...$$t=1;...']
@@ -153,15 +215,14 @@ make-cmd = $(subst \#,\\\#,$(subst $$,$$$$,$(call escsq,$(cmd_$(1)))))
 # PHONY targets skipped in both cases.
 any-prereq = $(filter-out $(PHONY),$?) $(filter-out $(PHONY) $(wildcard $^),$^)
 
-# Execute command if command has changed or prerequisitei(s) are updated
+# Execute command if command has changed or prerequisite(s) are updated.
 #
 if_changed = $(if $(strip $(any-prereq) $(arg-check)),                       \
 	@set -e;                                                             \
 	$(echo-cmd) $(cmd_$(1));                                             \
 	echo 'cmd_$@ := $(make-cmd)' > $(dot-target).cmd)
 
-# execute the command and also postprocess generated .d dependencies
-# file
+# Execute the command and also postprocess generated .d dependencies file.
 if_changed_dep = $(if $(strip $(any-prereq) $(arg-check) ),                  \
 	@set -e;                                                             \
 	$(echo-cmd) $(cmd_$(1));                                             \
@@ -170,8 +231,8 @@ if_changed_dep = $(if $(strip $(any-prereq) $(arg-check) ),                  \
 	mv -f $(dot-target).tmp $(dot-target).cmd)
 
 # Usage: $(call if_changed_rule,foo)
-# will check if $(cmd_foo) changed, or any of the prequisites changed,
-# and if so will execute $(rule_foo)
+# Will check if $(cmd_foo) or any of the prerequisites changed,
+# and if so will execute $(rule_foo).
 if_changed_rule = $(if $(strip $(any-prereq) $(arg-check) ),                 \
 	@set -e;                                                             \
 	$(rule_$(1)))
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
