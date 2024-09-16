Delivery-date: Mon, 16 Sep 2024 15:54:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sqCAz-0055iJ-01
	for lore@lore.pengutronix.de;
	Mon, 16 Sep 2024 15:54:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sqCAx-0002GW-Mr
	for lore@pengutronix.de; Mon, 16 Sep 2024 15:54:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ccEBzKjGc2UhpqD6UjjfgKphZEae7rpMY1EOqv5QD8Q=; b=cvq7AzwxfbItSsTD/L/gzAlCEG
	s+q44Y/TMHuXFhm/Ud0ziK/Mddjgv3CmloEQ/KyxhqMxSpxM9HOHDVapXoifTIuA6w4zAhe6yMefE
	pzVE6YNeyzctOFIxt1Pj4fku4EMnHn0SM/Ue/s7Oh4ncBVmbcAxS5Y4/43T+AwbC8qqYVarZeYszy
	LYzTm6uiiHWdb51T4wYWJLmpToFSYvyvsTT/M95DKdXxZplkLJCKFTl426f6ITDljuOc28Uy9RSDy
	M3Ly4V+aIser4QEAPfyvxSv4Gubp2ZtQubU6HhHEjiBh2l8okSh1+uXmKPgWbc8q6QxIFnkOQzZq8
	xWA2NLig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqCAI-000000046Th-0iqs;
	Mon, 16 Sep 2024 13:53:18 +0000
Received: from mail-db5eur02on20618.outbound.protection.outlook.com ([2a01:111:f403:2608::618] helo=EUR02-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqCAF-000000046TH-1iv9
	for barebox@lists.infradead.org;
	Mon, 16 Sep 2024 13:53:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZtZ8DwE3s+GROA6pLlS7ohoKqZCpuC6vo6lkfq6Y+OGziyIiSQbrngdbozI/0gq2ZMXC0IXQlMu3xc2Ypapsz/U2u8xLWVVoONaOItuvHpqKN9mOFstMMQ68X41CmG/1ndDqUYBmzQPgEl/Z4CS3t9/ghSbAXdLdyDxX9h30NE+4BlLyF2lFknIWYiWk0mdVjts6t5orn/tZ8lIS2zBCNfTPWaX06yrU+8GUljtJf1UPdAn+RjPoCUT+NzpyOR+ZIYJUo+By1wesqPOAcayTcHYnjf+7sq64B8kYWwBjnGUd4ZNYOSj3bJxTAxDVbLYuhuhVZXYkID8SldGa3/Y05A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ccEBzKjGc2UhpqD6UjjfgKphZEae7rpMY1EOqv5QD8Q=;
 b=jpIPvsTYn2L+9ZkyJJQQaDOj2gNCRK/VLOr6sWU9H07q7k6+9YNYGOFdZEqaWYb/VYkBwuqiJ/14k5063YxZQLZ8gMD5z2srkdxLtGJUPeOIhrSurdH0P4ROU99v8ePjbrKH/1KEI/8DAe6D/UwsuKw9BggTih7OhORsr1pLE10ih+UwEUctXVb7kCoXDIswAWZ7OQ5FehsiPL2NPtW6mpYnElorYyifCRT/gm2VIaPHEFYZJAToZz1PsqQyBP1o12cmb/aGpJFY4Vk8bdmzsuCHxvVp7O3fRcqfOyCTcpPp+V3iYbUQT7fpM3pCgiCKrr1IPKt+oClf1afNTb0BPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=temperror (sender ip
 is 193.8.40.94) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=temperror action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
 (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ccEBzKjGc2UhpqD6UjjfgKphZEae7rpMY1EOqv5QD8Q=;
 b=f+dCftC9QTGpmIIISDgE0TmCU5DQkfr/e4pZDhQbEh/wQR/8GL64ltNwz1fXKeSkpHwFpNntWo5liBlGZto1PL8Sl5+mNRAZVlREdWPUUnjG1nU+/WoqflYX98eoh0eXK6cZyP1JZHk/4aFcGwAvz14iMX7vaYUamxgLX3nNcNA=
Received: from AS9PR06CA0059.eurprd06.prod.outlook.com (2603:10a6:20b:463::34)
 by VI1PR06MB6799.eurprd06.prod.outlook.com (2603:10a6:800:181::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.23; Mon, 16 Sep
 2024 13:53:04 +0000
Received: from AM1PEPF000252DC.eurprd07.prod.outlook.com
 (2603:10a6:20b:463:cafe::6f) by AS9PR06CA0059.outlook.office365.com
 (2603:10a6:20b:463::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.30 via Frontend
 Transport; Mon, 16 Sep 2024 13:53:04 +0000
X-MS-Exchange-Authentication-Results: spf=temperror (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=temperror action=none header.from=leica-geosystems.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of leica-geosystems.com: DNS Timeout)
Received: from hexagon.com (193.8.40.94) by
 AM1PEPF000252DC.mail.protection.outlook.com (10.167.16.54) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.13 via Frontend Transport; Mon, 16 Sep 2024 13:53:02 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.60.34.116]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Mon, 16 Sep 2024 15:53:02 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Mon, 16 Sep 2024 15:53:00 +0200
Message-Id: <20240916135300.3996776-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 16 Sep 2024 13:53:02.0345 (UTC) FILETIME=[BF539790:01DB083F]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM1PEPF000252DC:EE_|VI1PR06MB6799:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 19981615-b597-4310-759a-08dcd656e1f7
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|36860700013|376014|82310400026;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HdiB2eFvLY3HgI30924JVBfX6lFHdEO93UqQYekocTsAAhdeybgUuPLJR1tn?=
 =?us-ascii?Q?Xq5e4Mx47/aeBrFnH66NE0mzodbKKXLZPrLCvSMsaP6q2lfEb2MKH5wSh5rA?=
 =?us-ascii?Q?sNLSmCLnsbcpuoXTlm3YtozdtNYev7POHAfbKnE7P5pRL+0uqIdWfvvXCrPQ?=
 =?us-ascii?Q?l1m2OrN9dZG9Vo7o4yD3FCWOKF7VSs3DlCWBQ/kNSbAsY2azOX6/3Ipjw+pY?=
 =?us-ascii?Q?/GtTExWReAE4x5dGEarMT3pdzswnGfWBTTruf/hmweWKWMNjxbaY0kX6E7jX?=
 =?us-ascii?Q?MRpD3kFPhyhkZVRaUSHkoBFSSaFG3d4Gp97z+kgmwIIRRH2BVvoM8qgP9O4y?=
 =?us-ascii?Q?rbI2FGK8yHsMnvlNvpmxuSXKlRff5JMXgwABa9CreXY8njlnxcyicrIteV28?=
 =?us-ascii?Q?1gTRtNqboVkapi5A/gONjCEiSZjKUAZKT70bXRxnhOWrGfn+T4QibMA/c54B?=
 =?us-ascii?Q?HMByLHm/gmLtvTcxUZ6sADThGike1PDRdE/EY7Kkq1SMlAxUKci4V8aY/zZF?=
 =?us-ascii?Q?PyWXuvofS1sslwaUs8fYQG8VFnbLwGcqZdWnbeT42e+BfaY9iF8tqhlGcpxq?=
 =?us-ascii?Q?l7bTeKsWlCdGbAaEtvHF/mHbTmbGY2q7A/zquVudLJJx28+1bjQ/racZrFvz?=
 =?us-ascii?Q?PZemWjJZllPrzk/mBiNUGC116nbPyUfvdWKpSWO3c2YotcqsTEex0lFeKRE2?=
 =?us-ascii?Q?Ie+wWK087jHq8EfQBgIqeL1qnZrQRjxVIqZF9n6P6LGIZPq7n/D+Lm9GxT7c?=
 =?us-ascii?Q?nVmpoA3mr+qoywojEEHsxGYy9oHQLkuCyNTHUpDTS7DUw7g13MatuxGHVYWh?=
 =?us-ascii?Q?6vN2kiuWOeEFQ85+GP6JkFTJvIr4oOUBLMLvNMmgxu67mrEOphVEJPsjqq0V?=
 =?us-ascii?Q?Y55fiCQSzp35Aa4aeJqQTiDlppjt6xm68dEQsa8ALh2gK/Nbj0KuWUI4lgM2?=
 =?us-ascii?Q?EUuh5aJLX+2aWLzT2z+4ngBcRsUtyYueA4t1Vm3Ne+FJeUQLRslyOLBAmKM0?=
 =?us-ascii?Q?CTXmgDHm6xu+l5wmPy8rBZUQB/jUZmNiEyEkcnwWJ2eaWU4iO1PqQoSKdwHy?=
 =?us-ascii?Q?D608j6jldG6tprIbiBkQfuWccdmnHUlz09fd1aM4P48uxdp2naHDL7QKdzYy?=
 =?us-ascii?Q?3LJmyLUmQLZg4b7dNOUiTY84QxeKuD10cNi1AaTcpfODRwvOKegjpqQZKNjs?=
 =?us-ascii?Q?eoAvWNRnVsGaAwzqS5Msqr0InnadAUOfO8O1jnNSY4fEsR8AAoTqifRY8yDg?=
 =?us-ascii?Q?LWlh22UCL3+fRQRFU4PnX0UkzfjJJjrt+24YPlVtKW6FYhT8e48ZLrm3hLJa?=
 =?us-ascii?Q?CRO081SKQ5T/MKXDNfTYqbE/RMcHcOt6jqZaDAqYdrzrbcpmUZmEz9D0GpBJ?=
 =?us-ascii?Q?I1LxDQ6mbVyLy90UAcTaDyThUpg6iv3QeIdj+sUQBAWp12rkDf5r0HksBbgp?=
 =?us-ascii?Q?dy+NgRRhO+7UoSxq1S368rTn4xwTXktT?=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(376014)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2024 13:53:02.6077
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 19981615-b597-4310-759a-08dcd656e1f7
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AM1PEPF000252DC.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR06MB6799
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_065315_521227_066E4341 
X-CRM114-Status: GOOD (  12.73  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: add custom autoboot_abort_key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the Kconfig options to select a compile-time custom key(s) that
can be used to enter the console when barebox prompts for:
"Hit <custom_key> to stop autoboot."

This commit also adds the option to set the global autoboot_abort_key's default
value to any of the available ones: 'any', 'ctrl-c' or the new 'custom'.

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 common/Kconfig   | 34 ++++++++++++++++++++++++++++++++++
 common/startup.c |  8 +++++++-
 2 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 4af0225..db9585c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -408,6 +408,39 @@ config CBSIZE
 	prompt "Buffer size for input from the Console"
 	default 1024
 
+choice
+	prompt "autoboot_abort_key default"
+	help
+		Set the compile time default of global.autoboot_abort_key. Note that it
+		still possible to set the global to a different value during runtime.
+
+	config AUTOBOOT_ABORT_KEY_DEFAULT_ANY
+		bool "any"
+
+	config AUTOBOOT_ABORT_KEY_DEFAULT_CTRL_C
+		bool "ctrl-c"
+
+	config AUTOBOOT_ABORT_KEY_DEFAULT_CUSTOM
+		bool "custom"
+		select AUTOBOOT_ABORT_KEY_CUSTOM
+
+endchoice
+
+config AUTOBOOT_ABORT_KEY_DEFAULT
+	int
+	default 0 if AUTOBOOT_ABORT_KEY_DEFAULT_ANY
+	default 1 if AUTOBOOT_ABORT_KEY_DEFAULT_CTRL_C
+	default 2 if AUTOBOOT_ABORT_KEY_DEFAULT_CUSTOM
+
+config AUTOBOOT_ABORT_KEY_CUSTOM_KEY
+	depends on AUTOBOOT_ABORT_KEY_DEFAULT_CUSTOM
+	prompt "select a custom autoboot_abort_key"
+	string
+	default "c"
+	help
+		Set key to use as autoboot_abort_key.
+		If set to a string, any of the characters can be pressed to abort autoboot.
+
 config FIRMWARE
 	bool
 
diff --git a/common/startup.c b/common/startup.c
index 47b70a7..6b068a8 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -93,10 +93,13 @@ static int load_environment(void)
 }
 environment_initcall(load_environment);
 
-static int global_autoboot_abort_key;
+static int global_autoboot_abort_key = CONFIG_AUTOBOOT_ABORT_KEY_DEFAULT;
 static const char * const global_autoboot_abort_keys[] = {
 	"any",
 	"ctrl-c",
+#if defined CONFIG_AUTOBOOT_ABORT_KEY_CUSTOM_KEY
+	CONFIG_AUTOBOOT_ABORT_KEY_CUSTOM_KEY
+#endif
 };
 static int global_autoboot_timeout = 3;
 
@@ -202,6 +205,11 @@ enum autoboot_state do_autoboot_countdown(void)
 	case 1:
 		flags |= CONSOLE_COUNTDOWN_CTRLC;
 		break;
+#if defined CONFIG_AUTOBOOT_ABORT_KEY_CUSTOM_KEY
+	case 2:
+		abortkeys = xasprintf("%s%s", (abortkeys)?abortkeys:"", CONFIG_AUTOBOOT_ABORT_KEY_CUSTOM_KEY);
+		break;
+#endif
 	default:
 		break;
 	}
-- 
2.43.0



