Delivery-date: Mon, 23 Aug 2021 13:59:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mI8cL-00053y-ID
	for lore@lore.pengutronix.de; Mon, 23 Aug 2021 13:59:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mI8cG-0002Og-3P
	for lore@pengutronix.de; Mon, 23 Aug 2021 13:59:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MMbOG9DlUrwHDe65uHUzPFVtL/MAzUg/W8IGgXHX84k=; b=EPcQDrhQ+B/KUO
	pfoY2nroGNaqw/UdVT3MUflVfsImRmH9JxZXYqEt572WwnJ8gA1g9id1pvVMZlfpay9K9kneoRJkF
	5lTFP7nuNZvRiEp6ieQMzu7RBD06J6qTgsrpRooqeaqbx5Ns2vjADUMxz99seNsrrCkHTP9oW7pXA
	TLfKvy58OkJUT9Uir/CHwTmwHM1pYpusyprB/yeKaGmmBFuLVIVc02VCfIBgQf+bWJf6UnmNUV5KX
	7Lqf6Qc263GlOrmmNXpCdGmst8CH+Bq2+7Y2gGaFA6fYBxXcQw2wgVJFIg34R7uQ52g6u6BOvcy99
	bOm/HUDTMvsdeTv3bK4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI8a9-00GdyM-5o; Mon, 23 Aug 2021 11:57:37 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mI8a4-00GdxE-BO
 for barebox@lists.infradead.org; Mon, 23 Aug 2021 11:57:33 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 1A669100003;
 Mon, 23 Aug 2021 11:57:24 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 23 Aug 2021 13:57:13 +0200
Message-Id: <20210823115713.139527-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_045732_569770_CB3AC85C 
X-CRM114-Status: UNSURE (   8.81  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! asm-generic: include bitio.h from io.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

bitio.h checks for a setbits macro and would define its own if none was
defined. This means setbits can't be used as symbol name later. Fix
this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/spi/ath79_spi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/ath79_spi.c b/drivers/spi/ath79_spi.c
index e47896be624e..2a4e32a4cc50 100644
--- a/drivers/spi/ath79_spi.c
+++ b/drivers/spi/ath79_spi.c
@@ -55,7 +55,7 @@ static inline void ath79_spi_wr(struct ath79_spi *sp, u32 val, int reg)
 	__raw_writel(val, sp->regs + reg);
 }
 
-static inline void setbits(struct ath79_spi *sp, int bits, int on)
+static inline void ath79_spi_setbits(struct ath79_spi *sp, int bits, int on)
 {
 	/*
 	 * We are the only user of SCSPTR so no locking is required.
@@ -82,14 +82,14 @@ static inline void setsck(struct spi_device *spi, int on)
 {
 	struct ath79_spi *sc = ath79_spidev_to_sp(spi);
 
-	setbits(sc, AR71XX_SPI_IOC_CLK, on);
+	ath79_spi_setbits(sc, AR71XX_SPI_IOC_CLK, on);
 }
 
 static inline void setmosi(struct spi_device *spi, int on)
 {
 	struct ath79_spi *sc = ath79_spidev_to_sp(spi);
 
-	setbits(sc, AR71XX_SPI_IOC_DO, on);
+	ath79_spi_setbits(sc, AR71XX_SPI_IOC_DO, on);
 }
 
 static inline u32 getmiso(struct spi_device *spi)
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

