Delivery-date: Thu, 30 Mar 2023 12:35:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phpdI-002esj-5a
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 12:35:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phpdI-0001OU-10
	for lore@pengutronix.de; Thu, 30 Mar 2023 12:35:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=itIMdWq1EKPizCcV8mZqze5FJZFqC76Fy/Z+59E6WQw=; b=rL4zKfFKA8KGWY0k3a+JVo8cty
	9k+mUtGRUBMjTrbpQBA5RwEDPQZiKVUqBY3peXwulTgC/DJWmHCX3wRp3LCRRh8VAdR6/QJz/4zM+
	+iYRE66kKD1rbZQtS6UWav3FEbSCQPOXpSYMqdjSA1i2sMyebYwTH9iA2hJpy21JIZrgQmhWyAmpj
	bI18kXN6SRZpabidKmvEEg6M/JBEE2/n03iTkcttmKHDBbEeSeF2XzmgmKcxy6z14ar+KMgoSbw+3
	bH3Ejs6PmGcVJZVyYUrCgT02XlSivhIl2U9rY4WLo7hJcLDCa7gQ5eX6POIdmu2/mHPwEupnGQner
	7EAc0ryg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phpbi-003Tqz-0x;
	Thu, 30 Mar 2023 10:34:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phpbd-003Tni-1y
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 10:34:11 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1phpbY-0000yg-35; Thu, 30 Mar 2023 12:34:04 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 30 Mar 2023 12:33:57 +0200
Message-Id: <20230330103359.2751080-2-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230330103359.2751080-1-p.zabel@pengutronix.de>
References: <20230330103359.2751080-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_033409_668702_AB5019CC 
X-CRM114-Status: GOOD (  15.32  )
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
Subject: [PATCH 2/4] spi: stm32: support per-transfer bits per word switching
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Allow dynamically switching data size between transfers.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/spi/stm32_spi.c | 50 ++++++++++++++++++++++++++++++++---------
 1 file changed, 39 insertions(+), 11 deletions(-)

diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
index 0d7407c279a2..1ac86fbe11e6 100644
--- a/drivers/spi/stm32_spi.c
+++ b/drivers/spi/stm32_spi.c
@@ -111,6 +111,24 @@ static inline struct stm32_spi_priv *to_stm32_spi_priv(struct spi_master *master
 	return container_of(master, struct stm32_spi_priv, master);
 }
 
+static int stm32_spi_get_bpw_mask(struct stm32_spi_priv *priv)
+{
+	u32 cfg1, max_bpw;
+
+	/*
+	 * The most significant bit at DSIZE bit field is reserved when the
+	 * maximum data size of periperal instances is limited to 16-bit
+	 */
+	setbits_le32(priv->base + STM32_SPI_CFG1, SPI_CFG1_DSIZE);
+
+	cfg1 = readl(priv->base + STM32_SPI_CFG1);
+	max_bpw = FIELD_GET(SPI_CFG1_DSIZE, cfg1) + 1;
+
+	dev_dbg(priv->master.dev, "%d-bit maximum data frame\n", max_bpw);
+
+	return SPI_BPW_RANGE_MASK(4, max_bpw);
+}
+
 static void stm32_spi_write_txfifo(struct stm32_spi_priv *priv)
 {
 	while ((priv->tx_len > 0) &&
@@ -261,19 +279,15 @@ static void stm32_spi_set_mode(struct stm32_spi_priv *priv, unsigned mode)
 
 static void stm32_spi_set_fthlv(struct stm32_spi_priv *priv, u32 xfer_len)
 {
-	u32 fthlv, half_fifo;
+	u32 fthlv, packet, bpw;
 
 	/* data packet should not exceed 1/2 of fifo space */
-	half_fifo = (priv->fifo_size / 2);
-
-	/* data_packet should not exceed transfer length */
-	fthlv = (half_fifo > xfer_len) ? xfer_len : half_fifo;
+	packet = clamp(xfer_len, 1U, priv->fifo_size / 2);
 
 	/* align packet size with data registers access */
-	fthlv -= (fthlv % 4);
+	bpw = DIV_ROUND_UP(priv->cur_bpw, 8);
+	fthlv = DIV_ROUND_UP(packet, bpw);
 
-	if (!fthlv)
-		fthlv = 1;
 	clrsetbits_le32(priv->base + STM32_SPI_CFG1, SPI_CFG1_FTHLV,
 			(fthlv - 1) << SPI_CFG1_FTHLV_SHIFT);
 }
@@ -344,9 +358,17 @@ static int stm32_spi_transfer_one(struct stm32_spi_priv *priv,
 	u32 ifcr = 0;
 	u32 mode;
 	int xfer_status = 0;
+	int nb_words;
 
-	if (t->len <= SPI_CR2_TSIZE)
-		writel(t->len, priv->base + STM32_SPI_CR2);
+	if (t->bits_per_word <= 8)
+		nb_words = t->len;
+	else if (t->bits_per_word <= 16)
+		nb_words = DIV_ROUND_UP(t->len * 8, 16);
+	else
+		nb_words = DIV_ROUND_UP(t->len * 8, 32);
+
+	if (nb_words <= SPI_CR2_TSIZE)
+		writel(nb_words, priv->base + STM32_SPI_CR2);
 	else
 		return -EMSGSIZE;
 
@@ -361,9 +383,11 @@ static int stm32_spi_transfer_one(struct stm32_spi_priv *priv,
 	else if (!priv->rx_buf)
 		mode = SPI_SIMPLEX_TX;
 
-	if (priv->cur_xferlen != t->len || priv->cur_mode != mode) {
+	if (priv->cur_xferlen != t->len || priv->cur_mode != mode ||
+	    priv->cur_bpw != t->bits_per_word) {
 		priv->cur_mode = mode;
 		priv->cur_xferlen = t->len;
+		priv->cur_bpw = t->bits_per_word;
 
 		/* Disable the SPI hardware to unlock CFG1/CFG2 registers */
 		stm32_spi_disable(priv);
@@ -373,6 +397,9 @@ static int stm32_spi_transfer_one(struct stm32_spi_priv *priv,
 
 		stm32_spi_set_fthlv(priv, t->len);
 
+		clrsetbits_le32(priv->base + STM32_SPI_CFG1, SPI_CFG1_DSIZE,
+				priv->cur_bpw - 1);
+
 		/* Enable the SPI hardware */
 		stm32_spi_enable(priv);
 	}
@@ -543,6 +570,7 @@ static int stm32_spi_probe(struct device *dev)
 	master->transfer = stm32_spi_transfer;
 	master->mem_ops = &stm32_spi_mem_ops;
 
+	master->bits_per_word_mask = stm32_spi_get_bpw_mask(priv);
 	master->bus_num = -1;
 	stm32_spi_dt_probe(priv);
 
-- 
2.39.2



