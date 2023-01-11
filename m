Delivery-date: Wed, 11 Jan 2023 11:03:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFXwu-008imw-Ck
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 11:03:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFXwr-0002SW-IL
	for lore@pengutronix.de; Wed, 11 Jan 2023 11:03:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y3qtthTwOUD4ypaDCXji8Cneiix/DZ0d6QRRWRqAGGw=; b=nBdnDjKQymNVKhPqtuiR3XN9a7
	nDZxUQa3bEEwrZFcqUMiR9wXGk6VFFxt9rTaM74OYLbJDyi1TD7wJENYRoV7ABvwgkSdVUHvBVlHy
	v85PH4lV1SRbxXpOXCVEnefhQmXjajNYZQqC50+WSphZB1IIoYiIGhZFUzyCdT2UCiifquZqq1UpC
	HJqCzQ6JzTarlPwpAwUwUdkXpsGcgpgLEsjEX/gdMz0l4nnUBj37I93eHCSR1e/80b9VK343caUUU
	JdDWA5ckz//6qKKrYZ8wuWcDWKBU+cR+7zKv9YmT0PzinpzEZKC8HbMGG/dycsytyL8bH8O1MPVf+
	ZECZUAww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXvS-00Afgd-Pd; Wed, 11 Jan 2023 10:01:42 +0000
Received: from mail-vi1eur05on2124.outbound.protection.outlook.com ([40.107.21.124] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXvE-00AfcY-KT
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 10:01:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A5/1SEToezD1jQ3du1HcZfFf5enniXCyMF+YzsAX7zlEIO/3h5rd51s/ftiJOi2QVsIjWi/p0fLqtOGS3m5at9+LMCbZy7m/741t3lWcSrenBUJg3D9EpXEQJ33hMB4m4gAnrJrx5D0ffzRTM7BlJwURelySmjYYMukF80Qzne1wJZunYObGseENfQEPUbR+q/spjpsexMG7Js9U1j6lsBQE3zhkp/NzFW1KoKU/9PtI40EUXNBmDwsrYE38ULxGoMTYWz25TrEgyJCVVGGC6utOXi90qSSpRlS4yuK0dXpHGBGiQ4uKEb838nqal5x2N1IDmRL8EyuOyZ7yPqgPag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y3qtthTwOUD4ypaDCXji8Cneiix/DZ0d6QRRWRqAGGw=;
 b=ZpbjBZHHNPb75gGUL3lyxcKqtgyfrifwih/YAwdP2nlQMBZN00cjUVOidIJKhJt/TkCgmyUhuV2L8BVX+OSSFwTc7awcPp1Tmy1tsSYqc7Datw0NoTkq2/GL5hkPVdBwj1kYDjv0Uxz2FdnLFVIoC29Y0WFC3usfZvgESdaY7l8ZvmA2PGTv2mHqU88FBLXvivpxGOKT3/dptVd6n49YYgTxeF1PWRnMnTGVthTRTXrj68ljnAAWkFY9GCFq8F277qU1MZxocX6C6upCR++BmP3B4Cy1V8TSL9z976a0LdGBdXo51GUm6176e6aB4JDJk9dnZqrTTs8Z/CBpdSV5lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y3qtthTwOUD4ypaDCXji8Cneiix/DZ0d6QRRWRqAGGw=;
 b=NBGr+f8+IjH0/6xXZVXjZK7KVbG4a4KKu4+UiEpuYjUyLiSEFnnNRNNgQNzPbnto2e2TbywMZw67MbIHkZFsJiRA8Z18EHvwqVlPI6lrQfs6W/sqEOD1PSSQC6SJMlou4Mt7xs28BZmo6bbGI0ESY8MP+ZWu27354WTdCuZ9Mko=
Received: from AM5PR1001CA0053.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:206:15::30) by AM6PR06MB4358.eurprd06.prod.outlook.com
 (2603:10a6:20b:19::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Wed, 11 Jan
 2023 10:01:24 +0000
Received: from AM0EUR02FT035.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:206:15:cafe::ae) by AM5PR1001CA0053.outlook.office365.com
 (2603:10a6:206:15::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.12 via Frontend
 Transport; Wed, 11 Jan 2023 10:01:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT035.mail.protection.outlook.com (10.13.54.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.14 via Frontend Transport; Wed, 11 Jan 2023 10:01:24 +0000
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Wed, 11 Jan 2023 11:01:09 +0100
Message-Id: <20230111100111.677018-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT035:EE_|AM6PR06MB4358:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 681a2b9c-ac47-4314-074f-08daf3bacc41
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	bWc2YqvDGaS+GRXRduN4gCDH7yg7lKQVSXR7EA8wpoYxWMg95yE31hpzl1KnScZXlvXkosHVG3U1gtIENZ6vxqnGaaR52AyQ2qXmwrSSdCahVv++N/jB6eKfyXmBhteWJzLKw5rg0yR3FfYWzuINgJ0IyoQKO1V5FZ7Q2nPa0gMLbz9xX7lDH9lm8ztO1pFpY+aSXU/8iOFUdJBxuPc9NsSR/nquWP3SHBTWhGjnTsiqJ4/p3x/F9T0Qbx8Mpo8K+lZFA0sZ9MDi1RjbT6IHWZvhXxgwI4Z4nFQ7MZjY1MKBgsZJzaoQVkHyeZffhh6Iv3M6wVRl0jSyPvwCnA8Drd0PAZfRuFS6NVNV0qIiXY7VCScnxScO3BV8+jMixAdCAfwLc3vwmqJ/B3/QqV+KpHxERQ7rzXhCVQGmhR280iwS+DysOx2Ub/YhrEP+A63LFhJmJcQXeDBld4q+XianvwZjMoMbzWm2udT6rI9W8WtobKhJQxe2qFwiAwocxlyqLdVsZojbOm+r0Wv1gNA49I/SMZi5Jt4VxyRThiN5MYy/l+XSoHQXQ2Tx60Z6Ymer+cDSmFo8Y6XhuHw2JEHUxcMdaYDv1+0+qYLRlP0JVY0i89ZhitfPmALSIhDkLu9sBdEVwX3xf8mZwL2Hzs+bHOvT4RSRNG/fCZwNjFpKsAevzV711ypD6R7dmGk0A9PRzEezjmTWkNBjLjhJ45Gpvg==
X-Forefront-Antispam-Report: 	CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(346002)(396003)(376002)(136003)(451199015)(36840700001)(40470700004)(46966006)(36860700001)(6506007)(82740400003)(6666004)(36736006)(107886003)(81166007)(118246002)(356005)(2906002)(478600001)(6486002)(86362001)(2616005)(956004)(40480700001)(1076003)(8676002)(44832011)(186003)(6512007)(316002)(26005)(5660300002)(9316004)(8936002)(82310400005)(36756003)(83380400001)(40460700003)(47076005)(41300700001)(70206006)(336012)(70586007)(4326008)(6916009);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2023 10:01:24.1689
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 681a2b9c-ac47-4314-074f-08daf3bacc41
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: 	AM0EUR02FT035.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB4358
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_020128_691342_FA75D973 
X-CRM114-Status: GOOD (  14.69  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/1] ARM: i.MX8M: add PCA9450 PMIC on rev-b EVK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Configure and setup the PMIC found on rev-b EVKs.
The code is algiend with how imx8mn-evk handles both
PMIC variants: pca9450 vs bd71837

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c | 51 +++++++++++++++--------
 1 file changed, 34 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index 6132df53ec..409554c2d5 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -16,6 +16,7 @@
 #include <mach/iomux-mx8mm.h>
 #include <mach/imx8m-ccm-regs.h>
 #include <mfd/bd71837.h>
+#include <mfd/pca9450.h>
 #include <mach/xload.h>
 #include <soc/imx8m/ddr.h>
 #include <image-metadata.h>
@@ -38,6 +39,25 @@ static void setup_uart(void)
 	putc_ll('>');
 }
 
+static struct pmic_config pca9450_cfg[] = {
+	/* BUCKxOUT_DVS0/1 control BUCK123 output */
+	{ PCA9450_BUCK123_DVS, 0x29 },
+	/*
+	 * increase VDD_SOC to typical value 0.95V before first
+	 * DRAM access, set DVS1 to 0.85v for suspend.
+	 * Enable DVS control through PMIC_STBY_REQ and
+	 * set B1_ENMODE=1 (ON by PMIC_ON_REQ=H)
+	 */
+	{ PCA9450_BUCK1OUT_DVS0, 0x1C },
+	/* Set DVS1 to 0.85v for suspend */
+	/* Enable DVS control through PMIC_STBY_REQ and set B1_ENMODE=1 (ON by PMIC_ON_REQ=H) */
+	{ PCA9450_BUCK1OUT_DVS1, 0x14 },
+	{ PCA9450_BUCK1CTRL, 0x59 },
+
+	/* set WDOG_B_CFG to cold reset */
+	{ PCA9450_RESET_CTRL, 0xA1 },
+};
+
 static struct pmic_config bd71837_cfg[] = {
 	/* decrease RESET key long push time from the default 10s to 10ms */
 	{ BD718XX_PWRONCONFIG1, 0x0 },
@@ -51,21 +71,6 @@ static struct pmic_config bd71837_cfg[] = {
 	{ BD718XX_REGLOCK, 0x11 },
 };
 
-static void power_init_board(void)
-{
-	struct pbl_i2c *i2c;
-
-	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SCL_I2C1_SCL);
-	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SDA_I2C1_SDA);
-
-	imx8mm_early_clock_init();
-	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
-
-	i2c = imx8m_i2c_early_init(IOMEM(MX8MQ_I2C1_BASE_ADDR));
-
-	pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837_cfg));
-}
-
 extern struct dram_timing_info imx8mm_evk_dram_timing;
 
 static void start_atf(void)
@@ -78,8 +83,20 @@ static void start_atf(void)
 	if (current_el() != 3)
 		return;
 
-	power_init_board();
-	imx8mm_ddr_init(&imx8mm_evk_dram_timing, DRAM_TYPE_LPDDR4);
+	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SCL_I2C1_SCL);
+	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SDA_I2C1_SDA);
+
+	imx8mm_early_clock_init();
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
+
+	i2c = imx8m_i2c_early_init(IOMEM(MX8MM_I2C1_BASE_ADDR));
+
+	imx8mm_ddr_init(&imx8mm_evk_lpddr4_timing, DRAM_TYPE_LPDDR4);
+	if (i2c_dev_probe(i2c, 0x25, true) == 0) {
+		pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
+	} else {
+		pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837_cfg));
+	}
 
 	imx8mm_load_and_start_image_via_tfa();
 }
-- 
2.25.1



