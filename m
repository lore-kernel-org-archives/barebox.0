Delivery-date: Mon, 17 Jun 2024 13:37:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAfw-007Yfp-0I
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:37:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAfv-00079O-91
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:37:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U8Loij0ggguKq6sbj/bEkmXGz88P/C40r+J3+IrtUbQ=; b=KHQM1LtgGgzUkSutH7+U3+Nl3G
	Jo/84TiV0kmo+3O7eZqTDjdOlnbB3cuhIdDdhTdjn/l2Z9YKMAaFGIXpMyOQNLguIIgg/hIrtkaKc
	KsyhJHamAwHB61PYE0yGxpizNPqyNiTr0WVoG3E+06ztiHPUvdjByPZpYupKPALH1h9etwVT32Vd0
	mHtNgbkK9l0m8xd24Q5ZPT77qaOr3in6gz/QMRjc0JROp+7LeNihmOQoLHWM7711I26i/kRtzvTa+
	Mc61syTEpv8BB9GYF27ZGr/KGzLuYS3Z/IvXzQC3mEI1muQTw+owb/damB+8d7/eilzwLdeo61jDt
	T2n3Vk9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfL-0000000AVg2-2wR2;
	Mon, 17 Jun 2024 11:36:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfA-0000000AVWC-2AU3
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:36:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sJAf8-0006ab-1G; Mon, 17 Jun 2024 13:36:38 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 17 Jun 2024 13:36:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-4-48a6eba4bb5e@pengutronix.de>
References: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
In-Reply-To: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_043640_735267_88CD04F3 
X-CRM114-Status: GOOD (  11.99  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/14] ARM: arria10: reset-manager: don't touch l4 wdog
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Leave the L4 watchdog 0 running.
If a watchdog reset happens while booting, the bootrom attempts to load
the last valid bootloader identified by the initswlastld register.

As we now hang() in arria10-xload after 10 failed FPGA writing attempts,
we need the watchdog to trigger so that the bootrom can try to start the
next bootloader image as fallback.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-reset-manager.c | 9 ++++++---
 arch/arm/mach-socfpga/arria10-xload.c         | 5 +++++
 include/mach/socfpga/generic.h                | 2 ++
 3 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-reset-manager.c b/arch/arm/mach-socfpga/arria10-reset-manager.c
index 05440cf903..6f209e7045 100644
--- a/arch/arm/mach-socfpga/arria10-reset-manager.c
+++ b/arch/arm/mach-socfpga/arria10-reset-manager.c
@@ -33,9 +33,13 @@ void arria10_reset_peripherals(void)
 	}
 
 	/* disable all components except the ECC_OCP and bootsource */
-	writel(0xffffffff, ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER1MODRST);
 	writel(~mask, ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER0MODRST);
 
+	mask = ARRIA10_RSTMGR_PER1MODRST_WATCHDOG0 |
+	       ARRIA10_RSTMGR_PER1MODRST_L4SYSTIMER0;
+	/* disable all components except L4 watchdog */
+	writel(~mask, ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER1MODRST);
+
 	mask = 0xffffffff;
 
 	if (src == BOOTSOURCE_MMC) {
@@ -65,8 +69,7 @@ void arria10_reset_deassert_dedicated_peripherals(void)
 
 	clrbits_le32(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER0MODRST, mask);
 
-	mask = ARRIA10_RSTMGR_PER1MODRST_L4SYSTIMER0 |
-	       ARRIA10_RSTMGR_PER1MODRST_UART1 |
+	mask = ARRIA10_RSTMGR_PER1MODRST_UART1 |
 	       ARRIA10_RSTMGR_PER1MODRST_UART0;
 
 	clrbits_le32(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER1MODRST, mask);
diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
index db3cc209ee..7b0d6f00fb 100644
--- a/arch/arm/mach-socfpga/arria10-xload.c
+++ b/arch/arm/mach-socfpga/arria10-xload.c
@@ -437,6 +437,11 @@ void arria10_start_image(int offset)
 	if (ret)
 		hang();
 
+	/* mark image in OCRAM as valid */
+	writel(ARRIA10_SYSMGR_ROM_INITSWSTATE_VALID, ARRIA10_SYSMGR_ROM_INITSWSTATE);
+
+	arria10_watchdog_disable();
+
 	bb = buf;
 
 	bb();
diff --git a/include/mach/socfpga/generic.h b/include/mach/socfpga/generic.h
index 6c359e2abb..1af086140f 100644
--- a/include/mach/socfpga/generic.h
+++ b/include/mach/socfpga/generic.h
@@ -85,6 +85,8 @@ static inline int arria10_device_init(struct arria10_mainpll_cfg *mainpll,
 {
 	return 0;
 }
+static void arria10_kick_l4wd0(void) {}
+static void arria10_watchdog_disable(void) {}
 #endif
 
 static inline void __udelay(unsigned us)

-- 
2.43.2



