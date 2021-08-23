Delivery-date: Mon, 23 Aug 2021 13:59:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mI8cI-00053S-8L
	for lore@lore.pengutronix.de; Mon, 23 Aug 2021 13:59:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mI8cD-0002O4-K4
	for lore@pengutronix.de; Mon, 23 Aug 2021 13:59:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZfRF7q7XM6Yz9K8hiUaOyrr/uKD+bgbt4aUuuyOago4=; b=kpRld3RRZ8oGY1
	VNWwVX14QmbZnFsC0VJ680gSHO2XzNg9UQlhATWQ1AuAK8StNgwuxdFIx444rd4corV6kxkOaIIRC
	5hjhM4YTVbIzLzUSnVqsxTKguvaZH/p41VGH4n9qYJHhwcT7B7mdW2sx7F0WIqa3zxLvm/xPVr2mu
	ZaWwIBBI+Vzo+1MkLcS/B7aiLr8WjIr/0A5YYzwq1VIb4vqGwidcPFAb9awUYCSzMwvugWEPkedOI
	hVtfbVFq6Sdn0Wqzd+L44OlWlE4MuYFg/ZGlY9xu8g9gb3p8OfVkmQYqVpUdv/2ZAGEUOrktvsj1a
	XwFnOQkRx8APakJW2dIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI8aY-00Ge2Z-Ig; Mon, 23 Aug 2021 11:58:02 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mI8aT-00Ge1e-Qk
 for barebox@lists.infradead.org; Mon, 23 Aug 2021 11:57:59 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 91A19100005;
 Mon, 23 Aug 2021 11:57:55 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Mon, 23 Aug 2021 13:57:51 +0200
Message-Id: <20210823115751.140020-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210817101104.114945-6-antonynpavlov@gmail.com>
References: <20210817101104.114945-6-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_045758_046453_5F12F147 
X-CRM114-Status: UNSURE (   9.94  )
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
Cc: Ahmad Fatoum <ahmad@a3f.at>
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! spi: add litex spiflash driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

bitio.h checks for a setbits macro and would define its own if none was
defined. This means setbits can't be used as symbol name later. Fix
this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/spi/litex_spiflash.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/litex_spiflash.c b/drivers/spi/litex_spiflash.c
index 26ef207699eb..6701e9866a13 100644
--- a/drivers/spi/litex_spiflash.c
+++ b/drivers/spi/litex_spiflash.c
@@ -35,7 +35,7 @@ static inline void litex_spiflash_spi_wr(struct litex_spiflash_spi *sp, u32 val,
 	writel(val, sp->regs + reg);
 }
 
-static inline void setbits(struct litex_spiflash_spi *sp, int bits, int on)
+static inline void litex_spiflash_setbits(struct litex_spiflash_spi *sp, int bits, int on)
 {
 	/*
 	 * We are the only user of SCSPTR so no locking is required.
@@ -62,7 +62,7 @@ static inline void setsck(struct spi_device *spi, int on)
 {
 	struct litex_spiflash_spi *sc = litex_spiflash_spidev_to_sp(spi);
 
-	setbits(sc, SPIFLASH_BB_CLK, on);
+	litex_spiflash_setbits(sc, SPIFLASH_BB_CLK, on);
 }
 
 static inline void setmosi(struct spi_device *spi, int on)
@@ -70,14 +70,14 @@ static inline void setmosi(struct spi_device *spi, int on)
 	struct litex_spiflash_spi *sc = litex_spiflash_spidev_to_sp(spi);
 
 	sc->val &= ~SPIFLASH_BB_DIR;
-	setbits(sc, SPIFLASH_BB_MOSI, on);
+	litex_spiflash_setbits(sc, SPIFLASH_BB_MOSI, on);
 }
 
 static inline u32 getmiso(struct spi_device *spi)
 {
 	struct litex_spiflash_spi *sc = litex_spiflash_spidev_to_sp(spi);
 
-	setbits(sc, SPIFLASH_BB_DIR, 1);
+	litex_spiflash_setbits(sc, SPIFLASH_BB_DIR, 1);
 	return !!((litex_spiflash_spi_rr(sc, SPIFLASH_MISO) & 1));
 }
 
@@ -87,7 +87,7 @@ static inline u32 getmiso(struct spi_device *spi)
 
 static inline void litex_spiflash_spi_chipselect(struct litex_spiflash_spi *sc, int on)
 {
-	setbits(sc, SPIFLASH_BB_CSN, on);
+	litex_spiflash_setbits(sc, SPIFLASH_BB_CSN, on);
 }
 
 static int litex_spiflash_spi_setup(struct spi_device *spi)
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

