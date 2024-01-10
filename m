Delivery-date: Wed, 10 Jan 2024 15:18:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNZPg-00BiCG-2s
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 15:18:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNZPg-0007uE-AO
	for lore@pengutronix.de; Wed, 10 Jan 2024 15:18:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CCMwZaLtnj8Fjuc/9B8jJM104gPDhLEYBPVr/2Rj210=; b=lMH79cQzgh4Td7piMmkjfabBKg
	pplXxf+OV0orsAgJSAdBl1O1HJShcnXbcvXT5i6QO5zvoCVY7kCHnycF0i4n1bn7ZQWOGLCq6wC/T
	/loy3IKa+E9+R/mZX2BCElRJS2a6LV6ie+cLLQ/zfW5tsZ/DNsvLcFFC+4+cdanOaXhP/avJ1uDNy
	95bv9pPa3Qh8t8oj0+2TUw1UEWewYQTxp2WQOZOOL8r8ljKtIhMSZqkGhgrke3k2DYT2gp6GZFhaw
	HoWqHDFACJJHfHmc6d/2H2CpFv2RnsFLwKgHkZ86XyoiTCjr0KAhMRPxMtrvshJyBlhC/0KcaIzwb
	0r8R+CLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNZOT-00CGGY-33;
	Wed, 10 Jan 2024 14:17:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNZOQ-00CGDc-0m
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 14:17:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNZOM-0007SY-T0; Wed, 10 Jan 2024 15:17:14 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNZOM-001ipU-GR; Wed, 10 Jan 2024 15:17:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNZOM-00DAdA-1R;
	Wed, 10 Jan 2024 15:17:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jan 2024 15:17:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240110-scripts-omap3-usb-loader-fix-compilation-v1-1-0503f170fa59@pengutronix.de>
References: <20240110-scripts-omap3-usb-loader-fix-compilation-v1-0-0503f170fa59@pengutronix.de>
In-Reply-To: <20240110-scripts-omap3-usb-loader-fix-compilation-v1-0-0503f170fa59@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1704896234; l=1335;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=FDbn2JSGDgOCzaAgjXZfBgDJUh4QtHxqLX0uz16BcAw=;
 b=4x0X0/Xre6Kel6P0+pfws4DltdAWE3Gfnkt5DjpKNRU+9F0j3Gk0e+fATvM8XtyleElqKahAk
 UQPLfeXWRAZB0ZldflDqp8aRD+f7ar6Fqqv6jFU+HA05IgQRE854PA+
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_061718_284025_A8415235 
X-CRM114-Status: GOOD (  10.42  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] omap3-usb-loader: Fix compilation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since a4a04ec768e ("scripts: common: fix read_file_2 for windows")
common.c includes compiler.h which defines cpu_to_le32 and friends
which are also defined in omap3-usb-loader.c. Drop the duplicated
definitions from omap3-usb-loader.c to make it compile again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/omap3-usb-loader.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/scripts/omap3-usb-loader.c b/scripts/omap3-usb-loader.c
index 31a03be8e7..d9422a0916 100644
--- a/scripts/omap3-usb-loader.c
+++ b/scripts/omap3-usb-loader.c
@@ -19,10 +19,6 @@
 #define PROG_NAME "OMAP Loader"
 #define VERSION "1.0.0"
 
-#if defined(__BYTE_ORDER__) && (__BYTE_ORDER__ == __ORDER_BIG_ENDIAN__)
-#define OMAP_IS_BIG_ENDIAN
-#endif
-
 #include <unistd.h>		/* for usleep and friends */
 #include <getopt.h>
 #include <errno.h>
@@ -46,15 +42,6 @@
 #define OMAP_USB_BULK_OUT 0x01
 #define OMAP_ASIC_ID_LEN 69
 
-#ifdef OMAP_IS_BIG_ENDIAN
-#define cpu_to_le32(v) (((v & 0xff) << 24) | ((v & 0xff00) << 8) | \
-    ((v & 0xff0000) >> 8) | ((v & 0xff000000) >> 24))
-#define le32_to_cpu(v) cpu_to_le32(v)
-#else
-#define cpu_to_le32(v) (v)
-#define le32_to_cpu(v) (v)
-#endif
-
 /*
  * taken from x-loader/drivers/usb/usb.c
  * All credit to Martin Mueller

-- 
2.39.2



