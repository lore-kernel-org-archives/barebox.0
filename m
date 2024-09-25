Delivery-date: Wed, 25 Sep 2024 16:10:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSir-002cTY-0A
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:10:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSir-0004dh-AJ
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:10:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5EpyuV9v2Z+v7wd/QHcblJGvBmiF6U6FkidJyjvm6ts=; b=SqUqV6vB59cgzA+6y3iYuHkVEH
	sJzhQn0Yt1BsRDYLze9h6sef4N3VYb6FWeeCQb7j5sjycYED1TaShCoiG9v3gFNCkZh/jGF0qAEuF
	ZFC5hDwrnuiYcvNPxrcWyXOISmvPiZDvRBoVYZinITXzarrnVpiwDoxogE+b3jca96r7rZkGQfAOG
	l4wNGPRzZ8EBg+1T+0Ox9uYG9aEkyTCNBg2peqfopqupwhr9VxnemLJC+7qMVgxesE9SlJmJ8FulK
	3KCISkHmYwvMLe1XpZUxboWrAA1jzZyOIdoxiGTeSC+57OmWS/FeD1ADvelxzhUzdjIABTJWJJt/A
	wQyrftrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSiO-00000005XyC-0QTr;
	Wed, 25 Sep 2024 14:10:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSf6-00000005X9d-139g
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:06:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSf4-0003za-UZ; Wed, 25 Sep 2024 16:06:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSf4-001Ssg-GV; Wed, 25 Sep 2024 16:06:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSf4-00DDhp-2s;
	Wed, 25 Sep 2024 16:06:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 16:06:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-spi-gpio-v1-2-47f6285b3bf1@pengutronix.de>
References: <20240925-spi-gpio-v1-0-47f6285b3bf1@pengutronix.de>
In-Reply-To: <20240925-spi-gpio-v1-0-47f6285b3bf1@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727273194; l=2924;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=uBByYgWy5pNSzPR3VgKdfG+S6mKDVPDG+MZ3vyJyTZQ=;
 b=thmnN/EC4ruZL/rSCCBZ8gRT+PPXvBV02cYowWQ2Yw8ozpSeUNBCvi9GwPU3sZvqxdEfJIAk9
 oW9iA4ol+9uAO4ejy23kJrIY027vkxWz2YfcSoS4jiPAL6xfmU1LF6w
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_070636_343520_715DF40E 
X-CRM114-Status: GOOD (  13.81  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] spi: spi-gpio: support different word widths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The spi-gpio driver only supports 8bit word width. Add support for
arbitrary word widths up to 32bit.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/gpio_spi.c | 58 ++++++++++++++++++++++++++++++++++++++++++--------
 1 file changed, 49 insertions(+), 9 deletions(-)

diff --git a/drivers/spi/gpio_spi.c b/drivers/spi/gpio_spi.c
index a71b4eddab..c76b71f610 100644
--- a/drivers/spi/gpio_spi.c
+++ b/drivers/spi/gpio_spi.c
@@ -78,7 +78,7 @@ static inline u32 gpio_spi_txrx_word(struct spi_device *spi, unsigned nsecs,
 		return bitbang_txrx_be_cpha0(spi, nsecs, cpol, word, bits);
 }
 
-static int gpio_spi_transfer_one(struct spi_device *spi, struct spi_transfer *t)
+static int gpio_spi_transfer_one_u8(struct spi_device *spi, struct spi_transfer *t)
 {
 	bool read = (t->rx_buf) ? true : false;
 	u32 word = 0;
@@ -87,14 +87,59 @@ static int gpio_spi_transfer_one(struct spi_device *spi, struct spi_transfer *t)
 	for (n = 0; n < t->len; n++) {
 		if (!read)
 			word = ((const u8 *)t->tx_buf)[n];
-		word = gpio_spi_txrx_word(spi, 0, word, 8);
+		word = gpio_spi_txrx_word(spi, 0, word, spi->bits_per_word);
+		if (read)
+			((u8 *)t->rx_buf)[n] = word;
+	}
+
+	return 0;
+}
+
+static int gpio_spi_transfer_one_u16(struct spi_device *spi, struct spi_transfer *t)
+{
+	bool read = (t->rx_buf) ? true : false;
+	u32 word = 0;
+	int n;
+
+	for (n = 0; n < t->len / 2; n++) {
+		if (!read)
+			word = ((const u16 *)t->tx_buf)[n];
+		word = gpio_spi_txrx_word(spi, 0, word, spi->bits_per_word);
 		if (read)
-			((u8 *)t->rx_buf)[n] = word & 0xff;
+			((u16 *)t->rx_buf)[n] = word;
 	}
 
 	return 0;
 }
 
+static int gpio_spi_transfer_one_u32(struct spi_device *spi, struct spi_transfer *t)
+{
+	bool read = (t->rx_buf) ? true : false;
+	u32 word = 0;
+	int n;
+
+	for (n = 0; n < t->len / 4; n++) {
+		if (!read)
+			word = ((const u32 *)t->tx_buf)[n];
+		word = gpio_spi_txrx_word(spi, 0, word, spi->bits_per_word);
+		if (read)
+			((u32 *)t->rx_buf)[n] = word;
+	}
+
+	return 0;
+}
+
+static int gpio_spi_transfer_one(struct spi_device *spi, struct spi_transfer *t)
+{
+	if (spi->bits_per_word <= 8)
+		return gpio_spi_transfer_one_u8(spi, t);
+	if (spi->bits_per_word <= 16)
+		return gpio_spi_transfer_one_u16(spi, t);
+	if (spi->bits_per_word <= 32)
+		return gpio_spi_transfer_one_u32(spi, t);
+	return -EINVAL;
+}
+
 static int gpio_spi_transfer(struct spi_device *spi, struct spi_message *msg)
 {
 	struct spi_transfer *t;
@@ -120,12 +165,7 @@ static int gpio_spi_transfer(struct spi_device *spi, struct spi_message *msg)
 
 static int gpio_spi_setup(struct spi_device *spi)
 {
-	if (spi->bits_per_word != 8) {
-		dev_err(spi->master->dev, "master does not support %d bits per word\n",
-			spi->bits_per_word);
-		return -EINVAL;
-	}
-
+	gpio_spi_set_cs(spi, 0);
 	return 0;
 }
 

-- 
2.39.5



