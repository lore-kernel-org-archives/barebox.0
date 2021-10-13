Delivery-date: Wed, 13 Oct 2021 14:43:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1madba-0005VC-Jx
	for lore@lore.pengutronix.de; Wed, 13 Oct 2021 14:43:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1madbX-0002IL-LS
	for lore@pengutronix.de; Wed, 13 Oct 2021 14:43:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fRfKkwi6V3mCW/82ApwMGWbPv721fIzoXy8NZYP9PMc=; b=gsE4iES7ibqo/K
	dBmG3DJA2J7bQwt9LRQJ4p3GIDL5Tg/iUHAyaYNr4IEZp6k92mNob0OKiQBrpjqc8Nq8swdmhOmEt
	tX8ltUB/2adXVR0L2ias6P5dULQkj1msCc1sLh7vrfvqfXtuGH1VITVBJ7N1TrK+lxQ4vSAcC/URN
	s/C1OL7StLvuNxSAGEoQaWNHIGUW/ymG+O5T5nMH8VLjsq7g16UiddIwVkJDe/Y+KB6r5Ff7k4vNK
	pOSMsLDj/B80lyq89Ehxh1P+NhjBh/V8/2Vi4TLyFaHvIMJQDXqtYOLDZp9Lt2Yp2BES1u7NozMQp
	b8JOiDv0bI4jiYYTUwTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1madZm-00GdEJ-EQ; Wed, 13 Oct 2021 12:41:44 +0000
Received: from mail-eopbgr60088.outbound.protection.outlook.com ([40.107.6.88]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1macLk-00GHoh-LJ
 for barebox@lists.infradead.org; Wed, 13 Oct 2021 11:23:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UzOsquD9bcamzoK7QVGmbwoxHaSAHuv4R5SGzt7hXUbg+gX+BDAPLcioIH+3MO/x1Lw6d1OU3sQppmgifFzh34Vs0V4eWvYRrVXsfbkyDOXjuiMNOUTSwTYVwVDdYVFWDEwf3bQlavnZrdxFuzxIb3Dgpt83ZVhJQG4iKRf/0yNbrw+T6drxXLzsyO0esebnx8CV6LRY7jWE7WQho6E7l57LXJL7M8IHZHlYrEH8PEyvdc6JZhc5XLma54rsKjMMYRaJCrZKw9c5T+UE4o2rYuWusH6MR4bonbCdvDUnawR4dgMFwo2M77QHzLLA+RRqKwgJZL4AXBGVbONC4WbnHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q4RTh2PD9VqhbzxTDdZtb2Y7EIVEQuQmMgwRIZJRk2U=;
 b=DXDg2AcSp9BNueRYEYDweYQ2hKhtMGg+jkZOpYzAV5ftORDQlrZeSFkdVxQ9UUNHLyC7fskhEJvaocgWyQUqAm0vWdmELvhkVMdjHsworDJDTc6E+JBg4zIIRCbZ/8xqY+ZVhds3wn+8pxVcLnAu9Y+ifTOoQDnk3nD1G6S0AVyN++NZfZBuQyoTaZ+TpBnIwX+AYJXN6eTu4apMnUmGxaGcNWlNJ3KRlRG75flwEaC7cNvbiUpiFYOC9zAe1GmgZoi/5L9AogCL5FMHTYQRpDZfQ1nK0nX6crR/CPRqQ/kVY9tbNuDp4k+VmqlS1Gh/vR/+WFi3PuX81QeSJJowkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q4RTh2PD9VqhbzxTDdZtb2Y7EIVEQuQmMgwRIZJRk2U=;
 b=c0tQdxcEPwg5rq3VZAqgDVUovpybGes+fMIhmePHIpM4W97r17YhactI3dVcwGpt7/yDnkhZe+vO8pLdTSdq1NblITw8uIuCuRKmVtgpbfPMNqZyJxy4AeXd7wn0v4b/Zv0an0nPCsNQLec8xYEGlEjnjYFo/36Kf4/p+Zt2uTc=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB7PR08MB3545.eurprd08.prod.outlook.com (2603:10a6:10:27::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15; Wed, 13 Oct
 2021 11:23:01 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4587.026; Wed, 13 Oct 2021
 11:23:01 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>,
 Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 13 Oct 2021 13:22:47 +0200
Message-Id: <20211013112247.3065-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211013112247.3065-1-michael.riesch@wolfvision.net>
References: <20211013112247.3065-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: VI1PR0302CA0012.eurprd03.prod.outlook.com
 (2603:10a6:800:e9::22) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR0302CA0012.eurprd03.prod.outlook.com (2603:10a6:800:e9::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15 via Frontend
 Transport; Wed, 13 Oct 2021 11:23:01 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 391c1338-cde5-43b4-dca0-08d98e3bd138
X-MS-TrafficTypeDiagnostic: DB7PR08MB3545:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB3545886DC5AB9F7D2748B852F2B79@DB7PR08MB3545.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:549;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0/eBeVDMVm+kFaCi4hwgnOdpdv2gQNsSp4voSc8beKkfgmLTiDr/L3Xw6DZAY0SEqKRtWutcg9HH5XnhoPlhX07dUeNpnU5nUyBDMlDHxPbDnTeEK/wbOcBhX2GkQm9lpjg1K/DvGNrcgenK9laVecfMoVHcLRvXLVIX1uGhEmY1EI5IHKnApSPfODBtKqsxi4Pgt6fNt6ibNixGzGRBjyA0MRxYbfUbRvHmczJfb2OPBaijTdkCgyoK1ZM3mE/aqSR9gg3fDVBH/lBi2L3JN9btjhdPgma8ftn5kvqoSdX3N9zCimiKI82iTBF8uyRo3H9ikEJvU1rf4e7FqwvqQ8xyCAjYruWtfSYEvcY0hy5/Ap/chW3KVCn8V8qjYEwCs0kTSvF+P456PJOw2h8wx88gxMLbH4wW33LlgA2+LaCZrqiV8CyibjOgaeIOwVt7moRmPLEO50m1/ChQtw63jV6ZS10XPXZNy68F4/rToxSoL5soqxPJkZ4tV7q332sBcpW6YFERIHU8Bz7Qv2SAn1eFNckbW7NCcFQPdreeAdwY1NMAxZFcOhlaNbvuUfSilT3vwIzgMRXRIS/vBu4cOR2kl0y5jogTIU469FSXnqnYvebqr8D+zOGWIkBK6XtUwX2pLr453/+bPa1hL6QIQhvjE8roLTW6pC/nZ2W96SnOJlLQFIuuXQ8zOgjIB840LP8qVcRVntusOze6TxuDYlVlfM+Dxpy+seTRprm5nr4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(376002)(39850400004)(346002)(366004)(6506007)(1076003)(38100700002)(38350700002)(4326008)(30864003)(26005)(8936002)(8676002)(5660300002)(54906003)(52116002)(6916009)(83380400001)(6486002)(66556008)(66946007)(66476007)(2906002)(36756003)(508600001)(2616005)(44832011)(107886003)(186003)(6666004)(86362001)(6512007)(956004)(316002)(309714004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dHF7h96+eNx9PW2VJFFPO48UZDu1NZtK8cXkGkNYtNjwNEPMIDiT6TOrK/cW?=
 =?us-ascii?Q?nVZpC/orGcM1OB9H+AbgpfZ6MAane30NY4SVA8YnhRBe9EJwtD4Zycx3MP6/?=
 =?us-ascii?Q?nB//KtutQp1l0WD/ubxDxeMbcjNMAeRSbF238rRkwnARSclUDTuPFS6lYpxF?=
 =?us-ascii?Q?DnKLFTJz4ZjX6+tBBP/fJQ43Hu2RvGTgJOXHD5notLvzN8sVRUoLediRUdta?=
 =?us-ascii?Q?litE/yW0DUBNA3zNh8aui2pDAesDQ4LV5DdNf+6+OV99NEeZ2vA6CzrzQl/o?=
 =?us-ascii?Q?LbCsJIxPWQAuvIvwxN7jnBFeJ+EyVMvoiR7ywziDAUre808B6ml2YdIeLqZ2?=
 =?us-ascii?Q?mMviYTD/wpcNj2ssVawSr84xdJK0pMyMbPAsoULxai2r3kjyGqYdUpAX+nP2?=
 =?us-ascii?Q?ZluFIkBAWeG/kf67d6J3HyXoWVg9deazVP1XxrYq24+N1GN/I9pNFq65zA/7?=
 =?us-ascii?Q?UooQxvA1ICjtSpYS/V14s0SgHeIH7nGXPRmzoW94E3UqLQ7LHPpjjrj2yn4k?=
 =?us-ascii?Q?UCBGJlIRuqUsNxiUoRDuYk1aVkL7FSiQc4osNtq+G8G+ZxOW9oEreYHUUKZ7?=
 =?us-ascii?Q?7a+vE9E55M4bqR2mVSbi/5+l8GTB50EnuO1r1794TM1CIq5oMfoVvSK8VPX9?=
 =?us-ascii?Q?dxYJ9TVq0d3FBEpi64/GsrXOE5YIsZJZtBBGLpjopTl1NCtNnV7KTVh4K/5+?=
 =?us-ascii?Q?XY5GQxZ5X5Y8qpzA+z2CmRub2xdDNjydMJxmaMJgOwSWDWQIk4+QR+2Uclyx?=
 =?us-ascii?Q?9wjbCJwjsV6QEzPocpu2cEUVdjuRhUIIb5u2oCBqR1qtgH9ySb7OpqAAGNWO?=
 =?us-ascii?Q?HLIcxKGA0GSOn463tyEJ9S3M/kQ5AMYMjS/4XwF/E6Hw8oLKItHKxolsefOC?=
 =?us-ascii?Q?mBklThoXY3AK0osi25LXm8giMy9GvvWdbmCWiVE4vXdEx+yRoaQLBr42XbnS?=
 =?us-ascii?Q?jjP5/jagTXg7/bfokF1gvAEyq48y7F5MFF126ywx6n1ZH7kakVAiBwh98tYF?=
 =?us-ascii?Q?kppv+n9J5Kn3FIstqrxGT4uM8p7E/ePbQtWusRD2sFdnfQfr9UmALOiE3KB/?=
 =?us-ascii?Q?3FtvrQH21JnKUBPKYYdACsqaPQJyOBOc7FB1RDOv2UlOWH8rCf+RmRx7fn2J?=
 =?us-ascii?Q?39Hv8IPExWX5Jo699sq9DKULa9G0MWkaAKneo147LK9WAP4fe9lva7tB9xqY?=
 =?us-ascii?Q?4u20ln1kSLAcyrZDjRzdW6zQ85DfgSUSE1HwLGE9NXep2CyNJRpi+IVJ+co3?=
 =?us-ascii?Q?EffaPXDczfMBS5jvUj72k2jw7hjsPsIZYKg16kW4a/v98XN/pkk6npN9SEHZ?=
 =?us-ascii?Q?4GYvgwLQKeppdFCUOcj4lt4F?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 391c1338-cde5-43b4-dca0-08d98e3bd138
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2021 11:23:01.5884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: caxr25lyEMBXdbsjXHihbR+B0hUTlAiediIuhyPpUPznA4GkpWSX8t9QfLk4Y/pf5Do067wUFleMUkxpeK2U1IiCsarqOUuUQuHQc5rLlNk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3545
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_042308_924293_98543DFB 
X-CRM114-Status: GOOD (  19.66  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/1] gpio: add driver for xilinx zynq and zynqmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

Port the driver for the Xilinx Zynq/Zynq UltraScale+ MPSoC architecture
to barebox (based on the Linux driver).

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
[apply format fixes, revise probe function, revise Kconfig]
Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
v2:
- add CONFIG_GPIO_ZYNQ=y to zynq{mp}_defconfig
- revise Kconfig
- revise and clean up probe function

 arch/arm/Kconfig                  |   2 +
 arch/arm/configs/zynq_defconfig   |   1 +
 arch/arm/configs/zynqmp_defconfig |   1 +
 drivers/gpio/Kconfig              |   7 +
 drivers/gpio/Makefile             |   1 +
 drivers/gpio/gpio-zynq.c          | 436 ++++++++++++++++++++++++++++++
 6 files changed, 448 insertions(+)
 create mode 100644 drivers/gpio/gpio-zynq.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c7ab16688..a8b7bdeaa 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -248,6 +248,7 @@ config ARCH_ZYNQ
 	bool "Xilinx Zynq-based boards"
 	select HAS_DEBUG_LL
 	select PBL_IMAGE
+	select GPIOLIB
 
 config ARCH_ZYNQMP
 	bool "Xilinx ZynqMP-based boards"
@@ -258,6 +259,7 @@ config ARCH_ZYNQMP
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select CLKDEV_LOOKUP
+	select GPIOLIB
 	select OFDEVICE
 	select OFTREE
 	select RELOCATABLE
diff --git a/arch/arm/configs/zynq_defconfig b/arch/arm/configs/zynq_defconfig
index a16c57d5c..38662eeb5 100644
--- a/arch/arm/configs/zynq_defconfig
+++ b/arch/arm/configs/zynq_defconfig
@@ -45,3 +45,4 @@ CONFIG_DRIVER_NET_MACB=y
 # CONFIG_PINCTRL is not set
 CONFIG_FS_TFTP=y
 CONFIG_DIGEST=y
+CONFIG_GPIO_ZYNQ=y
diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_defconfig
index 2cd878133..8dd0f40b3 100644
--- a/arch/arm/configs/zynqmp_defconfig
+++ b/arch/arm/configs/zynqmp_defconfig
@@ -64,3 +64,4 @@ CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_DIGEST=y
+CONFIG_GPIO_ZYNQ=y
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index f79c9ea67..347a719f5 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -197,6 +197,13 @@ config GPIO_LIBFTDI1
 	bool "libftdi1 driver"
 	depends on SANDBOX
 
+config GPIO_ZYNQ
+	tristate "Xilinx Zynq GPIO support"
+	depends on ARCH_ZYNQ || ARCH_ZYNQMP || CROSS_COMPILE
+	depends on OFDEVICE
+	help
+	  Say yes here to support Xilinx Zynq GPIO controller.
+
 endmenu
 
 endif
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 023973cb6..d9f96e34c 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -26,3 +26,4 @@ obj-$(CONFIG_GPIO_VF610)	+= gpio-vf610.o
 obj-$(CONFIG_GPIO_RASPBERRYPI_EXP) += gpio-raspberrypi-exp.o
 obj-$(CONFIG_GPIO_SIFIVE)	+= gpio-sifive.o
 obj-$(CONFIG_GPIO_STARFIVE)	+= gpio-starfive-vic.o
+obj-$(CONFIG_GPIO_ZYNQ)		+= gpio-zynq.o
diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
new file mode 100644
index 000000000..bb7785761
--- /dev/null
+++ b/drivers/gpio/gpio-zynq.c
@@ -0,0 +1,436 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Xilinx Zynq GPIO device driver
+ *
+ * Copyright (C) 2009 - 2014 Xilinx, Inc.
+ *
+ * Based on the Linux kernel driver (drivers/gpio/gpio-zynq.c).
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <gpio.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+
+/* Maximum banks */
+#define ZYNQ_GPIO_MAX_BANK	     4
+#define ZYNQMP_GPIO_MAX_BANK	     6
+
+#define ZYNQ_GPIO_BANK0_NGPIO	     32
+#define ZYNQ_GPIO_BANK1_NGPIO	     22
+#define ZYNQ_GPIO_BANK2_NGPIO	     32
+#define ZYNQ_GPIO_BANK3_NGPIO	     32
+
+#define ZYNQMP_GPIO_BANK0_NGPIO	     26
+#define ZYNQMP_GPIO_BANK1_NGPIO	     26
+#define ZYNQMP_GPIO_BANK2_NGPIO	     26
+#define ZYNQMP_GPIO_BANK3_NGPIO	     32
+#define ZYNQMP_GPIO_BANK4_NGPIO	     32
+#define ZYNQMP_GPIO_BANK5_NGPIO	     32
+
+#define ZYNQ_GPIO_NR_GPIOS	     118
+#define ZYNQMP_GPIO_NR_GPIOS	     174
+
+#define ZYNQ_GPIO_BANK0_PIN_MIN(str) 0
+#define ZYNQ_GPIO_BANK0_PIN_MAX(str)                                           \
+	(ZYNQ_GPIO_BANK0_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK0_NGPIO - 1)
+#define ZYNQ_GPIO_BANK1_PIN_MIN(str) (ZYNQ_GPIO_BANK0_PIN_MAX(str) + 1)
+#define ZYNQ_GPIO_BANK1_PIN_MAX(str)                                           \
+	(ZYNQ_GPIO_BANK1_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK1_NGPIO - 1)
+#define ZYNQ_GPIO_BANK2_PIN_MIN(str) (ZYNQ_GPIO_BANK1_PIN_MAX(str) + 1)
+#define ZYNQ_GPIO_BANK2_PIN_MAX(str)                                           \
+	(ZYNQ_GPIO_BANK2_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK2_NGPIO - 1)
+#define ZYNQ_GPIO_BANK3_PIN_MIN(str) (ZYNQ_GPIO_BANK2_PIN_MAX(str) + 1)
+#define ZYNQ_GPIO_BANK3_PIN_MAX(str)                                           \
+	(ZYNQ_GPIO_BANK3_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK3_NGPIO - 1)
+#define ZYNQ_GPIO_BANK4_PIN_MIN(str) (ZYNQ_GPIO_BANK3_PIN_MAX(str) + 1)
+#define ZYNQ_GPIO_BANK4_PIN_MAX(str)                                           \
+	(ZYNQ_GPIO_BANK4_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK4_NGPIO - 1)
+#define ZYNQ_GPIO_BANK5_PIN_MIN(str) (ZYNQ_GPIO_BANK4_PIN_MAX(str) + 1)
+#define ZYNQ_GPIO_BANK5_PIN_MAX(str)                                           \
+	(ZYNQ_GPIO_BANK5_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK5_NGPIO - 1)
+
+/* Register offsets for the GPIO device */
+/* LSW Mask & Data -WO */
+#define ZYNQ_GPIO_DATA_LSW_OFFSET(BANK) (0x000 + (8 * BANK))
+/* MSW Mask & Data -WO */
+#define ZYNQ_GPIO_DATA_MSW_OFFSET(BANK) (0x004 + (8 * BANK))
+/* Data Register-RW */
+#define ZYNQ_GPIO_DATA_OFFSET(BANK)	(0x040 + (4 * BANK))
+#define ZYNQ_GPIO_DATA_RO_OFFSET(BANK)	(0x060 + (4 * BANK))
+/* Direction mode reg-RW */
+#define ZYNQ_GPIO_DIRM_OFFSET(BANK)	(0x204 + (0x40 * BANK))
+/* Output enable reg-RW */
+#define ZYNQ_GPIO_OUTEN_OFFSET(BANK)	(0x208 + (0x40 * BANK))
+/* Interrupt mask reg-RO */
+#define ZYNQ_GPIO_INTMASK_OFFSET(BANK)	(0x20C + (0x40 * BANK))
+/* Interrupt enable reg-WO */
+#define ZYNQ_GPIO_INTEN_OFFSET(BANK)	(0x210 + (0x40 * BANK))
+/* Interrupt disable reg-WO */
+#define ZYNQ_GPIO_INTDIS_OFFSET(BANK)	(0x214 + (0x40 * BANK))
+/* Interrupt status reg-RO */
+#define ZYNQ_GPIO_INTSTS_OFFSET(BANK)	(0x218 + (0x40 * BANK))
+/* Interrupt type reg-RW */
+#define ZYNQ_GPIO_INTTYPE_OFFSET(BANK)	(0x21C + (0x40 * BANK))
+/* Interrupt polarity reg-RW */
+#define ZYNQ_GPIO_INTPOL_OFFSET(BANK)	(0x220 + (0x40 * BANK))
+/* Interrupt on any, reg-RW */
+#define ZYNQ_GPIO_INTANY_OFFSET(BANK)	(0x224 + (0x40 * BANK))
+
+/* Disable all interrupts mask */
+#define ZYNQ_GPIO_IXR_DISABLE_ALL	0xFFFFFFFF
+
+/* Mid pin number of a bank */
+#define ZYNQ_GPIO_MID_PIN_NUM		16
+
+/* GPIO upper 16 bit mask */
+#define ZYNQ_GPIO_UPPER_MASK		0xFFFF0000
+
+/* set to differentiate zynq from zynqmp, 0=zynqmp, 1=zynq */
+#define ZYNQ_GPIO_QUIRK_IS_ZYNQ		BIT(0)
+#define GPIO_QUIRK_DATA_RO_BUG		BIT(1)
+
+/**
+ * struct zynq_gpio - GPIO device private data structure
+ * @chip:	instance of the gpio_chip
+ * @base_addr:	base address of the GPIO device
+ * @p_data:	pointer to platform data
+ */
+struct zynq_gpio {
+	struct gpio_chip chip;
+	void __iomem *base_addr;
+	const struct zynq_platform_data *p_data;
+};
+
+/**
+ * struct zynq_platform_data - Zynq GPIO platform data structure
+ * @quirks:	Flags is used to identify the platform
+ * @ngpio:	max number of gpio pins
+ * @max_bank:	maximum number of gpio banks
+ * @bank_min:	this array represents bank's min pin
+ * @bank_max:	this array represents bank's max pin
+ */
+struct zynq_platform_data {
+	u32 quirks;
+	u16 ngpio;
+	int max_bank;
+	int bank_min[ZYNQMP_GPIO_MAX_BANK];
+	int bank_max[ZYNQMP_GPIO_MAX_BANK];
+};
+
+/**
+ * zynq_gpio_is_zynq - Test if HW is Zynq or ZynqMP
+ * @gpio:	Pointer to driver data struct
+ *
+ * Return: 0 if ZynqMP, 1 if Zynq.
+ */
+static int zynq_gpio_is_zynq(struct zynq_gpio *gpio)
+{
+	return !!(gpio->p_data->quirks & ZYNQ_GPIO_QUIRK_IS_ZYNQ);
+}
+
+/**
+ * gpio_data_ro_bug - Test if HW bug exists or not
+ * @gpio:       Pointer to driver data struct
+ *
+ * Return: 0 if bug does not exist, 1 if bug exists.
+ */
+static int gpio_data_ro_bug(struct zynq_gpio *gpio)
+{
+	return !!(gpio->p_data->quirks & GPIO_QUIRK_DATA_RO_BUG);
+}
+
+/**
+ * zynq_gpio_get_bank_pin - Get the bank number and pin number within that bank
+ * for a given pin in the GPIO device
+ * @pin_num:	gpio pin number within the device
+ * @bank_num:	an output parameter used to return the bank number of the gpio
+ *		pin
+ * @bank_pin_num: an output parameter used to return pin number within a bank
+ *		  for the given gpio pin
+ * @gpio:	gpio device data structure
+ *
+ * Returns the bank number and pin offset within the bank.
+ */
+static int zynq_gpio_get_bank_pin(unsigned int pin_num, unsigned int *bank_num,
+				  unsigned int *bank_pin_num,
+				  struct zynq_gpio *gpio)
+{
+	int bank;
+
+	for (bank = 0; bank < gpio->p_data->max_bank; bank++) {
+		if ((pin_num >= gpio->p_data->bank_min[bank]) &&
+		    (pin_num <= gpio->p_data->bank_max[bank])) {
+			*bank_num = bank;
+			*bank_pin_num = pin_num - gpio->p_data->bank_min[bank];
+			return 0;
+		}
+	}
+
+	*bank_num = 0;
+	*bank_pin_num = 0;
+	return -ENODEV;
+}
+
+/**
+ * zynq_gpio_get_value - Get the state of the specified pin of GPIO device
+ * @chip:	gpio_chip instance to be worked on
+ * @pin:	gpio pin number within the device
+ *
+ * This function reads the state of the specified pin of the GPIO device.
+ *
+ * Return: 0 if the pin is low, 1 if pin is high.
+ */
+static int zynq_gpio_get_value(struct gpio_chip *chip, unsigned int pin)
+{
+	u32 data;
+	unsigned int bank_num, bank_pin_num;
+	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
+
+	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
+		return -EINVAL;
+
+	if (gpio_data_ro_bug(gpio)) {
+		if (zynq_gpio_is_zynq(gpio)) {
+			if (bank_num <= 1) {
+				data = readl_relaxed(
+					gpio->base_addr +
+					ZYNQ_GPIO_DATA_RO_OFFSET(bank_num));
+			} else {
+				data = readl_relaxed(
+					gpio->base_addr +
+					ZYNQ_GPIO_DATA_OFFSET(bank_num));
+			}
+		} else {
+			if (bank_num <= 2) {
+				data = readl_relaxed(
+					gpio->base_addr +
+					ZYNQ_GPIO_DATA_RO_OFFSET(bank_num));
+			} else {
+				data = readl_relaxed(
+					gpio->base_addr +
+					ZYNQ_GPIO_DATA_OFFSET(bank_num));
+			}
+		}
+	} else {
+		data = readl_relaxed(gpio->base_addr +
+				     ZYNQ_GPIO_DATA_RO_OFFSET(bank_num));
+	}
+	return (data >> bank_pin_num) & 1;
+}
+
+/**
+ * zynq_gpio_set_value - Modify the state of the pin with specified value
+ * @chip:	gpio_chip instance to be worked on
+ * @pin:	gpio pin number within the device
+ * @state:	value used to modify the state of the specified pin
+ *
+ * This function calculates the register offset (i.e to lower 16 bits or
+ * upper 16 bits) based on the given pin number and sets the state of a
+ * gpio pin to the specified value. The state is either 0 or non-zero.
+ */
+static void zynq_gpio_set_value(struct gpio_chip *chip, unsigned int pin,
+				int state)
+{
+	unsigned int reg_offset, bank_num, bank_pin_num;
+	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
+
+	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
+		return;
+
+	if (bank_pin_num >= ZYNQ_GPIO_MID_PIN_NUM) {
+		bank_pin_num -= ZYNQ_GPIO_MID_PIN_NUM;
+		reg_offset = ZYNQ_GPIO_DATA_MSW_OFFSET(bank_num);
+	} else {
+		reg_offset = ZYNQ_GPIO_DATA_LSW_OFFSET(bank_num);
+	}
+
+	/*
+	 * get the 32 bit value to be written to the mask/data register where
+	 * the upper 16 bits is the mask and lower 16 bits is the data
+	 */
+	state = !!state;
+	state = ~(1 << (bank_pin_num + ZYNQ_GPIO_MID_PIN_NUM)) &
+		((state << bank_pin_num) | ZYNQ_GPIO_UPPER_MASK);
+
+	writel_relaxed(state, gpio->base_addr + reg_offset);
+}
+
+/**
+ * zynq_gpio_dir_in - Set the direction of the specified GPIO pin as input
+ * @chip:	gpio_chip instance to be worked on
+ * @pin:	gpio pin number within the device
+ *
+ * This function uses the read-modify-write sequence to set the direction of
+ * the gpio pin as input.
+ *
+ * Return: 0 always
+ */
+static int zynq_gpio_dir_in(struct gpio_chip *chip, unsigned int pin)
+{
+	u32 reg;
+	unsigned int bank_num, bank_pin_num;
+	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
+
+	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
+		return -EINVAL;
+	/*
+	 * On zynq bank 0 pins 7 and 8 are special and cannot be used
+	 * as inputs.
+	 */
+	if (zynq_gpio_is_zynq(gpio) && bank_num == 0 &&
+	    (bank_pin_num == 7 || bank_pin_num == 8))
+		return -EINVAL;
+
+	/* clear the bit in direction mode reg to set the pin as input */
+	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
+	reg &= ~BIT(bank_pin_num);
+	writel_relaxed(reg, gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
+
+	return 0;
+}
+
+/**
+ * zynq_gpio_dir_out - Set the direction of the specified GPIO pin as output
+ * @chip:	gpio_chip instance to be worked on
+ * @pin:	gpio pin number within the device
+ * @state:	value to be written to specified pin
+ *
+ * This function sets the direction of specified GPIO pin as output, configures
+ * the Output Enable register for the pin and uses zynq_gpio_set to set
+ * the state of the pin to the value specified.
+ *
+ * Return: 0 always
+ */
+static int zynq_gpio_dir_out(struct gpio_chip *chip, unsigned int pin,
+			     int state)
+{
+	u32 reg;
+	unsigned int bank_num, bank_pin_num;
+	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
+
+	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
+		return -EINVAL;
+
+	/* set the GPIO pin as output */
+	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
+	reg |= BIT(bank_pin_num);
+	writel_relaxed(reg, gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
+
+	/* configure the output enable reg for the pin */
+	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_OUTEN_OFFSET(bank_num));
+	reg |= BIT(bank_pin_num);
+	writel_relaxed(reg, gpio->base_addr + ZYNQ_GPIO_OUTEN_OFFSET(bank_num));
+
+	/* set the state of the pin */
+	zynq_gpio_set_value(chip, pin, state);
+	return 0;
+}
+
+/**
+ * zynq_gpio_get_direction - Read the direction of the specified GPIO pin
+ * @chip:	gpio_chip instance to be worked on
+ * @pin:	gpio pin number within the device
+ *
+ * This function returns the direction of the specified GPIO.
+ *
+ * Return: 0 for output, 1 for input
+ */
+static int zynq_gpio_get_direction(struct gpio_chip *chip, unsigned int pin)
+{
+	u32 reg;
+	unsigned int bank_num, bank_pin_num;
+	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
+
+	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
+		return -EINVAL;
+
+	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
+
+	return !(reg & BIT(bank_pin_num));
+}
+
+static struct gpio_ops zynq_gpio_ops = {
+	.direction_input = zynq_gpio_dir_in,
+	.direction_output = zynq_gpio_dir_out,
+	.get = zynq_gpio_get_value,
+	.set = zynq_gpio_set_value,
+	.get_direction = zynq_gpio_get_direction,
+};
+
+static int zynqmp_gpio_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct zynq_gpio *gpio;
+	const struct zynq_platform_data *p_data;
+	int ret;
+
+	gpio = xzalloc(sizeof(*gpio));
+	p_data = device_get_match_data(dev);
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		ret = PTR_ERR(iores);
+		goto free_gpio;
+	}
+
+	gpio->base_addr = IOMEM(iores->start);
+	gpio->chip.base = of_alias_get_id(dev->device_node, "gpio");
+	gpio->chip.ops = &zynq_gpio_ops;
+	gpio->chip.ngpio = p_data->ngpio;
+	gpio->chip.dev = dev;
+	gpio->p_data = p_data;
+
+	return gpiochip_add(&gpio->chip);
+
+free_gpio:
+	kfree(gpio);
+	return ret;
+}
+
+static const struct zynq_platform_data zynqmp_gpio_def = {
+	.quirks = GPIO_QUIRK_DATA_RO_BUG,
+	.ngpio = ZYNQMP_GPIO_NR_GPIOS,
+	.max_bank = ZYNQMP_GPIO_MAX_BANK,
+	.bank_min[0] = ZYNQ_GPIO_BANK0_PIN_MIN(MP),
+	.bank_max[0] = ZYNQ_GPIO_BANK0_PIN_MAX(MP),
+	.bank_min[1] = ZYNQ_GPIO_BANK1_PIN_MIN(MP),
+	.bank_max[1] = ZYNQ_GPIO_BANK1_PIN_MAX(MP),
+	.bank_min[2] = ZYNQ_GPIO_BANK2_PIN_MIN(MP),
+	.bank_max[2] = ZYNQ_GPIO_BANK2_PIN_MAX(MP),
+	.bank_min[3] = ZYNQ_GPIO_BANK3_PIN_MIN(MP),
+	.bank_max[3] = ZYNQ_GPIO_BANK3_PIN_MAX(MP),
+	.bank_min[4] = ZYNQ_GPIO_BANK4_PIN_MIN(MP),
+	.bank_max[4] = ZYNQ_GPIO_BANK4_PIN_MAX(MP),
+	.bank_min[5] = ZYNQ_GPIO_BANK5_PIN_MIN(MP),
+	.bank_max[5] = ZYNQ_GPIO_BANK5_PIN_MAX(MP),
+};
+
+static const struct zynq_platform_data zynq_gpio_def = {
+	.quirks = ZYNQ_GPIO_QUIRK_IS_ZYNQ | GPIO_QUIRK_DATA_RO_BUG,
+	.ngpio = ZYNQ_GPIO_NR_GPIOS,
+	.max_bank = ZYNQ_GPIO_MAX_BANK,
+	.bank_min[0] = ZYNQ_GPIO_BANK0_PIN_MIN(),
+	.bank_max[0] = ZYNQ_GPIO_BANK0_PIN_MAX(),
+	.bank_min[1] = ZYNQ_GPIO_BANK1_PIN_MIN(),
+	.bank_max[1] = ZYNQ_GPIO_BANK1_PIN_MAX(),
+	.bank_min[2] = ZYNQ_GPIO_BANK2_PIN_MIN(),
+	.bank_max[2] = ZYNQ_GPIO_BANK2_PIN_MAX(),
+	.bank_min[3] = ZYNQ_GPIO_BANK3_PIN_MIN(),
+	.bank_max[3] = ZYNQ_GPIO_BANK3_PIN_MAX(),
+};
+
+static const struct of_device_id zynq_gpio_of_match[] = {
+	{ .compatible = "xlnx,zynq-gpio-1.0", .data = &zynq_gpio_def },
+	{ .compatible = "xlnx,zynqmp-gpio-1.0", .data = &zynqmp_gpio_def },
+	{ /* end of table */ }
+};
+
+static struct driver_d zynqmp_gpio_driver = {
+	.name = "zynqmp-gpio",
+	.of_compatible = zynq_gpio_of_match,
+	.probe = zynqmp_gpio_probe,
+};
+
+postcore_platform_driver(zynqmp_gpio_driver);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

