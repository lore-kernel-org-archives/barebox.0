Delivery-date: Mon, 25 Apr 2022 08:30:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nisEp-00ERgQ-EV
	for lore@lore.pengutronix.de; Mon, 25 Apr 2022 08:30:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nisEm-0000nM-OS
	for lore@pengutronix.de; Mon, 25 Apr 2022 08:30:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmeyYWxkWDpypUol6h7FwoPpw8twq8GbqLnc4rMPqqM=; b=n7aDhDsjr8YtcU
	pjhDh1JHfNpPERVB9wd6MFGZS6dc64pn/mAOc0wOgTsoX/Y+Tn89gqdWvtYu6+6BxqhCoGr1A3SZx
	FfPd5FugCEX70DXPEswK0tMjiIhRhPGeEynyjVSnr0U29HBQuJ4PSUH1chANlECE9jez604QILmpm
	WYHHRD7nzpaxQvF6ujSFoAaaE6IkXASpUQ5ev0exVBTGWKqnPRi4a3GlB7QNzkOcgV908EN8cevh/
	1cct2NxWVJU8YW2EJwAq+1yY2uG/RkSx+FManfukp0Xm0oTRMOs4VC9Luqfdytz8/b5Ps52QoO2mI
	lgPHWgot5hMPjactGSlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nisDV-008UgD-60; Mon, 25 Apr 2022 06:29:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nisDN-008UdX-PA
 for barebox@lists.infradead.org; Mon, 25 Apr 2022 06:28:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nisDM-0000Xf-IQ; Mon, 25 Apr 2022 08:28:52 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nisDN-0055zi-9b; Mon, 25 Apr 2022 08:28:51 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nisDK-0004gh-PS; Mon, 25 Apr 2022 08:28:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Apr 2022 08:28:49 +0200
Message-Id: <20220425062849.17954-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425062849.17954-1-a.fatoum@pengutronix.de>
References: <20220425062849.17954-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220424_232853_859871_3E05A33F 
X-CRM114-Status: GOOD (  13.56  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] ARM: configs: rpi: add and document single barebox-dt-2nd
 bootloader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With recent rework, we can install barebox along with all supported
Raspberry Pi device trees to the boot partition and let the VideoCore
take core of passing the correct device tree to barebox. Enable the
relevant option in config and document this briefly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/bcm2835.rst | 6 ++++++
 arch/arm/configs/rpi_defconfig   | 1 +
 2 files changed, 7 insertions(+)

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index 8af6a09c13db..0b5299a34078 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -14,10 +14,16 @@ Raspberry Pi
      - ``images/barebox-raspberry-pi-1.img`` for the BCM2835/ARM1176JZF-S (Raspberry Pi 1, Raspberry Pi Zero)
      - ``images/barebox-raspberry-pi-2.img`` for the BCM2836/CORTEX-A7 (Raspberry Pi 2)
      - ``images/barebox-raspberry-pi-3.img`` for the BCM2837/CORTEX-A53 (Raspberry Pi 3)
+     - ``images/barebox-raspberry-pi-cm3.img`` for the BCM2837/CORTEX-A53 (Raspberry Pi CM3)
 
      Copy the respective image for your model to your SD card and name it
      ``barebox.img``.
 
+     Alternatively, ``images/barebox-dt-2nd.img`` can be used as single bootloader for all
+     supported 32-bit boards. In this case the device tree supplied by the video core
+     is directly used by barebox to probe. The device trees in ``arch/arm/dts/*.dtb``
+     will need to be renamed for alignment with the naming scheme expected by the videocore.
+
   4. Create a text file ``config.txt`` on the SD card with the following content::
 
          kernel=barebox.img
diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index b823a9a3d09b..e0e1497481dc 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -3,6 +3,7 @@ CONFIG_MACH_RPI=y
 CONFIG_MACH_RPI2=y
 CONFIG_MACH_RPI3=y
 CONFIG_MACH_RPI_CM3=y
+CONFIG_BOARD_ARM_GENERIC_DT=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

