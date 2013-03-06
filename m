Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjl-0000WG-JZ
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:34:21 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 227D5104E764
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:15 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:32 +0100
Message-Id: <1362562189-17783-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130306092643.GF4401@game.jcrosoft.org>
 <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 03/20] kbuild: add application (app) target
To: barebox@lists.infradead.org

This will allow to link compiled object (app-y) to the built-in-app.o across the source
tree that will be finally link to the applications (app-final-y).

Now we compile the source %.c in app-%.o and provide -D__APP__
so we can known in the source when it's compile for barebox or pbl or app.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile               |    5 +++-
 scripts/Makefile.build |   78 +++++++++++++++++++++++++++++++++++++++++++++---
 scripts/Makefile.lib   |   23 ++++++++++++--
 3 files changed, 99 insertions(+), 7 deletions(-)

diff --git a/Makefile b/Makefile
index 4df6464..110f7aa 100644
--- a/Makefile
+++ b/Makefile
@@ -493,6 +493,7 @@ barebox-alldirs	:= $(sort $(barebox-dirs) $(patsubst %/,%,$(filter %/, \
 		     $(core-n) $(core-) $(drivers-n) $(drivers-) \
 		     $(net-n)  $(net-)  $(libs-n)    $(libs-))))
 
+app-common-y	:= $(patsubst %/, %/built-in-app.o, $(common-y))
 pbl-common-y	:= $(patsubst %/, %/built-in-pbl.o, $(common-y))
 common-y	:= $(patsubst %/, %/built-in.o, $(common-y))
 
@@ -523,6 +524,8 @@ common-y	:= $(patsubst %/, %/built-in.o, $(common-y))
 # System.map is generated to document addresses of all kernel symbols
 
 barebox-common := $(common-y)
+barebox-app-common := $(app-common-y)
+export barebox-app-common
 barebox-pbl-common := $(pbl-common-y)
 export barebox-pbl-common
 barebox-all    := $(barebox-common)
@@ -733,7 +736,7 @@ barebox.srec: barebox
 
 # The actual objects are generated when descending,
 # make sure no implicit rule kicks in
-$(sort $(barebox-head) $(barebox-common) ) $(barebox-lds) $(barebox-pbl-common): $(barebox-dirs) ;
+$(sort $(barebox-head) $(barebox-common) ) $(barebox-lds) $(barebox-pbl-common) $(barebox-app-common): $(barebox-dirs) ;
 
 # Handle descending into subdirectories listed in $(barebox-dirs)
 # Preset locale variables to speed up the build process. Limit locale
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index a95bbe4..600d1f7 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -15,6 +15,8 @@ obj-m :=
 lib-y :=
 lib-m :=
 pbl-y :=
+app-y :=
+app-final-y :=
 always :=
 targets :=
 subdir-y :=
@@ -98,7 +100,7 @@ ifneq ($(strip $(lib-y) $(lib-m) $(lib-n) $(lib-)),)
 lib-target := $(obj)/lib.a
 endif
 
-ifneq ($(strip $(obj-y) $(obj-m) $(obj-n) $(obj-) $(lib-target) $(pbl-y)),)
+ifneq ($(strip $(obj-y) $(obj-m) $(obj-n) $(obj-) $(lib-target) $(pbl-y) $(app-y)),)
 builtin-target := $(obj)/built-in.o
 endif
 
@@ -108,11 +110,23 @@ pbl-target := $(obj)/built-in-pbl.o
 endif
 endif
 
+ifeq ($(CONFIG_APPLICATIONS), y)
+ifneq ($(strip $(app-y) $(builtin-target)),)
+app-target := $(obj)/built-in-app.o
+endif
+
+ifneq ($(strip $(app-final-y)),)
+app-final-target := $(addprefix $(obj)/,$(app-final-y))
+app-final-bin-target := $(addsuffix .app,$(app-final-bin-target))
+endif
+
+endif
+
 # We keep a list of all modules in $(MODVERDIR)
 
-__build: $(if $(KBUILD_BUILTIN),$(builtin-target) $(lib-target) $(pbl-target) $(extra-y)) \
+__build: $(if $(KBUILD_BUILTIN),$(builtin-target) $(lib-target) $(pbl-target) $(app-target) $(extra-y)) \
 	 $(if $(KBUILD_MODULES),$(obj-m)) \
-	 $(subdir-ym) $(always)
+	 $(subdir-ym) $(always) $(app-final-target) $(app-final-bin-target)
 	@:
 
 # Linus' kernel sanity checking tool
@@ -185,10 +199,12 @@ cmd_cc_symtypes_c	   = \
 
 quiet_cmd_cc_o_c = CC $(quiet_modtag)  $@
 quiet_cmd_pbl_cc_o_c = PBLCC   $@
+quiet_cmd_app_cc_o_c = APPCC   $@
 
 ifndef CONFIG_MODVERSIONS
 cmd_cc_o_c = $(CC) $(c_flags) -c -o $@ $<
 cmd_pbl_cc_o_c = $(CC) -D__PBL__ $(c_flags) $(PBL_CPPFLAGS) -c -o $@ $<
+cmd_app_cc_o_c = $(CC) -D__APP__ $(APP_CPPFLAGS) $(app_c_flags) -c -o $@ $<
 
 else
 # When module versioning is enabled the following steps are executed:
@@ -239,8 +255,23 @@ define rule_pbl_cc_o_c
 	mv -f $(dot-target).tmp $(dot-target).cmd
 endef
 
+define rule_app_cc_o_c
+	$(call echo-cmd,checksrc) $(cmd_checksrc)			  \
+	$(call echo-cmd,app_cc_o_c) $(cmd_app_cc_o_c);			  \
+	$(cmd_modversions)						  \
+	scripts/basic/fixdep $(depfile) $@ '$(call make-cmd,app_cc__o_c)' >    \
+	                                              $(dot-target).tmp;  \
+	rm -f $(depfile);						  \
+	mv -f $(dot-target).tmp $(dot-target).cmd
+
+endef
+
 # Built-in and composite module parts
 
+app-%.o: %.c FORCE
+	$(call cmd,force_checksrc)
+	$(call if_changed_rule,app_cc_o_c)
+
 pbl-%.o: %.c FORCE
 	$(call cmd,force_checksrc)
 	$(call if_changed_rule,pbl_cc_o_c)
@@ -284,13 +315,19 @@ cmd_as_o_S       = $(CC) $(a_flags) -c -o $@ $<
 quiet_cmd_pbl_as_o_S = PBLAS   $@
 cmd_pbl_as_o_S       = $(CC) -D__PBL__ $(a_flags) $(PBL_CPPFLAGS) -c -o $@ $<
 
+quiet_cmd_app_as_o_S = APPAS   $@
+cmd_app_as_o_S       = $(CC) -D__APP__ $(app_a_flags) $(APP_CPPFLAGS) -c -o $@ $<
+
+app-%.o: %.S FORCE
+	$(call if_changed_dep,app_as_o_S)
+
 pbl-%.o: %.S FORCE
 	$(call if_changed_dep,pbl_as_o_S)
 
 %.o: %.S FORCE
 	$(call if_changed_dep,as_o_S)
 
-targets += $(real-objs-y) $(real-objs-m) $(lib-y) $(pbl-y)
+targets += $(real-objs-y) $(real-objs-m) $(lib-y) $(pbl-y) $(app-y)
 targets += $(extra-y) $(MAKECMDGOALS) $(always)
 
 # Linker scripts preprocessor (.lds.S -> .lds)
@@ -336,6 +373,39 @@ $(pbl-target): $(pbl-y) FORCE
 targets += $(pbl-target)
 endif # pbl-target
 
+ifdef app-target
+quiet_cmd_app_link_o_target = APPLD   $@
+# If the list of objects to link is empty, just create an empty built-in-app.o
+cmd_app_link_o_target = $(if $(strip $(app-y)),\
+		      $(LD) $(app_ld_flags) -r -o $@ $(filter $(app-y), $^),\
+		      rm -f $@; $(AR) rcs $@)
+
+$(app-target): $(app-y) FORCE
+	$(call if_changed,app_link_o_target)
+targets += $(app-target)
+endif # app-target
+
+ifdef app-final-target
+quiet_cmd_app_final_ld = APPLD   $@
+cmd_app_final_ld = $(LD) $(LDFLAGS) $(LDFLAGS_apps) -o $@ \
+	-T $(apps-lds) \
+	--start-group $(filter-out $(apps-lds) $(barebox-app-common) FORCE ,$^) \
+	$(barebox-app-common) --end-group $(APP_LDFLAGS) \
+	$(filter-out $(apps-lds) $^ $(barebox-app-common) FORCE ,$^)
+
+$(app-final-target): $(obj)/built-in-app.o FORCE
+	$(call if_changed,app_final_ld)
+
+%.app: % FORCE
+	$(call if_changed,objcopy)
+	$(Q)$(kecho) '  Barebox Apps: $@ is ready'
+
+$(app-final-bin-target):	$(app-final-target) FORCE
+
+targets += $(app-final-target)
+targets += $(app-final-bin-target)
+endif # app-target
+
 #
 # Rule to compile a set of .o files into one .a file
 #
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 7bb769b..90bf72b 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -40,6 +40,17 @@ pbl-y		+= $(__pbl-y)
 
 pbl-y		:= $(sort $(patsubst %/, %/built-in-pbl.o, $(pbl-y)))
 
+# for non dirs add app- prefix to the target
+# so we recompile the source with custom flags and custom quiet
+__app-y		:= $(notdir $(app-y))
+app-y		:= $(patsubst %.o,app-%.o,$(__app-y))
+# add subdir from $(obj-y) and $(pbl-y)too so we do not need to have the dir define in
+# both $(obj-y) and $(pbl-y) and $(app-y)
+__app-y		:= $(filter-out $(app-y), $(filter %/, $(sort $(obj-y) $(pbl-y))))
+app-y		+= $(__app-y)
+
+app-y		:= $(sort $(patsubst %/, %/built-in-app.o, $(app-y)))
+
 __subdir-y	:= $(patsubst %/,%,$(filter %/, $(obj-y)))
 subdir-y	+= $(__subdir-y)
 __subdir-m	:= $(patsubst %/,%,$(filter %/, $(obj-m)))
@@ -65,9 +76,11 @@ multi-objs   := $(multi-objs-y) $(multi-objs-m)
 
 # $(subdir-obj-y) is the list of objects in $(obj-y) which uses dir/ to
 # tell kbuild to descend
-__subdir-obj-y := $(filter %/built-in-pbl.o, $(pbl-y))
+__subdir-pbl-y := $(filter %/built-in-pbl.o, $(pbl-y))
+__subdir-app-y := $(filter %/built-in-app.o, $(app-y))
 subdir-obj-y := $(filter %/built-in.o, $(obj-y))
-subdir-obj-y += $(__subdir-obj-y)
+subdir-obj-y += $(__subdir-pbl-y)
+subdir-obj-y += $(__subdir-app-y)
 
 # $(obj-dirs) is a list of directories that contain object files
 obj-dirs := $(dir $(multi-objs) $(subdir-obj-y))
@@ -85,6 +98,7 @@ obj-y		:= $(addprefix $(obj)/,$(obj-y))
 obj-m		:= $(addprefix $(obj)/,$(obj-m))
 lib-y		:= $(addprefix $(obj)/,$(lib-y))
 pbl-y		:= $(addprefix $(obj)/,$(pbl-y))
+app-y		:= $(addprefix $(obj)/,$(app-y))
 subdir-obj-y	:= $(addprefix $(obj)/,$(subdir-obj-y))
 real-objs-y	:= $(addprefix $(obj)/,$(real-objs-y))
 real-objs-m	:= $(addprefix $(obj)/,$(real-objs-m))
@@ -141,6 +155,11 @@ ___cpp_flags      = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(__cpp_flags)
 
 ___ld_flags       = $(LDFLAGS) $(EXTRA_LDFLAGS)
 
+app_c_flags     = $(APPINCLUDE) $(___c_flags)
+app_a_flags     = $(APPINCLUDE) -D__ASSEMBLY__ $(___a_flags)
+app_cpp_flags   = $(APPINCLUDE) $(___cpp_flags)
+app_ld_flags    = $(___ld_flags)
+
 c_flags        = $(LINUXINCLUDE) $(___c_flags)
 a_flags        = $(LINUXINCLUDE) $(AFLAGS_LINUXINCLUDE) $(___a_flags)
 cpp_flags      = $(LINUXINCLUDE) $(___cpp_flags)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
