Delivery-date: Wed, 17 Jun 2026 23:37:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZxx0-0072dV-1G
	for lore@lore.pengutronix.de;
	Wed, 17 Jun 2026 23:37:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZxwz-0004CY-4A
	for lore@pengutronix.de; Wed, 17 Jun 2026 23:37:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jVvORlcyuV36hZJljlKVYBfbwHG+csi2TqVXbfIAP+s=; b=sd6qQ+KClBiBVcXSxJsR1ZYIJK
	lRqZtn5A3pqzD4RHjzXhJ0/uBh0619mKHK2992fGmj9SSQwnAcBWTA+S935DNcN+cNhGjMRd9tOG6
	s5sCAcCwwQOUR5bAwTaD7cqTU8mK5qRflku3Ql5dMjnku0fc1XiarbNuA3/19cuWV5+elrqfu/9DA
	9/7yygt4F7TQYFdV8+IZ8t+szQZA2Myj71Z98K6WB5OmrP4IDKpM5nbs4svbfqWiH5KxJxrCCCr6P
	omaBL9zfxI7ftMLkBtdrW8KZBnDyt6HPHGzkUw6cY4S4AbuqnNnE3Fhj7mjoG2yFyGzVavq8DlXXP
	NHtUKDIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZxvZ-00000000M8E-0ztj;
	Wed, 17 Jun 2026 21:36:05 +0000
Received: from mail-francecentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20a::7] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZxvW-00000000M7o-0rqs
	for barebox@lists.infradead.org;
	Wed, 17 Jun 2026 21:36:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fJbcecb1ztGf8IVl33uph+oimDuzbx4JOKbEQ+BmBnvhd6k6iQBYzcKAaH35888dW88quaeVMtlD6S256v65kXazUSar2PqCYywiMCOoBck9LcDYjXFDQ17FvUTssIeg1lfzNrCWQlK4Ot1+zYPPMc37/AKLIpp1y/2lmNosldYtCoGFH3o3tb9FV5TyGZfBWzndj1rq66tQGACy46+mzQgI0ipF+6z+VoaA6aN6oNoatTrpS2+rTzL2dWGJgQFuozp9+iirtiPYdjit+X8L9XuXzpOJkU71XOffB5lLBQ8pyNY+KEuIZijukP+pbSxZdpyGkIG81ef3NSU7kTngpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jVvORlcyuV36hZJljlKVYBfbwHG+csi2TqVXbfIAP+s=;
 b=TG9EAtgPjHQmhDcS4bEiK4fid2P1+712T9YdxK6UKZSSzjNzXZ7zKAK2wh+BNWkeE1pclYVSkw60Apep+QxrDj0aWXi2UGSlXMFJm+SOQkKN9CoPmTMA5EOL3HEDCZheNbsl4XQfIfaxe4fmkFqJG7AQ1euZAu2RYgd8/e1w9LUz4yuXUO/3FxjUwVd1A6x2qv/pMP4x+MzePx7ZpfW3FcrTzBGbovnl6bpZMLilkLu3Q3hJNPyPJdLd5WYbYFr44s1NDri1S3f8+/iAcaLf30KPO3G+M4Tt86T51qq3ahql8z3IDmS0+LzH8brTxCDReY4kbb+p2HX8j13g8RzPFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jVvORlcyuV36hZJljlKVYBfbwHG+csi2TqVXbfIAP+s=;
 b=JGzwNb98tg5VtcIoF+88BUimGZdY3RmffH4rOg3D0uTE0S8cjOypWodbQsB4WMd6zX2TUrkbWzhg16R37w1m8v3pqonYivSni5GSiQcVHAtYmTEc2rLI+wisYAqNvN1H88f2azXXbW0xN3ludd8GQ9ILWmsHQI03gs15h3c4mls=
Received: from CWXP123CA0020.GBRP123.PROD.OUTLOOK.COM (2603:10a6:401:73::32)
 by VI2PR06MB9830.eurprd06.prod.outlook.com (2603:10a6:800:298::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.13; Wed, 17 Jun
 2026 21:35:57 +0000
Received: from AMS0EPF000001B0.eurprd05.prod.outlook.com
 (2603:10a6:401:73:cafe::d1) by CWXP123CA0020.outlook.office365.com
 (2603:10a6:401:73::32) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.139.11 via Frontend Transport; Wed,
 17 Jun 2026 21:35:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AMS0EPF000001B0.mail.protection.outlook.com (10.167.16.164) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.139.8 via Frontend Transport; Wed, 17 Jun 2026 21:35:56 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Wed, 17 Jun 2026 23:35:56 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Wed, 17 Jun 2026 21:35:54 +0000
Message-ID: <20260617213554.1169678-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 17 Jun 2026 21:35:56.0224 (UTC) FILETIME=[47CF7400:01DCFEA1]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF000001B0:EE_|VI2PR06MB9830:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: a2e94f49-345c-4f66-a2d2-08deccb86a66
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|23010399003|376014|1800799024|36860700016|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: Mth4kZ4HBOAkzbgKiQ4F1/gvaEf+QR/XDj0HTZFBBcmtg+61wYidCmkPDpaXQSBkpU4dQhwyMbdMTFuVW1BNOy4VSrYbRlJCrQJuWyqesYfT8IwKfWGpgihAgE9PG0zivIQvjBvfFHXmL3p1qUmLCay0eWcQiw01hL5xbrFXfRUvBblUXj9Gk/jOoKHcPsSvR2G3e+tyZIhVytn2dXcgiaNt7S7UbkGZMJ/TY5tVXPc8Llg8RmHgEUAX2RpMUsnc3kZ3dO7wShPI9EPlHD8Da5DJ++8FjLwIV6ddv0fSUKUb04a/AaDmoKL8NZ/Ku+OzeAYvbJrwo6MuYRnVdfs6fBMclkSutAz3ZRGqmh7OhGcxjY8XMGblPWSKTntpdvZRmkuuZswK91MMiT1h/gGg5P1gEPWPT/yCRklZiTdfGs1eGOE1PL5DvxektZp0gAhYqLNXkWl5hrPsFKyJ10dnFWmqo+eQO3LUGiml1io7F/j5iADUC4oMLat0U+347xlDnqLxp+v+jCDi4hgGdmN28TGrYLyPaOlSx1/M0xvp8GwAoRIYN1hv+zlKZRaGIxZFAjF0m57Pxj5scuOgvwH37OAl3hrlptNX8bq5c2BDmmP68M1RQEGmusVoj50gt8MWIwj9KEfYKfPeddVoaQc9ZdByzPQU4YtnDOoDtVgFnHLxnqYeiDVSQJ0qk+44qdOH0StjPv3uxTU5xdKE7Xe2tpE59xGXRtBo32QYCOmZb5o=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(23010399003)(376014)(1800799024)(36860700016)(56012099006)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: w29TVOqTrAHdKKPbwnVWOVJv6QSR5N699OJtMMkAcDgQdBuPeO4j7mtn/SDN7hcKOU9vPhojvTWWk1woTvbd9M+vtWpb/rzIGlFOkVMuWqcliHdbqzy860IJtPyKgKjDFVzNSWOtJC5YbKRljledTSb3D+FI6LXmAHq14RCX5fkFCrSFzqiuTXIk30owAJm7Eig1W32qsqDBJ5ewHL00ZOiRokHtZybB24utp7EPSFv6d+ihfBraCRzhRcoykchy5S3gIJpXskZML3sHSvvXgWl+MVEqiJygrx9+tCmB8MVZ7EBfYwOjO+QaE4Ns9E3qwL2EPNFqoZT99BNHQUT+/sGiPRd2j6YMWAYUhCWf+vcYpUS9Gi+WrRMTBM52e7XiALQ4ZoRZ0J2gx4kn2LY01mmhX1uVr77gwHJ5v0ZemrAjLfHjr0Y7UA07CR8W2ZTy
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2026 21:35:56.3979
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a2e94f49-345c-4f66-a2d2-08deccb86a66
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF000001B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR06MB9830
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_143602_416252_57CE191E 
X-CRM114-Status: GOOD (  12.31  )
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
Subject: [PATCH] mci: imx-esdhc-pbl: clear stale INT_STATUS before first PBL transfer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

PBL load_bl33 on i.MX8MM takes roughly three times longer than on
i.MX8MP for what turned out to be an asymmetric code path in this
driver rather than a hardware difference. The two PBL load wrappers
shared imx_esdhc_init() but diverged on whether they issue any
command before the bulk CMD18:

  imx8mp_esdhc_load_image() goes through esdhc_bootpart_active()
  to pick a read offset, which internally issues CMD8 (SEND_EXT_CSD).
  esdhc_send_cmd() clears SDHCI_INT_STATUS as a side effect.

  imx8m_esdhc_load_image() (i.MX8MM, 8MN, 8MQ) skips that step and
  issues CMD18 directly on whatever the BootROM left behind.

Bisect on i.MX8MM, all measurements from the same hardware/board/
eMMC, three reboots each, run-to-run variance +-1 ms:

  no probe, no clear                  ~1240 ms   (original baseline)
  CMD8 (SEND_EXT_CSD) + INT_STATUS=~0  ~770 ms
  INT_STATUS=~0 only                   ~727 ms
  production INT_STATUS=~0 only         637 ms

The 90 ms gap between the last two rows is the wall-clock cost of
the diagnostic CMD8 itself; subtracting it the INT_STATUS clear
explains the entire 8MM vs 8MP gap. SDHCI_INT_STATUS=0 both before
and after the CMD18 on the slow path: no CRC, no timeout, no
end-bit error. So the slowdown is not from retries on the data
line.

Hypothesis (unproven): the BootROM completes its last transfer
with stale CMD_COMPLETE or XFER_COMPLETE bits in INT_STATUS, and
the controller's command FSM races against those on the next
CMD18. A W1C write to the register short-circuits the race.

Linux's mmc-core does a full eMMC re-init from scratch (CMD0 +
reset + tune) after PBL, so steady-state HS400ES throughput is
unaffected.

Place the clear in the shared imx_esdhc_init() right after
esdhc_populate_sdhci() so the i.MX8MM, 8MN, and 8MQ paths all
pick it up. SDHCI_INT_STATUS is W1C, so on chips where no bits
were set (i.MX6, i.MX7, i.MX8MP after esdhc_bootpart_active)
the write is a no-op -- harmless.

Measured on two i.MX8M boards with SanDisk industrial eMMC
(manfid 0x9e, oemid 0x0100):

  i.MX8MM + IM032G (32 GiB):
                                BEFORE       AFTER       delta
    PBL load_bl33               1240 ms      637 ms      -603 ms (-49%)
    Linux read (64 MiB direct)   244 MB/s    254 MB/s    (noise)
  i.MX8MP + IM128G (128 GiB):
    PBL load_bl33                366 ms      321 ms       -45 ms (-12%)
    Linux read (64 MiB direct)   173 MB/s    182 MB/s    (noise)

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 drivers/mci/imx-esdhc-pbl.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 1040a0df..5fb89aa4 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -129,6 +129,9 @@ static void imx_esdhc_init(struct fsl_esdhc_host *host,
 	host->socdata = data;
 	esdhc_populate_sdhci(host);
 
+	/* Discard any interrupt bits the BootROM left set. */
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0u);
+
 	sdhci_write32(&host->sdhci, IMX_SDHCI_WML,
 		      FIELD_PREP(WML_WR_BRST_LEN, 16)         |
 		      FIELD_PREP(WML_WR_WML_MASK, SECTOR_WML) |
-- 
2.43.0



