Delivery-date: Thu, 04 Jan 2024 15:19:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYx-003cRw-2G
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYv-0005Ez-S2
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KbFJGMbs0tfnfLbT0Y9tbYZzlD+21DK81PB6y46Elt0=; b=STG6IS1tYMy1KSnfFZ8j0/0NfJ
	V7NHqXMry9cmotwunNAQcxGZ3qrwUm5a1hPQmrIX3VLGysIgl9Ye08UUpzohxoSkC4bZaimQ2EBiN
	sI2k5GXNCefWsv5S4myfeDK+DcJAGHeeNJipre3RbLUkWRS7yP4ZivFvsExc3w+DzZQ2bwKEuo4sW
	/dhrYIom6vkNmXHcdAaS5sGd+zQ2VkBm+123QgSRN//536l4V+HLFZN1lX5QjDKdjWNEa+l5cLqLr
	x6ZpbhzQCB43UbakulVS3e+nNwnH/4kDro/+GGtQFIROgETmvBrUFwbg6u+zmF7OGaO1/JTWytK2S
	ipJG2v+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXq-00EJ7r-3A;
	Thu, 04 Jan 2024 14:18:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXf-00EIz3-2L
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:17:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004HS-9W; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000My5-LB; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017xq-1t;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:31 +0100
Message-Id: <20240104141746.165014-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104141746.165014-1-s.hauer@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_061751_819943_60925501 
X-CRM114-Status: GOOD (  12.19  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/19] ARM: layerscape: cleanup erratum_a009007
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Drop the generic erratum_a009007_layerscape() function and move the
code into its SoC specific pendants to make the way free for additional
SoCs.

While at it remove the USB_PHY_RX_EQ_VAL_x defines from immap_lsch2.h
to get rid of conflicting defines in that file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/errata.c | 29 +++++++++++++----------------
 include/soc/fsl/immap_lsch2.h     | 13 +------------
 2 files changed, 14 insertions(+), 28 deletions(-)

diff --git a/arch/arm/mach-layerscape/errata.c b/arch/arm/mach-layerscape/errata.c
index e3793b3bcd..8feb98b0f7 100644
--- a/arch/arm/mach-layerscape/errata.c
+++ b/arch/arm/mach-layerscape/errata.c
@@ -30,27 +30,24 @@ static void erratum_a008997_ls1046a(void)
 	set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB3);
 }
 
-#define PROGRAM_USB_PHY_RX_OVRD_IN_HI(phy)      \
-	out_be16((phy) + SCFG_USB_PHY_RX_OVRD_IN_HI, USB_PHY_RX_EQ_VAL_1);      \
-	out_be16((phy) + SCFG_USB_PHY_RX_OVRD_IN_HI, USB_PHY_RX_EQ_VAL_2);      \
-	out_be16((phy) + SCFG_USB_PHY_RX_OVRD_IN_HI, USB_PHY_RX_EQ_VAL_3);      \
-	out_be16((phy) + SCFG_USB_PHY_RX_OVRD_IN_HI, USB_PHY_RX_EQ_VAL_4)
-
-static void erratum_a009007_layerscape(void)
+static void erratum_a009007(void __iomem *phy, u16 val1, u16 val2, u16 val3, u16 val4)
 {
-	void __iomem *usb_phy = IOMEM(SCFG_USB_PHY1);
-
-	usb_phy = (void __iomem *)SCFG_USB_PHY3;
-	PROGRAM_USB_PHY_RX_OVRD_IN_HI(usb_phy);
+	scfg_out16(phy + SCFG_USB_PHY_RX_OVRD_IN_HI, val1);
+	scfg_out16(phy + SCFG_USB_PHY_RX_OVRD_IN_HI, val2);
+	scfg_out16(phy + SCFG_USB_PHY_RX_OVRD_IN_HI, val3);
+	scfg_out16(phy + SCFG_USB_PHY_RX_OVRD_IN_HI, val4);
 }
 
 static void erratum_a009007_ls1046a(void)
 {
-	void __iomem *usb_phy = IOMEM(SCFG_USB_PHY1);
+	erratum_a009007(IOMEM(SCFG_USB_PHY1), 0x0000, 0x0080, 0x0380, 0x0b80);
+	erratum_a009007(IOMEM(SCFG_USB_PHY2), 0x0000, 0x0080, 0x0380, 0x0b80);
+	erratum_a009007(IOMEM(SCFG_USB_PHY3), 0x0000, 0x0080, 0x0380, 0x0b80);
+}
 
-	PROGRAM_USB_PHY_RX_OVRD_IN_HI(usb_phy);
-	usb_phy = (void __iomem *)SCFG_USB_PHY2;
-	PROGRAM_USB_PHY_RX_OVRD_IN_HI(usb_phy);
+static void erratum_a009007_ls1021a(void)
+{
+	erratum_a009007(IOMEM(SCFG_USB_PHY1), 0x0000, 0x8000, 0x8004, 0x800C);
 }
 
 static inline void set_usb_txvreftune(u32 __iomem *scfg, u32 offset)
@@ -125,7 +122,6 @@ static void layerscape_errata(void)
 	erratum_a009008_layerscape();
 	erratum_a009798_layerscape();
 	erratum_a008997_layerscape();
-	erratum_a009007_layerscape();
 }
 
 void ls1046a_errata(void)
@@ -140,6 +136,7 @@ void ls1046a_errata(void)
 void ls1021a_errata(void)
 {
 	layerscape_errata();
+	erratum_a009007_ls1021a();
 	erratum_a009008_ls1021a();
 }
 
diff --git a/include/soc/fsl/immap_lsch2.h b/include/soc/fsl/immap_lsch2.h
index ce840d4223..0993fa1cd8 100644
--- a/include/soc/fsl/immap_lsch2.h
+++ b/include/soc/fsl/immap_lsch2.h
@@ -301,17 +301,6 @@ struct ls102xa_ccsr_gur {
 #define SCFG_USB_PHY2			0x08500000
 #define SCFG_USB_PHY3			0x08510000
 #define SCFG_USB_PHY_RX_OVRD_IN_HI		0x200c
-#if defined CONFIG_ARCH_LS1046
-#define USB_PHY_RX_EQ_VAL_1		0x0000
-#define USB_PHY_RX_EQ_VAL_2		0x0080
-#define USB_PHY_RX_EQ_VAL_3		0x0380
-#define USB_PHY_RX_EQ_VAL_4		0x0b80
-#elif defined CONFIG_ARCH_LS1021
-#define USB_PHY_RX_EQ_VAL_1		0x0000
-#define USB_PHY_RX_EQ_VAL_2		0x8000
-#define USB_PHY_RX_EQ_VAL_3		0x8004
-#define USB_PHY_RX_EQ_VAL_4		0x800C
-#endif
 
 #define SCFG_ETSECDMAMCR_LE_BD_FR	0x00000c00
 #define SCFG_SNPCNFGCR_SEC_RD_WR	0xc0000000
@@ -516,4 +505,4 @@ struct ls102xa_ccsr_scfg {
 	u32 core0sftrstsr;
 	u32 clusterpmcr;
 };
-#endif	/* __ARCH_FSL_LSCH2_IMMAP_H__*/
+#endif /* __ARCH_FSL_LSCH2_IMMAP_H__*/
-- 
2.39.2



