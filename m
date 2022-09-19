Delivery-date: Mon, 19 Sep 2022 13:42:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAw-009YBs-Uk
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 13:42:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAu-0001YT-18
	for lore@pengutronix.de; Mon, 19 Sep 2022 13:42:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v5u1wX5yz8YKZK1wVXLQvBLbCwpK9oRhuseOUrrSFEQ=; b=MnkK99UVTA8X4DCGCMZiWTl0NU
	31ZWP3k3y/osC9uq6OyLfWyjT8XTaGP4y2s3dCJMIUSZkR+DsWk/B2RC/BAgNtuFU+BfTLvjfswyO
	2wPB7+M5OMSxOsVNvjwjS/bqeXQGgf1CcRpgmdqL0ixAdGg07CuW1ia91WvYwdrq2Jb0UC67MDOaF
	D0kwHjwafB9u4PaA5B1tjxoteoenEgYoaoJZybS8dVc5sanxPCQfrSZYm1eAg2iI4L1yLHV7I5xP3
	ykiWKGamy1NZMJOGJGhkfES4fN79HR/cO13/cM+pB11Nh7z9eFWeV0yfvGEe8zlKA71lPQ29pnlNE
	8s2IDJXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF8Q-00BXuV-A5; Mon, 19 Sep 2022 11:40:22 +0000
Received: from mail-db8eur05on2087.outbound.protection.outlook.com ([40.107.20.87] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF8E-00BXqM-1t
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 11:40:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DaOQiYqRmDe31UgPigviAAsfYnmQkBDtBg8XTLJ0cqRIdXsQXNnkug9DLcxthNYFv2O87XEentyge67u+24gAndw0JLbiB743NhGhkFV3haarKxwiH1ShZq0RT/ChlASzyOEaDF96oNHxMo74n51bzVmEdelolbxJuDbNJGrTZmAdUf22eM+TMxQoCogHMlvTAcCRcwNVC6SwvcT9sfbURHYcnR/Sp4XOrUrOypFniuY3AbOkC2a8n+VFtfxZRnP772Kt3fP3J1r5vxuXpEX5limzBhYd1G5JYVxvY5sRArkGvC2GgJ18f3as6uwz1EDRIAY7NjfRcyJOuuNa/khqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v5u1wX5yz8YKZK1wVXLQvBLbCwpK9oRhuseOUrrSFEQ=;
 b=n1+4DFTxSHpBTD+T6aAD7xj2ll5wKVSX70lFhCW3A6XGPop2DPrhdHOFOqbasSrkE6dnF/DwnrLqQtZYviOdUVFs+v6Jv9r3N2yYJce+2mMMjXWcSfvq4UR2Vx57jHd7YD1VrqrLlFKxBbkEJeFNDUiMm6zsqyvp7XhbxWKqyDwZz1g0fbY5iN4rgL9fmE73u2Ng+veBuHshWaZzFmxESHZmpxKkvZmX5p8OFf0hVCMvrlBYBTLBWyPuW/ZteUAeh8pGCmHp5CYrUBO87U9k2nnEAba6mAlCXqOVbi65JzGm0qtKxM4fB4D3wpmtAFS/12vCljHucLmWnpdhwNzW/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v5u1wX5yz8YKZK1wVXLQvBLbCwpK9oRhuseOUrrSFEQ=;
 b=UTBAYRisN6Po421QTxeXfVLKF3MdqpthlUXLV616POjK733YB0OgVXxqkuCn16mjX2g1mM/EiwBLfY+GjQS0DNyOUst2hkmU/VNUZkypQKMOpbxJ9iFfVyN6h8VUZm/UBwe7xVHpUAjQfwPsYZfCfkvFe3z34WOxlIJt2Yr0Azk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV2PR08MB8272.eurprd08.prod.outlook.com (2603:10a6:150:b7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.18; Mon, 19 Sep
 2022 11:40:00 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%6]) with mapi id 15.20.5632.017; Mon, 19 Sep 2022
 11:40:00 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 19 Sep 2022 13:39:42 +0200
Message-Id: <20220919113948.991245-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220919113948.991245-1-michael.riesch@wolfvision.net>
References: <20220919113948.991245-1-michael.riesch@wolfvision.net>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VE1PR03CA0042.eurprd03.prod.outlook.com
 (2603:10a6:803:118::31) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV2PR08MB8272:EE_
X-MS-Office365-Filtering-Correlation-Id: ce64ca45-3206-4345-624c-08da9a33afa1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	b+WdrSgpfv3D069lYQ81hzbIMSi26aDketKgPSVL2BX5l+wD/m9avrNPMYPpnMsjAR87V6lI0YYPqEBmRk1ppDzA5R8rAmSxTXvxWiVWhi1fUI8FlWBqv5OBqy6OZShIVU/cErgzZB8Vt+0K5hVSydRUbevtKTaTZDYCwduetXWdbIW/AV0do/dJq06QWIW3XMTn8ghe93EaFPDteXWJqlh+vL/awjhqDqtAJIT8OKmMzELoxHicC0dN7XVqdLZX66uYSvISW27O+kKrwuBTGvfCsjgkDXpluHlbd3M3f/oiKrlOwiIizsN7Ntb7RCcxDnahh2FVEVL/CF1Lrqk6GSSKLIiY9s0e4/DEVplL2OwG38uyjp6LjwGxZnU8f87smNApM6q8SXRmO9gG/BMl12vON+3sTOJ410+YhWsKbnU0pX3OeUSP/lYImEvtDVhmAvX40/NSFx8mal6Fo2/MqdSF/Y/ttU+dvFRCkftxXB0Yv3AUDfs9Ug7Jy7HMRPa0hWq2MzhHiMXb+kZrixWtaSOIB+CdnFbnQ6ijC9eNXIEg7QF7jFjNGziR8iiGsnghob+VRpTkNiWsKFwnt62/iEd7Y+UTMU2oJT4OvBkMXzX1TCFt1ey6qURV8qsro8EL7F+ejoOJEbvMwuGk/E2UCGNBiFnqdp4D5tvUxLsO6awJrlcgkSJlNWAf/U9dn+VTxl9UX6k4Dj9I05YHsbmTJw==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(39840400004)(396003)(366004)(451199015)(6486002)(6916009)(54906003)(478600001)(316002)(5660300002)(8936002)(6512007)(83380400001)(6666004)(66946007)(8676002)(41300700001)(4326008)(66556008)(66476007)(86362001)(6506007)(52116002)(2906002)(36756003)(38100700002)(1076003)(186003)(44832011)(107886003)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?qKor14VAOFApxGcEnZvGF/OF5Qw2C0jmo2unRR7GKvXGaUb4T4hta9L2a4zJ?=
 =?us-ascii?Q?HMFykMt/rLTwaLl3kZKnkqBQEOiGvF+COkmZqsfYEw9EDSGzNbdqkHCODtmJ?=
 =?us-ascii?Q?dTc8bVQmiZbjj069djv6KgxFA1APtqxHzI2AunBDsFmFqbLo+QRX52WdxwBs?=
 =?us-ascii?Q?rKmvflOujmlxr0B74Uv5DJK222W2YDqKI2Jhz0I5r1qWTbC/uukqVmImE0/7?=
 =?us-ascii?Q?DNNSHGKcyG0kWuTC+Ttas2lUfOQzqioVnnK5is9yS9xHDSPf+Z1JQwHRleyo?=
 =?us-ascii?Q?A3TZbeIXZormfan8pSsBgWikDgZgwYC4Vd2AdkmuIGEd8GR6DJSIxPtDhRtg?=
 =?us-ascii?Q?fy3ZmDoYbHQg5UFs9wUdjAxHOWHSMDGml/llPiSHJEEf/rYhidAop4actujp?=
 =?us-ascii?Q?w+go9bqHaG/Yn03lgcCpuIP3W+18LnT8YTwqdJaehGJYL4Y6u2LeUFNvhBYN?=
 =?us-ascii?Q?ymmHRAXaRgb2GK5oXLjmQVBk1wbAbgLSpd6CpQ4r2oMG1NQHLyG0YI/40034?=
 =?us-ascii?Q?26/p9H+fWIKhEMxZX7YAf0zKSyVFMpmlrBvME+CtPVf8kvrZ/IaT4a6XWDqh?=
 =?us-ascii?Q?QIGUs4zahz0Xsy0CHae3cPL2Ge94fSf0/DvlVhADyfJj6cW+dTt8dCZnWVUB?=
 =?us-ascii?Q?ZVTJ6fb2XR7p5YrnwYnDzecleQVj4GNuBK48VQFOZonE8r7pTFL44UzzumQl?=
 =?us-ascii?Q?lYBaWizzsKPUtKEX/DZemh258OyT6zBesAIhzz0MbrwOLUBOSgiUcTTLiRQL?=
 =?us-ascii?Q?VM3BDynt3Hq6sIDWTSyM705MKP8hccx597IrIK+jdfpiO6S5kbi0/fQhP5yv?=
 =?us-ascii?Q?+zeEd4qQpZa33DEFwgObTWjHYr93+UDSwmzqf2qHEcObCNvqRtLWPUI7s+0K?=
 =?us-ascii?Q?UEBrilctZFSZf3rF+Czl2ktY8czYQqt6A4Xlo4zf8xNiuiX79elaNcheVGKs?=
 =?us-ascii?Q?IIlY5VCKrRuvuZ+yntqsBfe+OUGm/vp/GpdfOac5kQS5YpbApzMCfLXpnWNu?=
 =?us-ascii?Q?7hSWSFVXuJEXMHdRddM12aJNenNI4T4rK4fwcHq6v2ti3q6rgmiFDq7QX2xt?=
 =?us-ascii?Q?ftxc5fxsrkixhuGN3yTa3V2Gy7SJAtfoWaSxLIPbPPOMVs6ti2r/ZWYFJdIp?=
 =?us-ascii?Q?s3twz1NjA9hPx1JU1P3nY2TCOB9xkDQETJFcpQVbEQQTkb0e4OcocVz7JGtN?=
 =?us-ascii?Q?6GYoWRYoyRjhG7gE1M6+6WI2z7sUXqjNGHYDltjMa1AtBnvAIdDe7tijlLLL?=
 =?us-ascii?Q?/F4po/aarkHQymB66BbmfmkReS3KFkd/Wi5ckafWlOIFsx2jMTQ9RPXEWgTQ?=
 =?us-ascii?Q?1lLno7hN/qKr7pNHNw0j05JBDp4L5IgllV4rk1kXcc7zegEYooDVSlaaOTh5?=
 =?us-ascii?Q?iZ6dvrr7es0bGv7gmzbFd4D28lhMXPNa79xFG3uqJ1kjwGY19+13t4SZwHCD?=
 =?us-ascii?Q?Vdz4haINQOHpQL5ay/vLBbaeuGPuH9Xc8p2iKrv/VWRhkNgkdZIh9rYGCQuF?=
 =?us-ascii?Q?kh26GxdQjIINSdab1vrUdMHPIUeOs+XRjOO52ewChD0gs0cvL1dxbovjIr7/?=
 =?us-ascii?Q?10hgQ90Jg1J+F8aisQG0lI1Ew0aQ0c0OHLNLncA0Rg0C8LffIi8Bam9KOK5e?=
 =?us-ascii?Q?OsN2QyAgA9EQpDprhjEDTYivShFSN7sWwL5W5n7H6DZwHAhORjmH3szqT6qP?=
 =?us-ascii?Q?Q2MLWtjqF9sRtuRE51mvoxJ+Wpc=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: ce64ca45-3206-4345-624c-08da9a33afa1
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 11:40:00.8194
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 98pUFIvjWiRxOjPG7K1E55gyNY2jsP9ac3kLcE53BrbuN+81gKC+1LcgA1p2uUmo4K3v8r2f6z1EWEZqqastOCP6T5nVdLCddAn3vqjakYo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8272
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_044010_267587_53513B12 
X-CRM114-Status: GOOD (  28.50  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/7] soc: rockchip: add driver for rockchip io domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The IO domains in Rockchip SoCs need to be configured to match the
corresponding bank voltage. In Linux this is achieved by means of a
platform driver that reads the voltage value of the supplies and
configures the bits in the general register file (GRF) accordingly.
Port this driver to barebox to provide support for the Rockchip
RK356x SoCs.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 drivers/soc/Kconfig              |   1 +
 drivers/soc/Makefile             |   1 +
 drivers/soc/rockchip/Kconfig     |  17 +++
 drivers/soc/rockchip/Makefile    |   6 +
 drivers/soc/rockchip/io-domain.c | 223 +++++++++++++++++++++++++++++++
 5 files changed, 248 insertions(+)
 create mode 100644 drivers/soc/rockchip/Kconfig
 create mode 100644 drivers/soc/rockchip/Makefile
 create mode 100644 drivers/soc/rockchip/io-domain.c

diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
index 54b69cc42e..c0fe214429 100644
--- a/drivers/soc/Kconfig
+++ b/drivers/soc/Kconfig
@@ -2,5 +2,6 @@ menu "SoC drivers"
 
 source "drivers/soc/imx/Kconfig"
 source "drivers/soc/kvx/Kconfig"
+source "drivers/soc/rockchip/Kconfig"
 
 endmenu
diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index a23e81ffb3..9bff737b78 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -2,5 +2,6 @@
 
 obj-$(CONFIG_ARCH_IMX)		+= imx/
 obj-$(CONFIG_KVX)		+= kvx/
+obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_CPU_SIFIVE)	+= sifive/
 obj-$(CONFIG_SOC_STARFIVE)	+= starfive/
diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
new file mode 100644
index 0000000000..3484b37e22
--- /dev/null
+++ b/drivers/soc/rockchip/Kconfig
@@ -0,0 +1,17 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+if ARCH_ROCKCHIP || COMPILE_TEST
+
+menu "Rockchip SoC drivers"
+
+config ROCKCHIP_IODOMAIN
+	tristate "Rockchip IO domain support"
+	depends on OFDEVICE
+	help
+	  Say y here to enable support io domains on Rockchip SoCs. It is
+	  necessary for the io domain setting of the SoC to match the
+	  voltage supplied by the regulators.
+
+endmenu
+
+endif
diff --git a/drivers/soc/rockchip/Makefile b/drivers/soc/rockchip/Makefile
new file mode 100644
index 0000000000..104fad968e
--- /dev/null
+++ b/drivers/soc/rockchip/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Rockchip Soc drivers
+#
+
+obj-$(CONFIG_ROCKCHIP_IODOMAIN) += io-domain.o
diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
new file mode 100644
index 0000000000..ac5724c0e7
--- /dev/null
+++ b/drivers/soc/rockchip/io-domain.c
@@ -0,0 +1,223 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Rockchip IO Voltage Domain driver
+ *
+ * Copyright 2014 MundoReader S.L.
+ * Copyright 2014 Google, Inc.
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <linux/err.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+#include <regulator.h>
+
+#define MAX_SUPPLIES		16
+
+/*
+ * The max voltage for 1.8V and 3.3V come from the Rockchip datasheet under
+ * "Recommended Operating Conditions" for "Digital GPIO".   When the typical
+ * is 3.3V the max is 3.6V.  When the typical is 1.8V the max is 1.98V.
+ *
+ * They are used like this:
+ * - If the voltage on a rail is above the "1.8" voltage (1.98V) we'll tell the
+ *   SoC we're at 3.3.
+ * - If the voltage on a rail is above the "3.3" voltage (3.6V) we'll consider
+ *   that to be an error.
+ */
+#define MAX_VOLTAGE_1_8		1980000
+#define MAX_VOLTAGE_3_3		3600000
+
+#define RK3568_PMU_GRF_IO_VSEL0 (0x0140)
+#define RK3568_PMU_GRF_IO_VSEL1 (0x0144)
+#define RK3568_PMU_GRF_IO_VSEL2 (0x0148)
+
+struct rockchip_iodomain;
+
+struct rockchip_iodomain_supply {
+	struct rockchip_iodomain *iod;
+	struct regulator *reg;
+	int idx;
+};
+
+struct rockchip_iodomain_soc_data {
+	int grf_offset;
+	const char *supply_names[MAX_SUPPLIES];
+	void (*init)(struct rockchip_iodomain *iod);
+	int (*write)(struct rockchip_iodomain_supply *supply, int uV);
+};
+
+struct rockchip_iodomain {
+	struct device_d *dev;
+	struct regmap *grf;
+	const struct rockchip_iodomain_soc_data *soc_data;
+	struct rockchip_iodomain_supply supplies[MAX_SUPPLIES];
+	int (*write)(struct rockchip_iodomain_supply *supply, int uV);
+};
+
+static int rk3568_iodomain_write(struct rockchip_iodomain_supply *supply,
+				 int uV)
+{
+	struct rockchip_iodomain *iod = supply->iod;
+	u32 is_3v3 = uV > MAX_VOLTAGE_1_8;
+	u32 val0, val1;
+	int b;
+
+	dev_dbg(iod->dev, "set domain %d to %d uV\n", supply->idx, uV);
+
+	switch (supply->idx) {
+	case 0: /* pmuio1 */
+		break;
+	case 1: /* pmuio2 */
+		b = supply->idx;
+		val0 = BIT(16 + b) | (is_3v3 ? 0 : BIT(b));
+		b = supply->idx + 4;
+		val1 = BIT(16 + b) | (is_3v3 ? BIT(b) : 0);
+
+		regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL2, val0);
+		regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL2, val1);
+		break;
+	case 3: /* vccio2 */
+		break;
+	case 2: /* vccio1 */
+	case 4: /* vccio3 */
+	case 5: /* vccio4 */
+	case 6: /* vccio5 */
+	case 7: /* vccio6 */
+	case 8: /* vccio7 */
+		b = supply->idx - 1;
+		val0 = BIT(16 + b) | (is_3v3 ? 0 : BIT(b));
+		val1 = BIT(16 + b) | (is_3v3 ? BIT(b) : 0);
+
+		regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL0, val0);
+		regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL1, val1);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static const struct rockchip_iodomain_soc_data soc_data_rk3568_pmu = {
+	.grf_offset = 0x140,
+	.supply_names = {
+		"pmuio1",
+		"pmuio2",
+		"vccio1",
+		"vccio2",
+		"vccio3",
+		"vccio4",
+		"vccio5",
+		"vccio6",
+		"vccio7",
+	},
+	.write = rk3568_iodomain_write,
+};
+
+static const struct of_device_id rockchip_iodomain_match[] = {
+	{ .compatible = "rockchip,rk3568-pmu-io-voltage-domain",
+	  .data = &soc_data_rk3568_pmu },
+	{ /* sentinel */ },
+};
+
+static int rockchip_iodomain_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node, *parent;
+	struct rockchip_iodomain *iod;
+	int i, ret = 0;
+
+	if (!np)
+		return -ENODEV;
+
+	iod = xzalloc(sizeof(*iod));
+	iod->dev = dev;
+	iod->soc_data = device_get_match_data(dev);
+
+	if (iod->soc_data->write)
+		iod->write = iod->soc_data->write;
+
+	parent = of_get_parent(np);
+	if (parent) {
+		iod->grf = syscon_node_to_regmap(parent);
+	} else {
+		dev_dbg(dev, "falling back to old binding\n");
+		iod->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
+	}
+
+	if (IS_ERR(iod->grf)) {
+		dev_err(dev, "couldn't find grf regmap\n");
+		return PTR_ERR(iod->grf);
+	}
+
+	for (i = 0; i < MAX_SUPPLIES; i++) {
+		const char *supply_name = iod->soc_data->supply_names[i];
+		struct rockchip_iodomain_supply *supply = &iod->supplies[i];
+		struct regulator *reg;
+		int uV;
+
+		if (!supply_name)
+			continue;
+
+		reg = regulator_get(dev, supply_name);
+		if (IS_ERR(reg)) {
+			ret = PTR_ERR(reg);
+
+			/* If a supply wasn't specified, that's OK */
+			if (ret == -ENODEV)
+				continue;
+			else if (ret != -EPROBE_DEFER)
+				dev_err(dev, "couldn't get regulator %s\n",
+					supply_name);
+			goto out;
+		}
+
+		/* set initial correct value */
+		uV = regulator_get_voltage(reg);
+
+		/* must be a regulator we can get the voltage of */
+		if (uV < 0) {
+			dev_err(dev, "Can't determine voltage: %s\n",
+				supply_name);
+			ret = uV;
+			goto out;
+		}
+
+		if (uV > MAX_VOLTAGE_3_3) {
+			dev_crit(dev, "%d uV is too high. May damage SoC!\n",
+				 uV);
+			ret = -EINVAL;
+			goto out;
+		}
+
+		/* setup our supply */
+		supply->idx = i;
+		supply->iod = iod;
+		supply->reg = reg;
+
+		ret = iod->write(supply, uV);
+		if (ret) {
+			supply->reg = NULL;
+			goto out;
+		}
+	}
+
+	if (iod->soc_data->init)
+		iod->soc_data->init(iod);
+
+	ret = 0;
+out:
+	return ret;
+}
+
+static struct driver_d rockchip_iodomain_driver = {
+	.name = "rockchip-iodomain",
+	.probe = rockchip_iodomain_probe,
+	.of_compatible = rockchip_iodomain_match,
+};
+coredevice_platform_driver(rockchip_iodomain_driver);
-- 
2.30.2



