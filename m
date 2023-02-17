Delivery-date: Fri, 17 Feb 2023 14:22:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT0hI-00A9I5-2F
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 14:22:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT0hG-0004qJ-21
	for lore@pengutronix.de; Fri, 17 Feb 2023 14:22:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=L7XWhx/5YPGEh9rt9XVTp1VEzzyLejLfmdM3qsa+7D0=; b=pVAdSD5W3zHxSt4TCWJMPVHmK5
	7Kqh1I5C6TBV+XpDDS7eq3RrchZLabijw4y7DCSBnyU4wgMjv44yIcuQE11CAOswu3kkEISp7SfEz
	REoiv/PuxDihWizyJkzOycqT83nAo9yAVuCBnE4G9bYGVH+XQ3ueqr7Amp0K8bSz0k47IaNxUGANM
	awMoIMWi3Bb5JR3yN5ICZsIqLh8YJ8Qmg1aCD4rQy1IEP1GLcyN0j6JCc7xo1fz2VCeWVMzlfkmbc
	RdB7ekesGsy5dQtKgWSlMz2fG9h4iPztodmuXrAcqecH8vB66jALVQVnSxWirRt/OHReuZTltAKqy
	p+V3ZMPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT0gR-00EGJp-47; Fri, 17 Feb 2023 13:21:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT0gM-00EGHn-MV
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 13:21:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT0gI-0004mq-Vt; Fri, 17 Feb 2023 14:21:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT0gH-005b59-5J; Fri, 17 Feb 2023 14:21:42 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT0gH-009Oqu-NT; Fri, 17 Feb 2023 14:21:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 14:21:40 +0100
Message-Id: <20230217132140.2240388-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_052146_765452_59C58515 
X-CRM114-Status: GOOD (  15.32  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] Documentation: i.MX8M: add EVK barebox installation documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The barebox i.MX images have a preamble that pads the i.MX header to
the offset expected by the BootROM. This allows writing barebox images
directly to offset 0 on SD-Cards and eMMC user area. For some i.MX8M,
these images can't be directly written to eMMC boot partitions and
instead require special handling. Add a note about this to the
documentation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - Fix typo, s/as an/at an/ (Ulrich)
  - Fix typo, s/Power-fail installation/Power-fail-safe installation/ (Sascha)
---
 Documentation/boards/imx/nxp-imx8mm-evk.rst | 18 ++++++++++++++++
 Documentation/boards/imx/nxp-imx8mn-evk.rst | 24 +++++++++++++++++++++
 Documentation/boards/imx/nxp-imx8mp-evk.rst | 24 +++++++++++++++++++++
 3 files changed, 66 insertions(+)

diff --git a/Documentation/boards/imx/nxp-imx8mm-evk.rst b/Documentation/boards/imx/nxp-imx8mm-evk.rst
index c3cd35ae38a2..f0dfc53ed070 100644
--- a/Documentation/boards/imx/nxp-imx8mm-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mm-evk.rst
@@ -69,3 +69,21 @@ board for serial download mode as printed on the PCB. You can start barebox with
 the imx-usb-loader tool that comes with barebox like this:
 
 ./scripts/imx/imx-usb-loader images/barebox-nxp-imx8mm-evk.img
+
+Installing barebox
+==================
+
+When the EVK is strapped to boot from eMMC, the i.MX8M bootrom will
+consult the eMMC ext_csd register to determine whether to boot
+from the active eMMC boot partition or from the user area.
+
+The same barebox image written to the start of the SD-Card can
+be written to the start of the eMMC user area. Power-fail-safe
+installation to the eMMC boot partition requires special handling:
+
+  - The barebox image must be written to the inactive boot partition,
+    then afterwards, the newly written boot partition is activated
+    (This is controlled by the barebox ``mmcX.boot`` variable).
+
+The ``barebox_update`` command takes care of this and need just be
+supplied a barebox image as argument.
diff --git a/Documentation/boards/imx/nxp-imx8mn-evk.rst b/Documentation/boards/imx/nxp-imx8mn-evk.rst
index b920e22d33e9..177fc59c1085 100644
--- a/Documentation/boards/imx/nxp-imx8mn-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mn-evk.rst
@@ -58,3 +58,27 @@ Build barebox
 
  make imx_v8_defconfig
  make
+
+Installing barebox
+==================
+
+When the EVK is strapped to boot from eMMC, the i.MX8M bootrom will
+consult the eMMC ext_csd register to determine whether to boot
+from the active eMMC boot partition or from the user area.
+
+The same barebox image written to the start of the SD-Card can
+be written to the start of the eMMC user area. Power-fail-safe
+installation to the eMMC boot partition requires special handling:
+
+  - The barebox image must be written to the inactive boot partition,
+    then afterwards, the newly written boot partition is activated
+    (This is controlled by the barebox ``mmcX.boot`` variable).
+
+  - The barebox image includes a 32KiB preamble that allows the image
+    to be directly writable to the start of the SD-Card or eMMC user area.
+    Unlike older i.MX8M, the i.MX8MN BootROM expects the bootloader to not
+    start at an offset when booting from eMMC boot partitions, thus the first
+    32KiB must be stripped.
+
+The ``barebox_update`` command takes care of this and need just be
+supplied a barebox image as argument.
diff --git a/Documentation/boards/imx/nxp-imx8mp-evk.rst b/Documentation/boards/imx/nxp-imx8mp-evk.rst
index 1074992f2f88..53cdd904ab0e 100644
--- a/Documentation/boards/imx/nxp-imx8mp-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mp-evk.rst
@@ -66,3 +66,27 @@ Boot Configuration
 The NXP i.MX8MP-EVK board has four switches responsible for configuring
 bootsource/boot mode. The settings for the different boot sources are
 printed on the board.
+
+Installing barebox
+==================
+
+When the EVK is strapped to boot from eMMC, the i.MX8M bootrom will
+consult the eMMC ext_csd register to determine whether to boot
+from the active eMMC boot partition or from the user area.
+
+The same barebox image written to the start of the SD-Card can
+be written to the start of the eMMC user area. Power-fail-safe
+installation to the eMMC boot partition requires special handling:
+
+  - The barebox image must be written to the inactive boot partition,
+    then afterwards, the newly written boot partition is activated
+    (This is controlled by the barebox ``mmcX.boot`` variable).
+
+  - The barebox image includes a 32KiB preamble that allows the image
+    to be directly writable to the start of the SD-Card or eMMC user area.
+    Unlike older i.MX8M, the i.MX8MP BootROM expects the bootloader to not
+    start at an offset when booting from eMMC boot partitions, thus the first
+    32KiB must be stripped.
+
+The ``barebox_update`` command takes care of this and need just be
+supplied a barebox image as argument.
-- 
2.30.2



