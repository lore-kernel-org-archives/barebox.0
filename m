Delivery-date: Wed, 13 Dec 2023 13:14:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDO89-002Aog-2U
	for lore@lore.pengutronix.de;
	Wed, 13 Dec 2023 13:14:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDO89-000782-Ux
	for lore@pengutronix.de; Wed, 13 Dec 2023 13:14:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=U4ajjfyvKaLNfqBx41falvZv8CaijlD8BiGXmetftew=; b=Fx2Rf6Py6P3IVB9WBPoFvrFz5G
	UO7JWAeIlvJXbXZAyEb9pnMbDqe0S3GSWHOcsq7gQAF8jirKwwIpIQp0ltauRJFT+bfRmbP6L7aaD
	dv1DENFeLZh7Xa5WFEwjCN2HKNolzsJ48WNi2qm1WJil6R9/1szg3308Z4a2W2XbcRARveshW53aQ
	Xtx8Wwc9/LKJ8SK0zIlYpYa75n/G4q4cMcYymmkG4ShrcM+/2a5SwYAcvPAntStQ0OiKiDIVXQ80C
	G/28noIIH9gMFfQDJxymB1eITsj5hDjktGIjuvyZPIfdrcJqEHG0amNthLj4gI3+UCxgy2vUjdZLu
	Jvocqv1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDO6k-00EYJu-0v;
	Wed, 13 Dec 2023 12:12:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDO6g-00EYIm-1B
	for barebox@lists.infradead.org;
	Wed, 13 Dec 2023 12:12:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rDO6c-0005XK-GT; Wed, 13 Dec 2023 13:12:50 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rDO6a-00FZCl-CR; Wed, 13 Dec 2023 13:12:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rDO6a-00727j-0u;
	Wed, 13 Dec 2023 13:12:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Dec 2023 13:12:46 +0100
Message-Id: <20231213121246.1676405-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_041254_408320_18B71E22 
X-CRM114-Status: GOOD (  15.49  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Documentation: bcm283x: be clearer about Raspberry Pi 4 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While rpi4 support is not as extensive as the rpi3, it's still
sufficient to boot Linux from either SD or Ethernet.

Make this clearer in the documentation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/bcm2835.rst | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index cfd3bb2edb96..f7ab723d633a 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -5,28 +5,35 @@ Raspberry Pi
 ------------
 
 barebox has support for BCM283x-based Raspberry Pi single board computers.
-Support is most extensive for BCM283[567]. For the newer BCM2711 used in the
-Raspberry Pi 4, only basic support is currently available (Serial Port,
-Pinctrl/GPIO, SD-Card).
+Support is most extensive for BCM283[567], but barebox can also boot Linux
+over SD or Ethernet on the Raspberry Pi 4.
 
   1. Prepare an SD or microSD card with a FAT filesystem of at least 30 MB in size.
 
   2. Download the `Raspberry Pi firmware`_ (195 MB), unzip it, and copy the
      contents of the ``boot/`` folder to your card.
 
-  3. Use ``make rpi_defconfig; make`` to build barebox. This will create the following images:
+  3. Use ``make rpi_defconfig; make`` to build barebox for 32-bit boards or
+     ``make rpi_v8a_defconfig; make`` to build barebox for 64-bit.
+
+     ``rpi_defconfig`` will build at least following images:
 
      - ``images/barebox-raspberry-pi-1.img`` for the BCM2835/ARM1176JZF-S (Raspberry Pi 1, Raspberry Pi Zero)
      - ``images/barebox-raspberry-pi-2.img`` for the BCM2836/CORTEX-A7 (Raspberry Pi 2)
      - ``images/barebox-raspberry-pi-3.img`` for the BCM2837/CORTEX-A53 (Raspberry Pi 3)
      - ``images/barebox-raspberry-pi-cm3.img`` for the BCM2837/CORTEX-A53 (Raspberry Pi CM3)
-     - ``images/barebox-raspberry-pi.img``, which is a super set of all the other images
+     - ``images/barebox-raspberry-pi.img``, which is a super set of all the other images,
+       including Raspberry Pi 4 32-bit support.
 
      Copy the respective image for your model to your SD card and name it
      ``barebox.img``.
 
-     The ``images/barebox-raspberry-pi.img`` is expected to replace the other images
-     in the future. It contains the device trees of all supported (and enabled) variants
+     For 64-bit, only ``images/barebox-raspberry-pi.img`` will be created, which is usable
+     for both Raspberry Pi 3 and Raspberry Pi 4 in 64-bit mode. No support for the Raspberry
+     Pi 5 has been contributed yet.
+
+     The ``images/barebox-raspberry-pi.img`` is expected to be the sole image for 32-bit
+     also in the future. It contains the device trees of all supported (and enabled) variants
      and determines at runtime what board it runs on and does the right thing.
 
   4. Create a text file ``config.txt`` on the SD card with the following content::
-- 
2.39.2



