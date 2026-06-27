Delivery-date: Sat, 27 Jun 2026 21:44:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYwx-00AWzY-2u
	for lore@lore.pengutronix.de;
	Sat, 27 Jun 2026 21:44:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYwx-0001Ja-4F
	for lore@pengutronix.de; Sat, 27 Jun 2026 21:44:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SldrCHIKmcI/w0LaOZd6jzzHbWAU9R9h5+bztiF4F7o=; b=e2EW3lcsm1W2DKMR+GBskD8iKh
	ZQd6/ELI++EiHFTFBY4SzCEjxeIBsCPxR1/rcVTszVgXwQCP+GmIyx/ge26UJz1EBVqttKJ3hIHcI
	QZC99TX0j6yhv1z4R9vM8n/54gSxdb9RwNxkM58O15ebkROdxc6lBEJqTuwbhM/MWXWjd+5rlpEOG
	p5m68ccCQhwfoIQGWLFd7OKjz+WZumkzs+Cp29GN6oGuxZtOJkExL+qwErCyUPy6TKlf1D+k4JQ1o
	brca8KzcGLKTpUMD8hJUWWde33CEwlXLO+K94lMvEmXEa0x4U4kz6lqL1WlwYNrwNdS/w/39pLT7a
	bXcjCtfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYwG-0000000CjDX-1Q75;
	Sat, 27 Jun 2026 19:43:40 +0000
Received: from mail-northeuropeazon11010042.outbound.protection.outlook.com ([52.101.84.42] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYwC-0000000CjAs-1Jlo
	for barebox@lists.infradead.org;
	Sat, 27 Jun 2026 19:43:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O3yArtEvDlcMsuLFed3xUZH21JESElDP7k8Ks03H8vP31mkoxvF93hPGwamCurPnZrCIdUDpLpFz+DwyPMs9rbL+OwmchqtaqF7YFMb4TlANR9Nj32Dw3Mf+IegHTYWIZQrSTbHxdVOJoubE1EbFhTULjC5RjJu7awI4MOBi3I+z6LOkGFCZ5E5SJQevq4y/Etreqgs5pL0HPosnsIVt0jXNx1t+9jBeGduDcxwU0oVn7mEShPRaTIysZvriSmeSsGfXviFlunZV7Be2DIKc7oJTsOhGAQcLEl4YUSfsSPQQ2W3jR99rqr173wW2EwHtBMbmLTJy6iq1SsZ60c+oLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SldrCHIKmcI/w0LaOZd6jzzHbWAU9R9h5+bztiF4F7o=;
 b=YxUB9CKia1t729eJsttk21/JCem5Y+xrYPvgnYxJEWLzocX6oNwbQL+n2lG3xIMMsGsdUapgt6a7MDY1PWe9sPGrNQ9NVcw5zEd0HP2Lg72N70mjwf9VUokZ479SlKSJaPZ0bD/MXtuES9blMth+U/rCRcXSFDO2x6Ocmjqx+xP/WtAbaWXNbIWbg8EeGjknaAk3RculpmgagKgFhPD1hl9DECfVUIIYlmQMBvhqQ2GDzTCzvJRWx3qQM7NWP+hBORbohi08OHObRKIDbrC5ilqRPSdXtMDbxsYkMmI2caE7PLMKi3taHxBj63ZdD1G5IC7dy2hqyGNdLwCcJjm2Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SldrCHIKmcI/w0LaOZd6jzzHbWAU9R9h5+bztiF4F7o=;
 b=EFX7rU1NY2svE4NeeWLrO+cAyZGAvfHGZted7xjghNZfP7br5O6ol2f8ajzFd0AauTHQ+qAdC4fuq86CY7SFrm3rDW71liW8IRbtVr40FYp07Cg2AjMWL/o1fczbh4Eo5kZsDCa3JnQQd8uTWswEv8C5X+m5kRe6vUb64z9UG78=
Received: from DU7P190CA0020.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:550::34)
 by DUZPR06MB8906.eurprd06.prod.outlook.com (2603:10a6:10:4df::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Sat, 27 Jun
 2026 19:43:30 +0000
Received: from DB1PEPF000509FB.eurprd03.prod.outlook.com
 (2603:10a6:10:550:cafe::76) by DU7P190CA0020.outlook.office365.com
 (2603:10a6:10:550::34) with Microsoft SMTP Server (version=TLS1_3,
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
Date: Sat, 27 Jun 2026 19:43:21 +0000
Message-ID: <20260627194324.2230643-4-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260627194324.2230643-1-johannes.schneider@leica-geosystems.com>
References: <20260627194324.2230643-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 27 Jun 2026 19:43:28.0892 (UTC) FILETIME=[3A37CBC0:01DD066D]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509FB:EE_|DUZPR06MB8906:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: f3309bbb-0167-4f7d-6777-08ded4845d79
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|82310400026|23010399003|1800799024|36860700016|6133799003|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: LtAeORyrEe51HJD1DoZon1NdRU99FZbd7A4j9f6aAR42FXSwsr7uGdzOxNPEGAC5AiDJmze+G+zyoDnNoBOLYTXPcrZpqkqa6sx/HjFKpPhk5vP/ipb6nrF45QCSQ1bhJU/sxrVgApjC02CAZKeAQbjT0/xSOkzxz8Jpe/hRxqZrjw/x3h9XqHvbHdpLRzhUvJGNYjOsCyetPNQ7get613OX1KzFOzrbrHiJ2hu88yYzDeYwHQjh1GObgiXoOnmqWXsR5mT4BHvKPq+b4FHpIorPHIcHWVc/UfgfXvin71YwfPknFJ8m22GhGKTwFlhpZ0FUHb+NTk1eMdqLqlJ0OcRAkrT//WVWz+90cNj43WMGcDsROIOKqpfyx25U27h4JH+uFbgmAEDykFBxVLvGAlTEbYB0ov9lQHKUR8obRE9isWU+Euck74wcxUIP3jweLslFCUZ2JE5Gg9gjLIiTVko61NdD5n2pBoxWJHcYpKaw0XAGPlmJTtsaWwcbb52d4dtmVtmC7qIUoKCPHWMubowntOYvyAsefBYY3NM7pClsMcAKGREMA8R1BvOl8AGvAQgkRTWL+2TjZ5LmyWvqCTgGm5yE490YSYLBa6XNo77eDANviR7QJTgRO5SoZetnesRuqBkNbHOzT/Dv2Fyn3lvLjPecXp/WXqPbGkT6wRnNvoFYbwM00NiltUTSWVCXiEUuJLQODMjFG3KJE+v5hA==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(376014)(82310400026)(23010399003)(1800799024)(36860700016)(6133799003)(18002099003)(22082099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: mhGPJz+PzOaTUxSr+EMCeyF9cPAXrc7XNtEK+YSBaaX/8VlK8pMdvPM6cbzutsOwyyHMDQuJ1U/hSG01VveE3dkIqtmjO89MUzVh7nfo87UGgqJEaExSUb5jfzbgD7P99TA0TA83IbksbTMTpBRA97aFeC5cVjw8OEWA9rpZNTC4EM8hm+zJm2Oo+AVca57tUSplu1oo+HRZAN7/5UjZ6JkV7Uwu8nIMJsdsgV5yvZI2Rf/x10La9okV+DbBJH2v3XuGO7/i1q1/dLRXkUIIIBtzAxdDB/qv2XTZdHop+X6XutitbePEdQDKEVbOHiH0Ak0/YzONYFoBRyOuEx8EmAqXmNK8pN86M1IsZ1TXwiKWpP46mTutn7gvZHavp0Swm9kTpuJl/kDAy9LLjTkXcWBuyYcap/Df1R2mx/HLmjzgnoOmylGcdFPxVj5Calfz
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2026 19:43:30.1568
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f3309bbb-0167-4f7d-6777-08ded4845d79
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509FB.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DUZPR06MB8906
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_124336_361019_C898CB80 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH v1 4/7] mci: imx-esdhc: mark the uSDHC ADMA2 descriptor quirks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX uSDHC ADMA2 engine cannot handle a length-0 (64 KiB) descriptor and
ignores the END attribute in a trailing NOP descriptor; large ADMA transfers
hang otherwise. Set SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC and
SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC so the shared table builder emits a safe
descriptor shape, matching Linux sdhci-esdhc-imx. esdhc_populate_sdhci() runs
for both the PBL and the proper driver, so this covers every uSDHC ADMA path.

Assisted-by: Claude Opus 4.8 (1M context)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 drivers/mci/imx-esdhc-common.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index eb6a71915f..d31a2ad779 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -285,6 +285,14 @@ void esdhc_populate_sdhci(struct fsl_esdhc_host *host)
 		host->sdhci.read16 = esdhc_op_read16_le_tuning;
 		host->sdhci.write16 = esdhc_op_write16_le_tuning;
 	}
+
+	/*
+	 * The uSDHC ADMA2 engine mishandles a length-0 (64 KiB) descriptor and
+	 * the END attribute in a trailing NOP descriptor.
+	 */
+	if (esdhc_is_usdhc(host))
+		host->sdhci.quirks |= SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC |
+				      SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC;
 }
 
 static bool esdhc_use_pio_mode(void)
-- 
2.43.0



