Delivery-date: Thu, 05 May 2022 10:03:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWSV-002UQK-Iz
	for lore@lore.pengutronix.de; Thu, 05 May 2022 10:03:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWST-0007jm-2B
	for lore@pengutronix.de; Thu, 05 May 2022 10:03:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0U7RiOlTNU32Cc4rASbfxFrlHqbLIRdpog1TtN6PV8=; b=EKfj1/HC1Ds2yf
	5eOW4nW5ltR7doA8fJgHYPusk38fjG6Mo3iZWoAW/kF400AfdlWe/AnRYszSMXZZM6RI912Bq9fEz
	PtnzIIkC7oslbLmaCEkZ02OurIiyvBPzL3kof6dc8EMBWWRWE5UrTPpcmrW4wcLjWIV8T9XMucp9j
	Qj7BsOFR+anVV+cRLWmvAyEhrT7gUQQ78m0sHLrLpd07ScipNzBOssOrAT0xw4nzamD8wi5d3mant
	Uas8QseNDwyCwTcc2KxY8ym1GzMI0LxG+TpGNg/5mND2JdTNwFzgoGU1bIqNtbrz8DMJswNDuklv7
	fpOsctwL121ZpG3SUj1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWRC-00EWhx-5N; Thu, 05 May 2022 08:02:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWR2-00EWbZ-Qx
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:02:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQy-0006tX-JG; Thu, 05 May 2022 10:02:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQz-000TOS-47; Thu, 05 May 2022 10:01:59 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQv-004hbL-Hn; Thu, 05 May 2022 10:01:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>,
 ore@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 May 2022 10:01:52 +0200
Message-Id: <20220505080152.1068424-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
References: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_010204_908051_CC4DB03E 
X-CRM114-Status: GOOD (  10.23  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 15/15] doc: bcm283x: reference newer firmware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The old firmware can boot a Raspberry Pi 4 apparently, but it doesn't
contain bcm2711 device trees, so it's probably not an actually supported
configuration. Point at a newer firmware instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/bcm2835.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index b27c6f34a50b..d082e35618ec 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -17,7 +17,7 @@ This format will be eventually phased out in favor of using the generic
 
   1. Prepare an SD or microSD card with a FAT filesystem of at least 30 MB in size.
 
-  2. Download the `Raspberry Pi firmware`_ (120 MB), unzip it, and copy the
+  2. Download the `Raspberry Pi firmware`_ (195 MB), unzip it, and copy the
      contents of the ``boot/`` folder to your card.
 
   3. Use ``make rpi_defconfig; make`` to build barebox. This will create the following images:
@@ -64,7 +64,7 @@ Generic DT image
 
   1. Prepare an SD or microSD card with a FAT filesystem of at least 30 MB in size.
 
-  2. Download the `Raspberry Pi firmware`_ (120 MB), unzip it, and copy the
+  2. Download the `Raspberry Pi firmware`_ (195 MB), unzip it, and copy the
      contents of the ``boot/`` folder to your card.
 
   3. Use ``make rpi_defconfig; make`` to build barebox for 32-Bit or ``make rpi_v8a_defconfig; make`` to build it for 64-Bit
@@ -104,5 +104,5 @@ Generic DT image
 
   6. Turn board's power on.
 
-.. _Raspberry Pi firmware: https://codeload.github.com/raspberrypi/firmware/zip/80e1fbeb78f9df06701d28c0ed3a3060a3f557ef
+.. _Raspberry Pi firmware: https://github.com/raspberrypi/firmware/archive/refs/tags/1.20220331.zip
 .. _documentation for config.txt: https://www.raspberrypi.org/documentation/configuration/config-txt/
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

