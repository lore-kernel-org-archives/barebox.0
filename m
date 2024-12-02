Delivery-date: Mon, 02 Dec 2024 12:37:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI4kL-0034DN-2N
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 12:37:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI4kL-0003SD-GP
	for lore@pengutronix.de; Mon, 02 Dec 2024 12:37:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lu/NCV1oyYAFBTvnYbSsypx6PmOG5xjrHTzyucbKReE=; b=WCSVt4caYCehDqSZN0AwLtjXlu
	4LWOJ5Pt0WXipeMfjAKTEd6Eo0vIIWNiZHZ6nBjHCkqX2JfAfVSxR84miU5HazBeXMRXaZ5cjNNs0
	zRP/k6qv5HpLT93+kfU8nuFgg6JiQgUFlFG9umIhErNbgdBwQkhYNVJ4raZA1NG+tJ4jNrggf32DK
	+rT2fZylSBKj9eOaksw429KTjztjYlTMZh9YM9HZrW5Cm6uh0479HlnrmAkQKSYHY36MS7TLmYEuE
	qPTeBfVUCb1KyLiI3uYkKvbygPYtU7jXiqkVFr+3lAaX5IItfp0yNZlPfNh9qQrTwGpbcKWtf0nZY
	4+sEXy/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI4jt-00000005vZr-07AB;
	Mon, 02 Dec 2024 11:37:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI4Xg-00000005sjI-0czi
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 11:24:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI4Xe-000159-T3; Mon, 02 Dec 2024 12:24:38 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI4Xd-001Htv-31;
	Mon, 02 Dec 2024 12:24:38 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI4Xe-002FBa-1z;
	Mon, 02 Dec 2024 12:24:38 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Holger Assmann <h.assmann@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Dec 2024 12:24:37 +0100
Message-Id: <20241202112437.535013-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241202112437.535013-1-a.fatoum@pengutronix.de>
References: <20241202112437.535013-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_032440_204521_B2923E18 
X-CRM114-Status: GOOD (  18.33  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 4/4] ARM: i.MX8MP: tqma8mpxl: fix bbu registration for other boards using SoM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The board code matches against the SoM compatible and there are two
upstream device trees making use of the SoM.

Both device trees reorder the device tree aliases to be different from
the SoC ordering specified in dts/src/arm64/freescale/imx8mp.dtsi.

This is partially addressed by the /chosen/barebox,bootsource-mmcX
properties in arch/arm/dts/imx8mp.dtsi.

What's not addressed is the name of the eMMC device in /dev: This is
currently hardcoded to /dev/mmc0, but any other board that includes the
same SoM and doesn't override the SoCs aliases will have the eMMC
instead at /dev/mmc2, breaking the barebox update handler.

One way to workaround this would be reverting commit 9f3f4af8cf56
("ARM: i.MX8MP: tqma8mpxl: match board code against SoM compatible") and
expect that other boards take care of registering the bbu handler themselves.

What is implemented here is an alternative that could also be useful to
other boards: Given that /chosen/environment-sd/device-path already points
at the SD and /chosen/environment-mmc/device-path already points at the eMMC,
let's just get the alias for the nodes they point at and use these to
dynamically derive the device's name in /dev.

Doing it this way requires only that there are any aliases for the MMCs at all
(which should be the case as the upstream SoC dtsi has them) and doesn't
suffer from probe order issues.

Fixes: 9f3f4af8cf56 ("ARM: i.MX8MP: tqma8mpxl: match board code against SoM compatible")
Reported-by: Holger Assmann <h.assmann@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - no change
v1 -> v2:
  - restore of_device_enable_path instead of wrong of_device_enable_by_alias
    on the MMC alias
---
 arch/arm/boards/tqma8mpxl/board.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/tqma8mpxl/board.c b/arch/arm/boards/tqma8mpxl/board.c
index 8b67acb91c55..459e180a570c 100644
--- a/arch/arm/boards/tqma8mpxl/board.c
+++ b/arch/arm/boards/tqma8mpxl/board.c
@@ -14,22 +14,31 @@
 #include <mach/imx/iomux-mx8mp.h>
 #include <gpio.h>
 #include <envfs.h>
+#include <string.h>
 
 static int tqma8mpxl_probe(struct device *dev)
 {
+	const char *emmc, *sd;
 	int emmc_bbu_flag = 0;
 	int sd_bbu_flag = 0;
 
-	if (bootsource_get() == BOOTSOURCE_MMC && bootsource_get_instance() == 1) {
+	sd = of_env_get_device_alias_by_path("/chosen/environment-sd");
+	emmc = of_env_get_device_alias_by_path("/chosen/environment-emmc");
+
+	if (streq_ptr(bootsource_get_alias_name(), sd)) {
 		of_device_enable_path("/chosen/environment-sd");
 		sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
-	} else {
+	} else if (emmc) {
 		of_device_enable_path("/chosen/environment-emmc");
 		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
 	}
 
-	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
-	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0", emmc_bbu_flag);
+	if (sd)
+		imx8m_bbu_internal_mmc_register_handler("SD",
+			basprintf("/dev/%s.barebox", sd), sd_bbu_flag);
+	if (emmc)
+		imx8m_bbu_internal_mmcboot_register_handler("eMMC",
+			basprintf("/dev/%s", emmc), emmc_bbu_flag);
 
 	return 0;
 }
-- 
2.39.5



