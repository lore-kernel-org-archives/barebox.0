Delivery-date: Sat, 19 Jun 2021 06:53:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSzB-0004XT-B7
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:53:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSz7-0000xY-QS
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:53:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOtArM7h43grouX9ZPGBEb+xfP8K0+uZu764nhO2eU0=; b=KddKzpnM80Fy3E
	nG+syafyMEzrSUpNXrWdzOmjuoDjQttAnpxbiaAHTOPlHg5aLsoOkhp5xwXwj+mT2BVBcKe/VPR+L
	+4REk0r631BLAmdSgEnn+Y02myWKQb7Iq7TlPRLfHUKwcOL5enKAy+FPNgLedwPQg4xk4VTn5U0l3
	VIysfPcKfcTyV1goAQ0SFLhCNhwxcZJiDOgqjJUVF0fpUqR+Q9IMFpVnEuqYq4OzBKm64hbnpLVkA
	9668wGE2rEtVYtFkb4VT84AFSgQib9P7/YoZDzqFvY2UGBt+FcoEvPPhHrSgYnTvz9RDfisRocomw
	eJO73HFzIbWK5hPbXWbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luSxb-00GICG-KR; Sat, 19 Jun 2021 04:51:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwm-00GHiN-8l
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwc-0008M2-SX; Sat, 19 Jun 2021 06:50:58 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001Kg-NJ; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:31 +0200
Message-Id: <20210619045055.779-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215108_562192_F30D600D 
X-CRM114-Status: GOOD (  21.31  )
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
Subject: [PATCH v2 05/29] RISC-V: S-Mode: propagate Hart ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Unlike other architectures we support, Linux must apparently be
booted on all cores by the bootloader. To achieve this, the bootloaders
running on the multiple cores synchronize via IPIs.

We will get there eventually, but for now, let's restrict barebox
to boot Linux on a single core. S-Mode firmware is passed hart (core) id
in a0. This is propagated via the thread pointer register, which is
unused by GCC and made available as:

 - cpuinfo output when running in S-Mode
 - $global.hartid
 - a0 when booting via bootm
 - /chosen/boot-hartid fixup: will come in handy when we gain EFI
   loading support
 - single /cpus/*/reg: All other CPU nodes are deleted via fixup

For M-Mode, we can query hart id via CSR. It's unknown whether erizo
supports it and we don't yet have exception support to handle it not
being available, so changes are only done for S-Mode for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/boards/hifive/lowlevel.c    |  8 +++----
 arch/riscv/boot/board-dt-2nd.c         |  4 ++--
 arch/riscv/cpu/core.c                  | 33 +++++++++++++++++++++++++-
 arch/riscv/include/asm/barebox-riscv.h |  6 +++--
 arch/riscv/include/asm/system.h        | 20 ++++++++++++++++
 arch/riscv/lib/bootm.c                 |  4 +++-
 arch/riscv/lib/cpuinfo.c               |  1 +
 common/globalvar.c                     | 21 ++++++++++++++++
 common/oftree.c                        | 19 ++++++++++++++-
 include/globalvar.h                    |  8 +++++++
 10 files changed, 113 insertions(+), 11 deletions(-)

diff --git a/arch/riscv/boards/hifive/lowlevel.c b/arch/riscv/boards/hifive/lowlevel.c
index 8a20f3c51d40..5e8969bef1da 100644
--- a/arch/riscv/boards/hifive/lowlevel.c
+++ b/arch/riscv/boards/hifive/lowlevel.c
@@ -4,23 +4,23 @@
 #include <asm/barebox-riscv.h>
 #include <debug_ll.h>
 
-static __always_inline void start_hifive(void *fdt)
+static __always_inline void start_hifive(unsigned long hartid, void *fdt)
 {
 	putc_ll('>');
 
-	barebox_riscv_supervisor_entry(0x80000000, SZ_128M, fdt);
+	barebox_riscv_supervisor_entry(0x80000000, SZ_128M, hartid, fdt);
 }
 
 ENTRY_FUNCTION(start_hifive_unmatched, a0, a1, a2)
 {
 	extern char __dtb_z_hifive_unmatched_a00_start[];
 
-	start_hifive(__dtb_z_hifive_unmatched_a00_start + get_runtime_offset());
+	start_hifive(a0, __dtb_z_hifive_unmatched_a00_start + get_runtime_offset());
 }
 
 ENTRY_FUNCTION(start_hifive_unleashed, a0, a1, a2)
 {
 	extern char __dtb_z_hifive_unleashed_a00_start[];
 
-	start_hifive(__dtb_z_hifive_unleashed_a00_start + get_runtime_offset());
+	start_hifive(a0, __dtb_z_hifive_unleashed_a00_start + get_runtime_offset());
 }
diff --git a/arch/riscv/boot/board-dt-2nd.c b/arch/riscv/boot/board-dt-2nd.c
index 48cb23ae5e92..f31c48a906c2 100644
--- a/arch/riscv/boot/board-dt-2nd.c
+++ b/arch/riscv/boot/board-dt-2nd.c
@@ -40,7 +40,7 @@ static const struct fdt_device_id console_ids[] = {
 	{ /* sentinel */ }
 };
 
-ENTRY_FUNCTION(start_dt_2nd, a0, _fdt, a2)
+ENTRY_FUNCTION(start_dt_2nd, hartid, _fdt, a2)
 {
 	unsigned long membase, memsize, endmem, endfdt, uncompressed_len;
 	struct fdt_header *fdt = (void *)_fdt;
@@ -73,5 +73,5 @@ ENTRY_FUNCTION(start_dt_2nd, a0, _fdt, a2)
 	    _fdt < riscv_mem_stack_top(membase, endmem))
 		memsize = ALIGN_DOWN(_fdt - membase, SZ_1M);
 
-	barebox_riscv_supervisor_entry(membase, memsize, fdt);
+	barebox_riscv_supervisor_entry(membase, memsize, hartid, fdt);
 }
diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
index 982d378eddec..62eb0ca87164 100644
--- a/arch/riscv/cpu/core.c
+++ b/arch/riscv/cpu/core.c
@@ -19,6 +19,8 @@
 #include <linux/err.h>
 #include <memory.h>
 #include <asm-generic/memory_layout.h>
+#include <globalvar.h>
+#include <magicvar.h>
 #include <io.h>
 
 static int riscv_request_stack(void)
@@ -30,6 +32,31 @@ coredevice_initcall(riscv_request_stack);
 
 static struct device_d timer_dev;
 
+static s64 hartid;
+
+BAREBOX_MAGICVAR(global.hartid, "RISC-V hartid");
+
+static int riscv_fixup_cpus(struct device_node *root, void *context)
+{
+	struct device_node *cpus_node, *np, *tmp;
+
+	cpus_node = of_find_node_by_name(root, "cpus");
+	if (!cpus_node)
+		return 0;
+
+	for_each_child_of_node_safe(cpus_node, tmp, np) {
+		u32 cpu_index;
+
+		if (of_property_read_u32(np, "reg", &cpu_index))
+			continue;
+
+		if (cpu_index != hartid)
+			of_delete_node(np);
+	}
+
+	return 0;
+}
+
 static int riscv_probe(struct device_d *parent)
 {
 	int ret;
@@ -46,7 +73,11 @@ static int riscv_probe(struct device_d *parent)
 			return ret;
 	}
 
-	return 0;
+	hartid = riscv_hartid();
+	if (hartid >= 0)
+		globalvar_add_simple_uint64("hartid", &hartid, "%llu");
+
+	return of_register_fixup(riscv_fixup_cpus, NULL);
 }
 
 static struct of_device_id riscv_dt_ids[] = {
diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
index f4081a71f00e..bbe6cd040642 100644
--- a/arch/riscv/include/asm/barebox-riscv.h
+++ b/arch/riscv/include/asm/barebox-riscv.h
@@ -33,8 +33,10 @@ void __noreturn __naked barebox_riscv_entry(unsigned long membase, unsigned long
 #define barebox_riscv_machine_entry(membase, memsize, boarddata) \
 	barebox_riscv_entry(membase, memsize, boarddata, RISCV_M_MODE)
 
-#define barebox_riscv_supervisor_entry(membase, memsize, boarddata) \
-	barebox_riscv_entry(membase, memsize, boarddata, RISCV_S_MODE)
+#define barebox_riscv_supervisor_entry(membase, memsize, hartid, boarddata) do { \
+	__asm__ volatile("mv tp, %0\n" : : "r"(hartid)); \
+	barebox_riscv_entry(membase, memsize, boarddata, RISCV_S_MODE); \
+} while (0)
 
 unsigned long riscv_mem_ramoops_get(void);
 unsigned long riscv_mem_endmem_get(void);
diff --git a/arch/riscv/include/asm/system.h b/arch/riscv/include/asm/system.h
index 3d57a7d191f6..adf856f9e99b 100644
--- a/arch/riscv/include/asm/system.h
+++ b/arch/riscv/include/asm/system.h
@@ -26,6 +26,22 @@ static inline enum riscv_mode __riscv_mode(u32 flags)
 	return flags & RISCV_MODE_MASK;
 }
 
+static inline long __riscv_hartid(u32 flags)
+{
+	long hartid = -1;
+
+	switch (__riscv_mode(flags)) {
+	case RISCV_S_MODE:
+		__asm__ volatile("mv %0, tp\n" : "=r"(hartid) :);
+		break;
+	default:
+		/* unimplemented */
+		break;
+	}
+
+	return hartid;
+}
+
 #ifndef __PBL__
 extern unsigned barebox_riscv_pbl_flags;
 
@@ -34,6 +50,10 @@ static inline enum riscv_mode riscv_mode(void)
 	return __riscv_mode(barebox_riscv_pbl_flags);
 }
 
+static inline long riscv_hartid(void)
+{
+	return __riscv_hartid(barebox_riscv_pbl_flags);
+}
 #endif
 
 #endif
diff --git a/arch/riscv/lib/bootm.c b/arch/riscv/lib/bootm.c
index b3e41de4a890..835ff345e347 100644
--- a/arch/riscv/lib/bootm.c
+++ b/arch/riscv/lib/bootm.c
@@ -3,11 +3,13 @@
 
 #include <common.h>
 #include <bootm.h>
+#include <asm/system.h>
 
 static int do_bootm_linux(struct image_data *data)
 {
 	void (*fn)(unsigned long a0, unsigned long dtb, unsigned long a2);
 	phys_addr_t devicetree;
+	long hartid = riscv_hartid();
 
 	fn = booti_load_image(data, &devicetree);
 	if (IS_ERR(fn))
@@ -15,7 +17,7 @@ static int do_bootm_linux(struct image_data *data)
 
 	shutdown_barebox();
 
-	fn(0, devicetree, 0);
+	fn(hartid >= 0 ? hartid : 0, devicetree, 0);
 
 	return -EINVAL;
 }
diff --git a/arch/riscv/lib/cpuinfo.c b/arch/riscv/lib/cpuinfo.c
index 16305e6c4d96..2d9cee2a6270 100644
--- a/arch/riscv/lib/cpuinfo.c
+++ b/arch/riscv/lib/cpuinfo.c
@@ -34,6 +34,7 @@ static int do_cpuinfo(int argc, char *argv[])
 
 	switch (mode) {
 	case RISCV_S_MODE:
+		printf("Hart ID=%lu\n", riscv_hartid());
 		if (!IS_ENABLED(CONFIG_RISCV_SBI))
 			break;
 		printf("SBI specification v%lu.%lu detected\n",
diff --git a/common/globalvar.c b/common/globalvar.c
index 8bb5015ce4e8..9e5a99f79353 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -565,6 +565,27 @@ int globalvar_add_simple_int(const char *name, int *value,
 	return 0;
 }
 
+int globalvar_add_simple_uint64(const char *name, u64 *value,
+				const char *format)
+{
+	struct param_d *p;
+	int ret;
+
+	ret = globalvar_remove_unqualified(name);
+	if (ret)
+		return ret;
+
+	p = dev_add_param_uint64(&global_device, name, NULL, NULL,
+		value, format, NULL);
+
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	globalvar_nv_sync(name);
+
+	return 0;
+}
+
 int globalvar_add_bool(const char *name,
 		       int (*set)(struct param_d *, void *),
 		       int *value, void *priv)
diff --git a/common/oftree.c b/common/oftree.c
index 5eaa63ad7ebc..1fcc5277c58d 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -232,7 +232,24 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 			return err;
 	}
 
-	return of_fixup_bootargs_bootsource(root, node);
+	err = of_fixup_bootargs_bootsource(root, node);
+	if (err)
+		return err;
+
+	if (IS_ENABLED(CONFIG_RISCV)) {
+		const char *hartid;
+
+		hartid = getenv("global.hartid");
+		if (hartid) {
+			unsigned long id;
+
+			err = kstrtoul(hartid, 10, &id);
+			if (!err)
+				err = of_property_write_u32(node, "boot-hartid", id);
+		}
+	}
+
+	return err;
 }
 
 static int of_register_bootargs_fixup(void)
diff --git a/include/globalvar.h b/include/globalvar.h
index 84bee9102cf3..476bb920f3e1 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -20,6 +20,8 @@ void globalvar_set(const char *name, const char *val);
 int globalvar_add_simple_string(const char *name, char **value);
 int globalvar_add_simple_int(const char *name, int *value,
 			     const char *format);
+int globalvar_add_simple_uint64(const char *name, u64 *value,
+				const char *format);
 int globalvar_add_bool(const char *name,
 		       int (*set)(struct param_d *, void *),
 		       int *value, void *priv);
@@ -55,6 +57,12 @@ static inline int globalvar_add_simple_int(const char *name,
 	return 0;
 }
 
+static inline int globalvar_add_simple_uint64(const char *name,
+		u64 *value, const char *format)
+{
+	return 0;
+}
+
 static inline int globalvar_add_bool(const char *name,
 		int (*set)(struct param_d *, void *),
 		int *value, void *priv)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

