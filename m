Delivery-date: Wed, 11 Jan 2023 12:39:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFZRl-008lV7-Nj
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 12:39:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFZRj-00021T-HX
	for lore@pengutronix.de; Wed, 11 Jan 2023 12:39:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=a8KOrcrZDdCZsSiyO934hTO2b1yTaR/MkHYMWUWWjGg=; b=Jbr6xMZJh8gjP7NL8n44H1rPdP
	goQcL1fNZjFmtwjhPnBQHs+REvo7U0XGCFDqdPLB6DlhcMHwp/F2EQXmyqABQU2RcZA0No4KwKEPu
	/nsxOxI4mdiQgJlbvvghYD5iTW1bxhuIdOYLRdYpsYcek46DrAHyS55G9eUkakvRzRhsrjd/jlt4O
	irj4d2Vu1F+C3djebB3TVk+ggx5cdsOLMAnSbPjbdEnh3Z5zZMrb3+SC/FxaYbVJuKgjKkl3AoF4O
	kGXJDtSIvTUaneW4TSpyPWuLAExatx5TNOYgCWSiQf/e6NkNumavJxK4YvyVq9iEFUkX5EAO9ah+p
	SSg5O1KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZQO-00B5cN-6A; Wed, 11 Jan 2023 11:37:44 +0000
Received: from mail-am7eur03on2122.outbound.protection.outlook.com ([40.107.105.122] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZQH-00B5aB-UF
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 11:37:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H+Z9OuKbgwkx7QzgvvGRq17yDRhj6pT9BV6wL7vtdeYi2vNdBDdLHw4/A0vlfH6rwkOl5MurGz3hgfMY9+RsglMjaqpt9R/x5Z3TOreQvQodMl8kLEPCpKCBmT+R7gBqd3uFylMx3yyqrMAMl4rqUi1QSv6FMlHLq2U1oeaL1Fn0kzKm4WiKbyJIk19dhHI9LfzqAPa0PY3QVBdsdibS80fl1+M0b0NTGOG/+WGq89hICsKpPFJJBfBV8AfaswWcfZmFX6eKf1HP55K7zjsEH8Agwzc9ELo5YjW4cbLE6bzZ9PdTJAE7Gcmh3wecsaoZLMYAwCgVxVh/6ySf5umXxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a8KOrcrZDdCZsSiyO934hTO2b1yTaR/MkHYMWUWWjGg=;
 b=UBTTdgnJeQFY6I52u1ynE0UafityB7beTWE8jZXaj6VTrMuZGLhsEhLF3r1sqekB82UbtZx8RbTX7S127v94+LXMz9mVgGBGISaZE1FB3iEixghYSLC63bva6Hepv3xmHhqrMJs8JkXVDem8qMWnbd7dqLs6SSrdPn5/vdeoDbEuFZfAZTLLkMx/ZvmrWswheSwZ8jmi7kQ/XgKIgZD+ZWdlen/gCL1ngb0cJBfv4HQFVmNLJFJj4foQL9y5bII0BZ1j8qtu22EZq9+xD+0wPnP419tyMc6qLempql50YosQZPh6e0pjdAPocALX+ZVa1py1gTBrbayu+eeDtr+UNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a8KOrcrZDdCZsSiyO934hTO2b1yTaR/MkHYMWUWWjGg=;
 b=O/JozWNMH7PLVYO9JvreeZBiKZ3afi/9En2EQQueUDNPrNVR5nrxnZxclcLbcWln4Kt1DxRitiMdRZVqjvCis0JOzEEip15+jFW1IEgYZ+kwLFwahw/je+XLcvaWk1SpJA+Gl3XmmjWk/unnQ5R/Q0gReqZnJAr2MY4UhyWPzDA=
Received: from FR0P281CA0049.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:48::15)
 by VI1PR06MB3997.eurprd06.prod.outlook.com (2603:10a6:802:5e::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Wed, 11 Jan
 2023 11:37:32 +0000
Received: from VI1EUR02FT060.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:d10:48:cafe::c4) by FR0P281CA0049.outlook.office365.com
 (2603:10a6:d10:48::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.12 via Frontend
 Transport; Wed, 11 Jan 2023 11:37:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 VI1EUR02FT060.mail.protection.outlook.com (10.13.60.73) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18 via Frontend Transport; Wed, 11 Jan 2023 11:37:31 +0000
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Wed, 11 Jan 2023 12:37:29 +0100
Message-Id: <20230111113729.779283-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1EUR02FT060:EE_|VI1PR06MB3997:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: ebf1b107-4edf-4e84-d79c-08daf3c839eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	R6v+ohZLwQ9oRpSKcusgtpf+/SbXX9k/JqJkIF2qJ0JIuLzO28+lcfjTJbbUsAYDhQBmg84Hr4/VbGA0RpBBiCB8J7tD2tycZwG4jeNj5YHnyjY0SFoUFYljhuK/dov+ZxTzEtw6mtUQTtBHQpVgpigmdav0ObXuBBYCbART/zOMAY+rG5dik9fRhR2433+4MHgYGAXPChJEPdqmfrLpJoiiDJysboeyVn30k5vGqAZJ88lX4G5rmB/M+FyGAquhH1PIcw6+NF8h584E3CNktfdsVqYL0oeBEHLYqEoF+Coz5FzGzEyqS0E8QCKBc712Rn1PlIPQbBlQQ1WTGBEvx2tF30oMYglsHa5znEayHYc1zjO/sQ7d+eh6zYKLMjGb6/6uHItqLlmyej9ucf/P099gDWhZS6nYzsgxdLkOgQHQcfeA8mFgHovDjeYuF5S/J7a3X+9nmTK30YUmE9/abaEd7bhgh8Ubuy7hQgVtk4XZle0chv9ZaePhqqh8cRyoOc2ESqsw46r4aCkXK4FV4XtmcYNMcQnLPLYIlL1P30egF00uY/hLU7tN+JJOY6/KuazNfV+2Z6PUguZqlXBbYaLtdupbz/4p/M0HlQsbTZfBnUTQca/edkTltAEoBJ/cl0hlfOXZQSshc+OC6aILSXhxEDF/YYPNaKejEepO8A+OiRComy3KkAYA2hF1E0J3ZRkeSPBuBc+LgdzydFeWGQ==
X-Forefront-Antispam-Report: 	CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(396003)(346002)(376002)(39860400002)(451199015)(40470700004)(36840700001)(46966006)(41300700001)(6916009)(70586007)(4326008)(8676002)(70206006)(5660300002)(356005)(44832011)(316002)(36736006)(8936002)(81166007)(2906002)(40460700003)(47076005)(86362001)(118246002)(478600001)(36756003)(82310400005)(6486002)(82740400003)(9316004)(40480700001)(6512007)(107886003)(186003)(26005)(6506007)(1076003)(336012)(83380400001)(2616005)(36860700001)(956004);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2023 11:37:31.6175
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ebf1b107-4edf-4e84-d79c-08daf3c839eb
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: 	VI1EUR02FT060.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR06MB3997
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_033737_998385_5A8CE81D 
X-CRM114-Status: GOOD (  12.07  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4] ARM: i.MX8M: separate function call for clock_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a separate function call for imx8mp_early_clock_init, to avoid
confusion with imx8mm.

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c       |  2 +-
 arch/arm/boards/tqma8mpxl/lowlevel.c            |  2 +-
 arch/arm/mach-imx/imx8m.c                       | 12 +++++++++---
 arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h |  1 +
 4 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index 4f24dd4cd4..3cb24df1ca 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -72,7 +72,7 @@ static void power_init_board(void)
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
 
-	imx8mm_early_clock_init();
+	imx8mp_early_clock_init();
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
diff --git a/arch/arm/boards/tqma8mpxl/lowlevel.c b/arch/arm/boards/tqma8mpxl/lowlevel.c
index 0ce0e7a73b..037c7abf4b 100644
--- a/arch/arm/boards/tqma8mpxl/lowlevel.c
+++ b/arch/arm/boards/tqma8mpxl/lowlevel.c
@@ -73,7 +73,7 @@ static void power_init_board(void)
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
 
-	imx8mm_early_clock_init();
+	imx8mp_early_clock_init();
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 9758525b54..7f3856e545 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -182,7 +182,7 @@ int imx8mq_init(void)
 #define IMX8MM_CCM_ANALOG_SYS_PLL2_GEN_CTRL	0x104
 #define IMX8MM_CCM_ANALOG_SYS_PLL3_GEN_CTRL	0x114
 
-static void __imx8mm_early_clock_init(unsigned long pll3_freq) /* and later */
+static void __imx8m_early_clock_init(unsigned long pll3_freq) /* and later */
 {
 	void __iomem *ana = IOMEM(MX8M_ANATOP_BASE_ADDR);
 	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
@@ -252,14 +252,20 @@ static void __imx8mm_early_clock_init(unsigned long pll3_freq) /* and later */
 
 void imx8mm_early_clock_init(void)
 {
-	__imx8mm_early_clock_init(750000000UL);
+	__imx8m_early_clock_init(750000000UL);
 }
 
 void imx8mn_early_clock_init(void)
 {
-	__imx8mm_early_clock_init(600000000UL);
+	__imx8m_early_clock_init(600000000UL);
 }
 
+void imx8mp_early_clock_init(void)
+{
+	__imx8m_early_clock_init(750000000UL);
+}
+
+
 #define KEEP_ALIVE			0x18
 #define VER_L				0x1c
 #define VER_H				0x20
diff --git a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
index eeb15f4dd0..659615e1cc 100644
--- a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
@@ -53,6 +53,7 @@
 void imx8m_early_setup_uart_clock(void);
 void imx8mm_early_clock_init(void);
 void imx8mn_early_clock_init(void);
+void imx8mp_early_clock_init(void);
 void imx8m_clock_set_target_val(int clock_id, u32 val);
 void imx8m_ccgr_clock_enable(int index);
 void imx8m_ccgr_clock_disable(int index);
-- 
2.25.1



