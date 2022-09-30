Delivery-date: Fri, 30 Sep 2022 14:17:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExh-001PPh-0w
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 14:17:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExf-0003dF-BL
	for lore@pengutronix.de; Fri, 30 Sep 2022 14:17:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t7s1eRuTwMx6PJmYbU1CWQe302Rr+uA5h7/iDyTBzL0=; b=RBXF+YT6H0uomKLjJYeGdc4Py8
	UTGr7fCkYtl9WGb+0gIVgFBgP60tVn3sVEuEPwV+mN8XmRDmBuoFrxLOdBwHOPE2wJ5VAgwKQG3Th
	FbIHAe67WLxheaDtmsOfaNC8r78qDqc5swB1j7Eio1J+oj1MDTZyvdamkhyyJ9cMkPtgY1TVoWOPX
	cLJf3yyZO8Wps2Ovb/ewgx16waYIWhJ1kmWvtSpTuVR0wvqqIdXIEy08EVmNFz/UbBmJyM3SEWmOZ
	ma+jszJTVHoOHeJnx1jTJWwadwcDP3Duls+TvYt5Jy5SF5S/t8squJctBRwyRkuCo7rKQV3KVqdXZ
	tovzLDLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEw3-0094dl-62; Fri, 30 Sep 2022 12:16:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEvv-0094Zh-E4
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 12:16:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvs-00030V-1V; Fri, 30 Sep 2022 14:15:56 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvs-003nUj-R9; Fri, 30 Sep 2022 14:15:55 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvq-001QvF-3g; Fri, 30 Sep 2022 14:15:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: Johannes Zink <j.zink@pengutronix.de>
Date: Fri, 30 Sep 2022 14:15:50 +0200
Message-Id: <20220930121553.335796-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220930121553.335796-1-s.hauer@pengutronix.de>
References: <20220930121553.335796-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_051559_498596_AC443AD0 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] imx-bbu-nand-fcb: isolate i.MX28 specific parts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Johannes Zink <j.zink@pengutronix.de>

imx28_fcb_create() reads back some parameters from the BCH and GPMI
unlike imx6_fcb_create() which has same parameters hardcoded.

For i.MX7, we will need a mixture of both: Some values are hardcoded
(albeit differently than i.MX6), while some others need be read from the
BCH. In preparation for adding i.MX7 support, move common defines out of
the #ifdef CONFIG_ARCH_IMX28 and prefix constants that are not
applicable to i.MX6 and later with an IMX28_ prefix. No such constants
are currently in use.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index bde0b227f8..f268503f38 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -1393,9 +1393,6 @@ int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 	return ret;
 }
 
-#ifdef CONFIG_ARCH_IMX28
-#include <mach/imx28-regs.h>
-
 #define GPMI_TIMING0				0x00000070
 #define	GPMI_TIMING0_ADDRESS_SETUP_MASK			(0xff << 16)
 #define	GPMI_TIMING0_ADDRESS_SETUP_OFFSET		16
@@ -1413,19 +1410,28 @@ int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 #define	BCH_FLASHLAYOUT0_NBLOCKS_OFFSET			24
 #define	BCH_FLASHLAYOUT0_META_SIZE_MASK			(0xff << 16)
 #define	BCH_FLASHLAYOUT0_META_SIZE_OFFSET		16
-#define	BCH_FLASHLAYOUT0_ECC0_MASK			(0xf << 12)
-#define	BCH_FLASHLAYOUT0_ECC0_OFFSET			12
-#define	BCH_FLASHLAYOUT0_DATA0_SIZE_MASK		0xfff
+#define	MX28_BCH_FLASHLAYOUT0_ECC0_MASK			(0xf << 12)
+#define	MX28_BCH_FLASHLAYOUT0_ECC0_OFFSET		12
+#define	BCH_FLASHLAYOUT0_ECC0_MASK			(0x1f << 11)
+#define	BCH_FLASHLAYOUT0_ECC0_OFFSET			11
+#define	BCH_FLASHLAYOUT0_DATA0_SIZE_MASK		0x3ff
+#define	MX28_BCH_FLASHLAYOUT0_DATA0_SIZE_MASK		0xfff
 #define	BCH_FLASHLAYOUT0_DATA0_SIZE_OFFSET		0
 
 #define BCH_FLASH0LAYOUT1			0x00000090
 #define	BCH_FLASHLAYOUT1_PAGE_SIZE_MASK			(0xffff << 16)
 #define	BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET		16
-#define	BCH_FLASHLAYOUT1_ECCN_MASK			(0xf << 12)
-#define	BCH_FLASHLAYOUT1_ECCN_OFFSET			12
-#define	BCH_FLASHLAYOUT1_DATAN_SIZE_MASK		0xfff
+#define	BCH_FLASHLAYOUT1_ECCN_MASK			(0x1f << 11)
+#define	BCH_FLASHLAYOUT1_ECCN_OFFSET			11
+#define	MX28_BCH_FLASHLAYOUT1_ECCN_MASK			(0xf << 12)
+#define	MX28_BCH_FLASHLAYOUT1_ECCN_OFFSET		12
+#define	BCH_FLASHLAYOUT1_DATAN_SIZE_MASK		0x3ff
+#define	MX28_BCH_FLASHLAYOUT1_DATAN_SIZE_MASK		0xfff
 #define	BCH_FLASHLAYOUT1_DATAN_SIZE_OFFSET		0
 
+#ifdef CONFIG_ARCH_IMX28
+#include <mach/imx28-regs.h>
+
 static void imx28_fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
 		struct fcb_block *fcb, struct mtd_info *mtd)
 {
-- 
2.30.2



