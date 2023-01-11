Delivery-date: Wed, 11 Jan 2023 10:58:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFXsR-008iDE-6q
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 10:58:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFXsP-0001VK-1i
	for lore@pengutronix.de; Wed, 11 Jan 2023 10:58:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=710yt/HZxPheWWEbeJfgUfBsXfRhgE7U/47bRB+a4UY=; b=j0kFIuCy3pCbixxrAV+ipCFQqv
	zF0WrsNpY+0JrQEiWijaCe0mHcvOzo2YWQLhpl8sqSIWL2ef5f/A1AcAzD4svgT1J8AHtK6oHKlBj
	hMjhP6l1KiDGBm3AZQNRxtIihxL4WmBnNbeE3PWeqmHFZ91Eo3nojTaEiN+ubNym0Kv2yv0geDISc
	vmpbQkkvHuWysSioKTrF5TRpIhbrNDHJxH9WxIx2iJSaofV8X8mV+QfgNhLGJU1cxxPiH9tAjrXIc
	01s9xrGNmffOG6IqZoe7fD1cVwcHBz5ShgcsXKdj9LhPOBFpTwDjccfWye26vIJjVOBTvD5N2EQ7Q
	0m0KT2yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXr9-00AePV-2y; Wed, 11 Jan 2023 09:57:15 +0000
Received: from mail-vi1eur04on2098.outbound.protection.outlook.com ([40.107.8.98] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXqz-00AeNY-6P
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 09:57:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MPcovn+6bCORIPqblXDD4LniA1c67DxdXI9cTAonxTPOHQbMenuNXvIy1tj/2jTkmARVufBtEpS080+37rrvXqg6jRdHvlYOrveuqWBNPqBDGFR35vmWuN7Dq0HoZqSgu74x3EQIIDFBQ/d1J193dE8BU4qRpd+dNHZyKSywiBFrUt3dtNANLOHkTo0Y7Gc69HNKOARszzH60VzEFWGRh99NUxCsViCOP2whZAhdRgVHXMea0rKmYo74lwLzU/Phy6TsAydIlLkYli5aumAdUlWy2ZnWVGgdy5q2ZReX//je9DW3dbMQFM5mz0OoOOXwXrsl4fv5gzBI16usB2Pg+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=710yt/HZxPheWWEbeJfgUfBsXfRhgE7U/47bRB+a4UY=;
 b=R3oiq5GVqfSfA++ohimnlRSGxHMB78rFQjepNpOEhd906ojrwlKNF0VR2TyKjaYSy79IB5Hszk7s99fqFsIwkTrGeuxZGrOcIY4/pctemjOcrYg++87qzhizV7urca4XPSU2n8Ly+WeyRdR89C4UM1cli3ifUG7q+y3UqnXchLC7sRCaaIeh5CC5elIDXpd5BPLMR4+za9QziQT3aA3Rnk9D0IsIJQF+bwQMYkdlKC1sFAbs9q01xujJplswk8HFDHIWbzKV8X33eew+0BmzDp/DJY/VSl1FLtq8W0/G3k9aA2bkdPZR3lcdsJNuMlippQqy8cMJcWDMjWELqXOUaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=710yt/HZxPheWWEbeJfgUfBsXfRhgE7U/47bRB+a4UY=;
 b=b9WQhsPUotqIySsDYXLngR3DFUIDteOTJu9qOYdN4SUKfqfKGCrjh/FBVzqKPoyWlVfYjWffMVBMoVn/t0qveVfb8a0etTvqI3HtJJAiuOYE7mv+pUHm7h2ovid6jVRsLebLu63W9oqVJw3RZyDJZIANSV6hOgUaSgM8kkjYqn0=
Received: from AS9PR05CA0335.eurprd05.prod.outlook.com (2603:10a6:20b:490::31)
 by DB7PR06MB5209.eurprd06.prod.outlook.com (2603:10a6:10:78::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Wed, 11 Jan
 2023 09:56:59 +0000
Received: from AM0EUR02FT055.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:490:cafe::fb) by AS9PR05CA0335.outlook.office365.com
 (2603:10a6:20b:490::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13 via Frontend
 Transport; Wed, 11 Jan 2023 09:56:59 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT055.mail.protection.outlook.com (10.13.55.228) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.12 via Frontend Transport; Wed, 11 Jan 2023 09:56:59 +0000
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Date: Wed, 11 Jan 2023 10:56:46 +0100
Message-Id: <20230111095646.672125-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT055:EE_|DB7PR06MB5209:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: ddf44525-8791-4900-b2fc-08daf3ba2e58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	2OmyYO5tUMIEeQSWRTMyxpCLefpnx3iYmLGhdwbcCVpYwMfo2QJKC3HgcPtbk2QJ7688K2crcpU9ptjAeuc4/AEBjAx2ieY6Xj1cTOgzfhW/r5C/WAvkwe40F9M9f8YqgPhbBZteTaXc8+gyzfMoR8p1uqCA/xm+lOf+mZBek1Iqm+6id4qegSl8Z4DTUz9gWYeLXCgAmfc+FZeDFRLh8rPyCrC+ZSat4Lq1UOzwCYdDrQdIi3LxoywfYzgj6g603QeHl8P0XhaRvA0CctBSBaODTPQTsKHoYEiWWhqXiggF9LcNcVJj5E2hzAoj++dBAwQdw3JERhdrWJ/7juIxEni4kdaO/c7xnvMfIZ/Q3iFbFCy+a/fd4qgVO7n9K5JSwuihXvqPYPbmfTNyHjjbE3AhYh2WYQPZGSOXVF08sHT9M0K1g29o7sWnueMnbaj92/Gg4+EstSUsvcSgDgaKwbp+RpRBrTlmQBcWAhWqTL48W6RkdO5cYujAz6BDv4PCrrQt+wkI1k4uXkVKcClFlI90XTlKOjj9T9a6FCPaE8jrHhiESYe3NKFlOoD1scaW/sIHwdjG9GDyZEAwMmbuutZDbKUplPuKmht7TpULpSSYedrpR3zS6602OqsDKUV5R0lO3tZoyvKzj53byfODB5x70bqG6SQBD0rK94ZOZ2TLhwCT+eo9HCjW/LDW16KdN1bOFRNcyGVJkkr77acSAsTPlmYB+/fXZq3BXX05kCA=
X-Forefront-Antispam-Report: 	CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(396003)(346002)(376002)(39860400002)(451199015)(40470700004)(46966006)(36840700001)(186003)(1076003)(6512007)(40480700001)(316002)(5660300002)(26005)(44832011)(966005)(6486002)(478600001)(2616005)(40460700003)(47076005)(4326008)(336012)(6916009)(54906003)(8676002)(41300700001)(70206006)(70586007)(82310400005)(83380400001)(8936002)(9316004)(86362001)(36756003)(956004)(6666004)(36860700001)(6506007)(82740400003)(118246002)(356005)(36736006)(2906002)(81166007);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2023 09:56:59.2128
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ddf44525-8791-4900-b2fc-08daf3ba2e58
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: 	AM0EUR02FT055.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR06MB5209
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_015705_557074_931CABE9 
X-CRM114-Status: GOOD (  13.44  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marcin Niestroj <m.niestroj@emb.dev>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: rpi: parse memory from vc fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marcin Niestroj <m.niestroj@emb.dev>

Currently for RaspberryPi platform there is only one memory bank
created, based on information fetched over mailbox. This is fine for
booting Barebox, but unfortunately all the other memory banks are not
propagated to Linux during boot, thus cannot be utilized. In fact, even
when using /vc.dtb as device-tree for Linux, all memory nodes in FDT are
deleted and new ones are created by Barebox by memory fixup mechanism,
using exising RAM information. As a result RaspberryPi 4 boots Linux
with 1GB RAM available, instead of 2GB (2 banks, each 1GB).

At the end of VideoCore FDT parsing, do the same as of_probe_memory() in
mem_initcall does, but for VideoCore provided devicetree/memory
information. During Linux boot this information is used for memory fixup
mechanism and in case of RaspberryPi 4 this results in 2 memory banks
being propagated:

  # ls /proc/device-tree/memory*
  /proc/device-tree/memory@0:
  device_type  name         reg

  /proc/device-tree/memory@40000000:
  device_type  name         reg

Signed-off-by: Marcin Niestroj <m.niestroj@emb.dev>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20230110193251.2821638-1-m.niestroj@grinn-global.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 77935e5c88..c6c7fd52bd 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -258,7 +258,7 @@ static u32 rpi_boot_mode, rpi_boot_part;
 static void rpi_vc_fdt_parse(void *fdt)
 {
 	int ret;
-	struct device_node *root, *chosen, *bootloader;
+	struct device_node *root, *chosen, *bootloader, *memory;
 	char *str;
 
 	root = of_unflatten_dtb(fdt, INT_MAX);
@@ -324,6 +324,16 @@ static void rpi_vc_fdt_parse(void *fdt)
 	if (IS_ENABLED(CONFIG_RESET_SOURCE))
 		reset_source_set(rpi_decode_pm_rsts(chosen, bootloader));
 
+	/* Parse all available nodes with "memory" device_type */
+	memory = root;
+	while (1) {
+		memory = of_find_node_by_type(memory, "memory");
+		if (!memory)
+			break;
+
+		of_add_memory(memory, false);
+	}
+
 out:
 	if (root)
 		of_delete_node(root);
-- 
2.25.1



