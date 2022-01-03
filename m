Delivery-date: Mon, 03 Jan 2022 13:07:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M85-009o88-2Q
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:07:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M7y-0005fz-0p
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:07:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AFZHZnavtrwFeTr60eMlRQLsral3VyjG0o+n1ZJodl8=; b=drKgPvrVy1skWJ
	a3b1gRbUUSXJoV1cawJC80JKd0/3LTbgV5EXx98dPopxvlJKkjTgnImNkbo7jY6BL2f3PNp47A5Yr
	wvg1qIZ/P9k65ITuyWSVXab7XvxtFtZ0ZMxi/loXHAZHuVguai1IMYK2PVNWlihTgULYcVzyro8dd
	4urOvQL8EuwajGnYeaTXSeCMX6bYmL6A6iiyU6j8h8/Cr0dTwwk/qCjjE3MqFb/uwiqWYJk5yOjjr
	r1NM9zrJmNgx63w0+XXFQimN+Jl//8JwXX0YyFsDIRsQUpjnqtUKpgZDMPxGw/yL1lZq2DlZZsWoe
	SvY7n8opwaNssQkeIdcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4M6T-008y86-CU; Mon, 03 Jan 2022 12:06:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4M63-008xwT-Ii
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:05:54 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5u-00052Q-1I; Mon, 03 Jan 2022 13:05:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5t-007GW8-7r; Mon, 03 Jan 2022 13:05:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, rhi@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 13:05:32 +0100
Message-Id: <20220103120539.1730644-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
References: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_040551_836652_B52F4662 
X-CRM114-Status: UNSURE (   9.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/11] images: add SPDX-License-Identifiers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

They have no explicit license and thus have the project's license:
GPL-2.0-only. Record this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile.am33xx     | 1 +
 images/Makefile.am35xx     | 1 +
 images/Makefile.ar231x     | 2 ++
 images/Makefile.at91       | 1 +
 images/Makefile.ath79      | 2 ++
 images/Makefile.bcm283x    | 3 ++-
 images/Makefile.bcm47xx    | 2 ++
 images/Makefile.imx        | 1 +
 images/Makefile.layerscape | 1 +
 images/Makefile.loongson   | 2 ++
 images/Makefile.malta      | 2 ++
 images/Makefile.mvebu      | 1 +
 images/Makefile.mxs        | 1 +
 images/Makefile.omap3      | 2 ++
 images/Makefile.rockchip   | 1 +
 images/Makefile.socfpga    | 1 +
 images/Makefile.tegra      | 1 +
 images/Makefile.vexpress   | 1 +
 images/Makefile.xburst     | 2 ++
 images/Makefile.zynq       | 1 +
 images/piggy.S             | 2 ++
 21 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index 1de2474df5c9..add676117c6e 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 # %.mlo - convert into mlo image
 # ----------------------------------------------------------------
diff --git a/images/Makefile.am35xx b/images/Makefile.am35xx
index 6d30baee64bb..d5371d9e112d 100644
--- a/images/Makefile.am35xx
+++ b/images/Makefile.am35xx
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 
 # %.mlo - convert into mlo image
 # ----------------------------------------------------------------
diff --git a/images/Makefile.ar231x b/images/Makefile.ar231x
index 31b97048660f..8992bc0fd099 100644
--- a/images/Makefile.ar231x
+++ b/images/Makefile.ar231x
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 pblb-$(CONFIG_BOARD_NETGEAR_WG102) += start_netgear_wg102
 FILE_barebox-netgear-wg102.img = start_netgear_wg102.pblb
 image-$(CONFIG_BOARD_NETGEAR_WG102) += barebox-netgear-wg102.img
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index c7a2209e0085..71cc959f5d05 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # barebox image generation Makefile for AT91 images
 #
diff --git a/images/Makefile.ath79 b/images/Makefile.ath79
index 072062b0aa9a..018c2223ce9e 100644
--- a/images/Makefile.ath79
+++ b/images/Makefile.ath79
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 pblb-$(CONFIG_SOC_QCA_AR9331) += start_ar9331_spi_trap
 FILE_barebox-ar9331-spi-trap.img = start_ar9331_spi_trap.pblb
 image-$(CONFIG_SOC_QCA_AR9331) += barebox-ar9331-spi-trap.img
diff --git a/images/Makefile.bcm283x b/images/Makefile.bcm283x
index 3fd2c3d06ac9..82787f972c2d 100644
--- a/images/Makefile.bcm283x
+++ b/images/Makefile.bcm283x
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # barebox image generation Makefile for BCM283x images
 #
@@ -16,4 +17,4 @@ image-$(CONFIG_MACH_RPI3) += barebox-raspberry-pi-3.img
 
 pblb-$(CONFIG_MACH_RPI_CM3) += start_raspberry_pi_cm3
 FILE_barebox-raspberry-pi-cm3.img = start_raspberry_pi_cm3.pblb
-image-$(CONFIG_MACH_RPI_CM3) += barebox-raspberry-pi-cm3.img
\ No newline at end of file
+image-$(CONFIG_MACH_RPI_CM3) += barebox-raspberry-pi-cm3.img
diff --git a/images/Makefile.bcm47xx b/images/Makefile.bcm47xx
index 839243e3a81b..569a2b0ed1a3 100644
--- a/images/Makefile.bcm47xx
+++ b/images/Makefile.bcm47xx
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 pblb-$(CONFIG_BOARD_DLINK_DIR320) += start_dlink_dir_320
 FILE_barebox-dlink-dir-320.img = start_dlink_dir_320.pblb
 image-$(CONFIG_BOARD_DLINK_DIR320) += barebox-dlink-dir-320.img
diff --git a/images/Makefile.imx b/images/Makefile.imx
index d5476a326bdc..1dffab989ec3 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # barebox image generation Makefile for i.MX images
 #
diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
index 806c09d8fbce..a180c230c7a9 100644
--- a/images/Makefile.layerscape
+++ b/images/Makefile.layerscape
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # barebox image generation Makefile for NXP Layerscape images
 #
diff --git a/images/Makefile.loongson b/images/Makefile.loongson
index f5918b540778..75c20bf4bccd 100644
--- a/images/Makefile.loongson
+++ b/images/Makefile.loongson
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 pblb-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) += start_loongson_ls1b
 FILE_barebox-loongson-ls1b.img = start_loongson_ls1b.pblb
 image-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) += barebox-loongson-ls1b.img
diff --git a/images/Makefile.malta b/images/Makefile.malta
index 96d7b86b1187..87866f08acf0 100644
--- a/images/Makefile.malta
+++ b/images/Makefile.malta
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 quiet_cmd_bswap32_image = BSWAP4  $@
       cmd_bswap32_image = cp $< $@ && \
 			  truncate -s %4 $@ && \
diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index 112227424b75..7c918cb9f184 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # barebox image generation Makefile for Marvell mvebu
 #
diff --git a/images/Makefile.mxs b/images/Makefile.mxs
index ceb7b376a533..87549afe4837 100644
--- a/images/Makefile.mxs
+++ b/images/Makefile.mxs
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # barebox image generation Makefile for MXS images
 #
diff --git a/images/Makefile.omap3 b/images/Makefile.omap3
index 4d87b1da26e0..f8ecb68684d9 100644
--- a/images/Makefile.omap3
+++ b/images/Makefile.omap3
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
 # %.mlo - convert into mlo image
 # ----------------------------------------------------------------
 quiet_cmd_omap3_mlo_image = MLO     $@
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 19980914b29d..0a485cad24d1 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # barebox image generation Makefile for Rockchip images
 #
diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index 26220178af12..90e3c066dc08 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # barebox image generation Makefile for Altera socfpga
 #
diff --git a/images/Makefile.tegra b/images/Makefile.tegra
index f5b5841e0664..97a92f321cce 100644
--- a/images/Makefile.tegra
+++ b/images/Makefile.tegra
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # barebox image generation Makefile for Tegra images
 #
diff --git a/images/Makefile.vexpress b/images/Makefile.vexpress
index d2af19184558..11c49cca0cbd 100644
--- a/images/Makefile.vexpress
+++ b/images/Makefile.vexpress
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # barebox image generation Makefile for VExpress images
 #
diff --git a/images/Makefile.xburst b/images/Makefile.xburst
index 6c63a5657bdf..13ed130672c9 100644
--- a/images/Makefile.xburst
+++ b/images/Makefile.xburst
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 pblb-$(CONFIG_BOARD_CI20) += start_img_ci20
 FILE_barebox-img-ci20.img = start_img_ci20.pblb
 image-$(CONFIG_BOARD_CI20) += barebox-img-ci20.img
diff --git a/images/Makefile.zynq b/images/Makefile.zynq
index b00e74869714..3e61ad6eb611 100644
--- a/images/Makefile.zynq
+++ b/images/Makefile.zynq
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # barebox image generation Makefile for Xilinx Zynq images
 #
diff --git a/images/piggy.S b/images/piggy.S
index c2274ebac735..654933ea2ffe 100644
--- a/images/piggy.S
+++ b/images/piggy.S
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
         .section .piggydata,"a"
         .globl  input_data
 input_data:
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

