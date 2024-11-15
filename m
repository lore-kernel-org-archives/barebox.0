Delivery-date: Fri, 15 Nov 2024 13:16:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBvFe-002F7o-2x
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 13:16:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBvFe-0004S1-3z
	for lore@pengutronix.de; Fri, 15 Nov 2024 13:16:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aKLjw32LlbkvKr/HmlPtLBEBrHio06qHceUDMoaaxXk=; b=wIeb4k4mZjVk3utrC/kwVDdsci
	TpocMZlU9DEyfAKiEWE+q+IoBWV8ca3OHaZ/5O07t7RLaZy2yhLYa4ONPTGFN9NoMS7/x7XqbXJPe
	Vflvx46JVcy0JlfKHmNO/x2lKvpkFkKT6t375QFunhMGKN+VGqp8UgWmFWXIiccnRVGCs985Tx5ln
	z7Px1sgxIbjtRJnmM8snGJEauxr0GFygyD9YQgO4VQtPgDxMTHuZWxfVE6Zz3l0WqkGv5Ee9begCf
	+TfLz3R0z3KjjMahc0610esCslmszTzzDrdQ9fIRJrzUEuZxEv7OOPMuH9wmVE3J0K1f0B43q8iJQ
	Vb0O1RDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBvFA-00000002dNP-44Hc;
	Fri, 15 Nov 2024 12:16:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBvF7-00000002dLA-0F9g
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 12:16:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBvF5-0004BF-L3; Fri, 15 Nov 2024 13:16:03 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBvF5-000u9o-1T;
	Fri, 15 Nov 2024 13:16:03 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBvF5-00GmQm-1C;
	Fri, 15 Nov 2024 13:16:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: h.assmann@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 15 Nov 2024 13:16:02 +0100
Message-Id: <20241115121602.3999375-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241115121602.3999375-1-a.fatoum@pengutronix.de>
References: <20241115121602.3999375-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_041605_160084_642F502C 
X-CRM114-Status: GOOD (  18.23  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/4] ARM: i.MX8MP: tqma8mpxl: fix bbu registration for other boards using SoM
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
v1 -> v2:
  - restore of_device_enable_path instead of wrong of_device_enable_by_alias
    on the MMC alias
---
 arch/arm/boards/tqma8mpxl/board.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/tqma8mpxl/board.c b/arch/arm/boards/tqma8mpxl/board.c
index 8b67acb91c55..fc144032c7f9 100644
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
+	sd = of_env_get_alias_by_path("/chosen/environment-sd");
+	emmc = of_env_get_alias_by_path("/chosen/environment-emmc");
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



