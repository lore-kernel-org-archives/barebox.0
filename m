Delivery-date: Sat, 27 Jun 2026 21:45:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYxg-00AX1q-2G
	for lore@lore.pengutronix.de;
	Sat, 27 Jun 2026 21:45:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYxf-00046k-GR
	for lore@pengutronix.de; Sat, 27 Jun 2026 21:45:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ln0liDbd7vFhhX0/Egtwi2NTVrZOq7AF/OhBU+pNLiE=; b=yTpfCP4CHuR9MMqU/XTzu+FzND
	BcZkI7rC932ves9VJhtvSh+8HU9mfgk//6hlM4yNYmgt4q7bCl0iVVV/i6aVMNu9NsBT4vFLzxLCF
	KQQog8wUZFMFAfHjBJWNMgkq65onvSui36I2LIcD87wgd2H02NtiyXx/wBgI78GpoemHwqvARBz1A
	s++cAYIEppRUvkc0zYMczV2rybkL677hIFKZSkuUrqSaDjVBiN4OT4xz2t5maeWoLp+pTGy685aeV
	5oLdRHKoNRD/alGnyqMEFZAVnMIdJDiAENpdjc/ehsiF/Zom1T4T18rod6YtGlsKb7zzbottAyXo0
	OH063c9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYwJ-0000000CjDu-0IWg;
	Sat, 27 Jun 2026 19:43:43 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYwD-0000000CjBN-0oQv
	for barebox@lists.infradead.org;
	Sat, 27 Jun 2026 19:43:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VwmV0325D7iZH7X2evCxuQJpEBYbQh0Zjttpxl/xgMU5C78ZK+BFWk9+lDdULOOXpENs6nqC2aiEibavEVeMQGlIOhVxacK6CcPPOyo/hth28PsJN0AnARqZpB6pwk8B7/NCBuNc/DTef0sASYgemWHDbHOyTkVNGavKB01fpT2Clv3Zru02irU1Zs0Tf7anlRkYucFHPA1MU8Rf/48+Vk4FJAUHPGbH8p7J+27F4bIm2Q4VbiLQPqfgQbWE5ttDA4/CGQ2bL79ey3k9epLuRH/2GlODg9Gegvlhb2Jfji7V3/gJ1teafpT+uuVEv4+eebB6ZhAAnOZHSUM697GTHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ln0liDbd7vFhhX0/Egtwi2NTVrZOq7AF/OhBU+pNLiE=;
 b=UahRc2WTebCqcsx1cXc4ecccStIeJ09aHCtnYvVMoMrRmAdV62rJ/8iCblH/4rFaN2E+aNxn7vamGY+TUl3zv9YEDUdrn7GnTGrL7RA4tu1qQ906oBJIwk8uORUmCOUrfMIdlI75kbSaDYIuoxYC90SPohGZsFzgpdbzalqHD706577S7T2Gx0IdP0u5+NMVhPet6Idx4n/2vSKKNzGs2A3w0C6Y9rkCZIMIsvnrfySKTaOI0pH0Ir8pa3tCdvjOfBeE2sKUMWFbznm1vde//6A4rGDFbp2ZRYvYnj53NQS+CDgOk6cf4c9lhP3/C5TNBl3zjESrbNu7oBaqSk9C4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ln0liDbd7vFhhX0/Egtwi2NTVrZOq7AF/OhBU+pNLiE=;
 b=TR/seLkgW4SH7YumKV2wKLYAx+G64dCGCunPsfh9i8bEo4VFPKryWIwDSkDIr+98C3Bl9qbb30CuNODRiZDxF+jhJViBvzoG+rwMd+DvTyn2t9YKUHcDBvaQc2vVpGwIMaUlRMnOXEvU35qbakJJr+crbe3EaE9dIeW0yx7q9UY=
Received: from DU7P190CA0010.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:550::29)
 by PA4PR06MB7232.eurprd06.prod.outlook.com (2603:10a6:102:fa::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Sat, 27 Jun
 2026 19:43:30 +0000
Received: from DB1PEPF000509FB.eurprd03.prod.outlook.com
 (2603:10a6:10:550:cafe::57) by DU7P190CA0010.outlook.office365.com
 (2603:10a6:10:550::29) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.18 via Frontend Transport; Sat,
 27 Jun 2026 19:43:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF000509FB.mail.protection.outlook.com (10.167.242.37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Sat, 27 Jun 2026 19:43:30 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 27 Jun 2026 21:43:28 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Sat, 27 Jun 2026 19:43:22 +0000
Message-ID: <20260627194324.2230643-5-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260627194324.2230643-1-johannes.schneider@leica-geosystems.com>
References: <20260627194324.2230643-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 27 Jun 2026 19:43:28.0892 (UTC) FILETIME=[3A37CBC0:01DD066D]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509FB:EE_|PA4PR06MB7232:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: c41c4509-0fb5-4566-d936-08ded4845da9
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|23010399003|1800799024|376014|82310400026|6133799003|22082099003|18002099003|11063799006|3023799007|56012099006;
X-Microsoft-Antispam-Message-Info: 0f8OWtm6SrBoE7uOwzCKyWOxGUWozKvh4mRvs81syFAw0k5SkFmxdH0mngm3VEzavpdWoGY9dWOla+0rIWtI5eta/k8qoq2jtx3JkNGTj5vG1r7E64qKE/IlBSh4QIwPIOGoXO4G1YZeQ4wotYtTN9B7eyyjUS17WqwpBGk6qw3J2gIrw9ZmYxlATvCaZF/hZ1w2aEH+OEA0QglAMcmpHtenFTHi5+J+37sbCg5BN0AzEkbU6lhekbUe+ldWRoleNr314O3a7+2ayLo1MqjrfOjJfgLkB7XyUy2EspISgaiESw4osXGcKy1F4rRMJPOnYshS+EnQLYkYbdcEhEp9+yIcQbdfLTQRn3XPINUzdg3lBGXFqxMoLxaonbmXJEGLvCLs+yv7xBy0CSYXij135RLVBuFXiTgpSCTmXcPifPGWGIgXxLz5e0hRgw2Olf1Mr58WkG0ve5/L2jRfyVz5a0fhocZWcOFj0IxcnNhaL0e7q9i/xXHMNYjxsGXfA4h6J183j0y8piVULYJlXFI+cRL/XrDtaRGldv+gyf3ET93wy960eVml9yINFDiiJ2fy/kpdRPVIg6hoa3AzygcR8Jz4BCRcA6V08icRdBwCiJwT0/V/Adq8UKCUkIrJfPWHAhYsJMMNrmFa+mmYoFAiv7E30j0OVnTOCygNuuLVb4//9Xu6EAM20XfLmGj2gdzHPkcr5wnwmFsLv2p9EGfcAg==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(23010399003)(1800799024)(376014)(82310400026)(6133799003)(22082099003)(18002099003)(11063799006)(3023799007)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: QNbSOHg1VUB5BrDmCHMfy/HwmjJkihtRHtt/MoFJQuteUD43V1NM6W6MdJ1mdvzUWMpoy6dfxPweU6w7OxRNp/K/b+PfiVcN4x5Q+sWKLWXsVTBmtiPksfGvsW2zpyKYuW7+Ur0RuYhr6/7MlgMKVS3m4DLPDWdIKku+FRH7yRROv3nTBs+x/d3a9tVLiqHAPPLqLSps4f05A0dPqKsG9zzE0rLISIPqwPWx9rKaWUgm7o0OJ0oeSkIGB/jHQRSNVt6VgTWNP0cPNExLMdUnxse/lbRA5l3okSPedIr5f/pSfvVnRA/kzJmltGj1U8iBTs3aRnJwvPt3dF5n2pdx1vObY3YZAV7RoGJ4IwuwxgPpgLZrrOq9hcYWHz5rzavznmu/MI/TsaKyx1hJH27b/ZmENFvzoCfrEYkdONMp2aq5P0OVXZWz/S4KitLcKnyD
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2026 19:43:30.4747
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c41c4509-0fb5-4566-d936-08ded4845da9
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509FB.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR06MB7232
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_124337_398756_8840460D 
X-CRM114-Status: GOOD (  22.19  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 5/7] mci: imx-esdhc: support HS400 and HS400ES on i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX8M uSDHC can run HS400/HS400ES, but the barebox driver topped out at
HS200: fsl,imx8mm-usdhc was routed to usdhc_imx6sx_data (HS200 only) and the
HS400 timing/strobe-DLL path was absent.

Add a usdhc_imx8mm_data with ESDHC_FLAG_HS200 | HS400 | HS400_ES and point the
imx8mm/imx8mn/imx8mp compatibles at it. Add the strobe-DLL register block and
esdhc_set_strobe_dll() (gate the card clock, pulse reset, program the read
delay target, poll for REF/SLV lock), an HS400 case in usdhc_set_timing()
(set MIX_CTRL DDREN|HS400_EN, re-apply the clock, run the strobe DLL),
HS400ES handling, and MMC_CAP2_HS400[_ES] advertisement gated on the flags.
The MIXCTRL preserve-mask in __esdhc_send_cmd() is widened from bits 22-25 to
22-27 so the HS400 mode bits survive command writes. Strobe read delay is
configurable via the existing fsl,strobe-dll-delay-target DT binding
(default 0x7).

usdhc_imx8mm_data keeps ESDHC_FLAG_STD_TUNING: barebox already drove these
parts (fsl,imx8mm-usdhc) at HS200 with standard tuning, and U-Boot uses it for
the i.MX8M family too. (Linux uses manual tuning for imx8mm; moving barebox to
manual tuning would be a separate, separately-tested change.)

Register sequence mirrors Linux sdhci-esdhc-imx.c; the barebox idiom follows
the Rockchip dwcmshc HS400 support.

Assisted-by: Claude Opus 4.8 (1M context)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 drivers/mci/imx-esdhc-common.c |  4 +-
 drivers/mci/imx-esdhc.c        | 91 ++++++++++++++++++++++++++++++++--
 drivers/mci/imx-esdhc.h        | 14 ++++++
 3 files changed, 103 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index d31a2ad779..a0c2dee32d 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -360,8 +360,8 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 	if (esdhc_is_usdhc(host)) {
 		/* write lower-half of xfertyp to mixctrl */
 		mixctrl = xfertyp;
-		/* Keep the bits 22-25 of the register as is */
-		mixctrl |= (sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL) & (0xF << 22));
+		/* keep tuning bits (22-25) and HS400 mode bits (26-27) as is */
+		mixctrl |= (sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL) & (0x3F << 22));
 		mixctrl |= mci_timing_is_ddr(host->sdhci.timing) ? MIX_CTRL_DDREN : 0;
 		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
 	}
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index ba33daffc4..e123bd3ede 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -274,12 +274,51 @@ static int esdhc_change_pinstate(struct fsl_esdhc_host *host,
 }
 
 
+/* Ported from Linux esdhc_set_strobe_dll() in drivers/mmc/host/sdhci-esdhc-imx.c */
+static void esdhc_set_strobe_dll(struct fsl_esdhc_host *host)
+{
+	u32 strobe_delay, v;
+	int ret;
+
+	/* disable the card clock before (re)programming the strobe DLL */
+	sdhci_write32(&host->sdhci, ESDHC_VENDOR_SPEC,
+		      sdhci_read32(&host->sdhci, ESDHC_VENDOR_SPEC) &
+		      ~ESDHC_VENDOR_SPEC_FRC_SDCLK_ON);
+	ret = esdhc_poll(host, ESDHC_PRSSTAT, v, (v & ESDHC_CLOCK_GATE_OFF),
+			 100 * USECOND);
+	if (ret)
+		dev_warn(host->dev, "card clock not gated off before strobe DLL\n");
+
+	/* force a reset on the strobe DLL, then clear it before any setting */
+	sdhci_write32(&host->sdhci, ESDHC_STROBE_DLL_CTRL,
+		      ESDHC_STROBE_DLL_CTRL_RESET);
+	sdhci_write32(&host->sdhci, ESDHC_STROBE_DLL_CTRL, 0);
+
+	if (host->boarddata.strobe_dll_delay_target)
+		strobe_delay = host->boarddata.strobe_dll_delay_target;
+	else
+		strobe_delay = ESDHC_STROBE_DLL_CTRL_SLV_DLY_TARGET_DEFAULT;
+
+	v = ESDHC_STROBE_DLL_CTRL_ENABLE |
+	    ESDHC_STROBE_DLL_CTRL_SLV_UPDATE_INT_DEFAULT |
+	    (strobe_delay << ESDHC_STROBE_DLL_CTRL_SLV_DLY_TARGET_SHIFT);
+	sdhci_write32(&host->sdhci, ESDHC_STROBE_DLL_CTRL, v);
+
+	ret = esdhc_poll(host, ESDHC_STROBE_DLL_STATUS, v,
+			 (v & ESDHC_STROBE_DLL_STS_REF_LOCK) &&
+			 (v & ESDHC_STROBE_DLL_STS_SLV_LOCK),
+			 50 * USECOND);
+	if (ret)
+		dev_warn(host->dev,
+			 "HS400 strobe DLL not locked in 50us, status 0x%08x\n", v);
+}
+
 static void usdhc_set_timing(struct fsl_esdhc_host *host, enum mci_timing timing)
 {
 	u32 mixctrl;
 
 	mixctrl = sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL);
-	mixctrl &= ~MIX_CTRL_DDREN;
+	mixctrl &= ~(MIX_CTRL_DDREN | MIX_CTRL_HS400_EN);
 
 	switch (timing) {
 	case MMC_TIMING_UHS_DDR50:
@@ -296,6 +335,14 @@ static void usdhc_set_timing(struct fsl_esdhc_host *host, enum mci_timing timing
 			sdhci_write32(&host->sdhci, IMX_SDHCI_DLL_CTRL, v);
 		}
 		break;
+	case MMC_TIMING_MMC_HS400:
+		/*
+		 * HS400 is a DDR mode; the strobe DLL is set up later from
+		 * esdhc_set_ios() once the HS400 clock is running.
+		 */
+		mixctrl |= MIX_CTRL_DDREN | MIX_CTRL_HS400_EN;
+		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
+		break;
 	case MMC_TIMING_UHS_SDR12:
 	case MMC_TIMING_UHS_SDR25:
 	case MMC_TIMING_UHS_SDR50:
@@ -339,6 +386,19 @@ static void layerscape_set_timing(struct fsl_esdhc_host *host, enum mci_timing t
 	host->sdhci.timing = timing;
 }
 
+static void esdhc_hs400_enhanced_strobe(struct mci_host *mci, struct mci_ios *ios)
+{
+	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
+	u32 m;
+
+	m = sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL);
+	if (ios->enhanced_strobe)
+		m |= MIX_CTRL_HS400_ES;
+	else
+		m &= ~MIX_CTRL_HS400_ES;
+	sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, m);
+}
+
 static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
@@ -386,6 +446,13 @@ static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 		return;
 	}
 
+	/*
+	 * (Re)program the strobe DLL on every HS400 set_ios(): mci-core selects
+	 * HS400 timing while still at the old clock and only raises the clock on
+	 * a later set_ios(), so the DLL must lock against the final read clock.
+	 */
+	if (ios->timing == MMC_TIMING_MMC_HS400 && ios->clock)
+		esdhc_set_strobe_dll(host);
 }
 
 static int esdhc_card_present(struct mci_host *mci)
@@ -511,6 +578,7 @@ static const struct mci_ops fsl_esdhc_ops = {
 	.set_ios = esdhc_set_ios,
 	.init = esdhc_init,
 	.card_present = esdhc_card_present,
+	.hs400_enhanced_strobe = esdhc_hs400_enhanced_strobe,
 };
 
 static void fsl_esdhc_probe_dt(struct device *dev, struct fsl_esdhc_host *host)
@@ -528,6 +596,9 @@ static void fsl_esdhc_probe_dt(struct device *dev, struct fsl_esdhc_host *host)
 		boarddata->tuning_start_tap = ESDHC_TUNING_START_TAP_DEFAULT;
 	if (of_property_read_u32(np, "fsl,delay-line", &boarddata->delay_line))
 		boarddata->delay_line = 0;
+	if (of_property_read_u32(np, "fsl,strobe-dll-delay-target",
+			     &boarddata->strobe_dll_delay_target))
+		boarddata->strobe_dll_delay_target = 0;
 
 	if (esdhc_is_usdhc(host) && !IS_ERR(host->pinctrl)) {
 		host->pins_100mhz = pinctrl_lookup_state(host->pinctrl,
@@ -567,6 +638,11 @@ static bool usdhc_setup_tuning(struct fsl_esdhc_host *host)
 	mci->ops.execute_tuning = usdhc_execute_tuning;
 	mci->caps2 |= MMC_CAP2_HS200;
 
+	if (host->socdata->flags & ESDHC_FLAG_HS400)
+		mci->caps2 |= MMC_CAP2_HS400_1_8V;
+	if (host->socdata->flags & ESDHC_FLAG_HS400_ES)
+		mci->caps2 |= MMC_CAP2_HS400_ES;
+
 	return true;
 }
 
@@ -684,6 +760,13 @@ static struct esdhc_soc_data usdhc_imx6sx_data = {
 	.clkidx = "per",
 };
 
+static struct esdhc_soc_data usdhc_imx8mm_data = {
+	.flags = ESDHC_FLAG_USDHC | ESDHC_FLAG_STD_TUNING
+	       | ESDHC_FLAG_HAVE_CAP1 | ESDHC_FLAG_HS200
+	       | ESDHC_FLAG_HS400 | ESDHC_FLAG_HS400_ES,
+	.clkidx = "per",
+};
+
 static struct esdhc_soc_data esdhc_ls_be_data = {
 	.flags = ESDHC_FLAG_MULTIBLK_NO_INT | ESDHC_FLAG_BIGENDIAN |
 		 ESDHC_FLAG_LAYERSCAPE,
@@ -702,9 +785,9 @@ static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
 	{ .compatible = "fsl,imx6sl-usdhc", .data = &usdhc_imx6sl_data },
 	{ .compatible = "fsl,imx6sx-usdhc", .data = &usdhc_imx6sx_data },
 	{ .compatible = "fsl,imx8mq-usdhc", .data = &usdhc_imx6sx_data },
-	{ .compatible = "fsl,imx8mm-usdhc", .data = &usdhc_imx6sx_data },
-	{ .compatible = "fsl,imx8mn-usdhc", .data = &usdhc_imx6sx_data },
-	{ .compatible = "fsl,imx8mp-usdhc", .data = &usdhc_imx6sx_data },
+	{ .compatible = "fsl,imx8mm-usdhc", .data = &usdhc_imx8mm_data },
+	{ .compatible = "fsl,imx8mn-usdhc", .data = &usdhc_imx8mm_data },
+	{ .compatible = "fsl,imx8mp-usdhc", .data = &usdhc_imx8mm_data },
 	{ .compatible = "fsl,ls1028a-esdhc",.data = &esdhc_ls_le_data  },
 	{ .compatible = "fsl,ls1046a-esdhc",.data = &esdhc_ls_be_data  },
 	{ /* sentinel */ }
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index df8aca18ad..5562371652 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -66,6 +66,17 @@
 #define  IMX_SDHCI_DLL_CTRL_OVERRIDE_EN_SHIFT	8
 #define IMX_SDHCI_MIX_CTRL_FBCLK_SEL	BIT(25)
 
+/* HS400 data strobe line delay-locked loop (read clock) */
+#define ESDHC_STROBE_DLL_CTRL				0x70
+#define  ESDHC_STROBE_DLL_CTRL_ENABLE			BIT(0)
+#define  ESDHC_STROBE_DLL_CTRL_RESET			BIT(1)
+#define  ESDHC_STROBE_DLL_CTRL_SLV_DLY_TARGET_SHIFT	3
+#define  ESDHC_STROBE_DLL_CTRL_SLV_DLY_TARGET_DEFAULT	0x7
+#define  ESDHC_STROBE_DLL_CTRL_SLV_UPDATE_INT_DEFAULT	(4 << 20)
+#define ESDHC_STROBE_DLL_STATUS				0x74
+#define  ESDHC_STROBE_DLL_STS_REF_LOCK			BIT(1)
+#define  ESDHC_STROBE_DLL_STS_SLV_LOCK			BIT(0)
+
 /* pltfm-specific */
 #define ESDHC_HOST_CONTROL_LE	0x20
 
@@ -163,6 +174,8 @@
 #define ESDHC_FLAG_BIGENDIAN		BIT(10)
 /* Layerscape variant ls1046a, ls1028a, ls1088a, revisit for ls1012a */
 #define ESDHC_FLAG_LAYERSCAPE		BIT(11)
+/* The IP supports HS400ES mode */
+#define ESDHC_FLAG_HS400_ES		BIT(12)
 
 struct esdhc_soc_data {
 	u32 flags;
@@ -177,6 +190,7 @@ struct esdhc_platform_data {
 	unsigned int delay_line;
 	unsigned int tuning_step;       /* The delay cell steps in tuning procedure */
 	unsigned int tuning_start_tap;	/* The start delay cell point in tuning procedure */
+	unsigned int strobe_dll_delay_target;	/* HS400 strobe read-clock delay cell */
 };
 
 struct fsl_esdhc_host {
-- 
2.43.0



