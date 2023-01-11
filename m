Delivery-date: Wed, 11 Jan 2023 12:38:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFZQm-008lSi-2j
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 12:38:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFZQj-0001w7-EX
	for lore@pengutronix.de; Wed, 11 Jan 2023 12:38:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=710yt/HZxPheWWEbeJfgUfBsXfRhgE7U/47bRB+a4UY=; b=Mf1bO5vnpeFONilSH4CBfjCzsm
	i4oOHwuyX6i7vrYqUFJXkR8B3ZgaQvWwtT2FVYPh3DniDBx+fO1oIyvd+oQmJAiJElkrSbS8lhxvd
	59bSMzkIBsRRkkpfS2Yr0dzvS8CiY+oZwTkJ/nl9mjqRvFCtsGkXUtYAamUqR36zMgJLB1fe14PHp
	hJxVSRlXHwCkglAoZwPMQoVeH+pbsqHfA6yG+jUu9ZNt3FjIU0sduzuLKfiJaNno5cfFcfaU+mSXz
	AhcmmP7i9wpJggBge8CE1CWiTcCUgqhA8ug9d5Z7LOxfWznd58/0R1lcbrSGVcgFZiTjALDrJI4vp
	gGZUHsRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZPO-00B5J8-MB; Wed, 11 Jan 2023 11:36:42 +0000
Received: from mail-db8eur05on2091.outbound.protection.outlook.com ([40.107.20.91] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZPJ-00B5Hd-9V
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 11:36:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hSGVsmfRH8ije3kzuda+tjYWjibPm+7TVU5cLzDdsVssWwU6t+BgYY9/K9fuw6Q3ppfZstXlBXcAJJfYJlib1nTUd5YNYjfxNlc0OvdJHiNIdkWdaRjEgIsMk/yoe8vM+/7fcoTMjpDPoC/VnS9/GvxMY7iPAlyhDNRu45S7VY/zsBVhGIWshVSRafk1oMrnHj02ZNSOnOR/76nVzyqWCXI16OpzxytPyOsNAR0XW9KsG7S7XxIHX3noO4bRYZRJU+z2dgBlZMPitkUXmRmIFAOkoRSc702yYUhTGuMKs30uvROO4vt25+8BzSR9oeXtVIHypLBWUNWQnxdm+gTKXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=710yt/HZxPheWWEbeJfgUfBsXfRhgE7U/47bRB+a4UY=;
 b=j1e413To/gAyzcTJsehFwAGFVmKllFeWq1OTUvOCxbdmIBdl9RRwB6UelIVBs0qsn2DU7zziAjh9Dxlvz22dcRbdE7p3hz9EfS7M0cgHfWJ9bUYfaGHkWu8uNadUKtmkQsRmllYb1Gzbe4cVQAUHvdbun+n1MuTc2hziuqMZIUqvxlb8mrZJ0H9vYOMgT3OE4ASNvn48VIiWzIqv6IRzWklmRm5DWDNDA/2EwE2KGQkb59ByhrIBD0My7NHuXENqjsnOIGCbcX2OpGZtVzfv6hf+gRqbfrR17B49zT0zcPeDhxx9ga3v5TwkSEMgoBiXFxaoOuKXWjUeSvCcQkfBWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=temperror (sender ip
 is 193.8.40.94) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=temperror action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=710yt/HZxPheWWEbeJfgUfBsXfRhgE7U/47bRB+a4UY=;
 b=eLVxbBOxLH2nFElBR2QUVRAuwAQbZoiIMVzOOTVyykuOegpizQdzLGGNfBbX5zXaD88aDZo6ddG0O9Sv7k7TshX+HhdKlgl5RvSYNJYKOH8Yu8OMcISaeeUwt0Vrp61UjV/QrTeTrsll5fvnzP11RANuy2xc2+/gZmzpBgWC/a4=
Received: from AS8PR04CA0173.eurprd04.prod.outlook.com (2603:10a6:20b:331::28)
 by DB9PR06MB8534.eurprd06.prod.outlook.com (2603:10a6:10:36d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Wed, 11 Jan
 2023 11:36:34 +0000
Received: from AM0EUR02FT015.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:331:cafe::dc) by AS8PR04CA0173.outlook.office365.com
 (2603:10a6:20b:331::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.12 via Frontend
 Transport; Wed, 11 Jan 2023 11:36:34 +0000
X-MS-Exchange-Authentication-Results: spf=temperror (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=temperror action=none header.from=leica-geosystems.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of leica-geosystems.com: DNS Timeout)
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT015.mail.protection.outlook.com (10.13.54.177) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18 via Frontend Transport; Wed, 11 Jan 2023 11:36:32 +0000
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Date: Wed, 11 Jan 2023 12:36:29 +0100
Message-Id: <20230111113629.778125-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT015:EE_|DB9PR06MB8534:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: d7907060-4740-493f-4e95-08daf3c816e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	bML+Y6iwopes51V29Ys59chV11TG/brCfbgSSUwrtALU3bPrFCYsS/44iKw5JJkaXMmPNYfzJzfhCe7JNTtRnwayXjbCB3xLbhRkGwf45uXJT0I3CSuqM6zVzscPfUVV9mg3XPDW5TgE3T+Lc9a40TGx81cQlsdT7mlFmXOJYG//VM8Vp9q4PVeM5W4w94xw3UAUWniyy82MxWCC1doMmjzoV9o698hGcFGVuzPSMGU+Y2kC+RzOZaNwn9DZCidU9fV+8e2+mw1o3bmjk6R9NKv2AZfnHEOejBNQpwAkrMQ25acKHHcJoOw68MJCNrvshuzIShteFdhI1f3ofpX9f6Y+8HLs9mHtdFj9xSizXoZpKzWDimBqSVidqf1yQA0LkB27lnmP+uKGwKyDO5CBU9zRKxPY6QRDMaqafLTMfhH98mh6U2DvmMWDvi27XSnBVHPht3nTXUkAayhfb5LRPsu7VF+EppZj5bkbdATFzbYqQ501J/whSfdcxeU1DrJfz5QXWHnksi7TOH8HtcHnwweuHZYjYCSpth6EOpM7RbSYohvZL++uTo78ZRfJQ8Cf9FO5TEW+Y24bzMFr8Kt1Ver/rzMJ4JE3bezzv6ciMsW1MKgru2O+RfIeTpYWvYrAsyFxXnPruJcI8nvfkThecuDgoROZe9GjfhwwFQLF3noVHfJf10kjRTr5LtDC80431OOahBQqaVVwqAS35Gib91tXo/pi/5WkDG74odM4lOg=
X-Forefront-Antispam-Report: 	CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(396003)(39860400002)(346002)(376002)(136003)(451199015)(40470700004)(46966006)(36840700001)(356005)(81166007)(82740400003)(9316004)(41300700001)(54906003)(70206006)(8676002)(86362001)(4326008)(70586007)(6916009)(40460700003)(40480700001)(2616005)(316002)(8936002)(118246002)(5660300002)(36736006)(44832011)(2906002)(1076003)(956004)(6512007)(83380400001)(336012)(47076005)(63350400001)(63370400001)(186003)(6486002)(478600001)(26005)(82310400005)(966005)(6666004)(36860700001)(6506007)(36756003);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2023 11:36:32.8231
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d7907060-4740-493f-4e95-08daf3c816e5
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: 	AM0EUR02FT015.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR06MB8534
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_033637_355246_86900C7D 
X-CRM114-Status: GOOD (  12.09  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4] ARM: rpi: parse memory from vc fdt
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



