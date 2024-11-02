Delivery-date: Sat, 02 Nov 2024 15:44:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7FMu-003wzu-1V
	for lore@lore.pengutronix.de;
	Sat, 02 Nov 2024 15:44:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7FMu-0001tG-Tc
	for lore@pengutronix.de; Sat, 02 Nov 2024 15:44:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uC+J2ZAQ489yNlfZGHGXmrLfkiZQ8DhinmsWS+a3ifQ=; b=1xvwvC9dkI279lWw+OFsxpOBbi
	yT90cklE8OTTceskUHdTCgjxDyrQRYxlZ0UoJhpwu9fOWauUya8qFpzwCd/ZoqbCaa/FEGRbckGBA
	IlYVsyf/9cW5kLA3dmycFXknROew9Qh3TGt/P7T1Sv3ScuGjWK3/AiYlLN/dVHlHHv3ADOAHV2m4/
	JFpkr6pjdKvpeFVB2//oHL0WK99mpjOOMrTMIjJN+Mzj6hgKctSS4S49u7FW4oXTiPEEDbfaUW0ow
	7WGz2Z9/iAld62K4nGiazv2WDh5FCqG3yfinjRgN/oJiYrHr07nVnXUiIKCtbIShZig3NjBDiuUYO
	jMIDST8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7FMD-00000009sbi-3Wk7;
	Sat, 02 Nov 2024 14:44:05 +0000
Received: from mail-db8eur05on20625.outbound.protection.outlook.com ([2a01:111:f403:2614::625] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7FMA-00000009sb9-0ioV
	for barebox@lists.infradead.org;
	Sat, 02 Nov 2024 14:44:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g9IOk1ZPW6SKRsh5sb5uOOsiD9iT1XxobpzpFowKP+LwjdUayDv8jrTgUxAQSJBzWrzv2bGqjV9V+tUk4XUasDIQg6Ng+CPkFdajThr+vbct5UtAfAkHygf4xR9fCig/+/dD8GFnofqxZs+14B/4+mkLWvoW5hpmt9AwzAXPXz9EQJFCnTrHxfrM8txHG9nUzCGwcsbjyepxmfAwWAbrpLcxU3np0uE+j3crE6P7ABU+cbMNohuWFVoojW5d+pUXK10C+LI1H5rlZjz/HPsY/pthbDQP//tZzXyy//eu7Io9vQ/542Swc5qOVYigRMbDpvfeb0qasr356y/gsrupyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uC+J2ZAQ489yNlfZGHGXmrLfkiZQ8DhinmsWS+a3ifQ=;
 b=qdobAOR8QURaO4NE24Qo/+ptgg0sCpn1fME53JhFYg2yCBwSmwYp8zXhDQhHA4nWC2Zvajm0zWJn7WJzBT7TO8e9yqnVexDWrQzErnA5n5R/aKXIrALwjkNFUjgADtBLPH19OePV0IRnybCb7f7ZaQiR0w7gu2nOxNYPRFqoNjpm56J8OGAQGaV/ZWHuxaAuEUamsTW07HFNYDyd7kljXnS26LzIYOh0JLzJCX3jOKr/zQYeGJvpPFj+xE+fNGWPWZ5OeQ8ub71yRJH4nm3qYJJSNbzG+Izhgve+I2q9Lb65/IxcboFweZaLoNYiuqr6kcb8C1hiAmA5DGAV2Wb0qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uC+J2ZAQ489yNlfZGHGXmrLfkiZQ8DhinmsWS+a3ifQ=;
 b=U42twF0ah0DcmSJ8Oy2/FKpKaLieGe+zkgH1oCgqcDAnFDbetkf24wUOirlZlVkCGON3OTI2TvW13cFqiG9KNSsIIrTNnfQXlsyHwWcOCUDa/zs+ENiCG1ww39/S8PYT1o/Bu/JnPN3m9/MgEUgbUFiCIBvz9jaiy/vQlVb+QDQ=
Received: from DUZPR01CA0225.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b4::22) by VE1PR06MB6942.eurprd06.prod.outlook.com
 (2603:10a6:800:1a4::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.24; Sat, 2 Nov
 2024 14:43:56 +0000
Received: from DB5PEPF00014B89.eurprd02.prod.outlook.com
 (2603:10a6:10:4b4:cafe::1d) by DUZPR01CA0225.outlook.office365.com
 (2603:10a6:10:4b4::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.28 via Frontend
 Transport; Sat, 2 Nov 2024 14:43:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.94) by
 DB5PEPF00014B89.mail.protection.outlook.com (10.167.8.197) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8114.16 via Frontend Transport; Sat, 2 Nov 2024 14:43:55 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.60.34.116]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 2 Nov 2024 15:43:55 +0100
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org,
	s.hauer@pengutronix.de
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Sat,  2 Nov 2024 15:43:42 +0100
Message-Id: <20241102144342.2464331-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 02 Nov 2024 14:43:55.0187 (UTC) FILETIME=[A4609030:01DB2D35]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5PEPF00014B89:EE_|VE1PR06MB6942:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: e0fe5e93-6a02-4117-39bc-08dcfb4cc707
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|36860700013|376014|82310400026;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?aP9nO/wAi4WLDCb163/BXNxegQfbHd50+9w3Jx6ZlfI/J/k4o4VK64OU/AOR?=
 =?us-ascii?Q?BBkWZTAPiA5RMDNNATddLAMUottLfbsk5y19bW5UEWy9QQTBAWNFJdV/1nXs?=
 =?us-ascii?Q?luZrRyzLiS8pO0arjpWlAOfLBhxhfgQ5lyh9rq+vyYcY2yCH8OMhhpSFZ12p?=
 =?us-ascii?Q?douHFWjtHu6gLpaFq0pFkQVGALoSUs1pTSWgv0X10h+wQZ/mxcP1jreNR54K?=
 =?us-ascii?Q?KhOK3tPx7WgYyz7liX5SJ3KfDMAnR8Gxc7cImc8/Gw8dvq3MfDCFU7AYDvkU?=
 =?us-ascii?Q?+oh+Gyo6cs1t+Vjer+wF/1MiQIZHJYJONsytYFysAcYRCeMd1rg5g0tzJEYc?=
 =?us-ascii?Q?nFpcjr3BXEF7oEkSfLCo8NWOEpnYY1qBM8fYWe62LfDNg4zjRfxMAdqStRhJ?=
 =?us-ascii?Q?qGeZ2bRl8qd//PBq5x/VL9krrBksmrLqUNB/WnkTSIyt8F++z+Qzrnb4ZH7k?=
 =?us-ascii?Q?GguQF3V52tEQOEAZ4JELVGqD7/Tic02Ohi+z75AcLA0E6CbZzzNKphZLAenM?=
 =?us-ascii?Q?kUbqIZy6B8s8MRfZ+cMC3NhV4trPvDojmK56DUXbGfnDpaOJvd1+lLwVl24f?=
 =?us-ascii?Q?b9Ju4KmgsVigR2kiNte+uh1hqfWG3tOOmh4julxhxIXphKjhlFK7uOYt/DEc?=
 =?us-ascii?Q?XqyP5t7skDI7eVzOalqlhLKgBqLm1aecfC1zkYezehIZeKj66tmViB4NSzgK?=
 =?us-ascii?Q?YdkYiYu/CunYYsWjZ8G0e0tt4lewX4A/bXmu5E8l8LKpnWmMlfGBNzFlPCy+?=
 =?us-ascii?Q?2u8bo6YMY3xWGLdG18Zr04Mk34JTJxtn5xoef82LzFygRC+bM7gkYYdmXYLF?=
 =?us-ascii?Q?eskXACbRZ13VSEHGPqrKh1DR05C3tkyXARk2/2OBTp2rpnUj/iVKsHB0OeiD?=
 =?us-ascii?Q?iba5yCWNUIU49HaqCmjczpNf+WdAOJpfTdJn8U3RXLQR+RY7yMfybdEaFEiO?=
 =?us-ascii?Q?VelDnTpSwunV8j9yJW/Xi4778py2vaRqAPSlBcYJ33ifAvCPaiRTx3p/N9xa?=
 =?us-ascii?Q?wuZUthaXS8N3ZnU42+S/etGdd0VcoRwxmLWzQdbYBmsB2XJSxzPU8ahrUUkJ?=
 =?us-ascii?Q?nI3jn0VmTv2CKJ7Q2pIn+pXad8D4LsyIbf+LFCedpiXu/2hf4V3WFxIQRSLh?=
 =?us-ascii?Q?l0DYNLd4A8I+FwG59VrrwUmwgZUv4/Esi6sA9Nd9smSivy+bYuzF6Vnb8eC3?=
 =?us-ascii?Q?p4Lx4f60ilVCoX+zR81x9MqGce5Dd6Kz2mKC0Ms5gkUjc1jKVae+Q3uKt9Gr?=
 =?us-ascii?Q?Rbhwgk9lys6t28wnZoD36xh1WQa+hqaYuIinvTSSig/FKsmax5mxszg3GaFu?=
 =?us-ascii?Q?hNktCt6JO7JqguTxzv7eBbgShY9CSqhDXhaJxmbzCNmbkqLFGFQB4HhVJjM8?=
 =?us-ascii?Q?4X5Iqi7ggu8tP4pj7j+l6jSkXKmV/wNaJMDZFRsb0ur+Jjauig=3D=3D?=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(376014)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2024 14:43:55.4524
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e0fe5e93-6a02-4117-39bc-08dcfb4cc707
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5PEPF00014B89.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR06MB6942
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241102_074402_413096_8BCB3361 
X-CRM114-Status: GOOD (  11.90  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] common: add custom autoboot_abort_key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extend the autoboot_abort_key handling to alow custom
abort keys.

Allowed values to set in the env/nv/autoboot_abort_key
are any single ascii charater corresponding to the desired keyboard
key, or the strings 'any' or 'ctrl-c'

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 common/startup.c | 53 ++++++++++++++++++++++++++++--------------------
 1 file changed, 31 insertions(+), 22 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 47b70a7..125bcf1 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -93,11 +93,7 @@ static int load_environment(void)
 }
 environment_initcall(load_environment);
 
-static int global_autoboot_abort_key;
-static const char * const global_autoboot_abort_keys[] = {
-	"any",
-	"ctrl-c",
-};
+static char *global_autoboot_abort_key;
 static int global_autoboot_timeout = 3;
 
 static const char * const global_autoboot_states[] = {
@@ -187,24 +183,22 @@ enum autoboot_state do_autoboot_countdown(void)
 	menu_exists = stat(MENUFILE, &s) == 0;
 
 	if (menu_exists) {
-		printf("\nHit m for menu or %s to stop autoboot: ",
-		       global_autoboot_abort_keys[global_autoboot_abort_key]);
 		abortkeys = "m";
-	} else {
-		printf("\nHit %s to stop autoboot: ",
-		       global_autoboot_abort_keys[global_autoboot_abort_key]);
 	}
 
-	switch (global_autoboot_abort_key) {
-	case 0:
+	if (!global_autoboot_abort_key ||
+	    !strcmp(global_autoboot_abort_key, "any"))
 		flags |= CONSOLE_COUNTDOWN_ANYKEY;
-		break;
-	case 1:
+	else if (!strcmp(global_autoboot_abort_key, "ctrl-c"))
 		flags |= CONSOLE_COUNTDOWN_CTRLC;
-		break;
-	default:
-		break;
-	}
+	else
+		abortkeys = xasprintf("%s%s",
+		                      (abortkeys)?abortkeys:"",
+		                      global_autoboot_abort_key);
+
+	printf("\nHit %s%s to stop autoboot: ",
+	       (menu_exists)?"m for menu or ":"",
+	       (global_autoboot_abort_key)?global_autoboot_abort_key:"any");
 
 	command_slice_release();
 	ret = console_countdown(global_autoboot_timeout, flags, abortkeys,
@@ -221,12 +215,27 @@ enum autoboot_state do_autoboot_countdown(void)
 	return autoboot_state;
 }
 
+static int autoboot_abort_key_set(struct param_d *p, void *priv)
+{
+	if (!strcmp(global_autoboot_abort_key, "any"))
+		return 0;
+	if (!strcmp(global_autoboot_abort_key, "ctrl-c"))
+		return 0;
+
+	if (strlen(global_autoboot_abort_key) != 1)
+		return -EINVAL;
+
+	return 0;
+}
+
 static int register_autoboot_vars(void)
 {
-	globalvar_add_simple_enum("autoboot_abort_key",
+	dev_add_param_string(&global_device,
+				  "autoboot_abort_key",
+				  autoboot_abort_key_set,
+				  NULL,
 				  &global_autoboot_abort_key,
-                                  global_autoboot_abort_keys,
-				  ARRAY_SIZE(global_autoboot_abort_keys));
+				  NULL);
 	globalvar_add_simple_int("autoboot_timeout",
 				 &global_autoboot_timeout, "%u");
 	globalvar_add_simple_enum("autoboot",
@@ -402,6 +411,6 @@ void shutdown_barebox(void)
 BAREBOX_MAGICVAR(global.autoboot,
                  "Autoboot state. Possible values: countdown (default), abort, menu, boot");
 BAREBOX_MAGICVAR(global.autoboot_abort_key,
-                 "Which key allows to interrupt autoboot. Possible values: any, ctrl-c");
+                 "Which key allows to interrupt autoboot. Possible values: 'any', 'ctrl-c' or any other single ascii character.");
 BAREBOX_MAGICVAR(global.autoboot_timeout,
                  "Timeout before autoboot starts in seconds");
-- 
2.43.0



