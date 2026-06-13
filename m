Delivery-date: Sat, 13 Jun 2026 07:13:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wYGga-005JFK-37
	for lore@lore.pengutronix.de;
	Sat, 13 Jun 2026 07:13:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wYGgW-00044d-7l
	for lore@pengutronix.de; Sat, 13 Jun 2026 07:13:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GFHrjFEYwF7yMWZRkMG+ynhgO25sXDlFFoqupe2OVE0=; b=CxkVT24Mo/c/tBN3CwE43cB3Pt
	gY+W7GFfjrY5H1p67T84QnZcjz/smDdf/V9igULDIKahBB0daUKYQojdrOAr9NLGcnjuDaGkJ+Etv
	DM+qMBg2SN6MUuls69p19jZ1Usj6GGMNIFZcJezum0nXh1xRKmh58aM3vXiDq68PIeRQU5bG5Gjvm
	QuyFeHjxKzxbJzvD3IekbpcHg0Wq+QnVBH59RxP3eo0LVrn10Gqs66Q/1lr5QSYhfURXSxhNT5PIY
	HuprzI/TNmt3Kk5+59w2WyeH8N1MfW/NK1KHXthcgxc0yU2nkb4FkXr6GTmvqxxYOoSWGVIm8Vq7E
	oMPLiraA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYGff-0000000BxcX-2pQ4;
	Sat, 13 Jun 2026 05:12:39 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYGfc-0000000Bxbv-10Ai
	for barebox@lists.infradead.org;
	Sat, 13 Jun 2026 05:12:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aNtCMvHWq5LoGNmdaGJiY8zcmDZXNS0RcxUkM6VVXsBQ2T1qDuSwLWy8zfxiidAQzrzuzCb6Y5n8/NpWULPWFeuLDUl3Z+8B8jX7/GPSK7eXVqw8hm7GqEE0QwHU8ilO4Dph7TNHHAk3RswPwIRLdB85Vuw5g0nGoemgvN/04XScFeg104rogtdjVKsstLdcoVbVHaJQ9GFQrIDPtaDoL/a6n/N2vLGsv86YrwySr9Eo1LYxykA9A8Fzn0ACpJjYZB6oDoRhW3Hf0DsTeh0N8/F4kl+HLfUQYIaEbcUtx34FvOip7D3N8KA0Avtd7aWU1WO7dqpQ/1CdfQNFWXhF0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GFHrjFEYwF7yMWZRkMG+ynhgO25sXDlFFoqupe2OVE0=;
 b=BvU89N7gAlvTNP7tWj5MoNnDb0s/7l+uuGTEm/sWBlV5mTHtIBJqD1dYeO2HSdbCBCVvbkK36Rt8K556opLyAc8shxaPluwmlE291DgkTi7wRAHhb+bC9zUzrdGqN3TGW2Ipc+TBNwNe52t7IBQjdCZkp7dNCKWRXTHDIFwWFSJWygPLv+ZbbAaDeLsywbNbPJ8cfaYMWYieWh1HB0RpdsVsJajVR6WwrQCDMU2r6ZEjpyz/ifunQF+ZQuXtZ/V4QHlsd/rIZPb3wAqlhte0LaqwBVqbOuh5Urr1cYQwtJynAMtgRH2a7Czf3jE2kayaZqgA160DDlEZlKMa9EjUYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GFHrjFEYwF7yMWZRkMG+ynhgO25sXDlFFoqupe2OVE0=;
 b=FxtMkExUJpEKxv1Bkp73P4HQSiqbegLfDdHVud1OUpjYAJPdBs9r908iQYW5GX4e13oeoBpRsYjOX861TnLnFdXgy13uLemO+/1TyrlCPZZS65tElYMaqxGqHyUSaxIyK4M5dE7J0IBf+ZU7rvOFW1rbT/YFgOjTtqtMGhvE8Dc=
Received: from DB7PR05CA0033.eurprd05.prod.outlook.com (2603:10a6:10:36::46)
 by DU2PR06MB8383.eurprd06.prod.outlook.com (2603:10a6:10:2f2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.15; Sat, 13 Jun
 2026 05:12:26 +0000
Received: from DB1PEPF000509FF.eurprd03.prod.outlook.com
 (2603:10a6:10:36:cafe::a5) by DB7PR05CA0033.outlook.office365.com
 (2603:10a6:10:36::46) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.113.15 via Frontend Transport; Sat,
 13 Jun 2026 05:12:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF000509FF.mail.protection.outlook.com (10.167.242.41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.7 via Frontend Transport; Sat, 13 Jun 2026 05:12:26 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 13 Jun 2026 07:12:26 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Sat, 13 Jun 2026 05:12:24 +0000
Message-ID: <20260613051225.3778935-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 13 Jun 2026 05:12:26.0190 (UTC) FILETIME=[396FD6E0:01DCFAF3]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509FF:EE_|DU2PR06MB8383:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e1fd83e-3246-4aac-cb4f-08dec90a5c18
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|82310400026|36860700016|23010399003|376014|18002099003|56012099006|3023799007|6133799003|11063799006|5023799004;
X-Microsoft-Antispam-Message-Info: +sMsLelAjedcwPFtRJrWI7Gc2TWYiwpPQr+cFnwo87tIdMbyk5EYSVZgdufCoZboBhv+Uk967KcJfvmkoOy1yiZfrzYsIZJSBcFGOIgqkLL68ecF2Vm2opF7ma9nekaWcq9uR/cPKB4bBciH8NwI88GzBypqgh7qsU2QrEFZOC4PKvh/OGQuLVfbNz07libLwYAJbAUJu34JegAydZQkivruUwC7SEaM+QzjlMqifX2IP1nEG1ikacd/OgeOPM4dCyp4ZUZRk/+yrqV9YZK0nQ2i6vpnwC0i8p+VFp8zaQlde8IQxWaUYf1e3SZkbIOS5PJvYGlrOgYCXnULXxkaLXKEvh2zB86JGoHI8ppqwvWv30FNrDuxHk0m7kWDVZack9va9uNjTLNVkBRwmuSvMMEn7efqaB9Z4ql0nx+zYcYBhft383+jVcT5PpGuZJGwbVD1y6WlRTt0ySK13nYxZOxyXND2lhdDtC2HFeespZ0AhB4cTs0xouzsC8uSyF7JZl+Pb8HvKbBjAoG/ZxH8e/j3Cea0HiwS55hexTeh35zFSa1KreH62x0TVZrnXgdUkqDad/LvDfkxm8qnZr7ePnASOzx1gN2/68+sY5dGaQA5CeP/MdGDZT89FDq0dV3JrkwGnonKwEtOmd7QZzH2P7ExmyHZ6W80TGGPqO0PmXH3u+6sZvPI8DnRRPXOQ/aTNhjIhIfDGalyXIVNEbgSIgI7n6hUuwarnbQOoq80/Cc=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700016)(23010399003)(376014)(18002099003)(56012099006)(3023799007)(6133799003)(11063799006)(5023799004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: GIuxjBSjOoN30Dfp7dl2+ANVIvN1E00fVSLOtf9ERKMhJsg2IjYJHrxxfr5M95gafmRfZKjqxeiTt6C841wa2epayc/O32YoNlaBrwGpGZG2mBdg7FOt98B5gpKSz4D6VWwLOcQlhFXRTQl7F+eS42zB3WmCtIajljiP3EqLLS1gkQUDYNH9812jJQD7g4gSrIldDGn3opBc2eLugdhaRF7P8Pe8CD2nzFORl9wbmgzbICn78clAQkSDRiB1IzIkQHku+7Dk53HPdp6L+wJ6cAmILJ995olmUB5qogD1nTuxWw3klcrdVRQrL4EghsW7dxKXlLJEU4gG/AOSq1CznzuWYcEV2V2d6xa784lOz0iRJsLmaL0a8ZiWMp9KrIJA16fb9aP5VqNDbNUggCHs842+f0VKLaZ8QS27MuWFGkrLpWXd2vrR904h4ZbiH8XE
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2026 05:12:26.4534
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e1fd83e-3246-4aac-cb4f-08dec90a5c18
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509FF.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR06MB8383
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_221236_463369_67AD1EA0 
X-CRM114-Status: GOOD (  12.26  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] lib: decompress_unlz4: drop redundant -4 in wrapper call to unlz4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

decompress_unlz4() passes in_len - 4 to unlz4(), as if the caller had
already stripped the LZ4 legacy frame magic from the buffer. But unlz4()
reads the magic itself from buf[0..3] and, in the buffer-input path,
explicitly accounts for it via:

	if (!fill) {
		inp += 4;
		size -= 4;
	}

So the magic is subtracted twice from the running size counter. After
the last chunk is consumed, the counter underflows to -4 instead of 0,
which trips the "data corrupted" check at the end of the chunk loop:

	if (!fill) {
		size -= chunksize;
		if (size == 0)
			break;
		else if (size < 0) {
			error("data corrupted");
			goto exit_2;
		}
		inp += chunksize;
	}

The bug is benign in practice — by the time the size check fires, all
chunks have already been successfully decompressed and flushed, and ret
holds the 0 returned by the last lz4_decompress_unknownoutputsize()
call. unlz4() returns 0 and the caller treats the operation as
successful, but a spurious "data corrupted" line is printed on every
LZ4 decompression. With pr_fmt set by image-fit.c, FIT-image kernel
boots show:

	ERROR: FIT: data corrupted

right between the configuration line and the cmdline-append line.

Pass in_len through unchanged. unlz4() handles the magic itself in both
the input and fill paths.

Fill-mode callers (e.g. uncompress_fd_to_fd) are unaffected: they pass
in_len=0, and unlz4() overwrites the initial size on the first fill()
call.

Assisted-by: Claude:claude-opus-4-7
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 lib/decompress_unlz4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/decompress_unlz4.c b/lib/decompress_unlz4.c
index 2bb30e71bb..17bb4e5de7 100644
--- a/lib/decompress_unlz4.c
+++ b/lib/decompress_unlz4.c
@@ -209,6 +209,6 @@ STATIC int decompress_unlz4(unsigned char *buf, long in_len,
 			      void(*error)(char *x)
 	)
 {
-	return unlz4(buf, in_len - 4, fill, flush, output, posp, error);
+	return unlz4(buf, in_len, fill, flush, output, posp, error);
 }
 #define decompress decompress_unlz4

base-commit: 6c70fb327d486376c1f2e37dfff2212cb9eebb1b
-- 
2.43.0



