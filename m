Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jawS3-00087U-1e
 for barebox@lists.infradead.org; Tue, 19 May 2020 07:14:12 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 19 May 2020 16:13:45 +0900
Message-Id: <20200519071353.395493-1-masahiroy@kernel.org>
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
Subject: [PATCH 1/8] kbuild: rename pbl object pbl-*.o to *.pbl.o
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Currently, pbl objects are output to:

  <directory-path>/pbl-<basename>.o

This commit changes as follows:

  <directory-path>/<basename>.pbl.o

The motivation is not only to get rid of the ugly code introduced by
commit 257abdaa36c8 ("Do not rm the path from pbl-y target"), but also
to make it easier to remove obj-dtb-y, pbl-dtb-y, lwl-dtb-y syntax in
the next commit.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/arm/boards/nvidia-beaver/Makefile       |  2 +-
 arch/arm/boards/nvidia-jetson-tk1/Makefile   |  2 +-
 arch/arm/boards/toradex-colibri-t20/Makefile |  2 +-
 arch/arm/boards/toshiba-ac100/Makefile       |  2 +-
 arch/arm/cpu/Makefile                        | 12 ++++++------
 arch/arm/mach-tegra/Makefile                 |  2 +-
 lib/Makefile                                 |  5 ++---
 scripts/Makefile.build                       |  4 ++--
 scripts/Makefile.lib                         |  4 ++--
 9 files changed, 17 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boards/nvidia-beaver/Makefile b/arch/arm/boards/nvidia-beaver/Makefile
index f0eb7b2de..1b90eb13f 100644
--- a/arch/arm/boards/nvidia-beaver/Makefile
+++ b/arch/arm/boards/nvidia-beaver/Makefile
@@ -1,4 +1,4 @@
-CFLAGS_pbl-entry.o := -mcpu=arm7tdmi -march=armv4t
+CFLAGS_entry.pbl.o := -mcpu=arm7tdmi -march=armv4t
 soc := tegra30
 lwl-y += entry.o
 obj-y += board.o
diff --git a/arch/arm/boards/nvidia-jetson-tk1/Makefile b/arch/arm/boards/nvidia-jetson-tk1/Makefile
index 5487f0289..d38001c15 100644
--- a/arch/arm/boards/nvidia-jetson-tk1/Makefile
+++ b/arch/arm/boards/nvidia-jetson-tk1/Makefile
@@ -1,4 +1,4 @@
-CFLAGS_pbl-entry.o := -mcpu=arm7tdmi -march=armv4t
+CFLAGS_entry.pbl.o := -mcpu=arm7tdmi -march=armv4t
 soc := tegra124
 lwl-y += entry.o
 obj-y += board.o
diff --git a/arch/arm/boards/toradex-colibri-t20/Makefile b/arch/arm/boards/toradex-colibri-t20/Makefile
index 644a8e526..cdce48d1f 100644
--- a/arch/arm/boards/toradex-colibri-t20/Makefile
+++ b/arch/arm/boards/toradex-colibri-t20/Makefile
@@ -1,4 +1,4 @@
-CFLAGS_pbl-entry.o := -mcpu=arm7tdmi -march=armv4t
+CFLAGS_entry.pbl.o := -mcpu=arm7tdmi -march=armv4t
 soc := tegra20
 lwl-y += entry.o
 obj-y += board.o
diff --git a/arch/arm/boards/toshiba-ac100/Makefile b/arch/arm/boards/toshiba-ac100/Makefile
index 4ef18c0ce..e8158cb25 100644
--- a/arch/arm/boards/toshiba-ac100/Makefile
+++ b/arch/arm/boards/toshiba-ac100/Makefile
@@ -1,3 +1,3 @@
-CFLAGS_pbl-entry.o := -mcpu=arm7tdmi -march=armv4t
+CFLAGS_entry.pbl.o := -mcpu=arm7tdmi -march=armv4t
 lwl-y += entry.o
 obj-y += board.o
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 63cf35c29..f7f9c3041 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -6,7 +6,7 @@ obj-pbl-y += lowlevel$(S64).o
 obj-pbl-$(CONFIG_MMU) += mmu-early$(S64).o
 obj-pbl-$(CONFIG_CPU_32v7) += hyp.o
 AFLAGS_hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
-AFLAGS_pbl-hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
+AFLAGS_hyp.pbl.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
 
 obj-y += start.o entry.o entry_ll$(S64).o
 
@@ -32,20 +32,20 @@ obj-$(CONFIG_ARM_PSCI) += psci.o
 obj-$(CONFIG_ARM_PSCI_OF) += psci-of.o
 obj-pbl-$(CONFIG_ARM_SMCCC) += smccc-call$(S64).o
 AFLAGS_smccc-call$(S64).o :=-Wa,-march=armv$(if $(S64),8,7)-a
-AFLAGS_pbl-smccc-call$(S64).o :=-Wa,-march=armv$(if $(S64),8,7)-a
+AFLAGS_smccc-call$(S64).pbl.o :=-Wa,-march=armv$(if $(S64),8,7)-a
 obj-$(CONFIG_ARM_SECURE_MONITOR) += sm.o sm_as.o
 AFLAGS_sm_as.o		:=-Wa,-march=armv7-a
 
 obj-pbl-$(CONFIG_CPU_32v4T) += cache-armv4.o
 obj-pbl-$(CONFIG_CPU_32v5) += cache-armv5.o
 obj-pbl-$(CONFIG_CPU_32v6) += cache-armv6.o
-AFLAGS_cache-armv7.o       :=-Wa,-march=armv7-a
 obj-pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
-AFLAGS_pbl-cache-armv7.o       :=-Wa,-march=armv7-a
+AFLAGS_cache-armv7.o       :=-Wa,-march=armv7-a
+AFLAGS_cache-armv7.pbl.o   :=-Wa,-march=armv7-a
 obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
-AFLAGS_cache-armv8.o       :=-Wa,-march=armv8-a
 obj-pbl-$(CONFIG_CPU_64v8) += cache-armv8.o
-AFLAGS_pbl-cache-armv8.o       :=-Wa,-march=armv8-a
+AFLAGS_cache-armv8.o       :=-Wa,-march=armv8-a
+AFLAGS-cache-armv8.pbl.o   :=-Wa,-march=armv8-a
 
 pbl-y += entry.o entry_ll$(S64).o
 pbl-y += uncompress.o
diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index 754795175..60aae41ea 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -1,5 +1,5 @@
 CFLAGS_tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t
-CFLAGS_pbl-tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t
+CFLAGS_tegra_avp_init.pbl.o := -mcpu=arm7tdmi -march=armv4t
 lwl-y += tegra_avp_init.o
 lwl-y += tegra_maincomplex_init.o
 obj-y += tegra20.o
diff --git a/lib/Makefile b/lib/Makefile
index 56040a0d5..f370d167b 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -86,8 +86,7 @@ UBSAN_SANITIZE_ubsan.o := n
 libfdt_files = fdt.o fdt_ro.o fdt_wip.o fdt_rw.o fdt_sw.o fdt_strerror.o \
 	                      fdt_empty_tree.o
 $(foreach file, $(libfdt_files), \
-	        $(eval CFLAGS_$(file) = -I $(srctree)/scripts/dtc/libfdt))
-$(foreach file, $(libfdt_files), \
-		$(eval CFLAGS_pbl-$(file) = -I $(srctree)/scripts/dtc/libfdt))
+        $(eval CFLAGS_$(file) = -I $(srctree)/scripts/dtc/libfdt) \
+	$(eval CFLAGS_$(file:%.o=%.pbl.o) = -I $(srctree)/scripts/dtc/libfdt))
 
 obj-pbl-$(CONFIG_LIBFDT) += $(libfdt_files)
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 023215857..956df9e23 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -158,7 +158,7 @@ endef
 
 # Built-in and composite module parts
 
-pbl-%.o: %.c FORCE
+%.pbl.o: %.c FORCE
 	$(call cmd,force_checksrc)
 	$(call if_changed_rule,pbl_cc_o_c)
 
@@ -201,7 +201,7 @@ cmd_as_o_S       = $(CC) $(a_flags) -c -o $@ $<
 quiet_cmd_pbl_as_o_S = PBLAS   $@
 cmd_pbl_as_o_S       = $(CC) -D__PBL__ $(a_flags) $(PBL_CPPFLAGS) -c -o $@ $<
 
-pbl-%.o: %.S FORCE
+%.pbl.o: %.S FORCE
 	$(call if_changed_dep,pbl_as_o_S)
 
 %.o: %.S FORCE
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 39cc24b19..273113ff5 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -48,8 +48,8 @@ endif
 obj-y		+= $(obj-pbl-y)
 pbl-y		+= $(obj-pbl-y)
 
-# add pbl- prefix to the target
-pbl-y		:= $(shell echo $(pbl-y) | sed -e 's%\(\([^ \t]\+/\)*\)\([^ \t]*\.o\)%\2pbl-\3%g')
+# pbl objects are suffixed with .pbl.o
+pbl-y		:= $(patsubst %.o,%.pbl.o,$(pbl-y))
 
 # add subdir from $(obj-y) too so we do not need to have the dir define in
 # both $(obj-y) and $(pbl-y)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
