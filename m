Delivery-date: Sat, 19 Jun 2021 06:58:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT3Y-0004hi-RV
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:58:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT3X-0002ZA-4u
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:58:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0rk4o8typ0YUgHS1UYXUq5YMgo33OyfB/Z+nSzVayhE=; b=Sdp8pheDHy/60M
	ZHIYDDkCy/Vp/HQZOjVyNefzUKahM/A/DynEo5XK5xqzFDCX5+ThEAxMdnjQqx+JmJhV+86VnoAZ7
	eFrPTFAHNfc61ILG0Whge3YV4A/mJwca6Y7Wom92fcV2RfZquUY448frSklhz6XpHEgdA2WFs3ybL
	NsC/4GTEgsAJj4xeVE4a7RRqNsj+SwLJXL5i487Pgzvvzt2YhXW5WEIYGeDni6HDJzD3TDVRUnUUQ
	Wh1uONTX3gznRJYEqd90xx7q51NR1F2fu+W8v8QosYoxnWC53TCIRzpklWQCT9yl0K+x1uixaq05R
	JscONsc/TyyJpnmLe6fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luT25-00GL5e-Mi; Sat, 19 Jun 2021 04:56:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSxI-00GI2E-6A
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwc-0008M0-Sh; Sat, 19 Jun 2021 06:50:58 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001Ka-MP; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:29 +0200
Message-Id: <20210619045055.779-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215140_581339_A916280F 
X-CRM114-Status: GOOD (  27.06  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/29] RISC-V: extend multi-image to support both S- and
 M-Mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We can't currently mix S-Mode and M-Mode images in the same build
and there's no straight-forward way to determine which mode we are in.

Move the decision on which mode barebox is targeted at out of Kconfig
and into the PBL. PBL code can call either barebox_riscv_supervisor_entry
or barebox_riscv_machine_entry to signal to barebox proper which mode
it's running in. Currently the only user of this information is the
RISC-V timer clocksource driver.

Any new code that does IS_ENABLED(CONFIG_RISCV_SBI) or
IS_ENABLED(CONFIG_RISCV_M_MODE) should also be adapted to use riscv_mode().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig                     | 14 +++++----
 arch/riscv/Kconfig.socs                |  2 ++
 arch/riscv/boards/erizo/lowlevel.c     |  6 ++--
 arch/riscv/boards/hifive/lowlevel.c    | 17 ++++++-----
 arch/riscv/boot/board-dt-2nd.c         |  2 +-
 arch/riscv/boot/entry.c                |  5 ++--
 arch/riscv/boot/entry.h                |  6 ++--
 arch/riscv/boot/start.c                | 12 +++++---
 arch/riscv/boot/uncompress.c           |  6 ++--
 arch/riscv/include/asm/barebox-riscv.h | 10 ++++++-
 arch/riscv/include/asm/system.h        | 41 ++++++++++++++++++++++++++
 arch/riscv/lib/sbi.c                   |  4 +++
 drivers/clocksource/timer-clint.c      |  5 ++--
 drivers/clocksource/timer-riscv.c      |  3 +-
 14 files changed, 102 insertions(+), 31 deletions(-)
 create mode 100644 arch/riscv/include/asm/system.h

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index a4aa799acf01..bbafdea1b959 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -97,14 +97,18 @@ config NMON_HELP
 	  Say yes here to get the nmon commands message on
 	  every nmon start.
 
-# set if we run in machine mode, cleared if we run in supervisor mode
+# selected by boards where barebox runs in machine mode
 config RISCV_M_MODE
 	bool
 
-# set if we are running in S-mode and can use SBI calls
-config RISCV_SBI
+# selected by boards where barebox runs in supervisor mode
+config RISCV_S_MODE
 	bool
-	depends on !RISCV_M_MODE
-	default y
+
+config RISCV_MULTI_MODE
+	def_bool RISCV_S_MODE && RISCV_M_MODE
+
+config RISCV_SBI
+	def_bool RISCV_S_MODE
 
 endmenu
diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index fd36745755e0..f1b431555fcd 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -15,6 +15,7 @@ config BOARD_ERIZO_GENERIC
 
 config SOC_VIRT
 	bool "QEMU Virt Machine"
+	select RISCV_S_MODE
 	select BOARD_RISCV_GENERIC_DT
 	help
 	  Generates an image tht can be be booted by QEMU. The image is called
@@ -22,6 +23,7 @@ config SOC_VIRT
 
 config SOC_SIFIVE
 	bool "SiFive SoCs"
+	select RISCV_S_MODE
 	select CLK_SIFIVE
 	select CLK_SIFIVE_PRCI
 	select RISCV_TIMER
diff --git a/arch/riscv/boards/erizo/lowlevel.c b/arch/riscv/boards/erizo/lowlevel.c
index 6acf15931cdf..fc262ed61b56 100644
--- a/arch/riscv/boards/erizo/lowlevel.c
+++ b/arch/riscv/boards/erizo/lowlevel.c
@@ -7,12 +7,14 @@
 ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
 {
 	extern char __dtb_z_erizo_generic_start[];
+	void *fdt;
 
 	debug_ll_init();
 	putc_ll('>');
 
 	/* On POR, we are running from read-only memory here. */
 
-	barebox_riscv_entry(0x80000000, SZ_8M,
-			    __dtb_z_erizo_generic_start + get_runtime_offset());
+	fdt = __dtb_z_erizo_generic_start + get_runtime_offset();
+
+	barebox_riscv_machine_entry(0x80000000, SZ_8M, fdt);
 }
diff --git a/arch/riscv/boards/hifive/lowlevel.c b/arch/riscv/boards/hifive/lowlevel.c
index 1de13cac1688..8a20f3c51d40 100644
--- a/arch/riscv/boards/hifive/lowlevel.c
+++ b/arch/riscv/boards/hifive/lowlevel.c
@@ -4,22 +4,23 @@
 #include <asm/barebox-riscv.h>
 #include <debug_ll.h>
 
+static __always_inline void start_hifive(void *fdt)
+{
+	putc_ll('>');
+
+	barebox_riscv_supervisor_entry(0x80000000, SZ_128M, fdt);
+}
+
 ENTRY_FUNCTION(start_hifive_unmatched, a0, a1, a2)
 {
 	extern char __dtb_z_hifive_unmatched_a00_start[];
 
-	putc_ll('>');
-
-	barebox_riscv_entry(0x80000000, SZ_128M,
-			    __dtb_z_hifive_unmatched_a00_start + get_runtime_offset());
+	start_hifive(__dtb_z_hifive_unmatched_a00_start + get_runtime_offset());
 }
 
 ENTRY_FUNCTION(start_hifive_unleashed, a0, a1, a2)
 {
 	extern char __dtb_z_hifive_unleashed_a00_start[];
 
-	putc_ll('>');
-
-	barebox_riscv_entry(0x80000000, SZ_128M,
-			    __dtb_z_hifive_unleashed_a00_start + get_runtime_offset());
+	start_hifive(__dtb_z_hifive_unleashed_a00_start + get_runtime_offset());
 }
diff --git a/arch/riscv/boot/board-dt-2nd.c b/arch/riscv/boot/board-dt-2nd.c
index e9810f8add97..48cb23ae5e92 100644
--- a/arch/riscv/boot/board-dt-2nd.c
+++ b/arch/riscv/boot/board-dt-2nd.c
@@ -73,5 +73,5 @@ ENTRY_FUNCTION(start_dt_2nd, a0, _fdt, a2)
 	    _fdt < riscv_mem_stack_top(membase, endmem))
 		memsize = ALIGN_DOWN(_fdt - membase, SZ_1M);
 
-	barebox_riscv_entry(membase, memsize, fdt);
+	barebox_riscv_supervisor_entry(membase, memsize, fdt);
 }
diff --git a/arch/riscv/boot/entry.c b/arch/riscv/boot/entry.c
index eb286423d875..e4a5c2208df3 100644
--- a/arch/riscv/boot/entry.c
+++ b/arch/riscv/boot/entry.c
@@ -20,10 +20,11 @@
  */
 
 void __noreturn __naked barebox_riscv_entry(unsigned long membase,
-					    unsigned long memsize, void *boarddata)
+					    unsigned long memsize, void *boarddata,
+					    unsigned flags)
 {
 	unsigned long stack_top = riscv_mem_stack_top(membase, membase + memsize);
 	asm volatile ("move sp, %0" : : "r"(stack_top));
-	barebox_pbl_start(membase, memsize, boarddata);
+	barebox_pbl_start(membase, memsize, boarddata, flags);
 }
 
diff --git a/arch/riscv/boot/entry.h b/arch/riscv/boot/entry.h
index b3a24d2783f7..fb4af5eae558 100644
--- a/arch/riscv/boot/entry.h
+++ b/arch/riscv/boot/entry.h
@@ -6,10 +6,12 @@
 
 void __noreturn barebox_non_pbl_start(unsigned long membase,
 				      unsigned long memsize,
-				      void *boarddata);
+				      void *boarddata,
+				      unsigned flags);
 
 void __noreturn barebox_pbl_start(unsigned long membase,
 				  unsigned long memsize,
-				  void *boarddata);
+				  void *boarddata,
+				  unsigned flags);
 
 #endif
diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
index 05f6c6231f7e..82bd02d0a0d0 100644
--- a/arch/riscv/boot/start.c
+++ b/arch/riscv/boot/start.c
@@ -26,6 +26,7 @@ static unsigned long riscv_barebox_size;
 static unsigned long riscv_endmem;
 static void *barebox_boarddata;
 static unsigned long barebox_boarddata_size;
+unsigned barebox_riscv_pbl_flags;
 
 void *barebox_riscv_boot_dtb(void)
 {
@@ -107,7 +108,8 @@ device_initcall(barebox_memory_areas_init);
  * the pbl. The stack already has been set up by the pbl.
  */
 __noreturn __no_sanitize_address __section(.text_entry)
-void barebox_non_pbl_start(unsigned long membase, unsigned long memsize, void *boarddata)
+void barebox_non_pbl_start(unsigned long membase, unsigned long memsize,
+			   void *boarddata, unsigned flags)
 {
 	unsigned long endmem = membase + memsize;
 	unsigned long malloc_start, malloc_end;
@@ -168,18 +170,20 @@ void barebox_non_pbl_start(unsigned long membase, unsigned long memsize, void *b
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
+	barebox_riscv_pbl_flags = flags;
+
 	pr_debug("starting barebox...\n");
 
 	start_barebox();
 }
 
-void start(unsigned long membase, unsigned long memsize, void *boarddata);
+void start(unsigned long membase, unsigned long memsize, void *boarddata, unsigned flags);
 /*
  * First function in the uncompressed image. We get here from
  * the pbl. The stack already has been set up by the pbl.
  */
 void __no_sanitize_address __section(.text_entry) start(unsigned long membase,
-		unsigned long memsize, void *boarddata)
+		unsigned long memsize, void *boarddata, unsigned flags)
 {
-	barebox_non_pbl_start(membase, memsize, boarddata);
+	barebox_non_pbl_start(membase, memsize, boarddata, flags);
 }
diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
index b4e010998a4a..35a91e8cb62a 100644
--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -23,10 +23,10 @@ unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
 void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
-				  void *fdt)
+				  void *fdt, unsigned flags)
 {
 	uint32_t pg_len, uncompressed_len;
-	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
+	void __noreturn (*barebox)(unsigned long, unsigned long, void *, unsigned);
 	unsigned long endmem = membase + memsize;
 	unsigned long barebox_base;
 	void *pg_start, *pg_end;
@@ -67,5 +67,5 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	pr_debug("jumping to uncompressed image at 0x%p. dtb=0x%p\n", barebox, fdt);
 
-	barebox(membase, memsize, fdt);
+	barebox(membase, memsize, fdt, flags);
 }
diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
index bb1d15308b48..f4081a71f00e 100644
--- a/arch/riscv/include/asm/barebox-riscv.h
+++ b/arch/riscv/include/asm/barebox-riscv.h
@@ -19,14 +19,22 @@
 #include <linux/compiler.h>
 #include <asm/sections.h>
 #include <asm/barebox-riscv-head.h>
+#include <asm/system.h>
 
 unsigned long get_runtime_offset(void);
 
 void setup_c(void);
 void relocate_to_current_adr(void);
 void relocate_to_adr(unsigned long target);
+
 void __noreturn __naked barebox_riscv_entry(unsigned long membase, unsigned long memsize,
-					    void *boarddata);
+					    void *boarddata, unsigned int flags);
+
+#define barebox_riscv_machine_entry(membase, memsize, boarddata) \
+	barebox_riscv_entry(membase, memsize, boarddata, RISCV_M_MODE)
+
+#define barebox_riscv_supervisor_entry(membase, memsize, boarddata) \
+	barebox_riscv_entry(membase, memsize, boarddata, RISCV_S_MODE)
 
 unsigned long riscv_mem_ramoops_get(void);
 unsigned long riscv_mem_endmem_get(void);
diff --git a/arch/riscv/include/asm/system.h b/arch/riscv/include/asm/system.h
new file mode 100644
index 000000000000..3d57a7d191f6
--- /dev/null
+++ b/arch/riscv/include/asm/system.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __ASM_SYSTEM_H_
+#define __ASM_SYSTEM_H_
+
+#ifndef __ASSEMBLY__
+
+#define RISCV_MODE_MASK 0x3
+enum riscv_mode {
+    RISCV_U_MODE	= 0,
+    RISCV_S_MODE	= 1,
+    RISCV_HS_MODE	= 2,
+    RISCV_M_MODE	= 3,
+};
+
+static inline enum riscv_mode __riscv_mode(u32 flags)
+{
+	/* allow non-LTO builds to discard code for unused modes */
+	if (!IS_ENABLED(CONFIG_RISCV_MULTI_MODE)) {
+		if (IS_ENABLED(CONFIG_RISCV_M_MODE))
+			return RISCV_M_MODE;
+		if (IS_ENABLED(CONFIG_RISCV_S_MODE))
+			return RISCV_S_MODE;
+	}
+
+	return flags & RISCV_MODE_MASK;
+}
+
+#ifndef __PBL__
+extern unsigned barebox_riscv_pbl_flags;
+
+static inline enum riscv_mode riscv_mode(void)
+{
+	return __riscv_mode(barebox_riscv_pbl_flags);
+}
+
+#endif
+
+#endif
+
+#endif
diff --git a/arch/riscv/lib/sbi.c b/arch/riscv/lib/sbi.c
index 973c9d9d0f1e..45a04fb821a9 100644
--- a/arch/riscv/lib/sbi.c
+++ b/arch/riscv/lib/sbi.c
@@ -6,6 +6,7 @@
  */
 
 #include <asm/sbi.h>
+#include <asm/system.h>
 #include <linux/export.h>
 #include <errno.h>
 #include <init.h>
@@ -53,6 +54,9 @@ static int sbi_init(void)
 {
 	int ret;
 
+	if (riscv_mode() != RISCV_S_MODE)
+		return 0;
+
 	ret = sbi_get_spec_version();
 	if (ret > 0)
 		sbi_spec_version = ret;
diff --git a/drivers/clocksource/timer-clint.c b/drivers/clocksource/timer-clint.c
index 4eeb9cf7ffc9..412ce3e1e985 100644
--- a/drivers/clocksource/timer-clint.c
+++ b/drivers/clocksource/timer-clint.c
@@ -17,6 +17,7 @@
 #include <linux/err.h>
 #include <io.h>
 #include <asm/timer.h>
+#include <asm/system.h>
 
 #define CLINT_TIMER_VAL_OFF	0xbff8
 
@@ -63,8 +64,8 @@ static int clint_timer_init_dt(struct device_d* dev)
 {
 	struct resource *iores;
 
-	/* one timer is enough */
-	if (clint_timer_val)
+	/* one timer is enough. Only M-Mode */
+	if (clint_timer_val || riscv_mode() != RISCV_M_MODE)
 		return 0;
 
 	iores = dev_request_mem_resource(dev, 0);
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index c2d32b36bbc5..5a517fe6b43d 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -12,6 +12,7 @@
 #include <clock.h>
 #include <asm/timer.h>
 #include <asm/csr.h>
+#include <asm/system.h>
 
 static u64 notrace riscv_timer_get_count_sbi(void)
 {
@@ -45,7 +46,7 @@ static u64 notrace riscv_timer_get_count_rdcycle(void)
 
 static u64 notrace riscv_timer_get_count(void)
 {
-	if (IS_ENABLED(CONFIG_RISCV_SBI))
+	if (riscv_mode() == RISCV_S_MODE)
 		return riscv_timer_get_count_sbi();
 	else
 		return riscv_timer_get_count_rdcycle();
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

