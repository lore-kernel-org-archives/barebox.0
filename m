Delivery-date: Thu, 30 Mar 2023 12:35:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phpdI-002esy-VG
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 12:35:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phpdI-0001Oy-MZ
	for lore@pengutronix.de; Thu, 30 Mar 2023 12:35:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Fwz3rfNYYiyzUPxC9Qv05wd/toYuA3PQsv+H+18XfD0=; b=sC1EsTx3Wr/Kb0quDg3BZDg6++
	J2WeNbbxZM1VpDYXG6QW4+DdUc7d8fY0i68CP3mHJvcfrI0Kb1h5G0V3BBne37gHNRnd59Co8sc+A
	3nje73Bwni9JjKYONAncGzTUKeTqn1L6k+F6hVDK/v5lEIHflxKoGXfiRAAUI0S2F0JnWQh4hjn49
	IrjFoprFHAYG44dJcqmXSAX2T+wm3TPEuxVd4Uwsdf9QKBN+NXNL/FVg+l3dKvkzVeX62sHNNtA92
	oVQpPT9UZ6NuvZGvUp0g1hH/IVTWMotSB9V5QNwHfdJXFPJ3LTU7r3AgQaeabGtFbFOxejvwFTZC4
	hT77xMWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phpbh-003Tqo-20;
	Thu, 30 Mar 2023 10:34:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phpbd-003Tnc-1y
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 10:34:11 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1phpbX-0000yg-8H; Thu, 30 Mar 2023 12:34:03 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 30 Mar 2023 12:33:56 +0200
Message-Id: <20230330103359.2751080-1-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_033409_668604_04DDDF7C 
X-CRM114-Status: GOOD (  16.41  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] spi: add per-driver bits-per-word mask
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Allow SPI hosts to signal per-transfer bits-per-word switching
support and drivers to query it with spi_is_bpw_supported().

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 include/spi/spi.h | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/include/spi/spi.h b/include/spi/spi.h
index fa9329b08c80..809ebd8df1a8 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -131,6 +131,11 @@ struct spi_message;
  *	SPI slaves, and are numbered from zero to num_chipselects.
  *	each slave has a chipselect signal, but it's common that not
  *	every chipselect is connected to a slave.
+ * @bits_per_word_mask: A mask indicating which values of bits_per_word are
+ *	supported by the driver. Bit n indicates that a bits_per_word n+1 is
+ *	supported. If set, the SPI core will reject any transfer with an
+ *	unsupported bits_per_word. If not set, this value is simply ignored,
+ *	and it's up to the individual driver to perform any validation.
  * @max_speed_hz: Highest supported transfer speed
  * @setup: updates the device mode and clocking records used by a
  *	device's SPI controller; protocol code may call this.  This
@@ -165,6 +170,12 @@ struct spi_controller {
 
 	/* Optimized handlers for SPI memory-like operations */
 	const struct spi_controller_mem_ops *mem_ops;
+
+	/* Bitmask of supported bits_per_word for transfers */
+	u32			bits_per_word_mask;
+#define SPI_BPW_MASK(bits) BIT((bits) - 1)
+#define SPI_BPW_RANGE_MASK(min, max) GENMASK((max) - 1, (min) - 1)
+
 	/*
 	 * on some hardware transfer size may be constrained
 	 * the limit may depend on device transfer settings
@@ -435,6 +446,26 @@ spi_transfer_del(struct spi_transfer *t)
 	list_del(&t->transfer_list);
 }
 
+/**
+ * spi_is_bpw_supported - Check if bits per word is supported
+ * @spi: SPI device
+ * @bpw: Bits per word
+ *
+ * This function checks to see if the SPI controller supports @bpw.
+ *
+ * Returns:
+ * True if @bpw is supported, false otherwise.
+ */
+static inline bool spi_is_bpw_supported(struct spi_device *spi, u32 bpw)
+{
+	u32 bpw_mask = spi->master->bits_per_word_mask;
+
+	if (bpw == 8 || (bpw <= 32 && bpw_mask & SPI_BPW_MASK(bpw)))
+		return true;
+
+	return false;
+}
+
 /* All these synchronous SPI transfer routines are utilities layered
  * over the core async transfer primitive.  Here, "synchronous" means
  * they will sleep uninterruptibly until the async transfer completes.
-- 
2.39.2



