Delivery-date: Thu, 05 May 2022 10:05:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWTs-002Uac-BG
	for lore@lore.pengutronix.de; Thu, 05 May 2022 10:05:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWTp-00006N-Qb
	for lore@pengutronix.de; Thu, 05 May 2022 10:04:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YffneyBwixyoWK3HmcuMbq7xnLaJdfSXx5CF6kkSinU=; b=gWR8i1y+Y18YTX
	R03TP8Wa+hHDkfZVy0NW7g0kv+6Z9+Ga6pSunqK1AJ72tQhD+eedWhYtyTeuOTr1fFfey2fJCCri8
	JuQFdvogUBc6vCytmDHO5VpwWnKlDrS+HvVUEHsp105Huu3nfG4O4040AEvo3pATKn70hr434B8Rl
	86A94YDDBK+Igko9p/f7zFpuM70/4GNaDJjjUIXA3iVFO5PpEWWYoYHU4gqE8u5MnISRDOPSfPuxH
	lgRsNZDcreGGm59WyjaxD/wS1wnsCIuldjXyfdDq0TR4stFAN5qG5e7NyWPDYQhaldO4rU7N00slu
	31QIBDiWW0iyUTKYahLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWSI-00EXRe-7Y; Thu, 05 May 2022 08:03:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWR8-00EWgx-8e
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:02:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQy-0006tW-LY; Thu, 05 May 2022 10:02:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQz-000TOR-3Z; Thu, 05 May 2022 10:01:59 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQv-004hbI-HI; Thu, 05 May 2022 10:01:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>,
 ore@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 May 2022 10:01:51 +0200
Message-Id: <20220505080152.1068424-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
References: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_010210_346363_F0D0DF4B 
X-CRM114-Status: GOOD (  18.68  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 14/15] doc: bcm283x: add initial docs for Raspberry Pi 4
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Separate out the barebox-dt-2nd documentation. There's much duplication
that way, but as we intend to remove the board-specific raspberry pi
images, this is ok for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/bcm2835.rst | 61 +++++++++++++++++++++++++++++---
 1 file changed, 56 insertions(+), 5 deletions(-)

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index 0b5299a34078..b27c6f34a50b 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -4,6 +4,17 @@ Broadcom BCM283x
 Raspberry Pi
 ------------
 
+barebox supports has support for BCM283x-based Raspberry Pi single board
+computers. Support is most extensive for BCM283[567]. Forthe newer BCM2711
+used in the Raspberry Pi 4, only basic support is available currently
+(Serial Port @115200 Baud, Pinctrl, SD-Card).
+
+Legacy Raspberry Pi Images
+~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+This format will be eventually phased out in favor of using the generic
+``barebox-dt-2nd.img`` binary for all configurations.
+
   1. Prepare an SD or microSD card with a FAT filesystem of at least 30 MB in size.
 
   2. Download the `Raspberry Pi firmware`_ (120 MB), unzip it, and copy the
@@ -19,11 +30,6 @@ Raspberry Pi
      Copy the respective image for your model to your SD card and name it
      ``barebox.img``.
 
-     Alternatively, ``images/barebox-dt-2nd.img`` can be used as single bootloader for all
-     supported 32-bit boards. In this case the device tree supplied by the video core
-     is directly used by barebox to probe. The device trees in ``arch/arm/dts/*.dtb``
-     will need to be renamed for alignment with the naming scheme expected by the videocore.
-
   4. Create a text file ``config.txt`` on the SD card with the following content::
 
          kernel=barebox.img
@@ -53,5 +59,50 @@ The original command-line from VideoCore device tree is available to the Barebox
 
     global linux.bootargs.vc="$global.vc.bootargs"
 
+Generic DT image
+~~~~~~~~~~~~~~~~
+
+  1. Prepare an SD or microSD card with a FAT filesystem of at least 30 MB in size.
+
+  2. Download the `Raspberry Pi firmware`_ (120 MB), unzip it, and copy the
+     contents of the ``boot/`` folder to your card.
+
+  3. Use ``make rpi_defconfig; make`` to build barebox for 32-Bit or ``make rpi_v8a_defconfig; make`` to build it for 64-Bit
+
+     This will create ``images/barebox-dt-2nd.img``, which can be used as single bootloader
+     for all supported boards. In this case the device tree supplied by the video core
+     is directly used by barebox to probe. The device trees in ``arch/arm/dts/*.dtb``
+     will need to be renamed for alignment with the naming scheme expected by the videocore.
+     (left is name in FAT, right is name used by barebox, here in genimage syntax)::
+
+         file bcm2836-rpi-2-b.dtb { image = bcm2836-rpi-2.dtb }
+         file bcm2836-rpi-2-b.dtb { image = bcm2836-rpi-2.dtb }
+         file bcm2837-rpi-3-b.dtb { image = bcm2837-rpi-3.dtb }
+         file bcm2837-rpi-3-a-plus.dtb { image = bcm2837-rpi-3.dtb }
+         file bcm2837-rpi-3-b-plus.dtb { image = bcm2837-rpi-3.dtb }
+         file bcm2837-rpi-cm3-io3.dtb { image = bcm2837-rpi-cm3.dtb }
+         file bcm2711-rpi-4-b.dtb { image = bcm2711-rpi-4-b.dtb }
+
+  4. Create a text file ``config.txt`` on the SD card with the following content::
+
+         kernel=barebox-dt-2nd.img
+         arm_64bit=1 # remove for 32-bit mode
+         upstream_kernel=1 # use upstream DT file names
+         enable_uart=1
+
+     If you want to use the mini-uart instead of the PL011, you may need to additionally set::
+
+         uart_2ndstage=1
+
+     This is required on boards, like the Raspberry Pi Zero W, that use the mini-uart as the
+     primary UART. It is needed on boards like the CM3 as well if the mini-uart is to be used.
+
+     (For more information, refer to the `documentation for config.txt`_.)
+
+  5. Connect to board's UART (115200 8N1);
+     Use PIN6 (GND), PIN8 (UART_TX), PIN10 (UART_RX) pins.
+
+  6. Turn board's power on.
+
 .. _Raspberry Pi firmware: https://codeload.github.com/raspberrypi/firmware/zip/80e1fbeb78f9df06701d28c0ed3a3060a3f557ef
 .. _documentation for config.txt: https://www.raspberrypi.org/documentation/configuration/config-txt/
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

