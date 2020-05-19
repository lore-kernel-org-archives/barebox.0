Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jawSP-0008LF-4f
 for barebox@lists.infradead.org; Tue, 19 May 2020 07:14:34 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 19 May 2020 16:13:49 +0900
Message-Id: <20200519071353.395493-5-masahiroy@kernel.org>
In-Reply-To: <20200519071353.395493-1-masahiroy@kernel.org>
References: <20200519071353.395493-1-masahiroy@kernel.org>
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
Subject: [PATCH 5/8] kbuild: resync modkern_{c,
 a}flags and quiet_modtag with Linux 5.7-rc6
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

The latest Linux calculates them more simply; part-of-module is set
when the target is being built for a module.

Also, rename real-objs-{y,m} to real-obj-{y,m}.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile.build | 24 ++----------------------
 scripts/Makefile.lib   | 23 ++++++++++++++++++-----
 2 files changed, 20 insertions(+), 27 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index d94ad488d..f575a07fd 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -88,22 +88,6 @@ endif
 # Compile C sources (.c)
 # ---------------------------------------------------------------------------
 
-# Default is built-in, unless we know otherwise
-modkern_cflags := $(CFLAGS_KERNEL)
-quiet_modtag := $(empty)   $(empty)
-
-$(real-objs-m)        : modkern_cflags := $(CFLAGS_MODULE)
-$(real-objs-m:.o=.i)  : modkern_cflags := $(CFLAGS_MODULE)
-$(real-objs-m:.o=.s)  : modkern_cflags := $(CFLAGS_MODULE)
-$(real-objs-m:.o=.lst): modkern_cflags := $(CFLAGS_MODULE)
-
-$(real-objs-m)        : quiet_modtag := [M]
-$(real-objs-m:.o=.i)  : quiet_modtag := [M]
-$(real-objs-m:.o=.s)  : quiet_modtag := [M]
-$(real-objs-m:.o=.lst): quiet_modtag := [M]
-
-$(obj-m)              : quiet_modtag := [M]
-
 # Default for not multi-part modules
 modname = $(basetarget)
 
@@ -175,11 +159,6 @@ quiet_cmd_cc_lst_c = MKLST   $@
 # Compile assembler sources (.S)
 # ---------------------------------------------------------------------------
 
-modkern_aflags := $(AFLAGS_KERNEL)
-
-$(real-objs-m)      : modkern_aflags := $(AFLAGS_MODULE)
-$(real-objs-m:.o=.s): modkern_aflags := $(AFLAGS_MODULE)
-
 quiet_cmd_as_s_S = CPP $(quiet_modtag) $@
 cmd_as_s_S       = $(CPP) $(a_flags)   -o $@ $<
 
@@ -198,7 +177,8 @@ cmd_pbl_as_o_S       = $(CC) -D__PBL__ $(a_flags) $(PBL_CPPFLAGS) -c -o $@ $<
 %.o: %.S FORCE
 	$(call if_changed_dep,as_o_S)
 
-targets += $(real-objs-y) $(real-objs-m) $(lib-y) $(pbl-y)
+targets += $(filter-out $(subdir-obj-y), $(real-obj-y)) $(real-obj-m) $(lib-y)
+targets += $(pbl-y)
 targets += $(extra-y) $(always-y) $(MAKECMDGOALS)
 
 # Linker scripts preprocessor (.lds.S -> .lds)
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index ef723c0ca..a6cba747f 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -82,9 +82,10 @@ extra-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX),$(bbenv-y))
 extra-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).S,$(bbenv-y))
 extra-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).o,$(bbenv-y))
 
-# Replace multi-part objects by their individual parts, look at local dir only
-real-objs-y := $(foreach m, $(filter-out $(subdir-obj-y), $(obj-y)), $(if $(strip $($(m:.o=-objs)) $($(m:.o=-y))),$($(m:.o=-objs)) $($(m:.o=-y)),$(m))) $(extra-y)
-real-objs-m := $(foreach m, $(obj-m), $(if $(strip $($(m:.o=-objs)) $($(m:.o=-y))),$($(m:.o=-objs)) $($(m:.o=-y)),$(m)))
+# Replace multi-part objects by their individual parts,
+# including built-in.a from subdirectories
+real-obj-y := $(foreach m, $(obj-y), $(if $(strip $($(m:.o=-objs)) $($(m:.o=-y)) $($(m:.o=-))),$($(m:.o=-objs)) $($(m:.o=-y)),$(m)))
+real-obj-m := $(foreach m, $(obj-m), $(if $(strip $($(m:.o=-objs)) $($(m:.o=-y)) $($(m:.o=-m)) $($(m:.o=-))),$($(m:.o=-objs)) $($(m:.o=-y)) $($(m:.o=-m)),$(m)))
 
 always-y += $(always-m)
 
@@ -98,8 +99,8 @@ obj-m		:= $(addprefix $(obj)/,$(obj-m))
 lib-y		:= $(addprefix $(obj)/,$(lib-y))
 pbl-y		:= $(addprefix $(obj)/,$(pbl-y))
 subdir-obj-y	:= $(addprefix $(obj)/,$(subdir-obj-y))
-real-objs-y	:= $(addprefix $(obj)/,$(real-objs-y))
-real-objs-m	:= $(addprefix $(obj)/,$(real-objs-m))
+real-obj-y	:= $(addprefix $(obj)/,$(real-obj-y))
+real-obj-m	:= $(addprefix $(obj)/,$(real-obj-m))
 single-used-m	:= $(addprefix $(obj)/,$(single-used-m))
 multi-used-y	:= $(addprefix $(obj)/,$(multi-used-y))
 multi-used-m	:= $(addprefix $(obj)/,$(multi-used-m))
@@ -152,6 +153,18 @@ __a_flags	=                          $(call flags,_a_flags)
 __cpp_flags     =                          $(call flags,_cpp_flags)
 endif
 
+part-of-module = $(if $(filter $(basename $@).o, $(real-obj-m)),y)
+quiet_modtag = $(if $(part-of-module),[M],   )
+
+modkern_cflags =                                          \
+	$(if $(part-of-module),                           \
+		$(KBUILD_CFLAGS_MODULE) $(CFLAGS_MODULE), \
+		$(KBUILD_CFLAGS_KERNEL) $(CFLAGS_KERNEL) $(modfile_flags))
+
+modkern_aflags = $(if $(part-of-module),				\
+			$(KBUILD_AFLAGS_MODULE) $(AFLAGS_MODULE),	\
+			$(KBUILD_AFLAGS_KERNEL) $(AFLAGS_KERNEL))
+
 c_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(KBUILD_CPPFLAGS) \
 		 $(__c_flags) $(modkern_cflags) \
 		 -D"KBUILD_STR(s)=\#s" $(basename_flags) $(modname_flags)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
