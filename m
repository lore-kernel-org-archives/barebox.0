Delivery-date: Thu, 03 Mar 2022 15:44:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPmh1-00Gb7m-UI
	for lore@lore.pengutronix.de; Thu, 03 Mar 2022 15:44:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPmh0-0007v0-7D
	for lore@pengutronix.de; Thu, 03 Mar 2022 15:44:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2hGSx4vMETHfw+wlBSbz9+HlG8IoWsCpLcg0MBtTQA=; b=3SaP2Dsf+YBT+P
	m4g6D7kqZUy2x6VFzfv/7lCAinxfrjDPKFVy50HpeLS9YWzYXwCchQbK5UClYSBSN7A8Selz/ADwv
	Lg1Kxlx+ArdarQussUXj5gIXYGUbR90p8/MnrBdM9DjsE4VpzyqxZsdhNzuuHGEg2fOVxRr61WIge
	Aa/S5wVppp0bCO1JJIAUuB2OveWNQDXMhD5mdhPzJ8envgt2zb03pvaCbHR+CuW/tQ38sATDD2jNv
	y8kck7I18C92L74RMIkHT4C7HgqnKq8jjCH+pibG4+DAaDFBaTDDWBXMyTfOYvofCQaNn2Is12u4g
	/pgLGIeBhIrRNuCymWTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPmfW-006fi9-Ku; Thu, 03 Mar 2022 14:43:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPmfR-006fgy-7p
 for barebox@lists.infradead.org; Thu, 03 Mar 2022 14:42:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nPmfI-0007o6-17; Thu, 03 Mar 2022 15:42:48 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nPmfH-00F7On-En; Thu, 03 Mar 2022 15:42:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Christian Melki <christian.melki@t2data.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  3 Mar 2022 15:42:46 +0100
Message-Id: <20220303144246.3603311-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220303144246.3603311-1-a.fatoum@pengutronix.de>
References: <20220303144246.3603311-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_064257_317808_CCC747EC 
X-CRM114-Status: GOOD (  11.43  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH RFT 2/2] ARM: i.MX6: configure AIPS3 for i.MX6ULL/i.MX6SX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

UltraLiteLite and SoloX both have an AIPS3, which has e.g. RNGB on it.
COnfigure that likewise to AIPS1 and AIPS2.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Untested on actual HW.
---
 arch/arm/mach-imx/imx6.c                   |  5 +++++
 arch/arm/mach-imx/include/mach/imx6-regs.h | 10 ++++++++++
 2 files changed, 15 insertions(+)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 256288b25a88..7bd29446e927 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -56,6 +56,9 @@ static void imx6_init_lowlevel(void)
 {
 	bool is_imx6q = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6Q;
 	bool is_imx6d = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6D;
+	bool is_imx6ull = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6ULL;
+	bool is_imx6sx = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6SX;
+
 	uint32_t val_480;
 	uint32_t val_528;
 	uint32_t periph_sel_1;
@@ -72,6 +75,8 @@ static void imx6_init_lowlevel(void)
 
 	imx6_configure_aips(IOMEM(MX6_AIPS1_ON_BASE_ADDR));
 	imx6_configure_aips(IOMEM(MX6_AIPS2_ON_BASE_ADDR));
+	if (is_imx6ull || is_imx6sx)
+		imx6_configure_aips(IOMEM(MX6_AIPS3_ON_BASE_ADDR));
 
 	/* Due to hardware limitation, on MX6Q we need to gate/ungate all PFDs
 	 * to make sure PFD is working right, otherwise, PFDs may
diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index b2753b0fa7dd..35f03036cb5b 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -11,9 +11,13 @@
 #define MX6_AIPS1_ARB_BASE_ADDR		0x02000000
 #define MX6_AIPS2_ARB_BASE_ADDR		0x02100000
 
+#define MX6_AIPS3_ARB_BASE_ADDR		0x02200000
+#define MX6_AIPS3_ARB_END_ADDR		0x022FFFFF
+
 /* Defines for Blocks connected via AIPS (SkyBlue) */
 #define MX6_ATZ1_BASE_ADDR              MX6_AIPS1_ARB_BASE_ADDR
 #define MX6_ATZ2_BASE_ADDR              MX6_AIPS2_ARB_BASE_ADDR
+#define MX6_ATZ3_BASE_ADDR              MX6_AIPS3_ARB_BASE_ADDR
 
 /* slots 0,7 of SDMA reserved, therefore left unused in IPMUX3 */
 #define MX6_SPDIF_BASE_ADDR             (MX6_ATZ1_BASE_ADDR + 0x04000)
@@ -81,6 +85,12 @@
 #define MX6_CAAM_BASE_ADDR              (MX6_ATZ2_BASE_ADDR)
 #define MX6_ARM_BASE_ADDR		(MX6_ATZ2_BASE_ADDR + 0x40000)
 
+/* ATZ#3- On Platform */
+#define MX6_AIPS3_ON_BASE_ADDR          (MX6_ATZ3_BASE_ADDR + 0x7C000)
+
+/* ATZ#2- Off Platform */
+#define MX6_AIPS3_OFF_BASE_ADDR         (MX6_ATZ3_BASE_ADDR + 0x80000)
+
 #define MX6_USBOH3_PL301_BASE_ADDR      (MX6_AIPS2_OFF_BASE_ADDR + 0x0000)
 #define MX6_USBOH3_USB_BASE_ADDR        (MX6_AIPS2_OFF_BASE_ADDR + 0x4000)
 #define MX6_OTG_BASE_ADDR		MX6_USBOH3_USB_BASE_ADDR
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

