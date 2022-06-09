Delivery-date: Thu, 09 Jun 2022 08:01:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBEl-008S42-Hz
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:01:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBEi-0001Cb-Hb
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:01:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rpi5ch3stHO40eJ3HfpHtWhOwwCoMCS8j2ldBxwvCcs=; b=WVCkVw2NZXfYsy
	bA3KJZwoDBFLQuDR0yOCfz5/QnanI9aP9yUMHJ/UMJBuCS05OE5o2E5EDD9bfIFPgiV/Vs5+B3NPZ
	678TkDyREs+95UPN3b+/6oDXmNaFE/Qu7StlEMB2z0eflthBc6/99iG9VkV0FU26dH9adYU/sPLRe
	nuA2x3nbnxxT46hMKz1ry9KAyDWk5UBOFCjoc/NuQd5iMz1EYTQtkQu0yECPJkXtEGYV3jr79AIgu
	DOKPyt6Wj04XwPfqzAcPzw61r5mWj2oYR+qsF/h+P7FV/AgZRUVQUUUNO8NRzVL6V3r/g2vWeXBNW
	GiKdAiVj0tjKQOE2WHaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBDJ-00GvRt-PK; Thu, 09 Jun 2022 06:00:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCa-00GuzS-Bw
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCZ-0008Hf-4q; Thu, 09 Jun 2022 07:59:27 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCZ-007K9P-LD; Thu, 09 Jun 2022 07:59:26 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002naO-Ej; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:21 +0200
Message-Id: <20220609055922.667016-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225928_468230_947FCE6C 
X-CRM114-Status: GOOD (  11.99  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 20/21] doc: bcm283x: reference newer firmware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The old firmware can boot a Raspberry Pi 4 apparently, but it doesn't
contain bcm2711 device trees, so it's probably not an actually supported
configuration. Point at a newer firmware instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/bcm2835.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index 2fa5d445d21d..f6df3e9e8064 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -11,7 +11,7 @@ used in the Raspberry Pi 4, only basic support is currently available
 
   1. Prepare an SD or microSD card with a FAT filesystem of at least 30 MB in size.
 
-  2. Download the `Raspberry Pi firmware`_ (120 MB), unzip it, and copy the
+  2. Download the `Raspberry Pi firmware`_ (195 MB), unzip it, and copy the
      contents of the ``boot/`` folder to your card.
 
   3. Use ``make rpi_defconfig; make`` to build barebox. This will create the following images:
@@ -58,5 +58,5 @@ The original command-line from VideoCore device tree is available to the Barebox
 
     global linux.bootargs.vc="$global.vc.bootargs"
 
-.. _Raspberry Pi firmware: https://codeload.github.com/raspberrypi/firmware/zip/80e1fbeb78f9df06701d28c0ed3a3060a3f557ef
+.. _Raspberry Pi firmware: https://github.com/raspberrypi/firmware/archive/refs/tags/1.20220331.zip
 .. _documentation for config.txt: https://www.raspberrypi.org/documentation/configuration/config-txt/
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

