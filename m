Delivery-date: Tue, 01 Nov 2022 19:08:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opvgT-00BAzr-Jz
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 19:08:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opvgS-0007FB-79
	for lore@pengutronix.de; Tue, 01 Nov 2022 19:08:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5IvSMR5sa+h+J5ji1gJi+EvRL85Qm/uQm90ZKjxtlYU=; b=LWKwnVUrEwDX+sN/NUPMjZvL7D
	8Ys9MJVWQy6z720NkNQ7Lo/y1ksoogArljCSvb2iD7pQg3RpEjFSrDvmAPvm9oo51ZsxcKXPHoEP9
	hByB3tTRw9k2osfsqzZHRS91X0PJ3vqK6ta//KN/vB5ZD/myXTRsHYNAmj79QpXc3GWv2h7XQ9e9o
	HwxKp9XQ++8STBJxF95XFxKUwcx6NwZ6PeiZXYTxZTIHs6BzHJMiYzdhN9THOGDh40KLNrdo08OB6
	1ZDuupHhdgYXbfEx7noq5xMs1VOv3ofypYn0mmwFyY68NizkMl13KeGibul6VwO1YcjOVtEAOe4pA
	lnyR94SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opvfB-006Pgd-OQ; Tue, 01 Nov 2022 18:07:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opvey-006PaS-2Y
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 18:06:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1opvew-0006xs-Qo; Tue, 01 Nov 2022 19:06:46 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opvew-001j4B-AX; Tue, 01 Nov 2022 19:06:45 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opveu-0011aW-F9; Tue, 01 Nov 2022 19:06:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Nov 2022 19:06:42 +0100
Message-Id: <20221101180643.244270-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101180643.244270-1-a.fatoum@pengutronix.de>
References: <20221101180643.244270-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_110648_133927_3FC63332 
X-CRM114-Status: GOOD (  17.10  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] ARM: i.MX8M: support saving BootROM event log before clobbering OCRAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ROM event log[1] is a data structure populated by the i.MX BootROM
on i.MX6 and later. It's found by dereferencing a 32-bit address at a
fixed location within the BootROM. If valid, this address will point
into the On-Chip SRAM. On the i.MX8M, we load the ARM trusted firmware
into the On-Chip SRAM and may end up overwriting the BootROM event log,
before the user has a chance to parse it. Thus save the BootROM log into
the newly defined i.MX scratch space for later usage.

[1]: NXP AN12853 "i.MX ROMs Log Events" Rev. 0 -  May 2020

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig                   |  3 +++
 arch/arm/mach-imx/atf.c                     |  3 +++
 arch/arm/mach-imx/include/mach/imx8m-regs.h |  8 +++++++
 arch/arm/mach-imx/include/mach/romapi.h     | 11 +++++++++
 arch/arm/mach-imx/romapi.c                  | 26 +++++++++++++++++++++
 5 files changed, 51 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index da71480887ad..e99cadb1f53a 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -932,6 +932,9 @@ config IMX_IIM_FUSE_BLOW
 	  enable it:
 	    imx_iim0.permanent_write_enable=1
 
+config IMX_SAVE_BOOTROM_LOG
+	bool
+
 config HAB
 	bool
 
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 67462bc36189..9907e5f2ba97 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -125,6 +125,7 @@ void imx8mm_load_bl33(void *bl33)
 
 __noreturn void imx8mm_load_and_start_image_via_tfa(void)
 {
+	imx8mm_save_bootrom_log();
 	imx8mm_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR);
 	imx8mm_load_and_start_tfa(imx8mm_bl31_bin);
 }
@@ -161,6 +162,7 @@ void imx8mp_load_bl33(void *bl33)
 
 void imx8mp_load_and_start_image_via_tfa(void)
 {
+	imx8mp_save_bootrom_log();
 	imx8mp_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR);
 	imx8mp_load_and_start_tfa(imx8mp_bl31_bin);
 }
@@ -197,6 +199,7 @@ void imx8mn_load_bl33(void *bl33)
 
 void imx8mn_load_and_start_image_via_tfa(void)
 {
+	imx8mn_save_bootrom_log();
 	imx8mn_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR);
 	imx8mn_load_and_start_tfa(imx8mn_bl31_bin);
 }
diff --git a/arch/arm/mach-imx/include/mach/imx8m-regs.h b/arch/arm/mach-imx/include/mach/imx8m-regs.h
index a5017faf830e..794e1bdd88a4 100644
--- a/arch/arm/mach-imx/include/mach/imx8m-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8m-regs.h
@@ -3,6 +3,14 @@
 #ifndef __MACH_IMX8M_REGS_H
 #define __MACH_IMX8M_REGS_H
 
+/*
+ * Actual addressable OCRAM size may differ from SoC to SoC, but all of
+ * i.MX8MQ/M/N/P have this region of MMIO address space set aside for
+ * OCRAM only.
+ */
+#define	MX8M_OCRAM_BASE_ADDR		0x00900000
+#define	MX8M_OCRAM_MAX_SIZE		0x00200000
+
 #define MX8M_GPIO1_BASE_ADDR		0X30200000
 #define MX8M_GPIO2_BASE_ADDR		0x30210000
 #define MX8M_GPIO3_BASE_ADDR		0x30220000
diff --git a/arch/arm/mach-imx/include/mach/romapi.h b/arch/arm/mach-imx/include/mach/romapi.h
index 8022fc411e9d..d22ba7259dd0 100644
--- a/arch/arm/mach-imx/include/mach/romapi.h
+++ b/arch/arm/mach-imx/include/mach/romapi.h
@@ -1,6 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MACH_IMX_ROMAPI_H
 #define __MACH_IMX_ROMAPI_H
 
+#include <mach/xload.h>
+
 struct rom_api {
 	u16 ver;
 	u16 tag;
@@ -34,4 +37,12 @@ enum boot_dev_type_e {
 int imx8mp_bootrom_load_image(void);
 int imx8mn_bootrom_load_image(void);
 
+/* only call after DRAM has been configured */
+void imx8m_save_bootrom_log(void *dst);
+
+#define imx8mq_save_bootrom_log() imx8m_save_bootrom_log(imx8mq_scratch_space())
+#define imx8mm_save_bootrom_log() imx8m_save_bootrom_log(imx8mm_scratch_space())
+#define imx8mn_save_bootrom_log() imx8m_save_bootrom_log(imx8mn_scratch_space())
+#define imx8mp_save_bootrom_log() imx8m_save_bootrom_log(imx8mp_scratch_space())
+
 #endif /* __MACH_IMX_ROMAPI_H */
diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index 5d00d71154d7..48512a8d045e 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -1,7 +1,12 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "romapi: " fmt
+
 #include <common.h>
 #include <asm/sections.h>
 #include <mach/romapi.h>
 #include <mach/atf.h>
+#include <mach/imx8m-regs.h>
 
 static int imx8m_bootrom_load(struct rom_api *rom_api, void *adr, size_t size)
 {
@@ -42,3 +47,24 @@ int imx8mn_bootrom_load_image(void)
 {
 	return imx8mp_bootrom_load_image();
 }
+
+void imx8m_save_bootrom_log(void *dest)
+{
+	ulong rom_log_addr;
+
+	if (!IS_ENABLED(CONFIG_IMX_SAVE_BOOTROM_LOG)) {
+		pr_debug("skipping bootrom log saving\n");
+		return;
+	}
+
+	rom_log_addr = *(u32 *)0x9e0;
+
+	if (rom_log_addr < MX8M_OCRAM_BASE_ADDR ||
+	    rom_log_addr >= MX8M_OCRAM_BASE_ADDR + MX8M_OCRAM_MAX_SIZE ||
+	    rom_log_addr & 0x3) {
+		pr_warn("No BootROM log found at address 0x%08lx\n", rom_log_addr);
+		return;
+	}
+
+	memcpy(dest, (u32 *)rom_log_addr, 128 * sizeof(u32));
+}
-- 
2.30.2



