Delivery-date: Sat, 04 Jul 2026 14:31:41 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfzX3-000C57-1J
	for lore@lore.pengutronix.de;
	Sat, 04 Jul 2026 14:31:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E65562026DC
	for <lore@pengutronix.de>; Sat, 04 Jul 2026 14:31:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Mc6zRKS5;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=OxyVZ8Oq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RyBLoJDOJoumJcAokmYqixJf4d+Modx0u01j6nJIuC0=; b=Mc6zRKS5Kz3pZfbrvDttT2jcoK
	07JAu2O4zhnlUjeWzXV5Qoddo9ode3LDD+7ZA5pzgnYPYgIFoegxKB6Zp/lW2eo/iCwTld/s9nKIb
	VBF5LpnM+svP78tB5NTZ4JvQkFujDPeCWSJduftb1/Bm6F3NNCkaE7JLOy5OwCKu+hID1Nu55QaZJ
	z+AMCE8nVgg+8KmGQm+h7WzUZ/5LL1JfONjxgQwVOicfqnTsPPSvyRI8qUBDjWp5SQyGjsfqdlS6N
	J32FX/rlYk8MmqXQXSkuojbKkU2nzXC2Fhi7ttPtAGvehUXDNO/gthPfWsn9+A9QJczBAZH4kXDVq
	BcUhKPNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSF-00000008Q03-2d6s;
	Sat, 04 Jul 2026 12:26:43 +0000
Received: from mail-norwayeastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20f::7] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSC-00000008Pvy-0yw2
	for barebox@lists.infradead.org;
	Sat, 04 Jul 2026 12:26:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Id3pjUNvlBtAXfIepHp6fw5B00Lz5QgQVDkCUAk2I3kS+A2A3G4pf8XEpCPIUmRz6tW4Xiy33xFW6tiiPsDXptWpCWC0pTA0ISI79wiH32yPKL3VTL/ttytzQcX0z9KeSEiQgty/zeGNUhQsLtH/iSRhjL4ZVyxcjqUhQPi1Yxk0zwe5J3OpPoi0sWGyVivn2i37N5h03gQ8GdXlcg4ASKGogMKq57bOFxevu+m5SnKQND2HFxyr0zEHd1wSwJIZAZABFc6X8C9vp3rsVb+dFdxeN2XRR7xc9ztLLSLTf2Uy4YWniUmPF8w/lrCTvY9Yx1Y5T2d1yyYy5wjUAV1cTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RyBLoJDOJoumJcAokmYqixJf4d+Modx0u01j6nJIuC0=;
 b=IP3mjgo2X9gDcN4iSHJ3/EbvuWRC0RyiLdK8Z9Apx9Z9GmqyCgzyrAfr25GmQ7OjGiFNdbbkhLiMMpv32J4xF8C+/gVJ6LSJnhqPVPp6em/YZggz8p8RXaQSl6jOiwP/U6ybXBraveWcxGsPhUGUcre051Q3HzZQROlS5o0rCMPC2mn2e53RZa0x2cOmAczMy9A1VrJOqUJsRnHq//0dQVQJKOcSorbolTLQfnWtWq56byP0Bt2eURUvL79BOptPTmd9DrslWgU0Au+iwOljjZgY0f3CQsCoj2+vFEebGxIG+/F+1U+G2+9qnsOnKzHJLchP+vQ1WbKvUuWhl0Nhig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RyBLoJDOJoumJcAokmYqixJf4d+Modx0u01j6nJIuC0=;
 b=OxyVZ8OqDE9fjaypy3RpQ7US9aE1ylmC7HlNmLFGzOGVpRehrZIZsznnBYgtDltfufGfW77KHE9YFR9P/HrxX3GRi798J/OZ6GpkMWECW1rtGWHKLj4pQtfBr6Kl1Ctlro55m//iRawse4It7GqDRh1KT+xzLH2fu+A0CnQPPNE=
Received: from DU2P250CA0029.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:231::34)
 by AS5PR06MB8823.eurprd06.prod.outlook.com (2603:10a6:20b:680::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.9; Sat, 4 Jul 2026
 12:26:33 +0000
Received: from DB1PEPF000509EA.eurprd03.prod.outlook.com
 (2603:10a6:10:231:cafe::2) by DU2P250CA0029.outlook.office365.com
 (2603:10a6:10:231::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.181.12 via Frontend Transport; Sat, 4
 Jul 2026 12:26:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF000509EA.mail.protection.outlook.com (10.167.242.68) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Sat, 4 Jul 2026 12:26:32 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 4 Jul 2026 14:26:30 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
	"Claude Opus 4 . 8" <noreply@anthropic.com>
Subject: [PATCH v2 04/11] mci: sdhci: honor BROKEN_ADMA_ZEROLEN_DESC / NO_ENDATTR_IN_NOPDESC quirks
Date: Sat,  4 Jul 2026 12:26:21 +0000
Message-ID: <20260704122628.3326142-5-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
References: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jul 2026 12:26:30.0260 (UTC) FILETIME=[57964B40:01DD0BB0]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509EA:EE_|AS5PR06MB8823:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 9858e552-98d7-4709-4db3-08ded9c77b9b
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|82310400026|23010399003|1800799024|376014|6133799003|56012099006|18002099003|22082099003|11063799006;
X-Microsoft-Antispam-Message-Info: yCgZzZ+GpJY/lBpHH3YvkV4N4p9lvQjQIlhDn1XNyz7a3ujyNoxhxP/V78WN7OZxUvEaPUm9EurrV7FiL0FMOrxR3qpNMBrvnLdOxJBxmwCWaU7swzAf90g8fReDHaj2D2ER/gkY0RSB9xARRUiasl32Zok07LWd/a9uJmRozMRO/3O0cVeW4c02qumC8qhBX+YoeRBsTxJwtJ5k1+jH0lccveaeRNlDnJl5clou14zc4TQsqQdNaV2adAfxrTz58x6Enu+cel51ZTUbKDVJ7RAnpLLGlUyQ8ExEEvFLDljpJOHOZvTF7G0OFjuArKRm+RaDRON3nHonHZjABKMNBQHEK0LWApwagxzrY+LcaIjOgL4K0b1Q+VOz+enOcSwJnSUNq4K1DVMW0yv00y+vXW1GP5xZwHL2Td8XxEazsPv1r5wx76teltFSg2BKmtTdSQkdTf8NrtTmju6zcCEqwk7YSTmXiiOOEXALJtN0FlaruG2HgVQiRJIq6fqpsTUe9K9KxRSRt/zb6yBWDjWcZcOTRk7pS3ZLMHSem3td62GdkzTl6B6c5uqeR4wF+EOibXE5XCPbPo5Izax6GQ+zPaSWRlxfg0FBqMWjDcdKt2YndehPpZW8DYAW2sbNfi28gEEGYm3o4lUWB51s35dfiy+wnuzoMCw1IGhCfWZGKB5Ox2Lj4Ax39nFxiaKd1uEHbtC/9KUwqXfVNBvWhslrIw==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(82310400026)(23010399003)(1800799024)(376014)(6133799003)(56012099006)(18002099003)(22082099003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: b4nsaB+F2wdiUBhH6I97EOAJza13YBjoy9bNZDnnMVcqa3K1cta3E9VxVW/VQAghKK4kLx+cnmdp4huTSKFoOrlPCy0JXgs5llafu401GAD1A/KV7Jal3Lks426RWgy8fb9NFNYVie6FrcbecEOnWrcAzlNzAli+lsiZnNBt6G3Te+yrwWZtTmHTsjb33PqXSwsGgqrK85qdyE8EQ3SVkxgY2KAEZn1d8ok8JMtgSV04Gd1Q8b859sAU1Mw3iA71XQvG1MqfBUFwUptiR1iPBV+WqS8YvZJCEuXGigd4sXuV91EKTpy+QKF2oqZXUOOqzHl6p0PTMTvITePjq1QFXlsQCv5Ft4dVoNKuc0HmLDNZ0eoClLRij+Invs5ban7e5L44Hw3f1jlIozl/A8QUk3zshNmx3Akkskgpo4GxR+FWR9/82ZdrHuBN3h+Ewfql
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2026 12:26:32.8056
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9858e552-98d7-4709-4db3-08ded9c77b9b
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR06MB8823
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_052640_305048_77EEE330 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The ADMA2 table builder always emitted a 64 KiB chunk as a
    length-0 descriptor (the 16-bit length field encodes 65536 as 0) and terminated
    the table with a separate NOP-END descriptor. Some controller [...] 
 
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
X-Rspamd-Queue-Id: E65562026DC
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
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c20f::7:received];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: p47ijpj596u1mftjc6d9ra5gs36qwwtr

The ADMA2 table builder always emitted a 64 KiB chunk as a length-0 descriptor
(the 16-bit length field encodes 65536 as 0) and terminated the table with a
separate NOP-END descriptor. Some controllers mishandle these forms; Linux
gates the workarounds behind SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC (cap the
length below 64 KiB so it is never 0) and SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC
(mark END on the last transfer descriptor instead of a trailing NOP-END).

Add both quirks to the shared SDHCI layer and honor them in the table builder.
Controllers that set neither keep the previous behaviour exactly, so this is a
no-op for everyone until a host driver opts in.

Assisted-by: Claude Opus 4.8 (1M context) <noreply@anthropic.com>
Assisted-by: GitHub Copilot CLI (gpt-5.5)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---

Notes:
    v2:
    - No functional change; rebased on next.

 drivers/mci/sdhci.c | 35 ++++++++++++++++++++++++-----------
 drivers/mci/sdhci.h |  4 ++++
 2 files changed, 28 insertions(+), 11 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index ccd5d4b83c..8ed8a59342 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -646,31 +646,44 @@ static int sdhci_adma_write_desc(struct sdhci *host, void **desc,
 static int sdhci_adma_build_table(struct sdhci *host, dma_addr_t addr,
 				  unsigned int len)
 {
+	unsigned int max_len = SDHCI_ADMA2_MAX_LEN;
 	void *desc = host->adma_table;
 	int ret;
 
+	/*
+	 * Some controllers (e.g. the i.MX uSDHC) cannot handle a length-0
+	 * descriptor, which the 16-bit length field uses to encode the full
+	 * SDHCI_ADMA2_MAX_LEN. Cap the chunk just below that so the length is
+	 * never 0.
+	 */
+	if (host->quirks & SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC)
+		max_len = SDHCI_ADMA2_MAX_LEN - 4;
+
 	while (len) {
-		unsigned int chunk = min_t(unsigned int, len,
-					   SDHCI_ADMA2_MAX_LEN);
+		unsigned int chunk = min_t(unsigned int, len, max_len);
+		unsigned int attr = ADMA2_TRAN_VALID;
 
+		len -= chunk;
 		/*
-		 * The length field is 16-bit; a length of 0 encodes
-		 * SDHCI_ADMA2_MAX_LEN bytes per the SD Host Controller
-		 * specification.
+		 * Controllers that ignore the END attribute in a trailing NOP
+		 * descriptor want END on the last transfer descriptor instead
+		 * (SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC).
 		 */
-		ret = sdhci_adma_write_desc(host, &desc, addr, chunk & 0xffff,
-					    ADMA2_TRAN_VALID);
+		if (!len && (host->quirks & SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC))
+			attr |= ADMA2_END;
+
+		ret = sdhci_adma_write_desc(host, &desc, addr, chunk & 0xffff, attr);
 		if (ret)
 			return ret;
 
 		addr += chunk;
-		len -= chunk;
 	}
 
-	/* Append a terminating descriptor (nop, end, valid). */
-	ret = sdhci_adma_write_desc(host, &desc, 0, 0, ADMA2_NOP_END_VALID);
+	if (host->quirks & SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC)
+		return 0;
 
-	return ret;
+	/* Append a terminating descriptor (nop, end, valid). */
+	return sdhci_adma_write_desc(host, &desc, 0, 0, ADMA2_NOP_END_VALID);
 }
 
 void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index a3b8e65b55..2a7f9be575 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -341,6 +341,10 @@ struct sdhci {
 	bool v4_mode;		/* Host Version 4 Enable */
 
 	unsigned int quirks;
+/* Controller ignores the END attribute in a NOP ADMA2 descriptor */
+#define SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC	BIT(6)
+/* Controller cannot handle a length-0 (== 64 KiB) ADMA2 descriptor */
+#define SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC	BIT(11)
 #define SDHCI_QUIRK_MISSING_CAPS		BIT(27)
 	unsigned int quirks2;
 /* The system physically doesn't support 1.8v, even if the host does */
-- 
2.43.0



