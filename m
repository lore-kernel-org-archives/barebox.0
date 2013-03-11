Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF9r6-0003R1-KF
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 21:02:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2013 22:01:53 +0100
Message-Id: <1363035716-13386-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1363035716-13386-1-git-send-email-s.hauer@pengutronix.de>
References: <1363035716-13386-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] Makefile.lib: Add dtc support
To: barebox@lists.infradead.org

Add rules to generate dtb files from dts/dtsi files,
optionally run the source files through the preprocessor.
Also add a rule to generate object files to include in
the barbox binary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/asm-generic/barebox.lds.h | 12 ++++++++++++
 scripts/Makefile.lib              | 41 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 53 insertions(+)

diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index b2bd19e..a77ef8f 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -1,4 +1,11 @@
 
+/*
+ * Align to a 32 byte boundary equal to the
+ * alignment gcc 4.5 uses for a struct
+ */
+#define STRUCT_ALIGNMENT 32
+#define STRUCT_ALIGN() . = ALIGN(STRUCT_ALIGNMENT)
+
 #if defined CONFIG_ARCH_IMX25 || \
 	defined CONFIG_ARCH_IMX35 || \
 	defined CONFIG_ARCH_IMX51 || \
@@ -33,6 +40,11 @@
 
 #define BAREBOX_MAGICVARS	KEEP(*(SORT_BY_NAME(.barebox_magicvar*)))
 
+#define BAREBOX_DTB()				\
+	__dtb_start = .;			\
+	KEEP(*(.dtb.rodata.*));				\
+	__dtb_end = .;
+
 #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
 CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
 #define MAX_BARE_INIT_SIZE CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 871c44b..bbfd4cd 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -141,6 +141,11 @@ cpp_flags      = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(__cpp_flags)
 
 ld_flags       = $(LDFLAGS) $(EXTRA_LDFLAGS)
 
+dtc_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc		\
+      -I$(srctree)/arch/$(SRCARCH)/dts			\
+      -I$(srctree)/arch/$(SRCARCH)/include/dts		\
+      -undef -D__DTS__
+
 # Finds the multi-part object the current object will be linked into
 modname-multi = $(sort $(foreach m,$(multi-used),\
 		$(if $(filter $(subst $(obj)/,,$*.o), $($(m:.o=-objs)) $($(m:.o=-y))),$(m:.o=))))
@@ -185,6 +190,42 @@ quiet_cmd_gzip = GZIP    $@
 cmd_gzip = (cat $(filter-out FORCE,$^) | gzip -n -f -9 > $@) || \
 	(rm -f $@ ; false)
 
+# DTC
+# ---------------------------------------------------------------------------
+
+# Generate an assembly file to wrap the output of the device tree compiler
+quiet_cmd_dt_S_dtb= DTB    $@
+cmd_dt_S_dtb=							\
+(								\
+	echo '\#include <asm-generic/barebox.lds.h>';		\
+	echo '.section .dtb.rodata.$(subst -,_,$(*F)),"a"';	\
+	echo '.balign STRUCT_ALIGNMENT';			\
+	echo '.global __dtb_$(subst -,_,$(*F))_start';		\
+	echo '__dtb_$(subst -,_,$(*F))_start:';			\
+	echo '.incbin "$<" ';					\
+	echo '__dtb_$(subst -,_,$(*F))_end:';			\
+	echo '.global __dtb_$(subst -,_,$(*F))_end';		\
+	echo '.balign STRUCT_ALIGNMENT';			\
+) > $@
+
+$(obj)/%.dtb.S: $(obj)/%.dtb
+	$(call cmd,dt_S_dtb)
+
+quiet_cmd_dtc = DTC     $@
+cmd_dtc = $(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 $(DTC_FLAGS) -d $(depfile) $<
+
+$(obj)/%.dtb: $(src)/%.dts FORCE
+	$(call if_changed_dep,dtc)
+
+dtc-tmp = $(subst $(comma),_,$(dot-target).dts)
+
+quiet_cmd_dtc_cpp = DTC+CPP $@
+cmd_dtc_cpp = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
+	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 $(DTC_FLAGS) $(dtc-tmp)
+
+$(obj)/%.dtb: $(src)/%.dtsp FORCE
+	$(call if_changed_dep,dtc_cpp)
+
 # Bzip2
 # ---------------------------------------------------------------------------
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
