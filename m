Delivery-date: Mon, 13 May 2024 15:50:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6W4l-00CgUy-0M
	for lore@lore.pengutronix.de;
	Mon, 13 May 2024 15:50:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6W4k-0005F7-8e
	for lore@pengutronix.de; Mon, 13 May 2024 15:50:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=f6Ysor5gMGpx3JKAqbQvfJEm1+hvrnZ5sVFiMIrSQLA=; b=B1lX6J2KwH0GoiLABbubp5Ushx
	xgpI+qhfvbroQKX0TdGW+a3SNLh9bAScyuKYP8jrvwR8wW0YG8pTIRqMfS2wy5XJpgIkN6HxVUvnj
	bntY02vssd8LfZOFYeETwyqMT/aUCx7HTUfzNVxBStTdus7joOWBqz7AfzW74V5mfatlEUGlDxxME
	Ahehkc8XUesOjMuW3mG6m9VcDCBWVaSpGWC2/8wJ8J3OwuHhsgH1DXn9kFQJVmSE+7EZO9WbPpUNX
	D8u/8Vgks0Cbiy46SxegV/ZLmsz2YRh2NkRFjgMgF7yhg237Spda3P7Iznw1vLVOT8NGsu5p6Ca5J
	E+7T24tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6W41-0000000D4OF-1EEw;
	Mon, 13 May 2024 13:50:01 +0000
Received: from mail-db3eur04on060f.outbound.protection.outlook.com ([2a01:111:f400:fe0c::60f] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6W3w-0000000D4N1-3yKp
	for barebox@lists.infradead.org;
	Mon, 13 May 2024 13:49:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gsWWzlKvjf83LhaWxp2SFsC6KDT+IYkZD6S4MtePQwCqtYL9Ub8PLffnNlffFdbfX0OT4eVog/sUiQ1CmZ2bhgB5ZAhh5xAFqoVCRQYG62U6FZrE1QgxEsVkvYDmYZPBqgbtZYXFebdI2gRANYhWy5kBirL5EhW9atNyBRxu6Fj8mAc8XclVd32lHliS9pSCNvp1ol+sC1eOuMvFAtWnDgxpqA+hegk16N6hDtRIsxsEikrGH6Ehr8OEE46OhaarzCJ+QoO0vqI66e8no2okbKSrdqSBA6KyiUnkQ8mrlm7vJXI2ku0k2dse8IjtGcwnB90MlSCt7taGDfebVQFESQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f6Ysor5gMGpx3JKAqbQvfJEm1+hvrnZ5sVFiMIrSQLA=;
 b=j2m8q/ZIATju8kS5+A3SZnJVgH18hH2zC0uYZDNvYq591BmLHsSrpZBPmGp3QYzIqyMaWYELz6u/gprsESwSXlCJLlZv2Vhv2UOail+0uCKTK9NeqY4Kz6xJmGEHXzC/takgZXiNSVoGyNmjcVbyhoyXAay01SE1Sx1+yLUWTKq9hFV0UGRPBR5mTkwMGZ/mgqCob2+UdYosH/hOzJwYOO49XrAc5AzvAj3BIKYpFjRftxv/oNNUfSBXx9I2rR9LYzNOzMIFg8a+Z5R/AKr3rCNZy8l4zTrjM78lGl0ULadOQVKwvDJ3SimwSG3z20OmwjCVlYiV1eEtjhP2OYzuWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f6Ysor5gMGpx3JKAqbQvfJEm1+hvrnZ5sVFiMIrSQLA=;
 b=gbH6hwKYAZOVfRvPRQd+7jhoz5e6JJeCtYn31RiTiHfEZ43dGhSRNrVLNhp3PsreyEAY8/r8QfI9eKnby47ejd5PH+ORL7kNfU6tGzIsilz/ULwi8jXtC3jf6CaHV2vHRhE5DgoXDg3RdmW8fIoiECicypH5mldPGefEHrp4lZs=
Received: from AS9PR05CA0096.eurprd05.prod.outlook.com (2603:10a6:20b:498::35)
 by AM7PR06MB6406.eurprd06.prod.outlook.com (2603:10a6:20b:119::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Mon, 13 May
 2024 13:49:44 +0000
Received: from AMS0EPF000001B6.eurprd05.prod.outlook.com
 (2603:10a6:20b:498:cafe::f7) by AS9PR05CA0096.outlook.office365.com
 (2603:10a6:20b:498::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55 via Frontend
 Transport; Mon, 13 May 2024 13:49:42 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.94) by
 AMS0EPF000001B6.mail.protection.outlook.com (10.167.16.170) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7587.21 via Frontend Transport; Mon, 13 May 2024 13:49:42 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.60.34.116]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Mon, 13 May 2024 15:49:41 +0200
From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: m.felsch@pengutronix.de,
	Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
Date: Mon, 13 May 2024 15:49:38 +0200
Message-Id: <20240513134938.4100056-1-thomas.haemmerle@leica-geosystems.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 13 May 2024 13:49:41.0990 (UTC) FILETIME=[67DB5860:01DAA53C]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF000001B6:EE_|AM7PR06MB6406:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: d2848fa2-034b-47cf-15ba-08dc73538a76
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|36860700004|376005|82310400017;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zgf6svsZJWoH0RXu8hZqyYKpRIil8KO0EujxazeO0iKr0GogTb3Ed481KkeS?=
 =?us-ascii?Q?5rsgnNDbuuLM+sY0efVJAhuxzNsv0hkFvseva6INSzwW0hb1VsGb96WJ/YV7?=
 =?us-ascii?Q?KnzJc0FUTDkdjoCVlyiqwWHn5ahcxjRcc/xbrNfq67X6AB5GTEqf/D3aES3/?=
 =?us-ascii?Q?+KKQhUMSzSDk8t9e1Ck5txqvduOLQhrxUbRNUG9wk2b/SRrKOwB+fgDvYjP3?=
 =?us-ascii?Q?bCYmo6oRB7JqWV4sNTeKK4W/VjhsWUUcUUnYD0pVvP/GdE6rd+RFfVGf+oE5?=
 =?us-ascii?Q?3vwapkvpNWGEeW9se7AzZQkwko7LJOfvUcjOG6G21dWwQ7qXuiLgg4k2s6zF?=
 =?us-ascii?Q?ZHMKFxwcJHgp2++J8MvgxGqYj/Bfx1o5QtE56A5GTRiqGT6v9Mg9SUT5u380?=
 =?us-ascii?Q?4tRXFkQ9lwFJcNjfqeH8zzu8lvH39sryK+rAJIkBfmJo5GKublrgiBKUPaLk?=
 =?us-ascii?Q?xbsO8nokONw7y6Y5m7W8wSC4YhVwSMZFfdp/zJ7ky0FduuW6VPwE1OlbYRAB?=
 =?us-ascii?Q?ebs/aY4q2e3djp812Hj8k5obKTpCtolBuRlr0P2gmL10UaoXpY9obpmkDqvf?=
 =?us-ascii?Q?i4QkL1Gcod9lEXFZb7ZIsKp0Lm/71G1Z2Qo8u8stXgwURq2pLIMbg71wfQWK?=
 =?us-ascii?Q?uPSlYJ+GeT2XbsIPM6SETSF7hzvH7na7jhiwwgKB5IrEZcxMg0x1EhOtx6+O?=
 =?us-ascii?Q?5hUTKD02nnWULzeodgOLHTU+sAz2WGpQb71JLWwAuhRt0uayMHRxFI/SsX1/?=
 =?us-ascii?Q?TH5yq2K2P6nTCklA14pGYe935x2OZ/QoUGLIQB2yPWkEp3kWqqG3AK2pAYD8?=
 =?us-ascii?Q?Q2jsTpTLLdxxKJWox+kzwmaSSghRRij42rvhQZAzUSY/mc84ZM4iVlahuYQA?=
 =?us-ascii?Q?zAOQChZMyFa+wXYxfgdbOVFIkRhk9T3GgVvApuvxyZL7K5qVRbsLdFm7Draa?=
 =?us-ascii?Q?Q9JVgHZKajZOzfhpr8n8y49K9ykXwNIL1uLzRgpZXQqb+BTU6QAVIqJgZp4J?=
 =?us-ascii?Q?V84UH4Esb5ISrZWk0kqrkQLXcYaFk39hTA4gmO3j7wI7JKkasQ0ay+vED8oB?=
 =?us-ascii?Q?l+lNnke+oOQlupUuoIIlQpj5hqkepIumCMp8tF1V/6INCcPUmYAfFfMYhIC5?=
 =?us-ascii?Q?n9njxyvDjCn7TNwBp4aBALFgi7DzP6IaXIiHUtjLcZAU9JnjOmRBcDjIG1j1?=
 =?us-ascii?Q?bT6t1DcWB3I8jC/vh2lATZK4iWroTWk+IogWJaIiUG+Oq6b5ANWGsDDLt4fK?=
 =?us-ascii?Q?bEn9V4YnsRGtJWF6dTMI3+EMCfUE/S0rIqUuC8eG+/RY+kdssD3QDATApOkA?=
 =?us-ascii?Q?v/93TxM+tfGMuFfnWIw+it0Onl6998IsJAgIZz0AhU9mDEsi2sbU+d9s+JPt?=
 =?us-ascii?Q?MuYd2xQ=3D?=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230031)(1800799015)(36860700004)(376005)(82310400017);DIR:OUT;SFP:1101;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2024 13:49:42.1773
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d2848fa2-034b-47cf-15ba-08dc73538a76
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF000001B6.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR06MB6406
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_064957_228965_291D6403 
X-CRM114-Status: GOOD (  12.41  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fastboot: add possibility to register OEM commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently it is not possible to add additional OEM commands without
extending the array `cmd_oem_dispatch_info[]`.
Add the possibility to register commands from e.g. board files by
replacing the array with a list.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
---
 common/fastboot.c  | 53 +++++++++++++++++++++++++++++++++++-----------
 include/fastboot.h |  9 ++++++++
 2 files changed, 50 insertions(+), 12 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index f8a01dea7a..8f78b0e517 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -885,24 +885,41 @@ static void cb_oem_exec(struct fastboot *fb, const char *cmd)
 		fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
 }
 
-static const struct cmd_dispatch_info cmd_oem_dispatch_info[] = {
-	{
-		.cmd = "getenv ",
-		.cb = cb_oem_getenv,
-	}, {
-		.cmd = "setenv ",
-		.cb = cb_oem_setenv,
-	}, {
-		.cmd = "exec ",
-		.cb = cb_oem_exec,
-	},
+struct oem_command {
+	char *cmd;
+	void (*cb)(struct fastboot *fb, const char *opt);
+	struct list_head list;
 };
 
+LIST_HEAD(oem_cmd_list);
+
+int fastboot_register_oem_command(char *cmd, void (*cb)(struct fastboot *fb, const char *opt))
+{
+	struct oem_command *oem_cmd = xzalloc(sizeof(*oem_cmd));
+
+	oem_cmd->cmd = xstrdup(cmd);
+	oem_cmd->cb = cb;
+
+	list_add_tail(&oem_cmd->list, &oem_cmd_list);
+
+	return 0;
+}
+
 static void __maybe_unused cb_oem(struct fastboot *fb, const char *cmd)
 {
+	struct oem_command *oem_cmd;
+
 	pr_debug("%s: \"%s\"\n", __func__, cmd);
 
-	fb_run_command(fb, cmd, cmd_oem_dispatch_info, ARRAY_SIZE(cmd_oem_dispatch_info));
+	list_for_each_entry(oem_cmd, &oem_cmd_list, list) {
+		if (!strcmp_l1(oem_cmd->cmd, cmd)) {
+			oem_cmd->cb(fb, cmd + strlen(oem_cmd->cmd));
+			return;
+		}
+	}
+
+	fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "unknown OEM command %s",
+			  cmd);
 }
 
 static const struct cmd_dispatch_info cmd_dispatch_info[] = {
@@ -969,6 +986,18 @@ struct file_list *get_fastboot_partitions(void)
 	return system_partitions_get_null();
 }
 
+static int fastboot_oem_cmds_init(void)
+{
+	if (!IS_ENABLED(CONFIG_FASTBOOT_CMD_OEM))
+		return 0;
+
+	fastboot_register_oem_command("getenv ", cb_oem_getenv);
+	fastboot_register_oem_command("setenv ", cb_oem_setenv);
+	fastboot_register_oem_command("exec ", cb_oem_exec);
+	return 0;
+}
+device_initcall(fastboot_oem_cmds_init);
+
 static int fastboot_globalvars_init(void)
 {
 	if (IS_ENABLED(CONFIG_FASTBOOT_SPARSE)) {
diff --git a/include/fastboot.h b/include/fastboot.h
index cd415847e3..38b0728a89 100644
--- a/include/fastboot.h
+++ b/include/fastboot.h
@@ -78,6 +78,15 @@ static inline struct file_list *get_fastboot_partitions(void)
 }
 #endif
 
+#ifdef CONFIG_FASTBOOT_CMD_OEM
+int fastboot_register_oem_command(char *cmd, void (*cb)(struct fastboot *fb, const char *opt));
+#else
+static inline int fastboot_register_oem_command(char *cmd, void (*cb)(struct fastboot *fb, const char *opt))
+{
+	return -ENOSYS;
+}
+#endif
+
 int fastboot_generic_init(struct fastboot *fb, bool export_bbu);
 void fastboot_generic_close(struct fastboot *fb);
 void fastboot_generic_free(struct fastboot *fb);

base-commit: e70a514bce4bc84429c46fa378622024ac6c6863
-- 
2.34.1



