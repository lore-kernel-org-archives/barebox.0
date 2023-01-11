Delivery-date: Wed, 11 Jan 2023 18:24:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFepp-0090jY-OD
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 18:24:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFepn-0002BW-OH
	for lore@pengutronix.de; Wed, 11 Jan 2023 18:24:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qB29iGT+/GRtZocfAs93wtGbYGtqu+pWWrwJKvGoti4=; b=iQEmOR70RmrwH1tn64s7RW9mJ6
	mHBfttncwwmTGcbJPONoQNb1nf6C212b3022sppdmZo7LncniR2HCEiE8yKVWdVtJq0OHXkAn9JNI
	bU7TgQHUDrQIp4XT2uOloedVERCq/zeHXlX6P+iBeDH7t+nLlGrnJ4GIXomNTflOKty6b2Zv9w/FT
	LpkptOIP3BmBzpczNG5TMkrNK/wMUXiQFrFgpTmDTCy2ax3tHKyHoLWaS3PVsuILDLi1FJB0pBo/0
	k/a2Z87L3gjs4/L/uV+tcMSPInsSY5ggp6KOFP5ix+5a8pG9x6BiZYu1ab3X3TEeeQsbiztozj2bw
	WF3hjtxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFeoC-00CNJv-8V; Wed, 11 Jan 2023 17:22:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFeo6-00CNHe-2R
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 17:22:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFenw-0001yN-QY; Wed, 11 Jan 2023 18:22:24 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFenw-005M0e-7C; Wed, 11 Jan 2023 18:22:24 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFenv-006sgy-1d; Wed, 11 Jan 2023 18:22:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 18:22:19 +0100
Message-Id: <20230111172219.1640151-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111172219.1640151-1-a.fatoum@pengutronix.de>
References: <20230111172219.1640151-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_092234_148630_337AEE83 
X-CRM114-Status: GOOD (  22.01  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/2] ARM: at91: make bootsource code generic to all SAMA5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While I couldn't find documentation, the BootROM of all of SAMA5D2, D3
and D4 populates R4 when calling next stage bootloader with information
about the booutsource. barebox PBL will pass along this information to
barebox proper, so add a generic initcall that sets the bootsource.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - define at91_bootsource() in bootm-barebox.c instead as sama5_bootsource.c
    is only for DT-enabled multi-image-capable barebox builds.

Sascha, please replace commit with same name in next with this.
---
 arch/arm/mach-at91/Kconfig                    |  3 ++
 arch/arm/mach-at91/Makefile                   |  1 +
 arch/arm/mach-at91/bootm-barebox.c            |  6 ++--
 arch/arm/mach-at91/include/mach/cpu.h         |  1 -
 .../mach-at91/include/mach/sama5_bootsource.h |  2 ++
 arch/arm/mach-at91/sama5_bootsource.c         | 33 +++++++++++++++++++
 arch/arm/mach-at91/sama5d2.c                  | 15 ---------
 arch/arm/mach-at91/setup.c                    |  3 --
 8 files changed, 43 insertions(+), 21 deletions(-)
 create mode 100644 arch/arm/mach-at91/sama5_bootsource.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index bc55b1c4e76e..529512b6c0db 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -75,6 +75,9 @@ config SOC_SAMA5
 	select HAVE_AT91SAM9_RST
 	select CPU_V7
 
+config SOC_SAMA5_MULTI
+	def_bool SOC_SAMA5 && AT91_MULTI_BOARDS
+
 config SOC_SAMA5D2
 	bool
 	select SOC_SAMA5
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index f70e67bddebf..301e0b761b26 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -40,3 +40,4 @@ obj-$(CONFIG_SOC_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_SOC_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
 obj-$(CONFIG_SOC_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o
 obj-$(CONFIG_SOC_AT91SAM9N12)	+= at91sam9n12.o at91sam9n12_devices.o
+obj-$(CONFIG_SOC_SAMA5_MULTI)	+= sama5_bootsource.o
diff --git a/arch/arm/mach-at91/bootm-barebox.c b/arch/arm/mach-at91/bootm-barebox.c
index 3c99d5813b53..77aa4577c6c7 100644
--- a/arch/arm/mach-at91/bootm-barebox.c
+++ b/arch/arm/mach-at91/bootm-barebox.c
@@ -6,9 +6,11 @@
 #include <common.h>
 #include <init.h>
 #include <memory.h>
-#include <mach/cpu.h>
 #include <mach/sama5_bootsource.h>
 
+unsigned long at91_bootsource;
+EXPORT_SYMBOL(at91_bootsource);
+
 static int do_bootm_at91_barebox_image(struct image_data *data)
 {
 	resource_size_t start, end;
@@ -40,7 +42,7 @@ static struct image_handler image_handler_at91_barebox_image = {
 
 static int at91_register_barebox_image_handler(void)
 {
-	if (!of_machine_is_compatible("atmel,sama5d2"))
+	if (!of_machine_is_compatible("atmel,sama5"))
 	    return 0;
 
 	return register_image_handler(&image_handler_at91_barebox_image);
diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/arch/arm/mach-at91/include/mach/cpu.h
index 37e516947b57..ca85e8be6e24 100644
--- a/arch/arm/mach-at91/include/mach/cpu.h
+++ b/arch/arm/mach-at91/include/mach/cpu.h
@@ -160,7 +160,6 @@ struct at91_socinfo {
 extern struct at91_socinfo at91_soc_initdata;
 const char *at91_get_soc_type(struct at91_socinfo *c);
 const char *at91_get_soc_subtype(struct at91_socinfo *c);
-extern unsigned long at91_bootsource;
 
 static inline int at91_soc_is_detected(void)
 {
diff --git a/arch/arm/mach-at91/include/mach/sama5_bootsource.h b/arch/arm/mach-at91/include/mach/sama5_bootsource.h
index b31d20bc7c34..8072e7c25154 100644
--- a/arch/arm/mach-at91/include/mach/sama5_bootsource.h
+++ b/arch/arm/mach-at91/include/mach/sama5_bootsource.h
@@ -52,6 +52,8 @@ static inline int sama5_bootsource_instance(u32 reg)
 #define __sama5d4_stashed_bootrom_r4 \
 	(*(volatile u32 *)(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE - 0x4))
 
+extern unsigned long at91_bootsource;
+
 static inline void __noreturn sama5_boot_xload(void __noreturn (*bb)(void), u32 r4)
 {
 	asm volatile("mov r4, %0" : : "r"(r4) : );
diff --git a/arch/arm/mach-at91/sama5_bootsource.c b/arch/arm/mach-at91/sama5_bootsource.c
new file mode 100644
index 000000000000..1cbfb4da7d95
--- /dev/null
+++ b/arch/arm/mach-at91/sama5_bootsource.c
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <mach/sama5_bootsource.h>
+#include <linux/export.h>
+#include <bootsource.h>
+#include <init.h>
+#include <of.h>
+
+/*
+ * sama5_bootsource_init - initialize bootsource
+ *
+ * BootROM will populate r4 when loading first stage bootloader
+ * with information about boot source. The entry points for
+ * multi-image capable SAMA5 boards will pass this information
+ * along. If you use a bootloader before barebox, you need to
+ * ensure that r4 is initialized for $bootsource to be correct
+ * in barebox. Example implementing it for AT91Bootstrap:
+ * https://github.com/linux4sam/at91bootstrap/pull/159
+ */
+static int sama5_bootsource_init(void)
+{
+	if (!of_machine_is_compatible("atmel,sama5"))
+		return 0;
+
+	at91_bootsource = __sama5d2_stashed_bootrom_r4;
+
+	if (at91_bootsource)
+		bootsource_set_raw(sama5_bootsource(at91_bootsource),
+				   sama5_bootsource_instance(at91_bootsource));
+
+	return 0;
+}
+postcore_initcall(sama5_bootsource_init);
diff --git a/arch/arm/mach-at91/sama5d2.c b/arch/arm/mach-at91/sama5d2.c
index b05d6a56bdd8..b0a04beb639e 100644
--- a/arch/arm/mach-at91/sama5d2.c
+++ b/arch/arm/mach-at91/sama5d2.c
@@ -6,7 +6,6 @@
 #include <mach/aic.h>
 #include <mach/sama5d2.h>
 #include <asm/cache-l2x0.h>
-#include <mach/sama5_bootsource.h>
 #include <asm/mmu.h>
 #include <mach/cpu.h>
 
@@ -54,17 +53,3 @@ static int sama5d2_init(void)
 	return 0;
 }
 postmmu_initcall(sama5d2_init);
-
-static int sama5d2_bootsource_init(void)
-{
-	if (!of_machine_is_compatible("atmel,sama5d2"))
-		return 0;
-
-	at91_bootsource = __sama5d2_stashed_bootrom_r4;
-
-	bootsource_set_raw(sama5_bootsource(at91_bootsource),
-			   sama5_bootsource_instance(at91_bootsource));
-
-	return 0;
-}
-postcore_initcall(sama5d2_bootsource_init);
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 8a21d8debcd5..3d49624cd5c1 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -403,6 +403,3 @@ void at91sam_phy_reset(void __iomem *rstc_base)
 	/* Restore NRST value */
 	writel(AT91_RSTC_KEY | (rstc) | AT91_RSTC_URSTEN, rstc_base + AT91_RSTC_MR);
 }
-
-unsigned long at91_bootsource;
-EXPORT_SYMBOL(at91_bootsource);
-- 
2.30.2



