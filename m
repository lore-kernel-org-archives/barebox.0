Delivery-date: Wed, 17 Jun 2026 14:11:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZp7Y-006tym-0d
	for lore@lore.pengutronix.de;
	Wed, 17 Jun 2026 14:11:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZp7X-0004e0-3S
	for lore@pengutronix.de; Wed, 17 Jun 2026 14:11:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QcbkLcNB5hlBJNihQLMEQsozq2/On/JJ2Mp2blziytY=; b=EPiIrixuP0hnJLUbxsgqfimtQm
	9jLNkHDwxvx2kW8prKTtTlGF710s8yzhnq5kTWJt9ZgCWDL9L3gp5wVhwug2VPXePt7+2VmEKoe6w
	HRJM7x1TAQVokcJH8JtvJXlNba85Bc8vvV5fBcbYWT5dbG+/7zwG0saSJgI74IN26zhaPsV5psMQK
	UEOruXGjcz7Eoy/jqmhi7qREGuwhi/g6bNOTs5ex8tA7Dlubt3nkneYkakqrayByTt+21Vert+7T5
	cdOBo3iTV6eiCUE6hg0ptS+Q6BsAIZrCMexWgC77axMA05YnQeXDRJGnZyc+wWlayVIyyYGyC90bK
	9nR0uutA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZnbr-0000000H4yD-1rYU;
	Wed, 17 Jun 2026 10:35:03 +0000
Received: from mail-francecentralazon11013025.outbound.protection.outlook.com ([40.107.162.25] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZnbn-0000000H4s7-3g52
	for barebox@lists.infradead.org;
	Wed, 17 Jun 2026 10:35:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KZnkKGs5TyAf6boEATAuJcQb2Moo2uOOY7D9pkSvcarwSpEbPnrVd1SG8TjKwWpF9NW6/NIIH7Hpa2bjT1Zj33N0obPVZMS1WZRdJNthgwIRAiOoynuNYRhEn7XMYmH6xIgFzK8uGkhPJZgd+UxNlrUOOjh5ubn+L+YRl1NKcR8GXtmRpeQG+yWL7grDXMN4IlGrQ2CYMScnYT+jjSzH9aruz1aX9VwzJuxrc9JAbYM5RDnyws0VDJBwCgj+E8M3Ki9xHru7Rbc0/Q3Qzyz7a0uQOj17Sg0uNyaS0DTJg4+qz81DZ4p21rUT5VGHQ1g5vzAaQXavnvIlYhHETEe1bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QcbkLcNB5hlBJNihQLMEQsozq2/On/JJ2Mp2blziytY=;
 b=HUVF9NBVgogjKgYvEyMCcXO/ZDwt5H6v+RqCyBD7rFPpLQAmQjeIhcFVNxj/U7WxqJm6TkMseK0K13re88PWnDn5WRvAwxpb1WE28eZsnlklCcuqShSbR7uGvmI2gSqXhDhX0aun1kKMotlzH8jezr3DMEwGV2jPG+UHMYJlyxbwseBY2PgFx3UP9Qy3FbtkWRX8pSUzS1sqISpZwo1V7JNogJk3MfNKsqUgMCVNP+h+u1ZfrmpJ+hT+U0LoJjcm9BEfhNe1jBKn6bORHVD5H97k6YQzw2jqff51ZH5c+C6CwzhIAdxIP9DuzGMnpEOTqyb+2/+Nc0UhNw+v2Vz6yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QcbkLcNB5hlBJNihQLMEQsozq2/On/JJ2Mp2blziytY=;
 b=PubsXqZui7liq2d7SsDv91+yXCF99TWuHBXkbWwYMqARpzW7ClISJakIJFGCW+i7KdLvpntueXQCzesbRzX/2igIQDW0Uslork15d+5yEjw7a1ymTmB6gyq1CMWxKouv+gGcFrPoJiyrbN3E/WjHlD5oxu59TZlJq2H4KhlL2UA=
Received: from DU2PR04CA0287.eurprd04.prod.outlook.com (2603:10a6:10:28c::22)
 by VI0PR06MB9541.eurprd06.prod.outlook.com (2603:10a6:800:24e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Wed, 17 Jun
 2026 10:34:50 +0000
Received: from DU2PEPF0001E9BF.eurprd03.prod.outlook.com
 (2603:10a6:10:28c:cafe::8e) by DU2PR04CA0287.outlook.office365.com
 (2603:10a6:10:28c::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.139.11 via Frontend Transport; Wed,
 17 Jun 2026 10:34:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DU2PEPF0001E9BF.mail.protection.outlook.com (10.167.8.68) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.7 via Frontend Transport; Wed, 17 Jun 2026 10:34:50 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Wed, 17 Jun 2026 12:34:50 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Wed, 17 Jun 2026 10:34:47 +0000
Message-ID: <20260617103448.1563040-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 17 Jun 2026 10:34:50.0084 (UTC) FILETIME=[ECF2D240:01DCFE44]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PEPF0001E9BF:EE_|VI0PR06MB9541:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 1aadd9e5-dbbb-47fe-4582-08decc5c0f9e
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|376014|1800799024|82310400026|36860700016|11063799006|56012099006|18002099003|3023799007;
X-Microsoft-Antispam-Message-Info: LmZXbjxpMeyRF1C7ngzAyLCuOJpABgKZLPJZOotOlRsG4qP39FtD0JPussnjBssaUjh8qy9DTjydi+DedP2/Guz71+YKHO341+ZKVthGgviYDbZDTpXlqnE2t+Bw/QZL4IFodJyujz6Ycjp5ngAYFrjubpN+9sfDOPnJ14yLfSDuRE6zeZnShYrjrgPhXglwUUOXJkzbPmVA9vcaHCjx+yv5uH2hSjXQCOZBqnN5AbJqIKvJj2Bbr/LzvMCK4hnc4KoEcPQCP3kXnCcWlsN8pM3i05knUAxwSEOQg3EfEy9CBIXT+3hFXk/9v3226iCqnqRlLmZswW3ugw2gbVMf2Xwo2wtN3RTVosObHGvD1GTtElCllVzRVVK6XsIfX0XY7COLbuW5Wx+gHXS2SDzqx5YsSgRoQ7ngqvubL5HHFzjO8m+WcLQ9ddn7r3GmBLMxdntxpZ+Mosd/C6jC4x017GdS+iiJ56u3Tc/796BJmJkVBSxNEJE8MpZpqWJNjTopYxQFXzq7uBNMLj830HuE3gJEs8J/VSM4UgNCJ4O+seyR0xdF5udR7912wgHxw/0q5uHvE9KXARXrnWiEyfwf9OFgxtH1GyXYBT3YK4mlzyeKem7yZGnIAtk6ROGic0GJjDa3TH3//94z+zp/FrpYq8MgCvZ3UVSC4TIbzQCj0cEzmbt4PlI27BTjagx/SlAqGlD2YvedZCG1MAeOc2K3GMERUpgDG5rbXESmOJqjvjA=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(23010399003)(376014)(1800799024)(82310400026)(36860700016)(11063799006)(56012099006)(18002099003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: R5ZYUglK5KBXq/Lf0rKbdlXjHCYS21s3JOpwbn1LBUubvZq5h9iptCGT9nUcg5Bw1KkVYnpy54pXkSnYCI9yZoTEHXlTHtnIZklGbH/oaG2pEHwPOu/sySdqDeoTIm/C/6TvkXI4YQpLArJW7tU8P2RbFQ3sN8GVfM9At0DLuUAcy6E4P34q945L+bWEpAs+QGF8VFmvVG7MWrGreU3K+X0yiEZKJh7QtqWhTkV+gD4HoNgk+dqVPpPXQQPXzf0N537e0AisneMlqlUS8+Mk5YQGhXd+zRuYzJQcjZDfK+HhbMxgYCnqazLcCgQ3py7Ro4nwIoHmEDKUYeOYkDNnxeL7GUNtOf7n/qZdOz3uSPdt1ywqyMJz60ZxIWXlCVLxO+pil458bFEP38L2XnScbXCau/DVfhMmTRQt6C0cvfISqQk0tnn6rs1dNEuHIlxe
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2026 10:34:50.3636
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aadd9e5-dbbb-47fe-4582-08decc5c0f9e
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DU2PEPF0001E9BF.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR06MB9541
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_033459_969824_60B46AF9 
X-CRM114-Status: GOOD (  19.62  )
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
Subject: [PATCH v1 1/2] commands: mmc: add mmc-utils compatible enh_area set subcommand
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Today "mmc enh_area /dev/mmcX" can only size the enhanced user data
area to the device-reported maximum (MAX_ENH_SIZE_MULT). For systems
that want a high-reliability prefix covering bootloader and system
images but keep the trailing user-data partition in default MLC/TLC
mode, an explicit size is required.

Extend the command with an "set" subcommand matching the Linux
mmc-utils ergonomics:

  mmc enh_area set [-c] <start_KiB> <length_KiB> /dev/mmcX

The length is rounded up to the device's enhanced-area unit
(HC_WP_GRP_SIZE * HC_ERASE_GRP_SIZE * 512 KiB) so a target region
is always fully covered, and validated against MAX_ENH_SIZE_MULT
before any EXT_CSD write. The actual provisioned size is printed.

The legacy "mmc enh_area [-c] /dev/mmcX" form keeps its existing
"fill the whole user area" behaviour.

Assisted-by: Claude:claude-opus-4-7
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 commands/mmc.c | 139 +++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 129 insertions(+), 10 deletions(-)

diff --git a/commands/mmc.c b/commands/mmc.c
index dafc3a755f..d379e6fea2 100644
--- a/commands/mmc.c
+++ b/commands/mmc.c
@@ -1,11 +1,13 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <command.h>
+#include <errno.h>
 #include <mci.h>
 #include <stdio.h>
 #include <string.h>
 #include <getopt.h>
 #include <linux/kernel.h>
+#include <linux/kstrtox.h>
 #include <dma.h>
 
 static int mmc_enh_area_setmax(struct mci *mci, u8 *ext_csd)
@@ -56,6 +58,91 @@ static int mmc_enh_area_setmax(struct mci *mci, u8 *ext_csd)
 	return 0;
 }
 
+/*
+ * Provision a sized enhanced user data area at @start_kib of @length_kib
+ * bytes; length is rounded up to the device's WP-group unit. The one-shot
+ * PARTITION_SETTING_COMPLETED is not written here.
+ */
+static int mmc_enh_area_set(struct mci *mci, u8 *ext_csd,
+			    u64 start_kib, u64 length_kib)
+{
+	u32 hc_wp_grp = ext_csd[EXT_CSD_HC_WP_GRP_SIZE];
+	u32 hc_erase_grp = ext_csd[EXT_CSD_HC_ERASE_GRP_SIZE];
+	u32 max_mult = (u32)ext_csd[EXT_CSD_MAX_ENH_SIZE_MULT] |
+		       (u32)ext_csd[EXT_CSD_MAX_ENH_SIZE_MULT + 1] << 8 |
+		       (u32)ext_csd[EXT_CSD_MAX_ENH_SIZE_MULT + 2] << 16;
+	u64 unit_kib, start_sectors;
+	u32 size_mult;
+	int i, ret;
+
+	if (!hc_wp_grp || !hc_erase_grp) {
+		printf("Device reports zero HC_WP_GRP_SIZE / HC_ERASE_GRP_SIZE\n");
+		return -EINVAL;
+	}
+
+	/* JEDEC unit for ENH_START_ADDR / ENH_SIZE_MULT */
+	unit_kib = (u64)hc_wp_grp * hc_erase_grp * 512;
+
+	if (start_kib % unit_kib) {
+		printf("Start %llu KiB not a multiple of unit %llu KiB\n",
+		       (unsigned long long)start_kib,
+		       (unsigned long long)unit_kib);
+		return -EINVAL;
+	}
+
+	/* Round length up so the requested region is fully covered */
+	size_mult = (length_kib + unit_kib - 1) / unit_kib;
+
+	if (size_mult > max_mult) {
+		printf("Requested %llu KiB (mult=%u) exceeds MAX_ENH_SIZE_MULT=%u\n",
+		       (unsigned long long)length_kib, size_mult, max_mult);
+		return -EINVAL;
+	}
+
+	/* ENH_START_ADDR is in 512-byte sectors */
+	start_sectors = start_kib * 2;
+
+	ret = mci_switch(mci, EXT_CSD_ERASE_GROUP_DEF, 1);
+	if (ret) {
+		printf("Failure to write EXT_CSD_ERASE_GROUP_DEF\n");
+		return ret;
+	}
+
+	for (i = 0; i < 4; i++) {
+		ret = mci_switch(mci, EXT_CSD_ENH_START_ADDR + i,
+				 (start_sectors >> (8 * i)) & 0xff);
+		if (ret) {
+			printf("Failure to write EXT_CSD_ENH_START_ADDR[%d]\n", i);
+			return ret;
+		}
+	}
+
+	for (i = 0; i < 3; i++) {
+		ret = mci_switch(mci, EXT_CSD_ENH_SIZE_MULT + i,
+				 (size_mult >> (8 * i)) & 0xff);
+		if (ret) {
+			printf("Failure to write EXT_CSD_ENH_SIZE_MULT[%d]\n", i);
+			return ret;
+		}
+	}
+
+	ret = mci_switch(mci, EXT_CSD_PARTITIONS_ATTRIBUTE,
+			 ext_csd[EXT_CSD_PARTITIONS_ATTRIBUTE] |
+			 EXT_CSD_ENH_USR_MASK);
+	if (ret) {
+		printf("Failure to write EXT_CSD_PARTITIONS_ATTRIBUTE\n");
+		return ret;
+	}
+
+	printf("Enhanced user data area: start=%llu KiB, size=%llu KiB "
+	       "(mult=%u, unit=%llu KiB, max_mult=%u)\n",
+	       (unsigned long long)start_kib,
+	       (unsigned long long)size_mult * unit_kib,
+	       size_mult, (unsigned long long)unit_kib, max_mult);
+
+	return 0;
+}
+
 static int mmc_partitioning_complete(struct mci *mci)
 {
 	int ret;
@@ -67,16 +154,32 @@ static int mmc_partitioning_complete(struct mci *mci)
 	return ret;
 }
 
-/* enh_area [-c] /dev/mmcX */
+/*
+ * enh_area [-c] /dev/mmcX
+ *     -> fill the entire user area (legacy)
+ * enh_area set [-c] <start_KiB> <length_KiB> /dev/mmcX
+ *     -> sized, mmc-utils compatible
+ */
 static int do_mmc_enh_area(int argc, char *argv[])
 {
 	const char *devpath;
 	struct mci *mci;
 	u8 *ext_csd;
+	u64 start_kib = 0, length_kib = 0;
+	bool sized = false;
 	int set_completed = 0;
 	int opt;
 	int ret;
 
+	if (argc >= 2 && !strcmp(argv[1], "set")) {
+		sized = true;
+		/* Shift past "set" so getopt() and the trailing positional
+		 * arguments line up the same way as for the legacy form. */
+		argv++;
+		argc--;
+	}
+
+	optind = 1;
 	while ((opt = getopt(argc, argv, "c")) > 0) {
 		switch (opt) {
 		case 'c':
@@ -86,13 +189,25 @@ static int do_mmc_enh_area(int argc, char *argv[])
 		}
 	}
 
-	if (argc - optind != 1) {
-		printf("Usage: mmc enh_area [-c] /dev/mmcX\n");
-		return COMMAND_ERROR_USAGE;
+	if (sized) {
+		if (argc - optind != 3) {
+			printf("Usage: mmc enh_area set [-c] <start_KiB> <length_KiB> /dev/mmcX\n");
+			return COMMAND_ERROR_USAGE;
+		}
+		if (kstrtou64(argv[optind], 0, &start_kib) ||
+		    kstrtou64(argv[optind + 1], 0, &length_kib)) {
+			printf("Invalid start/length value\n");
+			return COMMAND_ERROR_USAGE;
+		}
+		devpath = argv[optind + 2];
+	} else {
+		if (argc - optind != 1) {
+			printf("Usage: mmc enh_area [-c] /dev/mmcX\n");
+			return COMMAND_ERROR_USAGE;
+		}
+		devpath = argv[optind];
 	}
 
-	devpath = argv[optind];
-
 	mci = mci_get_device_by_devpath(devpath);
 	if (!mci) {
 		printf("Failure to open %s as mci device\n", devpath);
@@ -113,7 +228,10 @@ static int do_mmc_enh_area(int argc, char *argv[])
 		goto error;
 	}
 
-	ret = mmc_enh_area_setmax(mci, ext_csd);
+	if (sized)
+		ret = mmc_enh_area_set(mci, ext_csd, start_kib, length_kib);
+	else
+		ret = mmc_enh_area_setmax(mci, ext_csd);
 	if (ret)
 		goto error;
 
@@ -273,8 +391,9 @@ static int do_mmc(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(mmc)
 BAREBOX_CMD_HELP_TEXT("Modifies mmc properties.")
 BAREBOX_CMD_HELP_TEXT("")
-BAREBOX_CMD_HELP_TEXT("The subcommand enh_area creates an enhanced area of")
-BAREBOX_CMD_HELP_TEXT("maximal size.")
+BAREBOX_CMD_HELP_TEXT("Subcommand enh_area without arguments creates an enhanced")
+BAREBOX_CMD_HELP_TEXT("area of maximal size; enh_area set provisions a region of the")
+BAREBOX_CMD_HELP_TEXT("requested length (rounded up to the device's enhanced-area unit).")
 BAREBOX_CMD_HELP_TEXT("Note, with -c this is an irreversible action.")
 BAREBOX_CMD_HELP_OPT("-c", "complete partitioning (deprecated)")
 BAREBOX_CMD_HELP_TEXT("")
@@ -285,7 +404,7 @@ BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(mmc)
 	.cmd = do_mmc,
-	BAREBOX_CMD_OPTS("partition_complete|write_reliability|enh_area [-c] /dev/mmcX")
+	BAREBOX_CMD_OPTS("partition_complete|write_reliability|enh_area [set [-c] <start_KiB> <length_KiB>|[-c]] /dev/mmcX")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_mmc_help)
 BAREBOX_CMD_END

base-commit: c92603e91031b09f28bff7b69f29fea89ee544b9
-- 
2.43.0



