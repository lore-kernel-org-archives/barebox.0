Delivery-date: Tue, 11 Oct 2022 19:13:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiIp8-004pb6-Vo
	for lore@lore.pengutronix.de; Tue, 11 Oct 2022 19:13:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiIp6-0006X2-66
	for lore@pengutronix.de; Tue, 11 Oct 2022 19:13:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v5TWNrPy3dKxRjhUOPeX6XwUFKwUeqJNjYI8+vpNn64=; b=uTyXcu2ctUX1Q/eZSftaFdjAAG
	hV0rSfgFNM+cRzAcIFQbJpgymeubi8nY/L8bTW3/8o4DrjBbGSFIiXQOikdpkhOKGvUsUJSOMl4lZ
	Vq/35gpmMxJJqi0fGneRcY/odCDV+bHq+Xxsbin43eX0C3vAKpltNyGDInaMmgBUray1AzYKYI02F
	2yY+7Qoixb2cC39E9QXt+26KhtJnAksdkUP7wBAr8jAMEt41lidIyTxWSxJ9voiAGAeV1NQay7/dJ
	DB1OSWboYwkLnsB0vw/u5IXlMBAeK9/CL9Ime2ZMMrvnQgbyfbfxFQ0BZzQTwxbz5Y6MDSpEJ7Kzm
	HMDmy1/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiIn7-005JZC-Cv; Tue, 11 Oct 2022 17:11:41 +0000
Received: from mail-db8eur05on2086.outbound.protection.outlook.com ([40.107.20.86] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiIn1-005JXK-Hc
	for barebox@lists.infradead.org; Tue, 11 Oct 2022 17:11:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n74b3en44CUmw+r04zwWC7NP9gTiWqCaIZI/2dalY58I342lsTa8WeknAikWetKIfGWg858zLniInJDFXtRXQCB3Vn6J/HiHy3rQcOboUHA6O9GZkTWMG8RDyVE8Ak1EsdZLb+xkwKE1r/KLnKrvqZ60O/VWR5/v1JfENGaraGoA2v02bwPXlUVhYUFfa5o/CsyE/zeaz+ScnFT1Ilf1Ic7HK8H+cbv2RoXExwC/Q1bMdXYnk5/99W/7LqxPzOwK4G/e+XQ+bQu9v36aEQNZE+55Hxz1rctDfXHDpmPsvTfCZlWtpU8ITcQxOJycbHgP9Tfyj10x3PuGUkjlObqF+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v5TWNrPy3dKxRjhUOPeX6XwUFKwUeqJNjYI8+vpNn64=;
 b=Me4YG/LRkcc5hzysd8Ni0xJ4E5EPtQgo9awSRJipKZr98J/o4eGkttXdzRElzM4ZnaTKBQ3pGQrPa2ujVPpGuHWVL6swbgij5b1AgQgKQxJcQHjugHFzHb4iizzHezqknsdX9DO64i7nYDXTQvZZwb6L6I2OXDbQzXAdqYaBYuDZJytSZU3DV2aHf6pKXqm0mIGlPp3cB18jrrmOd30IOFg6e6clZSfQlPhLPGi/eNCtSOuTOF2NSLKEJ+6b549199LF1iJ7yvR54QW9LEIEwBcoqqbCOtxb/XJRKN9lIMCN6j+rBnMy5mRjpxMjsdnj/d6yWC7lcPdgixDuhtGpaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v5TWNrPy3dKxRjhUOPeX6XwUFKwUeqJNjYI8+vpNn64=;
 b=mPuJTQDToEPHCHPKeBZufhi3XL4Vii3Ic3jHR7q5GSTdFF7qa6B48A1jyHccDVJN4d2/7AJ7u950MGIUF25W8zOqCBHma7iDfteFZQzIIlVDWj7jcA13eiQnOcDBAeMqr2uoBz9Xvm69IYF3STeT67O0jRM+jgcIwX6WBSAUmnY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5119.eurprd04.prod.outlook.com (2603:10a6:803:55::28)
 by AM9PR04MB8289.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Tue, 11 Oct
 2022 17:11:29 +0000
Received: from VI1PR04MB5119.eurprd04.prod.outlook.com
 ([fe80::cf38:75da:c15f:2db1]) by VI1PR04MB5119.eurprd04.prod.outlook.com
 ([fe80::cf38:75da:c15f:2db1%5]) with mapi id 15.20.5709.015; Tue, 11 Oct 2022
 17:11:29 +0000
From: Adrian Negreanu <adrian.negreanu@nxp.com>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>
Date: Tue, 11 Oct 2022 20:11:06 +0300
Message-Id: <20221011171106.1151441-1-adrian.negreanu@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221010073616.673492-1-adrian.negreanu@nxp.com>
References: <20221010073616.673492-1-adrian.negreanu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: AS4P189CA0007.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d7::18) To VI1PR04MB5119.eurprd04.prod.outlook.com
 (2603:10a6:803:55::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB5119:EE_|AM9PR04MB8289:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c8c1cf9-894e-4162-4947-08daababa311
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	zbBDBzKfxbDBjVFq+J+x/bGkKYJUkuoTglxBRNCuGt/oJ3r3I9TB+Exi4sveIZXg+zaT8Rdzwbrn/vCwYv6ugxXT3ilbjd823NhJ6Xx3T9eozhuuP7TnenE/MTdjeIeqChabQ3iMBjOrlGh4SXtpGWqOUlH78O1Bm5itBP4F8jIhZoDUkGfCOEK3wZwDEn6vN6i/pdgaNmHfn5kg2ZaGFKrcEq3AoV2QrlDASiVhJeqMDQ+uhippO1qqt20/gmP2boR611l5iefpynHZ8SD7Vu0AqjrDAQ3BMA+TZfuUY+He/QM2WGDzVJVoEb5v5M0HKdZ2O9ZQbw9lHTldY/doEYB3HL6XZlAfkD8cBMBmuCi3F0tKaSQREii+I1vf9IknM3zzwL5zAy2ttmYWAtWh7UON9v6vLqn4MsKWOhdCqN2N6HSKEmRj5VuHvyWqWaYnkpBKoN2LEeRVGTnFzLEzjOc0Xz7IzLAnV3Yf1tm/3XWXfNA7WaacUpMMv0xa72bFt9TN5OgTcF8iwmtZ+R1FTUvgVzuGXyFvu+N3TWnYp75fOAX/zdiXf4Kpsd1lv1/ZHbQ20kX1jfGIIKQ7gojU1poHLsWEYKR12qDf3vEMxKZf7ZqZ/SpciGj5REjr8uuP2Lo7l3dVPK1TuWpCxdimHY6hyjZyaKRW6bLEqlin7kQj6ZtZ80wWikXo/pL4vvaxOL0kI87poOQ+VwoDxokQvRK5lAL1lt1DEop0ZJBqKTjRkshlrgmihbxShx1tQso6ce7F7sAv83KJ5n21AQyMfQ==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5119.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(376002)(346002)(396003)(39860400002)(136003)(451199015)(6916009)(6486002)(86362001)(316002)(478600001)(6506007)(30864003)(44832011)(41300700001)(83380400001)(2616005)(6666004)(2906002)(186003)(1076003)(5660300002)(38100700002)(38350700002)(36756003)(8936002)(26005)(6512007)(66476007)(66946007)(66556008)(52116002)(8676002)(4326008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?JoXAkrVb6p+lmvKjHahhwFzbRS3UnGCprBZ9BzFv0BElmLzeLCN93Ro2FPKq?=
 =?us-ascii?Q?HGtX9CE+DXv9bbyKsCS6wv2KwvRictbsG3iym3ehWMQANE0jNyUj9MLTKWP6?=
 =?us-ascii?Q?P/EM+XTwH4BkLU2WRhjAFRSaV2dwGCTddz7xffd5ZUT6AliNS2ACI5VCL7u4?=
 =?us-ascii?Q?+l6fgODOMowmCRfrWKcc80IuC/TcITTYREBjVcsia6+nNLd1IngIfASD47v4?=
 =?us-ascii?Q?L9T/MGtPL8z/XyaTdSFouciq87D5AGN1kvAd9ijn0y+6jJKGGN6fx4IUCglQ?=
 =?us-ascii?Q?ujVgN/loJ6xF95LjOHoHZKeEurtuwlCf+gTmEQB6dI2AsoZkmNJef+WI1vDh?=
 =?us-ascii?Q?jwqJmQ7ebNsfr/XBqfUItl7QPX5dyKkazymBOAS2uTF1NGkl4aiI6Wq8u5r3?=
 =?us-ascii?Q?FR4o+pYHKnDMsuLedX9YdgkVldSbBXjkkvQOmc0Ry++SnffetsuTQ7VuOJWG?=
 =?us-ascii?Q?DL0x9sxE9S95+MbnDV7b9cF975TfgvEdKv5CidHAhde4rJzG9uVIitJ/nfUc?=
 =?us-ascii?Q?NSuitCE2SqvIj7SwoQDLlbXdTw3js7CO1QCsGPA63leojPY7V0tUiv11yMip?=
 =?us-ascii?Q?2azTH8RPeJQBirfqmq306Vxshgot5IJZ7N7yidG6ernUjCVEkHVfN4TYQljv?=
 =?us-ascii?Q?880vletgT2RIaXaids4yd759dmhZF5XQ1lYdKdcMummMcx9X6EyI1RivPkgf?=
 =?us-ascii?Q?yb+tihXM/mpIS05KvdaF7iexeRbsBA/745gwaXm1tqLDDKWEhJjsuBo4kZ3g?=
 =?us-ascii?Q?RWlc/DCKgrdjwkevL64m5wOU4CnTcKShGLERrRsTEew7XevLzPlCsEvSIOCW?=
 =?us-ascii?Q?EghvAW+j1Nz/3Kld0qXkisQ4hGqAQ/chc+9g6OoudG3JjlKDfJ9T05D3CZdq?=
 =?us-ascii?Q?JOJw4K8/B1jBSEsuLiJkZ/ydCMPIXV0VS3lYDQE8lnEUTns37z4/AK2paJKd?=
 =?us-ascii?Q?Tx0AkIE+ddXJUtKxAEC6bRTPne46MXg3gzjmG2Frkn1heu3nXJmH9NpQBKEd?=
 =?us-ascii?Q?Td4QjwBnPP06BounJs1oNNKx2q+Oam5Tv0e8F+d+0Qu0Zgsf3rCbmS/Q05Dt?=
 =?us-ascii?Q?DW6B/wHkrX8ZyZIZ4im9aKx13/6WhpLlt/k0LIzC/xR+Zka1iPvKwTayThpv?=
 =?us-ascii?Q?t9U4Kw0cUmvoLq3Yp16zeSivC+u5AoFRipJcF4oupJ9WqAT7uZL8vZH11AmV?=
 =?us-ascii?Q?ZbMGJ7vb/Oj6asEnH/cvHcAwzefCrP+zODy076N8JtAxUpeZulRe4mBQKjdb?=
 =?us-ascii?Q?kh9+HrYjH3kJ32y9GY1cfdK3W5Jr7Y4ETcOEGho1sPxqLjos6ULM+JHAEcBA?=
 =?us-ascii?Q?lOu5dvxyuZXAHZZtDZ0dYNbo2+2AiV+VlCn2sM+GMjkAlPS7OpGtlSSoEb3h?=
 =?us-ascii?Q?t1VuhS0Z7kjbUKnL3s9POmYrI/xmjCuy/WRMfLT8MkdKTrun4IVx0RjJ/rv0?=
 =?us-ascii?Q?tKDS8GOXuMOMtpq4rTEfdb1X+fxA1+Y5V6qSOKrxIFAm/9ov0zoleYUdvA8w?=
 =?us-ascii?Q?Ti5Z3Yj+gh+jgvLOVdYaK9borHMTYgElgQK++lFJL8P+DxKDyXCfnBiBHIw9?=
 =?us-ascii?Q?emht29ZebrkomkzYyMW1kED+KJHuZIAd9HE/824p?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c8c1cf9-894e-4162-4947-08daababa311
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5119.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2022 17:11:29.1797
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NqKsOJOyg0yDE12r4y0q3Yd2Xrcz/cLBfie0TpsyQD9mcjRI8JEMpfGf7CmoMXrAZM3tVZolsPgOdeAb+4Z3yQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8289
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_101135_958435_7A6A52E6 
X-CRM114-Status: GOOD (  22.17  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] video: add support for qemu ramfb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The driver has Kconfig-urable width, height and color format.
Tested with:
	qemu-system-riscv32 -M virt -vga none -device ramfb -kernel images/barebox-dt-2nd.img

Signed-off-by: Adrian Negreanu <adrian.negreanu@nxp.com>
---
 drivers/video/Kconfig  |  39 ++++++
 drivers/video/Makefile |   1 +
 drivers/video/ramfb.c  | 308 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 348 insertions(+)
 create mode 100644 drivers/video/ramfb.c

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index a20b7bbee9..ccea930362 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -123,6 +123,45 @@ config DRIVER_VIDEO_SIMPLEFB
 	  Add support for setting up the kernel's simple framebuffer driver
 	  based on the active barebox framebuffer.
 
+config DRIVER_VIDEO_RAMFB
+	bool "QEMU RamFB support"
+	depends on OFTREE
+	help
+	  Add support for setting up a QEMU RamFB driver.
+
+if DRIVER_VIDEO_RAMFB
+
+config DRIVER_VIDEO_RAMFB_WIDTH
+	int "Width"
+	default 800
+	help
+	  Set the RamFB width in pixels.
+
+config DRIVER_VIDEO_RAMFB_HEIGHT
+	int "Height"
+	default 600
+	help
+	  Set the RamFB height in pixels.
+
+choice
+	prompt "RamFB color format"
+	default DRIVER_VIDEO_RAMFB_FORMAT_XRGB8888
+	help
+	  Set the RamFB color format.
+
+config DRIVER_VIDEO_RAMFB_FORMAT_XRGB8888
+	bool "XRGB8888 (32bit)"
+
+config DRIVER_VIDEO_RAMFB_FORMAT_RGB888
+	bool "RGB8888 (24bit)"
+
+config DRIVER_VIDEO_RAMFB_FORMAT_RGB565
+	bool "RGB565 (16bit)"
+
+endchoice
+
+endif
+
 config DRIVER_VIDEO_EDID
 	bool "Add EDID support"
 	help
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 9ec0420cca..d50d2d3ba5 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -25,6 +25,7 @@ obj-$(CONFIG_DRIVER_VIDEO_OMAP) += omap.o
 obj-$(CONFIG_DRIVER_VIDEO_BCM283X) += bcm2835.o
 obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT) += simplefb-client.o
 obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB) += simplefb-fixup.o
+obj-$(CONFIG_DRIVER_VIDEO_RAMFB) += ramfb.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3) += imx-ipu-v3/
 obj-$(CONFIG_DRIVER_VIDEO_EFI_GOP) += efi_gop.o
 obj-$(CONFIG_DRIVER_VIDEO_FB_SSD1307) += ssd1307fb.o
diff --git a/drivers/video/ramfb.c b/drivers/video/ramfb.c
new file mode 100644
index 0000000000..350f6a3aed
--- /dev/null
+++ b/drivers/video/ramfb.c
@@ -0,0 +1,308 @@
+/*
+ * RAMFB driver
+ *
+ * Copyright (C) 2022 Adrian Negreanu
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#define pr_fmt(fmt) "ramfb: " fmt
+
+#include <common.h>
+#include <errno.h>
+#include <fb.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <init.h>
+#include <xfuncs.h>
+
+
+#define PACKED                  __attribute__((packed))
+#define QFW_CFG_FILE_DIR        0x19
+#define QFW_CFG_INVALID         0xffff
+
+/* fw_cfg DMA commands */
+#define QFW_CFG_DMA_CTL_ERROR   0x01
+#define QFW_CFG_DMA_CTL_READ    0x02
+#define QFW_CFG_DMA_CTL_SKIP    0x04
+#define QFW_CFG_DMA_CTL_SELECT  0x08
+#define QFW_CFG_DMA_CTL_WRITE   0x10
+
+#define QFW_CFG_OFFSET_DATA8     0     /* Data Register address: Base + 0 (8 bytes). */
+#define QFW_CFG_OFFSET_DATA16    0
+#define QFW_CFG_OFFSET_DATA32    0
+#define QFW_CFG_OFFSET_DATA64    0
+#define QFW_CFG_OFFSET_SELECTOR  8     /* Selector Register address: Base + 8. */
+#define QFW_CFG_OFFSET_DMA64     16    /* DMA Address address: Base + 16 (8 bytes). */
+#define QFW_CFG_OFFSET_DMA32     20    /* DMA Address address: Base + 16 (8 bytes). */
+
+
+#define fourcc_code(a, b, c, d) ((u32)(a) | ((u32)(b) << 8) | \
+		((u32)(c) << 16) | ((u32)(d) << 24))
+
+#define DRM_FORMAT_RGB565       fourcc_code('R', 'G', '1', '6') /* [15:0] R:G:B 5:6:5 little endian */
+#define DRM_FORMAT_RGB888       fourcc_code('R', 'G', '2', '4') /* [23:0] R:G:B little endian */
+#define DRM_FORMAT_XRGB8888     fourcc_code('X', 'R', '2', '4') /* [31:0] x:R:G:B 8:8:8:8 little endian */
+
+static struct fb_ops ramfb_ops;
+
+struct ramfb {
+	struct fb_info info;
+	struct fb_videomode mode;
+};
+
+
+struct ramfb_mode {
+	const char *format;
+	u32 drm_format;
+	u32 bpp;
+	struct fb_bitfield red;
+	struct fb_bitfield green;
+	struct fb_bitfield blue;
+	struct fb_bitfield transp;
+};
+
+
+struct qfw_cfg_etc_ramfb {
+	u64 addr;
+	u32 fourcc;
+	u32 flags;
+	u32 width;
+	u32 height;
+	u32 stride;
+} PACKED;
+
+
+struct qfw_cfg_file {
+	u32  size;
+	u16  select;
+	u16  reserved;
+	char name[56];
+} PACKED;
+
+
+typedef struct qfw_cfg_dma {
+	u32 control;
+	u32 length;
+	u64 address;
+} PACKED qfw_cfg_dma;
+
+
+static const struct ramfb_mode fb_mode = {
+#if defined(CONFIG_DRIVER_VIDEO_RAMFB_FORMAT_RGB565)
+	.format	= "r5g6b5",
+	.drm_format = DRM_FORMAT_RGB565,
+	.bpp	= 16,
+	.red	= { .length = 5, .offset = 11 },
+	.green	= { .length = 6, .offset = 5 },
+	.blue	= { .length = 5, .offset = 0 },
+	.transp	= { .length = 0, .offset = 0 },
+#elif defined(CONFIG_DRIVER_VIDEO_RAMFB_FORMAT_RGB888)
+	.format	= "r8g8b8",
+	.drm_format = DRM_FORMAT_RGB888,
+	.bpp	= 24,
+	.red	= { .length = 8, .offset = 16 },
+	.green	= { .length = 8, .offset = 8 },
+	.blue	= { .length = 8, .offset = 0 },
+	.transp	= { .length = 0, .offset = 0 },
+#elif defined(CONFIG_DRIVER_VIDEO_RAMFB_FORMAT_XRGB8888)
+	.format	= "x8r8g8b8",
+	.drm_format = DRM_FORMAT_XRGB8888,
+	.bpp	= 32,
+	.red	= { .length = 8, .offset = 16 },
+	.green	= { .length = 8, .offset = 8 },
+	.blue	= { .length = 8, .offset = 0 },
+	.transp	= { .length = 0, .offset = 24 },
+#endif
+};
+
+
+static void qfw_cfg_read_entry(void __iomem *fw_cfg_base, void*address, u16 entry, u32 size)
+{
+	/*
+	 * writing QFW_CFG_INVALID will cause read operation to resume at last
+	 * offset, otherwise read will start at offset 0
+	 *
+	 * Note: on platform where the control register is MMIO, the register
+	 * is big endian.
+	 */
+	if (entry != QFW_CFG_INVALID)
+		__raw_writew(cpu_to_be16(entry), fw_cfg_base + QFW_CFG_OFFSET_SELECTOR);
+
+#ifdef CONFIG_64BIT
+	while (size >= 8) {
+		*(u64*)address = __raw_readq(fw_cfg_base + QFW_CFG_OFFSET_DATA64);
+		address += 8;
+		size -= 8;
+	}
+#endif
+	while (size >= 4) {
+		*(u32*)address = __raw_readl(fw_cfg_base + QFW_CFG_OFFSET_DATA32);
+		address += 4;
+		size -= 4;
+	}
+	while (size >= 2) {
+		*(u16*)address = __raw_readw(fw_cfg_base + QFW_CFG_OFFSET_DATA16);
+		address += 2;
+		size -= 2;
+	}
+	while (size >= 1) {
+		*(u8*)address = __raw_readb(fw_cfg_base + QFW_CFG_OFFSET_DATA8);
+		address += 1;
+		size -= 1;
+	}
+}
+
+
+static void qfw_cfg_write_entry(void __iomem *fw_cfg_base, void*address, u16 entry, u32 size)
+{
+	qfw_cfg_dma acc;
+
+	acc.address = cpu_to_be64((uintptr_t)address);
+	acc.control = cpu_to_be32(QFW_CFG_DMA_CTL_WRITE);
+	acc.length = cpu_to_be32(size);
+	if (entry != QFW_CFG_INVALID)
+		acc.control = cpu_to_be32(QFW_CFG_DMA_CTL_WRITE | QFW_CFG_DMA_CTL_SELECT | (entry << 16));
+
+#ifdef CONFIG_64BIT
+	__raw_writeq(cpu_to_be64((uintptr_t)&acc), fw_cfg_base + QFW_CFG_OFFSET_DMA64);
+#else
+	__raw_writel(cpu_to_be32((uintptr_t)&acc), fw_cfg_base + QFW_CFG_OFFSET_DMA32);
+#endif
+
+	barrier();
+
+	while (be32_to_cpu(acc.control) & ~QFW_CFG_DMA_CTL_ERROR);
+}
+
+
+static int qfw_cfg_find_file(void __iomem *fw_cfg_base, const char *filename)
+{
+	u32 count, e, select;
+
+	qfw_cfg_read_entry(fw_cfg_base, &count, QFW_CFG_FILE_DIR, sizeof(count));
+	count = be32_to_cpu(count);
+	for (select = 0, e = 0; e < count; e++) {
+		struct qfw_cfg_file qfile;
+		qfw_cfg_read_entry(fw_cfg_base, &qfile, QFW_CFG_INVALID, sizeof(qfile));
+		if (memcmp(qfile.name, filename, 10) == 0)
+		{
+			select = be16_to_cpu(qfile.select);
+			break;
+		}
+	}
+	return select;
+}
+
+
+static int ramfb_alloc(void __iomem *fw_cfg_base, struct fb_info *fbi)
+{
+	u32 select;
+	struct qfw_cfg_etc_ramfb etc_ramfb;
+
+	select = qfw_cfg_find_file(fw_cfg_base, "etc/ramfb");
+	if (select == 0) {
+		dev_err(&fbi->dev, "ramfb: fw_cfg (etc/ramfb) file not found\n");
+		return -1;
+	}
+	dev_info(&fbi->dev, "ramfb: fw_cfg (etc/ramfb) file at slot 0x%x\n", select);
+
+	fbi->screen_size = CONFIG_DRIVER_VIDEO_RAMFB_WIDTH * CONFIG_DRIVER_VIDEO_RAMFB_HEIGHT * fbi->bits_per_pixel;
+	fbi->screen_base = (void *)xzalloc(fbi->screen_size);
+
+	if (!fbi->screen_base) {
+		dev_err(&fbi->dev, "Unable to use FB\n");
+		return -1;
+	}
+
+	etc_ramfb.addr = cpu_to_be64((uintptr_t)fbi->screen_base),
+	etc_ramfb.fourcc = cpu_to_be32(fb_mode.drm_format),
+	etc_ramfb.flags  = cpu_to_be32(0),
+	etc_ramfb.width  = cpu_to_be32(fbi->xres),
+	etc_ramfb.height = cpu_to_be32(fbi->yres),
+	etc_ramfb.stride = cpu_to_be32(fbi->line_length),
+	qfw_cfg_write_entry(fw_cfg_base, &etc_ramfb, select, sizeof(etc_ramfb));
+
+	return 0;
+}
+
+
+static int ramfb_probe(struct device_d *dev)
+{
+	int ret;
+	struct ramfb *ramfb;
+	struct fb_info *fbi;
+	struct resource *fw_cfg_res;
+	void __iomem *fw_cfg_base;		/* base address of the registers */
+
+	ret = -ENODEV;
+
+	fw_cfg_res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(fw_cfg_res)) {
+		dev_err(dev, "No memory resource\n");
+		return PTR_ERR(fw_cfg_res);
+	}
+
+	ramfb = xzalloc(sizeof(*ramfb));
+
+	fw_cfg_base = IOMEM(fw_cfg_res->start);
+	if (!fw_cfg_base)
+		return ret;
+
+	ramfb->mode.name = fb_mode.format;
+	ramfb->mode.xres = CONFIG_DRIVER_VIDEO_RAMFB_WIDTH;
+	ramfb->mode.yres = CONFIG_DRIVER_VIDEO_RAMFB_HEIGHT;
+
+	fbi = &ramfb->info;
+	fbi->mode = &ramfb->mode;
+
+	fbi->bits_per_pixel = fb_mode.bpp;
+	fbi->red = fb_mode.red;
+	fbi->green = fb_mode.green;
+	fbi->blue = fb_mode.blue;
+	fbi->transp = fb_mode.transp;
+	fbi->xres = ramfb->mode.xres;
+	fbi->yres = ramfb->mode.yres;
+	/* this field is calculated by register_framebuffer()
+	 * but register_framebuffer() can't be called before ramfb_alloc()
+	 * so set line_length to zero.
+	 */
+	fbi->line_length = 0;
+	fbi->fbops = &ramfb_ops;
+
+	fbi->dev.parent = dev;
+
+	ret = ramfb_alloc(fw_cfg_base, fbi);
+	if (ret < 0) {
+		dev_err(dev, "Unable to allocate ramfb: %d\n", ret);
+		return ret;
+	}
+
+	ret = register_framebuffer(fbi);
+	if (ret < 0) {
+		dev_err(dev, "Unable to register ramfb: %d\n", ret);
+		return ret;
+	}
+
+	dev_info(dev, "size %s registered\n", size_human_readable(fbi->screen_size));
+
+	return 0;
+}
+
+
+static const struct of_device_id ramfb_of_match[] = {
+	{ .compatible = "qemu,fw-cfg-mmio", },
+	{ },
+};
+
+
+static struct driver_d ramfb_driver = {
+	.name = "ramfb-framebuffer",
+	.of_compatible = ramfb_of_match,
+	.probe = ramfb_probe,
+};
+device_platform_driver(ramfb_driver);
+
+MODULE_AUTHOR("Adrian Negreanu <adrian.negreanu@nxp.com>");
+MODULE_DESCRIPTION("QEMU RamFB driver");
+MODULE_LICENSE("GPL v2");
-- 
2.34.1



