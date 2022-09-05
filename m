Delivery-date: Mon, 05 Sep 2022 19:17:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVFj7-007k5F-O4
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 19:17:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVFj7-00086F-4Z
	for lore@pengutronix.de; Mon, 05 Sep 2022 19:17:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UyYsBtc99Pll4qEz1qTJFuzbMMnSdbSlQspN8gyN8CE=; b=d4XkQYbVf6+7cJX1nCt2Nud3aQ
	nKIe6Tv27L7Lre2r2AHABRWKmPpmQWuh/IuOX0C2XyBwxZ1Vb1KloQTlwAKC6A6Cc3P/9d7bo7Byl
	532FYoAbaF6AWcS0GL6bVTrl5SJyD8kIn/GxZtq1HsHZV0UC9e9gBR0uEtY+SaNgI1he5Vzov4d6v
	iXjBg5vpZer4zmeptoBYjErh2nomZVAaIcu2ok9w1JLcrE9k++2TuP5dBth9NM2d9G8/j4mTGck1B
	8omfoCgm41CBjAHXiloB4XolFndI46+s82y/IJaC7UDtZ0MPRcu+TivhdlHhoSA+HdNchjIGsMLCM
	z5BwZ2Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVFh7-007N6n-5g; Mon, 05 Sep 2022 17:15:34 +0000
Received: from mail-eopbgr80074.outbound.protection.outlook.com ([40.107.8.74] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVDSy-0057Cf-TT
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 14:52:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FKR+HKWgAF5TWp5xjNXlMLZzYa9JVfmS7Qo/h3O8uQyjQaIPTOYBJS9FF878AkFhXVk6XYtoYL4ykHWBGF8dYKckvS9Q2b98HdqtA+n6TmxQ21QoTDTHnhGe/S7C8zmjJ7J3m/g1MVqrl/PH4VX+SRrC5sB4hG09FT5Q9lbjMX1UdGTooPVupZl7eXaaEGvbQQf+DKVHGVjnQChKEiOh4KcfcCzM6MZVYzkD19r5uXLtf7Gf6cSzAUJbmNRZJI3dD92UC8YWYL6y6AtaqISUUGya7j8iIZWgjVbcjZNU2Vv5HPmr1bEGYqwg+c/3ZqAoXbEzZtLcPagr0EPt/UI3iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UyYsBtc99Pll4qEz1qTJFuzbMMnSdbSlQspN8gyN8CE=;
 b=i+kGh673xf1OCNS09KLdODzSr8mcGkOJgsX1EEt0PvNJ91zWgPAWBw53SadyNQ1d1OO3QSyUKASh5LEZlJLx7vUQUKE6UnOzrq/7tDSHuMpkhT509i3y5jEJ+KLla0xqzkb68hXTpqQIA2MfnVr+/noqczTSl5I3vhYVGudSngjf95fsxmPx08YovJEGt0l1yZ1nQFgCpbgkZhVOJKNxhs4A1KEHuPnTKmMvGKYwMpYkMi9M6woALuG09TVDezW+vuZRSavYcbaJ3QRlcjt7EGRiba/bR+Bh+PZ034Ol3ViaLzsBr2NkkNVSK4/suzDyViIkkGpnXxAT/cGSde5mGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UyYsBtc99Pll4qEz1qTJFuzbMMnSdbSlQspN8gyN8CE=;
 b=VLmLKlSPhs5kzqENabLvlhOWxgQaoBECi1lFrG1PhNXEWJ3OJl+ZpMr4+Ie3FMrMztgJXF7B3jcJ7dh2gFyW/zSVPEKiiXnJTlUQt4lIYX7ZW6Na4Gvf6CR5mTxpKBj5oENEsu99+QnTIB/bab63iH+PjjkWFXcak/e9434f9rc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by PR3PR08MB5756.eurprd08.prod.outlook.com (2603:10a6:102:90::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Mon, 5 Sep
 2022 14:52:28 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::f1b2:3979:a31a:c30d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::f1b2:3979:a31a:c30d%9]) with mapi id 15.20.5588.011; Mon, 5 Sep 2022
 14:52:28 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon,  5 Sep 2022 16:52:13 +0200
Message-Id: <20220905145214.290551-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905145214.290551-1-michael.riesch@wolfvision.net>
References: <20220905145214.290551-1-michael.riesch@wolfvision.net>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: ZR0P278CA0064.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:21::15) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: adda5757-2384-4544-d053-08da8f4e4075
X-MS-TrafficTypeDiagnostic: PR3PR08MB5756:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	YpazDiSWnb+UwQUeS8sVvOjYdKOx6at3KoWkAZjiyZuPs0iFuZYcmFdhx3HrTAfH2bvU7Q36PZjF906nP+U6hvbgKZUL/7od4rNPI11Y3NAse89nAXSxfUStKL+tg93QKVqhx1gbEoo/PIgeo78tpbLHJraQnP8GkoawvIndHpvfSMIa4mxqMnVtcvaxXNS3uHu7y+5vK3a0Zt6r9QIOy5jURT1AakVMhpLrG3uz467fhoZUjlpay9/SI/KexPMmD7AEsR1q3PXQEwxtOFOCQ+Wx9X4ljTWZ7IH3JBQVt860+fmfzNnBkbo6uTQUi34feo8Y21ZpVy3kuFz94ybLb2W4mgCse2ZhOa6sgXSxcQlk8n4o7ORFAuZujH4w1+YPts7wCG8iqrOnr327HX9D3TQtDI+FgR8Wf05ZvzhirgmiG5M6e3jPLJJJVLEOeH+5ldmbZ9COpMvMbm3j0VuMbHsi8qKY5ZXInxkBojLMvKiWKyo2j9oNAskkk0uo4fB880R1l7vtk7mUahrKBrLO16YRPjJztq9v49GVU1xV2Tlyzfo8ziER/brIl0e4MZV41hhFlACHvDEwfL62Z/tR3vrr/+B0ykKsM5CZemyBBFyvGcVIxN011JzNkmpWupdDFbOpxyp0AjgS+tNZ2O0rRsNT042564OPncTbqEMh9BVxcUroTgpea0tQ/P0LXhoxCRcCql8F1d3Xgr6/gztglA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(376002)(39850400004)(136003)(396003)(366004)(6916009)(54906003)(316002)(86362001)(36756003)(44832011)(2906002)(38100700002)(5660300002)(66476007)(4326008)(8676002)(83380400001)(66946007)(66556008)(6512007)(41300700001)(1076003)(2616005)(186003)(6506007)(107886003)(8936002)(6486002)(478600001)(6666004)(52116002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?0GV008vkeQIrpVNmANHkbUcG8cq03RxqX907GphETXVx8emCbW+sZrRAak0H?=
 =?us-ascii?Q?JATuiv/VFU1TwX/SKCl3uec0C0Vd7lZ6uTPclI9xeQPh+gY59Qi6j5hjvmnI?=
 =?us-ascii?Q?pcnb5KbVrL8OQggV8e1P+EMTeFrWuiW7X6yYJy+Tv06au5Jgrzc71cEySNN8?=
 =?us-ascii?Q?hGK92b/MmISfc2Du+FvrNdr76CuwenrPfcR6oyRfBwN/7goviYrOycJ4fGHt?=
 =?us-ascii?Q?MbKdyTJDrcDtKJwVvVag+AhcuXqwZac/WW3MRAKA1tckp1QWdDf/ViE2EWrN?=
 =?us-ascii?Q?GdxGjBtGXFUxugsMg01R1SZoHSPgHRlm4+yq6+aVTrFMULfRPDgE27QnFQXc?=
 =?us-ascii?Q?eA2VFG9gswE8XDhj0HyjZKtu+WC92geCGCyrxq2FkYCUj4H8HA7rC/yXGKj6?=
 =?us-ascii?Q?1LsFcLRvI2uoa3+z8RHrvW098kCTI+W1EaILBP/o0JPw1I5vxWbe73r6vDWl?=
 =?us-ascii?Q?Xj27YTdCxAzIQNyreMdRCp7AYY/05uXDYQsGNCFiJE6TU4NxWsSHEioOHhZz?=
 =?us-ascii?Q?76b2nGlaB3PkDq6ne5mHgJe0MEq5y792c2oXmxQaNDqtYbi/j2M7MTgMIYxT?=
 =?us-ascii?Q?ENeZC24jWrKBSwKEZqoTi1dzuY0UU/MgygFEiJgjCiHWwXz4OfKfvwKh3CSn?=
 =?us-ascii?Q?NDK4nUNpNsMT1SCkxC9n9r9a3cKCacJYRTLhqUd0Uxggwyhi262f5RrQKTy1?=
 =?us-ascii?Q?MVU9iME4kmb3sgPskItYTf7TAG2GhvaLj80G1+ysbQ12IyyZqQgvhuSXYjIB?=
 =?us-ascii?Q?m5lBIK0ypVaT8MCzFDkOgw/KzAo6CHaktF0Z5FY1pIbz4Nel1nsuDYbWUUom?=
 =?us-ascii?Q?58In0qzf7mwhcPdmaa/GVYrDgaURoJU9wgW0Ycy5yLmhe28sS7xAaj9fDgF8?=
 =?us-ascii?Q?PrERjCikRbAVdYrYtoWsopr8rI2eDwAZoyW8mLXHOoGma+N/YU5zvCZmL2cI?=
 =?us-ascii?Q?NpDle3W7Ncn0wziGkTNynLaTI76etUTe72cHqJleT9cSAYaSRWlkDrC5yrE9?=
 =?us-ascii?Q?IHNxLHK3Hf0xOcnctUfvHj7OJdQg1wVZm7K2vQ1+jPAsJNhkFLgw5kE9UxFQ?=
 =?us-ascii?Q?TvC+dIl4z0OTS3EK0ZJYN61Q+iYAfloaaM8qnfGzhbVVX5Ltr00IsfmTkPS6?=
 =?us-ascii?Q?cHHSBKsOIHmq5w1wtcNV8Pt9b8wAc9gYHQPBYXt7svmXC05Jr7411Y4HvNsZ?=
 =?us-ascii?Q?plHaJqrJHWCM6Btx6CaQZkecw+Fs0PNTWd20j2UYTKJ/HOZnmLzhza9BbgBe?=
 =?us-ascii?Q?fDVIgmxIvhSRkXaK/8Kjr5or7UpSNOD/wjENju/aqeMpMpHOOJsS0SidPT3G?=
 =?us-ascii?Q?SiLR+AKM5HvhU77T+qsECxUTBpfNa7V1MgI7BGptPafgwt0iW6hCOE7v2AqV?=
 =?us-ascii?Q?00CHgfx+JlHBL0RnjQFURvzfkr0ofxaH6ZyAWW6LCwABAcsrErMOTqyLSwHT?=
 =?us-ascii?Q?eemv6rMxEaROc+uH21DxtzU3R2AKRrjNBxL8Vuh/ewF9H6NYzKcxiFd9KQjQ?=
 =?us-ascii?Q?ouvQb+wrPK22DmN7Q4TjGep4neBJnoK0k+752pzZnZEUo9Eqqp8sZ5TzDzj9?=
 =?us-ascii?Q?hV9GQs2OGuGdeqXjelDGfR5njuh4IbdhdwvP9i0J8jfHEdf5CNGYpw+ulvIQ?=
 =?us-ascii?Q?ZO6HHhRD2LZFBeIB76ssgiLEMAXDRat8YuERs4EJ2ABfZE5kpWkVdKtISXDU?=
 =?us-ascii?Q?TM++80fRtk7XXWLNtR2B1ZDbaa8=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: adda5757-2384-4544-d053-08da8f4e4075
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2022 14:52:27.9123
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SD4eWIio4kS+eyK4gZwXAIQQ609wxUNA7Etgcx50WvLAiMfBVkzqeyQzk80wJd/lR6RciMi0qeQSwlI9gG39x8V4G0z+qzVn2kvht0aNjGY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5756
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_075249_415110_6C0B7A86 
X-CRM114-Status: GOOD (  27.27  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] soc: rockchip: add driver for rockchip io domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The IO domains on Rockchip SoCs need to be configured to the correct
bank voltage. In Linux this is achieved by means of a platform driver
that reads the voltage value of the supplies and configures the bits
in the general register file (GRF) accordingly. Port this driver to
barebox to provide support for the Rockchip RK356x SoCs.

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



