Delivery-date: Thu, 23 Dec 2021 17:06:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n0QbW-00FsdE-By
	for lore@lore.pengutronix.de; Thu, 23 Dec 2021 17:06:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n0QbS-0008FV-0j
	for lore@pengutronix.de; Thu, 23 Dec 2021 17:06:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Ag7DzQimTVajOE9telfyGo5Py6z9Pa1ichOieasceY=; b=y/ElfHFF/Esqd9
	BoGT54JUk5Rmy95MddH+6oqpBJN8GwolPDGbXuhDykyYw9MC13gft22F8aeBWOgDMrH/E/Cec8p3v
	GC6EmQxn8yVqCIiFCiWNunN6M0xHtnCDawq9NpQ86Yp8M9BCR2Hp1dTQ2gyvacdvq4RLZ7u0cNm9e
	dZ8MGT4V/GeMWs2DUTaecVP0j68zf5js/iDXFabG1DhY5fYFR4OkJzpzLy18S2x1qVUIInhYFILv2
	BbCrdSbMOSnKqd3I6Io77e7ljweipRdXPcbOQCW/EurvAa7O6wwWrSmnrNuu+K77He/DO0Vun4GVk
	JumhDfyNXL43pBGUlhCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0Qa0-00D0dB-DE; Thu, 23 Dec 2021 16:04:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0QZe-00D0XZ-UQ
 for barebox@lists.infradead.org; Thu, 23 Dec 2021 16:04:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1n0QZb-0007gJ-Vo; Thu, 23 Dec 2021 17:04:08 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>)
 id 1n0QZb-006DLZ-U6; Thu, 23 Dec 2021 17:04:07 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>)
 id 1n0QZY-000VDn-QD; Thu, 23 Dec 2021 17:04:04 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Thu, 23 Dec 2021 17:03:57 +0100
Message-Id: <20211223160404.119970-2-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211223160404.119970-1-m.tretter@pengutronix.de>
References: <20211223160404.119970-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211223_080410_997102_DCE1901A 
X-CRM114-Status: UNSURE (   8.50  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/8] spi: stub device_spi_driver if SPI is disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows drivers that support multiple buses to keep the code for
registering their SPI variant even if SPI is disabled.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changelog:

v2:

- new patch
---
 include/spi/spi.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/spi/spi.h b/include/spi/spi.h
index c5efca1cc31c..bca996d8d8f9 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -515,9 +515,14 @@ static inline int spi_driver_register(struct driver_d *drv)
 	return register_driver(drv);
 }
 
+#ifdef CONFIG_SPI
 #define coredevice_spi_driver(drv)	\
 	register_driver_macro(coredevice,spi,drv)
 #define device_spi_driver(drv)	\
 	register_driver_macro(device,spi,drv)
+#else
+#define coredevice_spi_driver(drv)
+#define device_spi_driver(drv)
+#endif
 
 #endif /* __INCLUDE_SPI_H */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

