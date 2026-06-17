Delivery-date: Wed, 17 Jun 2026 12:36:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZndH-006sgG-2u
	for lore@lore.pengutronix.de;
	Wed, 17 Jun 2026 12:36:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZndG-0000LA-W1
	for lore@pengutronix.de; Wed, 17 Jun 2026 12:36:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tf00y45nurKfedzAbIOrzrPpBZ2VjESTWrPsBYbMj9A=; b=uqhv/tiODq+hqG1orgVirVTvP9
	7Oe4gRUmynQ4FBffCIzFnYeTXCoww8g7cwPvFzW6QpqDw+BdS2m0yoUjGynxXy33vTzR+nu1tGobg
	w7ZYDhYWojSK8oLKCQhXBaYZ80iNEYI0oWGLm7xlJsr+aLcLInJq7msDMdcEKEOtyokLk2ZnF4VSb
	fn+O/pzWDj7KJ+vZkFSNe2ssIXDF90+ssRlrq8/Kj03tPGlVLvA6f3J9P8r6yAmhZKXluVOyJCEcf
	lpywDuLn2oi78N4KV6b+5NIB2M+9FQB5r8N9Tv0BjpwG7DjVHFxRuft8Rb8Uq9FFS4vwNp9/S+e6k
	N8xf01lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZnbr-0000000H4yd-2mcY;
	Wed, 17 Jun 2026 10:35:03 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZnbn-0000000H4sX-3amc
	for barebox@lists.infradead.org;
	Wed, 17 Jun 2026 10:35:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n1p3b2xbQip44/s2AWqHsOEuO5/5hCSu8u754TnxQW0SGtQI11BrP73Z6tKv0us4x2v1KiR7TUcH5gDzaMM7u1Rvbarf/umMaJefW5q+C0gFPDGbLL7RgFGcw7B3jZ78Thu10cgqjdOzOqjrGJ1S2VLZXrsdjqHIQI0dUCkGYL4VJbZGhwhvHLdIF842xRa18EnJRomjr1cmfVbyEdws+UCJuslurJRZweyOJlf5OynOY874yzjTtnxjIVdfEfQhC8Wi1h8LUm5pmZpviM1M2bKA9qHHDgYrH3oh6PZXfvb9g99tReCcvulmyb297qu2GckeqnhbfXgXdVliOwSZiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tf00y45nurKfedzAbIOrzrPpBZ2VjESTWrPsBYbMj9A=;
 b=MMWbBoo5GOeIJRIBslacPqLDRi4AtZnDOe40P/swo7SqHvQwF5B7B7trJQ8QrtHU2iKAn7w15l6sdxEkxtbmEzVPQWl+CSaSDur9JeeJGMoYBVm1fRbxlBw3KaRMTkLB0XWXPeOUc02fawCKLeCM/0pJjzwLvsBk0cFyFYjkBj9dssKHnqk+7jr29xN6/GrvuhyRqz/m1tx8/5G3VHG0pmU9ujla9fp+Gdh98+dTTrK412GpIPYYrZJo2IwxwaaoiCFV4i6FYh72hg77Yxjzf6OS2tG7Kte8cPNZjH60U36dlTAOHMKM9HIjy1pq8BH+RXn4lIm+lV67wCprNvbnEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tf00y45nurKfedzAbIOrzrPpBZ2VjESTWrPsBYbMj9A=;
 b=UN4knHP0SutLIeMuyX+Dm90kCdqfGvnghl7KpXo9ouAPwGFNMq0GFPaJ1Gglj2hBWMt1SO288cg9G+upXcgB/OOqb02e/wOdu8JbrSbQBXcBMdTX7Sl8p0uCuZRqpsAQ8d9our7xQ714BcK93NJSP2PSFykSVjhxcHHzpwhltmg=
Received: from DU2PR04CA0298.eurprd04.prod.outlook.com (2603:10a6:10:28c::33)
 by DB9PR06MB8511.eurprd06.prod.outlook.com (2603:10a6:10:36d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Wed, 17 Jun
 2026 10:34:51 +0000
Received: from DU2PEPF0001E9BF.eurprd03.prod.outlook.com
 (2603:10a6:10:28c:cafe::69) by DU2PR04CA0298.outlook.office365.com
 (2603:10a6:10:28c::33) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.139.11 via Frontend Transport; Wed,
 17 Jun 2026 10:34:51 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DU2PEPF0001E9BF.mail.protection.outlook.com (10.167.8.68) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.7 via Frontend Transport; Wed, 17 Jun 2026 10:34:51 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Wed, 17 Jun 2026 12:34:50 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Wed, 17 Jun 2026 10:34:48 +0000
Message-ID: <20260617103448.1563040-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260617103448.1563040-1-johannes.schneider@leica-geosystems.com>
References: <20260617103448.1563040-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 17 Jun 2026 10:34:50.0115 (UTC) FILETIME=[ECF78D30:01DCFE44]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PEPF0001E9BF:EE_|DB9PR06MB8511:EE_
X-MS-Office365-Filtering-Correlation-Id: fd7ac894-460e-460e-668a-08decc5c1028
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|376014|82310400026|23010399003|1800799024|56012099006|11063799006|22082099003|18002099003|3023799007;
X-Microsoft-Antispam-Message-Info: 9k6CJPQrFPVL0qZ/D4Nvj3sUbOm3LLbL6yLEeNDJwv39Ov2hjrzhO+2LDRqpes4VMlJ+pqa3uyuPOuPOuJtMno57BOiFF9wgv3bz64D1tpZj0yPI8WKhOhVwcPGkTNhQpONLUnp3qD+gRw8PGGNiBSqvbqNKjDzmalfieHMfOtKcGlP/Kw3+TlEmdNF7PUk8DIam2vycS2+Xs26glAi6T6TxwSbswFWGb3/K8qfhPBwscSd3vKvNYGfXtlRwYr5H7IMlrlynLWIrwhezTTDsXan7jGJ91oAOTq4mCtnuZ8sDYLqUBAX1Df4dMebWaqvuuwNSupuuKJ7CzmJKsgej++QajIFGPcdcoZP3+gZhGYkY7D5iyOSCsHFuLTXKIcwA/lkj5s7EoN4rQgPbONsGJI7jtykP2euKfSKPUnUw6+5M7bDDSPGhi2GOeDdXVeQDcXprh0KMeRG9I8Mhea6oLAIFZ2S1Jgcf4TDsv4aQGqRL7wvglZ+c1pDVOLoEf/k1Ee+XZRntqZ5EWORWHnUCA5nwtlyIEqO6GY5H6yUBLMekXn+k3k4lmStFj87FZO8yk5Ro/sYRCymp3hlT8cg2MkIIFQ/IoiruAkTpVPO8IYzIyOTWQx05SMI6LLww7n55EDy3tNCtMbru8c4QpPALL3UQwks6abhAxQSEb3wgL5u2okuF9dwKSkGmgem6DMuwto5BS+W4FQPN/fZscNEuxVI0D5TSOBArEsmoKU0dQ30=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(376014)(82310400026)(23010399003)(1800799024)(56012099006)(11063799006)(22082099003)(18002099003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 9vdczoGzMPyyaPEPmOvsMoK1WcOhbXS8K9xYSNidPpKOcQtD16+Ps/Gq4yMBaQ5uo9i672KfLsmAC0LikKzyryF1bqmL/1K0MUo/yq+WS/lKxqarn+psJ2qxh4Dmlc03zENV/dE0HYEO92o5fqL5s5DgQW3Hv1scLz49vviggzWcc3rd/iCUyk8xSbQHK07N52qysIcn/wveILP0P4ftE9x6jx1MtNgjTEMC0QoUxhSpHP0XfrQtXqi5EoJPBHqDYKnHjKMDRjAChNHwywIm3yYXTEMGAf5mEoJ3Wc/mtMlAk91V2kg5XMHC2lhRhtWpZHvYWNKcdx/Mv7Sg5Bvmc54D4bk4hnu0z2i0b0Dq0pXWSiTHwQR5o2M3h3ZLShhV6i5zZD+05ps3knTSLXYbbzO3MsbhMynmVjWEY6PU7QJKm0lYkD/Ii0WbVbVbvfVn
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2026 10:34:51.2694
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fd7ac894-460e-460e-668a-08decc5c1028
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DU2PEPF0001E9BF.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR06MB8511
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_033459_973803_1E0840CC 
X-CRM114-Status: GOOD (  10.16  )
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
Subject: [PATCH v1 2/2] commands: mmc_extcsd: fix enhanced-area / GPP size display arithmetic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Per JEDEC eMMC 5.1 (JESD84-B51, February 2015), the displayed byte
size for the enhanced user data area and for each general-purpose
partition is the product of the SIZE_MULT bytes, the write-protect
group size, the erase group size, and 512 KiB:

  §7.4.90 ENH_SIZE_MULT [142:140] (p. 219):
    Enhanced User Data Area x Size =
       (ENH_SIZE_MULT_2 * 2^16 + ENH_SIZE_MULT_1 * 2^8
        + ENH_SIZE_MULT_0 * 2^0)
       * HC_WP_GRP_SIZE * HC_ERASE_GRP_SIZE * 512 kBytes

  §7.4.89 GP_SIZE_MULT_GP0..GP3 [154:143] (p. 218):
    General_Purpose_Partition_X Size =
       (GP_SIZE_MULT_X_2 * 2^16 + GP_SIZE_MULT_X_1 * 2^8
        + GP_SIZE_MULT_X_0 * 2^0)
       * HC_WP_GRP_SIZE * HC_ERASE_GRP_SIZE * 512 kBytes

The displayed-size code in mmc_extcsd.c for ENH_SIZE_MULT and for
all four GP_SIZE_MULT[0..3] cases instead *added* HC_WP_GRP_SIZE
and HC_ERASE_GRP_SIZE before multiplying by the SIZE_MULT and
SZ_512K factors, producing nonsensical values. The neighbouring
MAX_ENH_SIZE_MULT case already uses the correct multiplication.
Bring the five buggy cases in line.

Assisted-by: Claude:claude-opus-4-7
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 commands/mmc_extcsd.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
index e7b0fd82ee..b898bd8515 100644
--- a/commands/mmc_extcsd.c
+++ b/commands/mmc_extcsd.c
@@ -1342,7 +1342,7 @@ static int print_field(u8 *reg, int index)
 
 	case EXT_CSD_ENH_SIZE_MULT:
 		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
-		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
+		tmp = tmp * get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
 		tmp64 *= tmp;
 		tmp64 *= SZ_512K;
 		printf("\tEnhanced User Data Area %i Size: %llu B\n",
@@ -1351,7 +1351,7 @@ static int print_field(u8 *reg, int index)
 
 	case EXT_CSD_GP_SIZE_MULT3:
 		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
-		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
+		tmp = tmp * get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
 		tmp64 *= tmp;
 		tmp64 *= SZ_512K;
 		printf("\tGeneral_Purpose_Partition_3 Size: %llu B\n", tmp64);
@@ -1359,7 +1359,7 @@ static int print_field(u8 *reg, int index)
 
 	case EXT_CSD_GP_SIZE_MULT2:
 		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
-		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
+		tmp = tmp * get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
 		tmp64 *= tmp;
 		tmp64 *= SZ_512K;
 		printf("\tGeneral_Purpose_Partition_2 Size: %llu B\n", tmp64);
@@ -1367,7 +1367,7 @@ static int print_field(u8 *reg, int index)
 
 	case EXT_CSD_GP_SIZE_MULT1:
 		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
-		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
+		tmp = tmp * get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
 		tmp64 *= tmp;
 		tmp64 *= SZ_512K;
 		printf("\tGeneral_Purpose_Partition_1 Size: %llu B\n", tmp64);
@@ -1375,7 +1375,7 @@ static int print_field(u8 *reg, int index)
 
 	case EXT_CSD_GP_SIZE_MULT0:
 		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
-		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
+		tmp = tmp * get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
 		tmp64 *= tmp;
 		tmp64 *= SZ_512K;
 		printf("\tGeneral_Purpose_Partition_0 Size: %llu B\n", tmp64);
-- 
2.43.0



