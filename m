Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo1.mail-out.ovh.net ([87.98.158.110]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxF4N-0000bu-6c
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 10:25:24 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 994FDFFAF94
 for <barebox@lists.infradead.org>; Fri,  3 Aug 2012 12:31:33 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Aug 2012 12:25:12 +0200
Message-Id: <1343989522-8807-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343989522-8807-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120803102300.GB23597@game.jcrosoft.org>
 <1343989522-8807-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 02/12] kbuild: add pre-bootloader (pbl) target
To: barebox@lists.infradead.org

This will allow to link compiled object to the built-in-pbl.o across the source
tree that will be finally link to the pbl.

Now we compile the source %.c in pbl-%.o and provide -D__PBL__
so we can known in the source when it's compile for barebox or the pbl.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile               |    5 ++++-
 scripts/Makefile.build |   48 +++++++++++++++++++++++++++++++++++++++++++++---
 scripts/Makefile.lib   |   14 ++++++++++++++
 3 files changed, 63 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 969afbb..ca47cb1 100644
--- a/Makefile
+++ b/Makefile
@@ -481,6 +481,7 @@ barebox-alldirs	:= $(sort $(barebox-dirs) $(patsubst %/,%,$(filter %/, \
 		     $(core-n) $(core-) $(drivers-n) $(drivers-) \
 		     $(net-n)  $(net-)  $(libs-n)    $(libs-))))
 
+pbl-common-y	:= $(patsubst %/, %/built-in-pbl.o, $(common-y))
 common-y	:= $(patsubst %/, %/built-in.o, $(common-y))
 
 # Build barebox
@@ -510,6 +511,8 @@ common-y	:= $(patsubst %/, %/built-in.o, $(common-y))
 # System.map is generated to document addresses of all kernel symbols
 
 barebox-common := $(common-y)
+barebox-pbl-common := $(pbl-common-y)
+export barebox-pbl-common
 barebox-all    := $(barebox-common)
 barebox-lds    := $(lds-y)
 
@@ -714,7 +717,7 @@ barebox.srec: barebox
 
 # The actual objects are generated when descending,
 # make sure no implicit rule kicks in
-$(sort $(barebox-head) $(barebox-common) ) $(barebox-lds): $(barebox-dirs) ;
+$(sort $(barebox-head) $(barebox-common) ) $(barebox-lds) $(barebox-pbl-common): $(barebox-dirs) ;
 
 # Handle descending into subdirectories listed in $(barebox-dirs)
 # Preset locale variables to speed up the build process. Limit locale
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 1a82c44..e5b7779 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -14,6 +14,7 @@ obj-y :=
 obj-m :=
 lib-y :=
 lib-m :=
+pbl-y :=
 always :=
 targets :=
 subdir-y :=
@@ -97,13 +98,19 @@ ifneq ($(strip $(lib-y) $(lib-m) $(lib-n) $(lib-)),)
 lib-target := $(obj)/lib.a
 endif
 
-ifneq ($(strip $(obj-y) $(obj-m) $(obj-n) $(obj-) $(lib-target)),)
+ifneq ($(strip $(obj-y) $(obj-m) $(obj-n) $(obj-) $(lib-target) $(pbl-y)),)
 builtin-target := $(obj)/built-in.o
 endif
 
+ifeq ($(CONFIG_PBL_IMAGE), y)
+ifneq ($(strip $(pbl-y) $(builtin-target)),)
+pbl-target := $(obj)/built-in-pbl.o
+endif
+endif
+
 # We keep a list of all modules in $(MODVERDIR)
 
-__build: $(if $(KBUILD_BUILTIN),$(builtin-target) $(lib-target) $(extra-y)) \
+__build: $(if $(KBUILD_BUILTIN),$(builtin-target) $(lib-target) $(pbl-target) $(extra-y)) \
 	 $(if $(KBUILD_MODULES),$(obj-m)) \
 	 $(subdir-ym) $(always)
 	@:
@@ -177,9 +184,11 @@ cmd_cc_symtypes_c	   = \
 # (See cmd_cc_o_c + relevant part of rule_cc_o_c)
 
 quiet_cmd_cc_o_c = CC $(quiet_modtag)  $@
+quiet_cmd_pbl_cc_o_c = PBLCC   $@
 
 ifndef CONFIG_MODVERSIONS
 cmd_cc_o_c = $(CC) $(c_flags) -c -o $@ $<
+cmd_pbl_cc_o_c = $(CC) -D__PBL__ $(c_flags) -c -o $@ $<
 
 else
 # When module versioning is enabled the following steps are executed:
@@ -220,8 +229,22 @@ define rule_cc_o_c
 	mv -f $(dot-target).tmp $(dot-target).cmd
 endef
 
+define rule_pbl_cc_o_c
+	$(call echo-cmd,checksrc) $(cmd_checksrc)			  \
+	$(call echo-cmd,pbl_cc_o_c) $(cmd_pbl_cc_o_c);			  \
+	$(cmd_modversions)						  \
+	scripts/basic/fixdep $(depfile) $@ '$(call make-cmd,pbl_cc__o_c)' >    \
+	                                              $(dot-target).tmp;  \
+	rm -f $(depfile);						  \
+	mv -f $(dot-target).tmp $(dot-target).cmd
+endef
+
 # Built-in and composite module parts
 
+pbl-%.o: %.c
+	$(call cmd,force_checksrc)
+	$(call if_changed_rule,pbl_cc_o_c)
+
 %.o: %.c FORCE
 	$(call cmd,force_checksrc)
 	$(call if_changed_rule,cc_o_c)
@@ -258,10 +281,16 @@ cmd_as_s_S       = $(CPP) $(a_flags)   -o $@ $<
 quiet_cmd_as_o_S = AS $(quiet_modtag)  $@
 cmd_as_o_S       = $(CC) $(a_flags) -c -o $@ $<
 
+quiet_cmd_pbl_as_o_S = PBLAS   $@
+cmd_pbl_as_o_S       = $(CC) -D__PBL__ $(a_flags) -c -o $@ $<
+
+pbl-%.o: %.S
+	$(call if_changed_dep,pbl_as_o_S)
+
 %.o: %.S FORCE
 	$(call if_changed_dep,as_o_S)
 
-targets += $(real-objs-y) $(real-objs-m) $(lib-y)
+targets += $(real-objs-y) $(real-objs-m) $(lib-y) $(pbl-y)
 targets += $(extra-y) $(MAKECMDGOALS) $(always)
 
 # Linker scripts preprocessor (.lds.S -> .lds)
@@ -294,6 +323,19 @@ $(builtin-target): $(obj-y) FORCE
 targets += $(builtin-target)
 endif # builtin-target
 
+ifdef pbl-target
+quiet_cmd_pbl_link_o_target = PBLLD   $@
+# If the list of objects to link is empty, just create an empty built-in-pbl.o
+cmd_pbl_link_o_target = $(if $(strip $(pbl-y)),\
+		      $(LD) $(ld_flags) -r -o $@ $(filter $(pbl-y), $^),\
+		      rm -f $@; $(AR) rcs $@)
+
+$(pbl-target): $(pbl-y) FORCE
+	$(call if_changed,pbl_link_o_target)
+
+targets += $(pbl-target)
+endif # pbl-target
+
 #
 # Rule to compile a set of .o files into one .a file
 #
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index b842c48..1a5b2b5 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -21,6 +21,17 @@ lib-y := $(filter-out $(obj-y), $(sort $(lib-y) $(lib-m)))
 # o if we encounter foo/ in $(obj-m), remove it from $(obj-m)
 #   and add the directory to the list of dirs to descend into: $(subdir-m)
 
+# for non dirs add pbl- prefix to the target
+# so we recompile the source with custom flags and custom quiet
+__pbl-y		:= $(notdir $(pbl-y))
+pbl-y		:= $(patsubst %.o,pbl-%.o,$(__pbl-y))
+# add subdir from $(obj-y) too so we do not need to have the dir define in
+# both $(obj-y) and $(pbl-y)
+__pbl-y		:= $(filter-out $(pbl-y), $(filter %/, $(obj-y)))
+pbl-y		+= $(__pbl-y)
+
+pbl-y		:= $(sort $(patsubst %/, %/built-in-pbl.o, $(pbl-y)))
+
 __subdir-y	:= $(patsubst %/,%,$(filter %/, $(obj-y)))
 subdir-y	+= $(__subdir-y)
 __subdir-m	:= $(patsubst %/,%,$(filter %/, $(obj-m)))
@@ -46,7 +57,9 @@ multi-objs   := $(multi-objs-y) $(multi-objs-m)
 
 # $(subdir-obj-y) is the list of objects in $(obj-y) which do not live
 # in the local directory
+__subdir-obj-y := $(foreach o,$(pbl-y),$(if $(filter-out $(o),$(notdir $(o))),$(o)))
 subdir-obj-y := $(foreach o,$(obj-y),$(if $(filter-out $(o),$(notdir $(o))),$(o)))
+subdir-obj-y += $(__subdir-obj-y)
 
 # $(obj-dirs) is a list of directories that contain object files
 obj-dirs := $(dir $(multi-objs) $(subdir-obj-y))
@@ -63,6 +76,7 @@ targets		:= $(addprefix $(obj)/,$(targets))
 obj-y		:= $(addprefix $(obj)/,$(obj-y))
 obj-m		:= $(addprefix $(obj)/,$(obj-m))
 lib-y		:= $(addprefix $(obj)/,$(lib-y))
+pbl-y		:= $(addprefix $(obj)/,$(pbl-y))
 subdir-obj-y	:= $(addprefix $(obj)/,$(subdir-obj-y))
 real-objs-y	:= $(addprefix $(obj)/,$(real-objs-y))
 real-objs-m	:= $(addprefix $(obj)/,$(real-objs-m))
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
