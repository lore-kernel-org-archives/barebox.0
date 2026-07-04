Delivery-date: Sat, 04 Jul 2026 14:27:55 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfzTP-000C0a-2i
	for lore@lore.pengutronix.de;
	Sat, 04 Jul 2026 14:27:55 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4E7B72026DA
	for <lore@pengutronix.de>; Sat, 04 Jul 2026 14:27:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PxmDKtaL;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=TYplQA+6;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RII7rDGln0M2Bh+/34JiK8GFZxB+eARhR6WsbQVkEek=; b=PxmDKtaLosPM4/juodBIOy0eIh
	qxI+NyxXE1ri6FwJHi2/y96JSIaCrRqN9vQC9gtGht5gkgRReQ8AXlJqk657H3X5pQQRvisXbbd+b
	ceh0eQrZx1gCaB1UdA3iHIA/Go2HGZQRPTAIP10E1J3cNREliED+Ejg/57tkTYiyktjUF7fp1Q3IV
	IHq5tMw63qtztEL+fFAQV2HolUK0CHFdrvCOCqUw2uEOIoD8q9yPvOmSZlj3zRc0obS0SVvVOdegx
	JCBDrQt0W5A2w8psYhEBKqftGSNAH95YNsVpJEt57KhqYhMz2LaZ7Z6HeR8ESKKSS0SRWU4qPcvN/
	lSWNW4BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSF-00000008Pzd-1Qwi;
	Sat, 04 Jul 2026 12:26:43 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSB-00000008Pv8-2WNJ
	for barebox@lists.infradead.org;
	Sat, 04 Jul 2026 12:26:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EqHFdxHYEIca8Fxiq1lTALXrL5x1wfKGBsYoz24vr6V5HamPKXDvvtOhSRJfjMWPJzhJOg9hspPX0AlJwgZPC5hxOhCBdjoWMz0Ew6Y8mU3/+zYV0uEsjQiXpsCwcrqWtu2uBR7bXw0RtSqDgzGlv1welOjHfUW8UyZwmrUxXSPeZrSqt0vUgwlluu+E2aZCve+DnN1m82oRXHqnGXWKHoH5P7TuSlHv+Ha01HnmBiNbh/Vox8xsovA1mD6PdeR11n38UZZqdwLteNTEJZiEfYslPMb8inzuCFlSWa3Fj+DlGN2Q797njMY/KJ4HKL0M9+oaKTpE3/DXeSt3mTPHxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RII7rDGln0M2Bh+/34JiK8GFZxB+eARhR6WsbQVkEek=;
 b=SKFwD1NH3FEG2l96NAjeiZq7r8NfWBjqtm8S1zgqMrEs16jeO9XXp2GQj7TC/2ghD1LS5/ApPQRqNAxD8x4g6GpT7mw8CIOz7HPvE7GPsPCKd1DkuYZ7/IlLbCi8q7L3XRphZ4dl8Tx4g4Cc42h8rIg+oGmN3oEd/wFcX+1uxfxdYE4JAqjXzY0/OnGLsYIZEoTe+i9sgvJ5U8gd2lTH1j3kO9exQA0nmjLCCnJ3cquQpJgTxH56lYPZUvAVdWWLvMAbpESQJwO2zqmqUmVrlffVKUPz2S5ATTHoKRVdRcY3KW8t4Nmdims3f5jl6ZAE4v5eWeLOfQNyyF9pACWPRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RII7rDGln0M2Bh+/34JiK8GFZxB+eARhR6WsbQVkEek=;
 b=TYplQA+6ZSuMco+CEWjf+IKLsLCYXOB1/VbYfNBJbgXqPuL8FtY9ckMKSJJwG5sKNOH3ByDaOUhDPLldK+N05GWX2Yg1xnVzKTJ+aSNcudpdOg7CM+DdyK1nHsevxpRKijIu7d9iQoPf6YQHMzpJkNLION/uKX+8z06vihZbqLI=
Received: from DU2P250CA0023.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:231::28)
 by AS8PR06MB7528.eurprd06.prod.outlook.com (2603:10a6:20b:333::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.12; Sat, 4 Jul
 2026 12:26:33 +0000
Received: from DB1PEPF000509EA.eurprd03.prod.outlook.com
 (2603:10a6:10:231:cafe::38) by DU2P250CA0023.outlook.office365.com
 (2603:10a6:10:231::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.181.12 via Frontend Transport; Sat, 4
 Jul 2026 12:26:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF000509EA.mail.protection.outlook.com (10.167.242.68) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Sat, 4 Jul 2026 12:26:33 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 4 Jul 2026 14:26:30 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v2 05/11] mci: imx-esdhc: mark the uSDHC ADMA2 descriptor quirks
Date: Sat,  4 Jul 2026 12:26:22 +0000
Message-ID: <20260704122628.3326142-6-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
References: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jul 2026 12:26:30.0291 (UTC) FILETIME=[579B0630:01DD0BB0]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509EA:EE_|AS8PR06MB7528:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 0fb4ddb2-3aa4-4d15-7068-08ded9c77be4
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|36860700016|1800799024|23010399003|82310400026|56012099006|6133799003|22082099003|18002099003|11063799006;
X-Microsoft-Antispam-Message-Info: yMplzoV2lqQR9U6nhaH7x99L/ZE28NwAF5KQzEBZoJNv+W/qrBnZF6ik1Wxs1Yg/Y3L/ZnpRkWlPdmTvRtZ9C2WeBYB7X0DjMuHNtwLTM7eHZ+Zp4w9DhoFIhjNT33F4SRj9TNACiYEt+gmrw78TOb7BANXvsG41i08Xu9ZBBtJpYcQcnY7ybQeTWlIGk2xn8uyi6VlTQ2IO9F5HcJh8dBHQxfpjtdmGg6otx/Y8Q/GCiY7QF2btyQwTv343ogol5B3AQR1A7wkt74Hde7O5tiRX+HsAoBkQuTzW0YC7NRBu8g7j7fjbCgqjltDuHB1XW4bZbmb/uB0ZYKhE690LbK8AkONdOqSI8fnFRsiuXGF4jKq+T9DE6CV1sjNtZ7C1mtW7Dy6SecSCP2xpItgVU9u+3Zm97O4d55VP8QEqqXEODBGoQQpqNzX9BsGk8yKuVjVTQjabtVhWP0ZaKBRT3ihwEFDjpq6JiQogzubUT8K7PE4qI4IJ6dfIlBuJ6gSEIFMMdHGYSvW4tOR1iDQgpqB0ShPHrlI37WwKBigJLsLI/GW/TnN8yhh2L8YRNhu5PtPZXhMcJe2IjeTNLWHjIKUcShCZn1sc8/G1CUZk+w6N6HEixkQ5a4Nhmdn+GzxjpODRm9s3UChfLmzG0Lq0wLRk/I0SylMCWKZLmCACbCrfRPujpMKr+axOV2T2WJUgwEmUAVJNOGMjUKOeKE0S6w==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(376014)(36860700016)(1800799024)(23010399003)(82310400026)(56012099006)(6133799003)(22082099003)(18002099003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 9Jjf+OJCTinz6ON9tjOaanR8OX1R8bShvi9Qq4o77PwpFpGfheXtIwLdd6j///Pg3Nw9AmW6jM3mp24xVbzMGZ3nMPGz35X9gfvA/60xi4ti6IxPuxZ7zlyQjc2liKXUde0hX3aa+NWAc3i8okkxEeDOUEjtfldJ8vxZQFx7I1dtYspqzapSXcCX8nq1ho8zdi3t8CYpdPi/3MjaHgxE18KtPTRWSMt0gQD/G9QgE6C9p/5kvhKDd/4PGRKDo9F1Nti2dDCOkNaHS/Crb7V3g0u+j0JrZvXQ3sFkW0pcDtjIxEIhtS/YyvUDun0zrqq0dmoiBiswzlAwDyYRYpQEQKWISro4mbZ8fgWQMHWr2+VO3wk22NWMLR+lZx0E1MqZyxYwE2Bc9rfZ2WhJ8MCwrnPNS8/1v8fYZtrcUa+8g1vm5R3tW1hHXSTxIrU6YnF5
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2026 12:26:33.2853
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fb4ddb2-3aa4-4d15-7068-08ded9c77be4
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR06MB7528
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_052639_639626_C71BB224 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The i.MX uSDHC ADMA2 engine cannot handle a length-0 (64 KiB)
    descriptor and ignores the END attribute in a trailing NOP descriptor; large
    ADMA transfers hang otherwise. Set SDHCI_QUIRK_BROKEN_ADMA_ZE [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c200:0:0:0:1 listed in]
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
X-Rspamd-Queue-Id: 4E7B72026DA
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
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c200::1:received];
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
X-Stat-Signature: btdk1irud5rstmek5uft1t4my58yw7og

The i.MX uSDHC ADMA2 engine cannot handle a length-0 (64 KiB) descriptor and
ignores the END attribute in a trailing NOP descriptor; large ADMA transfers
hang otherwise. Set SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC and
SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC so the shared table builder emits a safe
descriptor shape, matching Linux sdhci-esdhc-imx. esdhc_populate_sdhci() runs
for both the PBL and the proper driver, so this covers every uSDHC ADMA path.

Assisted-by: Claude Opus 4.8 (1M context)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---

Notes:
    v2:
    - No functional change; rebased on next.

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



