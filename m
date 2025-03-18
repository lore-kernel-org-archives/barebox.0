Delivery-date: Tue, 18 Mar 2025 15:47:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYE4-0014gg-1G
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 15:47:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYDz-0007ov-UM
	for lore@pengutronix.de; Tue, 18 Mar 2025 15:47:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v32Fgv86gDqEgeF2JByhf/hKflZh876p4WqRvXW8Fek=; b=Bg081VKbau6Q4IsPjzWMyP+A2w
	WVJA3MzfJFkdgfWNn7M9Ng1GW5aUmUIcQ6jMYnIueZBZtbHU0CJgI9Nds0MaRWBveHPNQZM/CoEZl
	t5H3cUMpact+a/seTF1/pMsgDxygrRBhGnZ+xVloayuc7rDFtSnNb+CcrxN45B4l26HN4VvSQg/Q8
	qQ3uC11kbvt9cEsIw6m2YUI+6szGBpLDP2eD7Yvf3pcgLQJ5XQ6A4Yv52TKZlPynz5+l3zeh5VrnX
	aEUY3QujWE7j2NeBTjn4lklV57XK77Qd/3MGSjHNKMlnbSMBBcGwdnwtIe8qOj0V1t2PJHAL9GJko
	V7LEOdwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYDR-00000006E3D-2rHy;
	Tue, 18 Mar 2025 14:46:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuY8X-00000006DKb-1JhU
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 14:41:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8V-0006nM-HB; Tue, 18 Mar 2025 15:41:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-000Rah-2A;
	Tue, 18 Mar 2025 15:41:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-00F87i-3C;
	Tue, 18 Mar 2025 15:41:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Mar 2025 15:41:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250318-filetype-size-reduction-v1-6-4f463ffae7d0@pengutronix.de>
References: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
In-Reply-To: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742308902; l=2733;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=VrDXE/Xb4+Qr+hKI2m3Hynog/WDMF//9HXDOvn5384w=;
 b=63qA1Nn0Sq3YWQFZ0TmCaoVwH2mj7/u0+OLGpQgp+ueaZf9EM43F2Ph36xtDY4CAsk9sap+1s
 guyMIfRzvzVD2iWjqfB+rS1AeL1m4jCl3K9C8qWvX6XNgCTfqkf24bC
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_074145_395636_4EC56FD8 
X-CRM114-Status: GOOD (  13.54  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] ARM: am33xx: myirtech-myd: add MLO specific device
 tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use a stripped down device tree for the MLO to decrease the binary size.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/myirtech-x335x/lowlevel.c |  6 ++++--
 arch/arm/dts/Makefile                     |  2 +-
 arch/arm/dts/am335x-myirtech-myd-mlo.dts  | 10 ++++++++++
 3 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
index c7b36b0173..05c858ad86 100644
--- a/arch/arm/boards/myirtech-x335x/lowlevel.c
+++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
@@ -54,7 +54,7 @@ static struct am33xx_emif_regs ddr3_regs = {
 	.sdram_ref_ctrl		= 0xc30,
 };
 
-extern char __dtb_z_am335x_myirtech_myd_start[];
+extern char __dtb_z_am335x_myirtech_myd_mlo_start[];
 
 ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
 {
@@ -68,7 +68,7 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	fdt = __dtb_z_am335x_myirtech_myd_start;
+	fdt = __dtb_z_am335x_myirtech_myd_mlo_start;
 
 	omap_watchdog_disable(IOMEM(AM33XX_WDT_BASE));
 
@@ -99,6 +99,8 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
 	am335x_barebox_entry(fdt);
 }
 
+extern char __dtb_z_am335x_myirtech_myd_start[];
+
 ENTRY_FUNCTION(start_am33xx_myirtech_sdram, r0, r1, r2)
 {
 	void *fdt;
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d346285852..2d90738748 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -44,7 +44,7 @@ lwl-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
 lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
 lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB) += armada-xp-db-bb.dtb.o
 lwl-$(CONFIG_MACH_MX28EVK) += imx28-evk.dtb.o
-lwl-$(CONFIG_MACH_MYIRTECH_X335X) += am335x-myirtech-myd.dtb.o
+lwl-$(CONFIG_MACH_MYIRTECH_X335X) += am335x-myirtech-myd.dtb.o am335x-myirtech-myd-mlo.dtb.o
 lwl-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
 lwl-$(CONFIG_MACH_NETGEAR_RN2120) += armada-xp-rn2120-bb.dtb.o
 lwl-$(CONFIG_MACH_NITROGEN6) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o imx6qp-nitrogen6_max.dtb.o
diff --git a/arch/arm/dts/am335x-myirtech-myd-mlo.dts b/arch/arm/dts/am335x-myirtech-myd-mlo.dts
new file mode 100644
index 0000000000..20c3298073
--- /dev/null
+++ b/arch/arm/dts/am335x-myirtech-myd-mlo.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* SPDX-FileCopyrightText: Alexander Shiyan, <shc_work@mail.ru> */
+
+/dts-v1/;
+
+#include "am335x-myirtech-myd.dts"
+#include "am33xx-strip.dtsi"
+#include "am33xx-clocks-strip.dtsi"
+
+/delete-node/ &{/sound};

-- 
2.39.5



