Delivery-date: Sat, 04 Jul 2026 14:27:56 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfzTQ-000C0v-2N
	for lore@lore.pengutronix.de;
	Sat, 04 Jul 2026 14:27:56 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3A7E62026D9
	for <lore@pengutronix.de>; Sat, 04 Jul 2026 14:27:56 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MbnVnG5x;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b="DK+l8as/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tZ6wO+ZHPoa7ttZkhzLXtIIfWbPoSYHvmZN24VJTB9c=; b=MbnVnG5xAlQQLf9d2VQMQBdAi0
	52Vb/9FLWYEAO1J6vkMxRha6lzjZmWoAJzNqGgd9SAYFjoIjrrJJFPvJr0Akh7aB5dDeQHqbqwj00
	BZTk4aP7TElChl0VsYyw1SL295pBeNqMh9MXJX2RTTrVa7SKOUNx+zg6rCqr5wViI2zT2W4NNqCGu
	14OPMc9oblFpKvk+Y8Iu42JD/B7qhTPuDDwj0TndU6mzKuqrgEF+t7PkxlSeea1KnmONM0JOu6rNB
	1X5cVgXLlf32wh//7hYhnehNJYYBPkshPn/NqE8RQtUdb00p3w+xQyCK9jHc5204Q7vvYg2kNnsgy
	WEMJwKiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSF-00000008Q0B-36Jl;
	Sat, 04 Jul 2026 12:26:43 +0000
Received: from mail-norwayeastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20f::7] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSC-00000008Pvz-0yt9
	for barebox@lists.infradead.org;
	Sat, 04 Jul 2026 12:26:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k4tVZybZIzcg19jHKIE1doF5KGSgG1wEoTXRyMgy4mvDuzCyYpNGLsm2GuMABHJi+HTyhdJEaK3FJS8kVaI2hTg0RylUp1u+j4meIUa+yHL3Ikn9qE+WBIaaWr7r2NsUw6U29fPqXhJusMhOGxK20Zzv65k79k1csEoOD7YlUXOU2Nz/l0gnxeclQAimp6r5aYRkDe5vpq76oNrKO9m8fManrNoxo7JB9RUnvAoQzTdcz2EH0JVnCwY8JQh0cFf6IpSYQ4PDh3WripSZDUHhVr0NK7jl85vAtKXzEGhV42j30tBygkFQo6Q/2rNUGrJuPu0hwj2585wjE6d9gQcb8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tZ6wO+ZHPoa7ttZkhzLXtIIfWbPoSYHvmZN24VJTB9c=;
 b=Sbc9/qYzQIacOzwzanBXyQUeifpAx1l/cc1qcq2W+pNp0E/81YKnHC3IG4zjn6qb24FIZBWgtDpIapTbgBA5G2RYH9iIUCKm/w10aVepoCjIap952nl6FxjlxzfP7NAXoh4kUrdZZ71GLM03dO+on9I58FGu5nt2KG+CEyzU0yhB25DE+GRvg2hmEQKdNLOlGds3ELVDUR506yRkAoh7+qrx5T3da+y0zf7Unbtaiipw0u1PLGztXV9atu85+NqAhFWykYCbjENcJ5UNZtOqSCnPCFJ3tbYIWJoffij10o9AZYvgx1BG+fZTFQy0SSZkOLseKhvDSDUtac2rdlavvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tZ6wO+ZHPoa7ttZkhzLXtIIfWbPoSYHvmZN24VJTB9c=;
 b=DK+l8as//EWuoaypTsF5vApRyZBqXqKK1k9p8TCocK3HbhQQMJCoxXSaMX+DxEORqd2ZUlXlKqWg1MBpa67EJXNwYpjkjwzArc5BDvGq6jgxw7dUSHDY0UQtlz2gjMW3u669R8ku0QFP8oAKLPB4gs7198pMOeJ1U5a8589fWvg=
Received: from DU2P250CA0023.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:231::28)
 by AM9PR06MB8266.eurprd06.prod.outlook.com (2603:10a6:20b:431::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.12; Sat, 4 Jul
 2026 12:26:34 +0000
Received: from DB1PEPF000509EA.eurprd03.prod.outlook.com
 (2603:10a6:10:231:cafe::17) by DU2P250CA0023.outlook.office365.com
 (2603:10a6:10:231::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.181.12 via Frontend Transport; Sat, 4
 Jul 2026 12:26:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF000509EA.mail.protection.outlook.com (10.167.242.68) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Sat, 4 Jul 2026 12:26:34 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 4 Jul 2026 14:26:30 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v2 07/11] mci: imx-esdhc: make the transfer mode selectable (PIO/SDMA/ADMA2)
Date: Sat,  4 Jul 2026 12:26:24 +0000
Message-ID: <20260704122628.3326142-8-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
References: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jul 2026 12:26:30.0323 (UTC) FILETIME=[579FE830:01DD0BB0]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509EA:EE_|AM9PR06MB8266:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 1c7fdb92-43d9-469c-a151-08ded9c77c87
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|36860700016|23010399003|1800799024|82310400026|11063799006|56012099006|13003099007|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: ZilnhWEglYWbx90+XDcoMZBERdmz0n+bYhpYviXqbd6hRv+nVW2elmf/JleIh4eUi4toqWkRz/ADDuoHiEZLeucWZSGGk421R6l2uMter9+baQku6qwHDWSFxzYTAC7RLZaCj8W8OOdLw5fVMfRH1oWx8tlFe59cpUD+F0jUxllRCo/JwT1RYsNeJ/2EvKdphjBE4je5VvuElE+PULy3AEcwvgPIAtwIm7/dciSi+9VdEk9/coBtaBv4gOUJ4gptI9Aaf/SnwsD1Zm1G3zP904W08W5WRxnzC82Tvz+/hTwGpM3sqU51ApGVGgbadcAH+TL/V2BJVrHyf46jCk4fyyE7z5nYxkikojDvZKao9i76g2aaSEGmPEJnS5SNJcd3+Yh09/RBOgFSTEIV3j5cgZANsHNRWcK4l2B5PYTn5BEMdqs/sQR4y0C/S0c2stMeNbBQUVQraeqbLoib8NZyKV5tupUWY1Rfkne0lGPG/0zuPtnOFhAJrm9/j/RYlNxF1Wnl4P5E1lf9SzAHwjkL+RsiEGu1YxUiP3JG9c0rMr7MWwPrIkoL9ATxQv/6paTYiPVb3cEe8hL5xNT0uYUzi70bmKMyxUTxbjRxxELD+BcgR2nHkGwWwJhKOEHLJA8F/0TyiUi8apuMAgL2vOMepk7yqAuku0dHXRqJnZSw+IE=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(376014)(36860700016)(23010399003)(1800799024)(82310400026)(11063799006)(56012099006)(13003099007)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 13xOjjMl5EARM1lngvQFPtFWuktEgzKVNOoKX8NPaJ6Xh5EX3u4tSVoTIgG+dHAzYvuIvS4sVuGa1mtDgPAmGQ7mOvxe9wlzfjH5PLc1YUs/f/P0hITQeMhlqaN4lYSpgItNr2lyQtWnWilujNmfEhLP/lApXr5zTx0CbFhYHHJtPf2vXgUhUBG6SR/yzOmGrBeow8hZjWRv7jj6BPL/iRDrI8uAwUfb/TazwojYPGxI1kJ5zSJxcFaypU+OjZExHXV/pYEaDYKYHU8Odf+9wEyBxFF85Ri2UQXDHtV+9XoD7g3JAoSeChYeL5PqjaukEwbfgqEwuDr3PI3kAyVhfkzNDmAdW4hsaiABHieRcmgRQHbVMKqQPzwQNpY2cO4Z9BuHlRBgJDSCx0jauCsPzsl7IuFoNXW7Zt/2F21/fa6rSwBSgnQIzftIFDQMbofM
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2026 12:26:34.3546
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c7fdb92-43d9-469c-a151-08ded9c77c87
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR06MB8266
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_052640_321987_7820432C 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The driver only offered a PIO-or-DMA toggle (CONFIG_MCI_IMX_ESDHC_PIO)
    and never called sdhci_setup_adma(), so the controller-resident ADMA2 engine
    was unreachable and DMA always meant SDMA. Replace the single bool with a
    choice of PIO/SDMA/ADMA2, defaulting to SDMA so existing configs keep their
    current behaviour, and call sdhci_setup_adma() in probe under the ADMA2 option
    (mirroring the [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c20f:0:0:0:7 listed in]
                             [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 3A7E62026D9
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[leica-geosystems.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,leica-geosystems.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c20f::7:received];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: nes8koy97ecw1tocqi7c8395my5oitqm

The driver only offered a PIO-or-DMA toggle (CONFIG_MCI_IMX_ESDHC_PIO) and
never called sdhci_setup_adma(), so the controller-resident ADMA2 engine was
unreachable and DMA always meant SDMA.

Replace the single bool with a choice of PIO/SDMA/ADMA2, defaulting to SDMA so
existing configs keep their current behaviour, and call sdhci_setup_adma() in
probe under the ADMA2 option (mirroring the Rockchip dwcmshc driver). It
returns -ENOTSUPP and cleanly falls back to SDMA on controllers without ADMA2
capability, so the new option is safe on all i.MX/Layerscape variants.

Assisted-by: Claude Opus 4.8 (1M context)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---

Notes:
    v2:
    - No functional change; rebased on next.

 drivers/mci/Kconfig     | 19 ++++++++++++++++---
 drivers/mci/imx-esdhc.c |  7 +++++++
 2 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 55e63aad92..ebe771216f 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -177,11 +177,24 @@ config MCI_IMX_ESDHC
 	  Enable this entry to add support to read and write SD cards on a
 	  Freescale i.MX25/35/51 based system.
 
-config MCI_IMX_ESDHC_PIO
-	bool "use PIO mode"
+choice
+	prompt "i.MX esdhc transfer mode"
+	default MCI_IMX_ESDHC_SDMA
 	depends on MCI_IMX_ESDHC
 	help
-	  mostly useful for debugging. Normally you should use DMA.
+	  How the driver moves data words to/from the controller. SDMA and
+	  ADMA2 use the controller's DMA engine; PIO is CPU-driven and slow.
+
+config MCI_IMX_ESDHC_PIO
+	bool "PIO"
+
+config MCI_IMX_ESDHC_SDMA
+	bool "SDMA"
+
+config MCI_IMX_ESDHC_ADMA2
+	bool "ADMA2"
+
+endchoice
 
 config MCI_OMAP_HSMMC
 	bool "OMAP HSMMC"
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index e123bd3ede..3536ebd6b8 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -698,6 +698,13 @@ static int fsl_esdhc_probe(struct device *dev)
 	if (ret)
 		goto err_clk_disable;
 
+	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC_ADMA2)) {
+		ret = sdhci_setup_adma(&host->sdhci);
+		if (ret && ret != -ENOTSUPP)
+			dev_warn(dev, "ADMA setup failed (%pe), falling back to SDMA\n",
+				 ERR_PTR(ret));
+	}
+
 	if (esdhc_is_usdhc(host) || esdhc_is_layerscape(host))
 		mci->host_caps |= MMC_CAP_3_3V_DDR | MMC_CAP_1_8V_DDR;
 
-- 
2.43.0



