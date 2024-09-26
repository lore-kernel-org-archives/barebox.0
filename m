Delivery-date: Thu, 26 Sep 2024 15:15:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stoLb-0030qt-0f
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 15:15:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stoLa-0005fx-7K
	for lore@pengutronix.de; Thu, 26 Sep 2024 15:15:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wu3xcM7/3opxdJcRtFhhu/Gxjjm4zd9GCsTU46jUOOM=; b=4pwAjSZne7I4n1Gzi5q3ZS6sDh
	2Xt0js9FgN09B9IYbAKPaisA+XnbqSR/ZKLrvxoa0JJXh3hZX/i5/EaVaD+sEqyMD4iL/ruE+CQlf
	OFRuVDquUGy5riWkopV0sme6IUOhERvXolVYNBt9ukyeULABUIg70MxOkWX6VZs8+fWk4T2FSFvd4
	wsswavgda6WIOh8K4zlqIqjUgdZxglTF/NWVHwyYMuK1ZdaGjOTovL2KgRLXrrcoErMxt0NX1Pwjq
	6nGzozyHDD5fgVnykW6Wvyw0lYe2Lw3w860KqWSaPHZEzPCrIlgHJ+ghnMioMMuz0ysRXm3fGo7l9
	2dFjsVjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stoKw-00000008QzK-0kCI;
	Thu, 26 Sep 2024 13:15:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stoKn-00000008Qvs-3rZJ
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 13:15:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-0004uk-Mx; Thu, 26 Sep 2024 15:15:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-001h7C-4T; Thu, 26 Sep 2024 15:15:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-00GZyn-1e;
	Thu, 26 Sep 2024 15:15:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 15:15:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240926-vop2-v1-3-fe0581f2020b@pengutronix.de>
References: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
In-Reply-To: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727356502; l=5545;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Jhg7p+Dbp00bz8u0wboocpC2xUXQCtiX6vFiw1tWSJE=;
 b=mqP4VvLSsY15FHC+KkaAp/EBtPGLIc6S59wl0MhehP0/bWwyypDNB23GBHWPk9Fl7rjqtnAvD
 P7Nksyt6B8vBagaD8Ot3YRoi3fKyTbH9Btl3BJXNueA0xeM2U1lci3/
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_061506_169797_FAB98C9B 
X-CRM114-Status: GOOD (  12.82  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 03/13] media-bus-format: update from kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are several new media bus formats since we last updated
media-bus-format.h from Linux. Update it from Linux-6.10 to
get the new formats.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/video/media-bus-format.h | 55 +++++++++++++++++++++++++++++++++++++---
 1 file changed, 52 insertions(+), 3 deletions(-)

diff --git a/include/video/media-bus-format.h b/include/video/media-bus-format.h
index 190d491d5b..d4c1d99101 100644
--- a/include/video/media-bus-format.h
+++ b/include/video/media-bus-format.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
 /*
  * Media Bus API header
  *
@@ -33,7 +34,7 @@
 
 #define MEDIA_BUS_FMT_FIXED			0x0001
 
-/* RGB - next is	0x1018 */
+/* RGB - next is	0x1026 */
 #define MEDIA_BUS_FMT_RGB444_1X12		0x1016
 #define MEDIA_BUS_FMT_RGB444_2X8_PADHI_BE	0x1001
 #define MEDIA_BUS_FMT_RGB444_2X8_PADHI_LE	0x1002
@@ -45,20 +46,34 @@
 #define MEDIA_BUS_FMT_RGB565_2X8_BE		0x1007
 #define MEDIA_BUS_FMT_RGB565_2X8_LE		0x1008
 #define MEDIA_BUS_FMT_RGB666_1X18		0x1009
+#define MEDIA_BUS_FMT_RGB666_2X9_BE		0x1025
+#define MEDIA_BUS_FMT_BGR666_1X18		0x1023
 #define MEDIA_BUS_FMT_RBG888_1X24		0x100e
 #define MEDIA_BUS_FMT_RGB666_1X24_CPADHI	0x1015
+#define MEDIA_BUS_FMT_BGR666_1X24_CPADHI	0x1024
+#define MEDIA_BUS_FMT_RGB565_1X24_CPADHI	0x1022
 #define MEDIA_BUS_FMT_RGB666_1X7X3_SPWG		0x1010
 #define MEDIA_BUS_FMT_BGR888_1X24		0x1013
+#define MEDIA_BUS_FMT_BGR888_3X8		0x101b
 #define MEDIA_BUS_FMT_GBR888_1X24		0x1014
 #define MEDIA_BUS_FMT_RGB888_1X24		0x100a
 #define MEDIA_BUS_FMT_RGB888_2X12_BE		0x100b
 #define MEDIA_BUS_FMT_RGB888_2X12_LE		0x100c
+#define MEDIA_BUS_FMT_RGB888_3X8		0x101c
+#define MEDIA_BUS_FMT_RGB888_3X8_DELTA		0x101d
 #define MEDIA_BUS_FMT_RGB888_1X7X4_SPWG		0x1011
 #define MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA	0x1012
+#define MEDIA_BUS_FMT_RGB666_1X30_CPADLO	0x101e
+#define MEDIA_BUS_FMT_RGB888_1X30_CPADLO	0x101f
 #define MEDIA_BUS_FMT_ARGB8888_1X32		0x100d
 #define MEDIA_BUS_FMT_RGB888_1X32_PADHI		0x100f
+#define MEDIA_BUS_FMT_RGB101010_1X30		0x1018
+#define MEDIA_BUS_FMT_RGB666_1X36_CPADLO	0x1020
+#define MEDIA_BUS_FMT_RGB888_1X36_CPADLO	0x1021
+#define MEDIA_BUS_FMT_RGB121212_1X36		0x1019
+#define MEDIA_BUS_FMT_RGB161616_1X48		0x101a
 
-/* YUV (including grey) - next is	0x2026 */
+/* YUV (including grey) - next is	0x202f */
 #define MEDIA_BUS_FMT_Y8_1X8			0x2001
 #define MEDIA_BUS_FMT_UV8_1X8			0x2015
 #define MEDIA_BUS_FMT_UYVY8_1_5X8		0x2002
@@ -70,6 +85,7 @@
 #define MEDIA_BUS_FMT_YUYV8_2X8			0x2008
 #define MEDIA_BUS_FMT_YVYU8_2X8			0x2009
 #define MEDIA_BUS_FMT_Y10_1X10			0x200a
+#define MEDIA_BUS_FMT_Y10_2X8_PADHI_LE		0x202c
 #define MEDIA_BUS_FMT_UYVY10_2X10		0x2018
 #define MEDIA_BUS_FMT_VYUY10_2X10		0x2019
 #define MEDIA_BUS_FMT_YUYV10_2X10		0x200b
@@ -79,6 +95,8 @@
 #define MEDIA_BUS_FMT_VYUY12_2X12		0x201d
 #define MEDIA_BUS_FMT_YUYV12_2X12		0x201e
 #define MEDIA_BUS_FMT_YVYU12_2X12		0x201f
+#define MEDIA_BUS_FMT_Y14_1X14			0x202d
+#define MEDIA_BUS_FMT_Y16_1X16			0x202e
 #define MEDIA_BUS_FMT_UYVY8_1X16		0x200f
 #define MEDIA_BUS_FMT_VYUY8_1X16		0x2010
 #define MEDIA_BUS_FMT_YUYV8_1X16		0x2011
@@ -90,14 +108,20 @@
 #define MEDIA_BUS_FMT_YVYU10_1X20		0x200e
 #define MEDIA_BUS_FMT_VUY8_1X24			0x2024
 #define MEDIA_BUS_FMT_YUV8_1X24			0x2025
+#define MEDIA_BUS_FMT_UYYVYY8_0_5X24		0x2026
 #define MEDIA_BUS_FMT_UYVY12_1X24		0x2020
 #define MEDIA_BUS_FMT_VYUY12_1X24		0x2021
 #define MEDIA_BUS_FMT_YUYV12_1X24		0x2022
 #define MEDIA_BUS_FMT_YVYU12_1X24		0x2023
 #define MEDIA_BUS_FMT_YUV10_1X30		0x2016
+#define MEDIA_BUS_FMT_UYYVYY10_0_5X30		0x2027
 #define MEDIA_BUS_FMT_AYUV8_1X32		0x2017
+#define MEDIA_BUS_FMT_UYYVYY12_0_5X36		0x2028
+#define MEDIA_BUS_FMT_YUV12_1X36		0x2029
+#define MEDIA_BUS_FMT_YUV16_1X48		0x202a
+#define MEDIA_BUS_FMT_UYYVYY16_0_5X48		0x202b
 
-/* Bayer - next is	0x3019 */
+/* Bayer - next is	0x3021 */
 #define MEDIA_BUS_FMT_SBGGR8_1X8		0x3001
 #define MEDIA_BUS_FMT_SGBRG8_1X8		0x3013
 #define MEDIA_BUS_FMT_SGRBG8_1X8		0x3002
@@ -122,6 +146,14 @@
 #define MEDIA_BUS_FMT_SGBRG12_1X12		0x3010
 #define MEDIA_BUS_FMT_SGRBG12_1X12		0x3011
 #define MEDIA_BUS_FMT_SRGGB12_1X12		0x3012
+#define MEDIA_BUS_FMT_SBGGR14_1X14		0x3019
+#define MEDIA_BUS_FMT_SGBRG14_1X14		0x301a
+#define MEDIA_BUS_FMT_SGRBG14_1X14		0x301b
+#define MEDIA_BUS_FMT_SRGGB14_1X14		0x301c
+#define MEDIA_BUS_FMT_SBGGR16_1X16		0x301d
+#define MEDIA_BUS_FMT_SGBRG16_1X16		0x301e
+#define MEDIA_BUS_FMT_SGRBG16_1X16		0x301f
+#define MEDIA_BUS_FMT_SRGGB16_1X16		0x3020
 
 /* JPEG compressed formats - next is	0x4002 */
 #define MEDIA_BUS_FMT_JPEG_1X8			0x4001
@@ -134,4 +166,21 @@
 /* HSV - next is	0x6002 */
 #define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
 
+/*
+ * This format should be used when the same driver handles
+ * both sides of the link and the bus format is a fixed
+ * metadata format that is not configurable from userspace.
+ * Width and height will be set to 0 for this format.
+ */
+#define MEDIA_BUS_FMT_METADATA_FIXED		0x7001
+
+/* Generic line based metadata formats for serial buses. Next is 0x8008. */
+#define MEDIA_BUS_FMT_META_8			0x8001
+#define MEDIA_BUS_FMT_META_10			0x8002
+#define MEDIA_BUS_FMT_META_12			0x8003
+#define MEDIA_BUS_FMT_META_14			0x8004
+#define MEDIA_BUS_FMT_META_16			0x8005
+#define MEDIA_BUS_FMT_META_20			0x8006
+#define MEDIA_BUS_FMT_META_24			0x8007
+
 #endif /* __LINUX_MEDIA_BUS_FORMAT_H */

-- 
2.39.5



