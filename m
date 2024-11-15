Delivery-date: Fri, 15 Nov 2024 20:58:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2So-002N7z-2H
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 20:58:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2Sl-0001lH-W8
	for lore@pengutronix.de; Fri, 15 Nov 2024 20:58:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gqi2QwnRNq6sbhoMyR9OYnKMY9DGJ89iffP0sSvUx2Y=; b=AZEkQGAJL3PQGc2CAuGDhcmb1f
	b7yR3JgQpLQFHbJJ1ED0KGRQvcTVlZzT3poJAQ4f3qCkXoEvCDh/GuTc43oJ65EeDimqcxaNeLZBq
	jjE4ldTNw/McjIWVe5xuXb+iF8toub6Ko+e+obX/bdniXAkNC0sd1GOidTolyjXA5n8tXXEjeh2qQ
	DGw710ycSSeoEbjO++MqznSUXNI4PkMHv2Tpq2Otwsq6W5ltNDHHEnYBpZkqxTy3Pk7z0W4AxR8n6
	IrCLMNPaA3RvMoOo83kLrm6pvSiFWEH/He01Bto047mGhx2fA3I4OkTo8gG3cnxcxFDkm74YFuq/Z
	an6qbY8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2SD-00000003wdz-0nSM;
	Fri, 15 Nov 2024 19:58:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2SC-00000003wcx-0atr
	for barebox@bombadil.infradead.org;
	Fri, 15 Nov 2024 19:58:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=Gqi2QwnRNq6sbhoMyR9OYnKMY9DGJ89iffP0sSvUx2Y=; b=PaTzrtTzZDz9uN2my9q6wA/AbJ
	/qFgiLA6ri1MtXCvbLueYWjVkaaIQk+ScNsMIFr+kyWuSbXsf87yMo+ehzD5HZl0+WTemQMvFG+js
	KCyQPCMzOzS7z3k/X37z2pXZJ2uXAz+J7XQdGebqTDYTTDvPmLSu5/1aPsoVTFEJGydTTJjjmHKcE
	lAlfPq1fWKIssR1hVDR49TNGXAyF+Kw8qsWC1mplmvGv5HF+NzkHrxBLKoMhNw0DFMkg4WnZ5u51G
	bWvw2EBeiLjNCMzFrwdM7LjQ16bo+mW1onrEBL0pDz3Lob7Pwb1nTLJFUPd4eVVaq+b33oM6TSTCQ
	XyAqqdhA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2S8-00000000Jag-0u2D
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 19:58:03 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tC2S1-00017y-OV
	for barebox@lists.infradead.org; Fri, 15 Nov 2024 20:57:53 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 15 Nov 2024 20:57:45 +0100
Message-Id: <20241115195747.997164-10-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241115195747.997164-1-m.felsch@pengutronix.de>
References: <20241115195747.997164-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_195800_433599_80AB6185 
X-CRM114-Status: GOOD (  12.48  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/12] spi: add support for spi_controller::set_cs_timing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Import the spi_controller set_cs_timing() hook to make it easier to port
code from the Linux.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/spi/spi.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/spi/spi.h b/include/spi/spi.h
index 8354b7d8baa6..092eacd4a8e1 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -179,6 +179,9 @@ static inline void spi_set_ctldata(struct spi_device *spi, void *state)
  *	must fail if an unrecognized or unsupported mode is requested.
  *	It's always safe to call this unless transfers are pending on
  *	the device whose settings are being modified.
+ * @set_cs_timing: optional hook for SPI devices to request SPI master
+ * controller for configuring specific CS setup time, hold time and inactive
+ * delay interms of clock counts
  * @transfer: adds a message to the controller's transfer queue.
  * @cleanup: frees controller-specific state
  * @cs_gpiods: Array of GPIO descriptors to use as chip select lines; one per CS
@@ -246,6 +249,16 @@ struct spi_controller {
 	/* setup mode and clock, etc (spi driver may call many times) */
 	int			(*setup)(struct spi_device *spi);
 
+	/*
+	 * set_cs_timing() method is for SPI controllers that supports
+	 * configuring CS timing.
+	 *
+	 * This hook allows SPI client drivers to request SPI controllers
+	 * to configure specific CS timing through spi_set_cs_timing() after
+	 * spi_setup().
+	 */
+	int (*set_cs_timing)(struct spi_device *spi);
+
 	/* bidirectional bulk transfers
 	 *
 	 * + The transfer() method may not sleep; its main role is
-- 
2.39.5



