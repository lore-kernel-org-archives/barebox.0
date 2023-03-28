Delivery-date: Tue, 28 Mar 2023 09:42:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph3y0-00HMg2-33
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 09:42:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph3xz-0001Y9-KB
	for lore@pengutronix.de; Tue, 28 Mar 2023 09:42:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+lpZSqFzXwi/vhiQYREJmYwRrwhEKNuMbrq5jOqBjw=; b=zAcMpeO7ut0VJI
	oP+OU7BR7OE0HbRGVY+XJfNIOJPLEkDmZ5UqZSXvAasDRh02zuETzkivBZYyjkrV5PJZhNok/P47h
	/WBc4pFKTdQDGSip5v2/VHkJ/uHznntLuaVHJCO7GUwDZVsz3MW4RG6A3kzLohEvVDgP8+yVFbH6K
	GO+6C4pg8R6IKU92lX7fBJ8F0swdI+wHdj+EtKbBC3iCYeo8GKf5vqgwLIqHznLyNBThZzdItIecz
	EWILV8BmyLEPufEc350ZZ2/qr5M5YogveGiJzfxiA8spudL0Cen4rpLtSS93eTVLlA8yftfmptlKR
	wS1uRrFvaV+82/BIvkiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3wm-00DUyx-0n;
	Tue, 28 Mar 2023 07:40:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3wg-00DUvD-1R
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 07:40:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wd-00017k-Os; Tue, 28 Mar 2023 09:40:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wd-007Fvw-0N; Tue, 28 Mar 2023 09:40:39 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wb-0052xu-Oc; Tue, 28 Mar 2023 09:40:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Mar 2023 09:40:36 +0200
Message-Id: <20230328074037.1202993-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230328074037.1202993-1-s.hauer@pengutronix.de>
References: <20230328074037.1202993-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_004042_484067_D63EFCA5 
X-CRM114-Status: GOOD (  22.00  )
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
Cc: Ahmad Fatoum <ahmad@a3f.at>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/6] ARM: Rockchip: make bootsource logic generic to all SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

Decoding of the bootsource from the register value can be shared across
multiple Rockchip SoCs. Move the code to a common place to allow for
that.
At least with some TF-A versions the IRAM where the bootsource is stored
cannot not be accessed in normal mode, so read it out before we start
the TF-A. For this the scratch space is used.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/Makefile  |  2 +-
 arch/arm/mach-rockchip/atf.c     |  3 ++
 arch/arm/mach-rockchip/bootrom.c | 51 ++++++++++++++++++++++++++++++++
 arch/arm/mach-rockchip/rk3568.c  | 29 ++----------------
 include/bootsource.h             |  1 +
 include/mach/rockchip/bootrom.h  | 32 ++++++++++++++++++++
 6 files changed, 90 insertions(+), 28 deletions(-)
 create mode 100644 arch/arm/mach-rockchip/bootrom.c
 create mode 100644 include/mach/rockchip/bootrom.h

diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index f6c575854e..04d75ce287 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-y += rockchip.o
+obj-y += rockchip.o bootrom.o
 pbl-$(CONFIG_ARCH_ROCKCHIP_ATF) += atf.o
 obj-$(CONFIG_ARCH_RK3188) += rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += rk3288.o
diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 9735cb8ef3..f3fb50b990 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -8,6 +8,8 @@
 #include <asm/barebox-arm.h>
 #include <mach/rockchip/dmc.h>
 #include <mach/rockchip/rockchip.h>
+#include <mach/rockchip/bootrom.h>
+#include <mach/rockchip/rk3568-regs.h>
 
 static unsigned long load_elf64_image_phdr(const void *elf)
 {
@@ -82,6 +84,7 @@ void __noreturn rk3568_barebox_entry(void *fdt)
 
 	if (current_el() == 3) {
 		rk3568_lowlevel_init();
+		rockchip_store_bootrom_iram(membase, memsize, IOMEM(RK3568_IRAM_BASE));
 		rk3568_atf_load_bl31(fdt);
 		/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
 	}
diff --git a/arch/arm/mach-rockchip/bootrom.c b/arch/arm/mach-rockchip/bootrom.c
new file mode 100644
index 0000000000..cdd0536cda
--- /dev/null
+++ b/arch/arm/mach-rockchip/bootrom.c
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <mach/rockchip/bootrom.h>
+#include <io.h>
+#include <bootsource.h>
+#include <linux/bitfield.h>
+#include <linux/bitops.h>
+#include <linux/kernel.h>
+#include <errno.h>
+
+#define BROM_BOOTSOURCE_ID	0x10
+#define BROM_BOOTSOURCE_SLOT	0x14
+#define	BROM_BOOTSOURCE_SLOT_ACTIVE	GENMASK(12, 10)
+
+static const void __iomem *rk_iram;
+
+int rockchip_bootsource_get_active_slot(void)
+{
+	if (!rk_iram)
+		return -EINVAL;
+
+	return FIELD_GET(BROM_BOOTSOURCE_SLOT_ACTIVE,
+			 readl(IOMEM(rk_iram) + BROM_BOOTSOURCE_SLOT));
+}
+
+struct rk_bootsource {
+	enum bootsource src;
+	int instance;
+};
+
+static struct rk_bootsource bootdev_map[] = {
+	[0x1] = { .src = BOOTSOURCE_NAND, .instance = 0 },
+	[0x2] = { .src = BOOTSOURCE_MMC, .instance = 0 },
+	[0x3] = { .src = BOOTSOURCE_SPI_NOR, .instance = 0 },
+	[0x4] = { .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
+	[0x5] = { .src = BOOTSOURCE_MMC, .instance = 1 },
+	[0xa] = { .src = BOOTSOURCE_USB, .instance = 0 },
+};
+
+void rockchip_parse_bootrom_iram(const void *iram)
+{
+	u32 v;
+
+	rk_iram = iram;
+
+	v = readl(iram + BROM_BOOTSOURCE_ID);
+
+	if (v >= ARRAY_SIZE(bootdev_map))
+		return;
+
+	bootsource_set(bootdev_map[v].src, bootdev_map[v].instance);
+}
diff --git a/arch/arm/mach-rockchip/rk3568.c b/arch/arm/mach-rockchip/rk3568.c
index 39bd4772a6..c0453ea0c4 100644
--- a/arch/arm/mach-rockchip/rk3568.c
+++ b/arch/arm/mach-rockchip/rk3568.c
@@ -2,6 +2,7 @@
 #include <common.h>
 #include <io.h>
 #include <bootsource.h>
+#include <mach/rockchip/bootrom.h>
 #include <mach/rockchip/rk3568-regs.h>
 #include <mach/rockchip/rockchip.h>
 
@@ -137,35 +138,9 @@ void rk3568_lowlevel_init(void)
 	qos_priority_init();
 }
 
-struct rk_bootsource {
-	enum bootsource src;
-	int instance;
-};
-
-static struct rk_bootsource bootdev_map[] = {
-	[0x1] = { .src = BOOTSOURCE_NAND, .instance = 0 },
-	[0x2] = { .src = BOOTSOURCE_MMC, .instance = 0 },
-	[0x3] = { .src = BOOTSOURCE_SPI_NOR, .instance = 0 },
-	[0x4] = { .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
-	[0x5] = { .src = BOOTSOURCE_MMC, .instance = 1 },
-	[0xa] = { .src = BOOTSOURCE_USB, .instance = 0 },
-};
-
-static void rk3568_bootsource(void)
-{
-	u32 v;
-
-	v = readl(RK3568_IRAM_BASE + 0x10);
-
-	if (v >= ARRAY_SIZE(bootdev_map))
-		return;
-
-	bootsource_set(bootdev_map[v].src, bootdev_map[v].instance);
-}
-
 int rk3568_init(void)
 {
-	rk3568_bootsource();
+	rockchip_parse_bootrom_iram(rockchip_scratch_space());
 
 	return 0;
 }
diff --git a/include/bootsource.h b/include/bootsource.h
index 05935b64a7..f2ab3a2ad4 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -26,6 +26,7 @@ enum bootsource {
 #define BOOTSOURCE_INSTANCE_UNKNOWN	-1
 
 enum bootsource bootsource_get(void);
+enum bootsource bootsource_get_device(void);
 int bootsource_get_instance(void);
 void bootsource_set_alias_name(const char *name);
 char *bootsource_get_alias_name(void);
diff --git a/include/mach/rockchip/bootrom.h b/include/mach/rockchip/bootrom.h
new file mode 100644
index 0000000000..96eb147ae4
--- /dev/null
+++ b/include/mach/rockchip/bootrom.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_ROCKCHIP_BOOTROM_H
+#define __MACH_ROCKCHIP_BOOTROM_H
+
+#include <linux/compiler.h>
+#include <linux/string.h>
+#include <asm/barebox-arm.h>
+
+struct rockchip_scratch_space {
+	u32 irom[16];
+};
+
+static inline void rockchip_store_bootrom_iram(ulong membase,
+                                               ulong memsize,
+                                               const void *iram)
+{
+	void *dst = (void *)__arm_mem_scratch(membase + memsize);
+	memcpy(dst, iram, sizeof(struct rockchip_scratch_space));
+}
+
+static inline const struct rockchip_scratch_space *rockchip_scratch_space(void)
+{
+	return arm_mem_scratch_get();
+}
+
+void rockchip_parse_bootrom_iram(const void *iram);
+
+int rockchip_bootsource_get_active_slot(void);
+
+
+#endif
-- 
2.39.2



