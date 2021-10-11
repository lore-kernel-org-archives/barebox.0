Delivery-date: Mon, 11 Oct 2021 20:44:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ma0IA-0008LP-I9
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 20:44:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ma0I9-0002sr-8Y
	for lore@pengutronix.de; Mon, 11 Oct 2021 20:44:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TXCekOfhcdwGsrBDxyV6ADjm/tNVhKIHDAdxYNoW9j8=; b=hm8rBPxslK8/35
	bGr/WpVlW8K7wyZ+rdkG3n3Zt+ePAMLzyFwFP0Hm5CTELoKzD2Ny7gL+gjua8BbFOP3Pg4ik/DfTY
	Qf1O7pW/+tJx6cbzIhj+Xl5zVeePEZWsFql7/Tfc88ASl4VC2AA3GFB+bU4D7tFI9/sqY6iLN3J9+
	+NyyA8IB4hYfmC8crHTxKEnt3vwoLVMiZoedMd1gqAb4W4P5r7ho1Kjb0zTfleW+2RYANK+HMD4lc
	+bk7TkJV+rcLEfsXOF/JWCdVUTYBGDXu3+vkkL817o+D1DZ0gSIy42xPK2/YtxTMJ8tBm2WNFpkKj
	jwcY1cexPhgRMfakOKyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ma0Ge-00APAf-AY; Mon, 11 Oct 2021 18:43:20 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ma0GY-00AP7a-AO
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 18:43:15 +0000
Received: by mail-pf1-x42f.google.com with SMTP id w6so4017710pfd.11
 for <barebox@lists.infradead.org>; Mon, 11 Oct 2021 11:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hk94dQEj7/xwVQWRRtg20EdYW/iY5+yzGoikh+nulnQ=;
 b=XwuNR7I2Bf3l+nDpyl+w1m/j/rrdIvfDQW7hA4+mbmKvcc8dNnAry/tB82tDsVh3x/
 6s7mIp2RvaV6S6MUh5MNIQ/47YSNGK1sBJKr8vMwodzNH+/ExqeI4YOAbM/QYvkuNm39
 TyAdISLMKI1Rm1XcQVCpDsztmSR/W0HisFf8q9k4Oeu7gKfCO2KfWz/lYzHI+ouWrknD
 UOfondNspT/hRKwuJq0/VWZMxf2C5NBt3wmsf3XBRn+Lo4m0/4ZX2pSIaKRXhlxqOXg/
 5x8OWuwYJnqclFHAcJU+aNeX7ALKZRfUWD0N4ZC6Z0nLral/MLFrWeGcKbsBPEzsXJy1
 wlvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hk94dQEj7/xwVQWRRtg20EdYW/iY5+yzGoikh+nulnQ=;
 b=DhxoSNI3ouuc97WPEggTdR85qPnZ50DrTa5RqF2SmJCxeXNeWKt40xG1rKHzhUSFpw
 bWyApHuGZACgRqjAucRXcJxLZOnyzyf76rbbQ0duCDM/0pSdlz3tkFmfcVbTVRSPT0hU
 xQ8R7bn/2CMvyuBryDb8MwCIQx2eVOKNgqADYqf9mjJUtfgtbIbcZTKA/HNpsb7t+Xce
 J+2s+e4YLCxtNZYMZUe/yohzVlx7avl4XHQmVl8qkf8Qkpt1tn3BXx1oUpjiSnRY464e
 LMdloPPuXbe0rW25SZZ9t9X/c4v+Txb8yo/9J1owKS0Igjyn8ZcOGq8l5zrryUHSvkAj
 UvDw==
X-Gm-Message-State: AOAM532zgry0Zi4p8x5LA/S7kR2g5EKOo3nehYzr2HUletT9Oz8BeYrV
 REIE1rfblOGdWHCWv48EZnJEh/JEvY41/uFX
X-Google-Smtp-Source: ABdhPJzvsAJpbyLS8BqynAqfjYbIU/1JW+sRoZMfP7EoDQoMIj9Jk5L1fTVZLKs3G0ggbKy9s+/0ew==
X-Received: by 2002:a63:af57:: with SMTP id s23mr7478052pgo.428.1633977787750; 
 Mon, 11 Oct 2021 11:43:07 -0700 (PDT)
Received: from zen.local (97-113-90-42.tukw.qwest.net. [97.113.90.42])
 by smtp.gmail.com with ESMTPSA id z68sm5116903pgz.90.2021.10.11.11.43.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Oct 2021 11:43:07 -0700 (PDT)
From: Trent Piepho <trent.piepho@igorinstitute.com>
To: Barebox List <barebox@lists.infradead.org>
Cc: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 11 Oct 2021 11:42:13 -0700
Message-Id: <20211011184213.854061-1-trent.piepho@igorinstitute.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_114314_387684_CCD3D093 
X-CRM114-Status: GOOD (  18.18  )
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
Subject: [PATCH] net: ksz8864: Add support for KSZ87xx switches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds support for the ksz8765, ksz8794, and ksz8795 switches.

IDs for OF bindings are added.  The base chip type is "ksz8795", the
same as the Linux driver, for the ksz87xx switches added here.
"ksz8864rmn" is used for the existing switch.

The registers for these switch chips, as least as far as this simple
driver is concerned, are the same as the existing ksz8864 support.

The difference in the ksz87xx chips is the format of the command and
address bytes:

C = command
A = address (used bits)
a = address (unused bits)
p = turn around padding bit

ksz8864: 00000CCC  AAAAAAAA
ksz8795: CCCaaaaA  AAAAAAAp

CCC and AAAAAAAA are the same, it's just where they are that changes.
This is parameterized in the read/write reg functions by using two
values for the address width and pad width.

Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
---
 drivers/net/ksz8864rmn.c | 66 ++++++++++++++++++++++++++++++----------
 1 file changed, 50 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ksz8864rmn.c b/drivers/net/ksz8864rmn.c
index 85063ff0d..72ab86579 100644
--- a/drivers/net/ksz8864rmn.c
+++ b/drivers/net/ksz8864rmn.c
@@ -31,48 +31,55 @@
 #define CMD_WRITE		0x02
 #define CMD_READ		0x03
 
+enum ksz_type {
+	unknown,
+	ksz87,
+	ksz88
+};
+
 struct micrel_switch_priv {
 	struct cdev             cdev;
 	struct spi_device       *spi;
 	unsigned int		p_enable;
+	unsigned int		addr_width;
+	unsigned int		pad;
 };
 
-static int micrel_switch_read_reg(struct spi_device *spi, uint8_t reg)
+static int micrel_switch_read_reg(const struct micrel_switch_priv *priv, uint8_t reg)
 {
 	uint8_t tx[2];
 	uint8_t rx[1];
 	int ret;
 
-	tx[0] = CMD_READ;
-	tx[1] = reg;
+	tx[0] = CMD_READ << (priv->addr_width + priv->pad - 8) | reg >> (8 - priv->pad);
+	tx[1] = reg << priv->pad;
 
-	ret = spi_write_then_read(spi, tx, 2, rx, 1);
+	ret = spi_write_then_read(priv->spi, tx, 2, rx, 1);
 	if (ret < 0)
 		return ret;
 
 	return rx[0];
 }
 
-static void micrel_switch_write_reg(struct spi_device *spi, uint8_t reg, uint8_t val)
+static void micrel_switch_write_reg(const struct micrel_switch_priv *priv, uint8_t reg, uint8_t val)
 {
 	uint8_t tx[3];
 
-	tx[0] = CMD_WRITE;
-	tx[1] = reg;
+	tx[0] = CMD_WRITE << (priv->addr_width + priv->pad - 8) | reg >> (8 - priv->pad);
+	tx[1] = reg << priv->pad;
 	tx[2] = val;
 
-	spi_write_then_read(spi, tx, 3, NULL, 0);
+	spi_write_then_read(priv->spi, tx, 3, NULL, 0);
 }
 
 static int micrel_switch_enable_set(struct param_d *param, void *_priv)
 {
 	struct micrel_switch_priv *priv = _priv;
-	struct spi_device *spi = priv->spi;
 
 	if (priv->p_enable)
-		micrel_switch_write_reg(spi, REG_ID1, 1);
+		micrel_switch_write_reg(priv, REG_ID1, 1);
 	else
-		micrel_switch_write_reg(spi, REG_ID1, 0);
+		micrel_switch_write_reg(priv, REG_ID1, 0);
 
 	return 0;
 }
@@ -84,7 +91,7 @@ static ssize_t micel_switch_read(struct cdev *cdev, void *_buf, size_t count, lo
 	struct micrel_switch_priv *priv = cdev->priv;
 
 	for (i = 0; i < count; i++) {
-		ret = micrel_switch_read_reg(priv->spi, offset);
+		ret = micrel_switch_read_reg(priv, offset);
 		if (ret < 0)
 			return ret;
 		*buf = ret;
@@ -102,7 +109,7 @@ static ssize_t micel_switch_write(struct cdev *cdev, const void *_buf, size_t co
 	struct micrel_switch_priv *priv = cdev->priv;
 
 	for (i = 0; i < count; i++) {
-		micrel_switch_write_reg(priv->spi, offset, *buf);
+		micrel_switch_write_reg(priv, offset, *buf);
 		buf++;
 		offset++;
 	}
@@ -119,6 +126,11 @@ static int micrel_switch_probe(struct device_d *dev)
 {
 	struct micrel_switch_priv *priv;
 	int ret = 0;
+	enum ksz_type kind = (enum ksz_type)device_get_match_data(dev);
+	uint8_t id;
+
+	if (kind == unknown)
+		return -ENODEV;
 
 	priv = xzalloc(sizeof(*priv));
 
@@ -128,12 +140,27 @@ static int micrel_switch_probe(struct device_d *dev)
 	priv->spi->mode = SPI_MODE_0;
 	priv->spi->bits_per_word = 8;
 
-	ret = micrel_switch_read_reg(priv->spi, REG_ID0);
+	switch (kind) {
+	case ksz87:
+		priv->addr_width = 12;
+		priv->pad = 1;
+		id = 0x87;
+		break;
+	case ksz88:
+		priv->addr_width = 8;
+		priv->pad = 0;
+		id = 0x95;
+		break;
+	default:
+		return -ENODEV;
+	};
+
+	ret = micrel_switch_read_reg(priv, REG_ID0);
 	if (ret < 0) {
 		dev_err(&priv->spi->dev, "failed to read device id\n");
 		return ret;
 	}
-	if (ret != 0x95) {
+	if (ret != id) {
 		dev_err(&priv->spi->dev, "unknown device id: %02x\n", ret);
 		return -ENODEV;
 	}
@@ -149,13 +176,20 @@ static int micrel_switch_probe(struct device_d *dev)
 			NULL, &priv->p_enable, priv);
 
 	priv->p_enable = 1;
-	micrel_switch_write_reg(priv->spi, REG_ID1, 1);
+	micrel_switch_write_reg(priv, REG_ID1, 1);
 
 	return 0;
 }
 
+static const struct platform_device_id ksz_ids[] = {
+	{ .name = "ksz8864rmn", .driver_data = ksz88 },
+	{ .name = "ksz8795", .driver_data = ksz87 },
+	{ }
+};
+
 static struct driver_d micrel_switch_driver = {
 	.name  = "ksz8864rmn",
 	.probe = micrel_switch_probe,
+	.id_table = ksz_ids,
 };
 device_spi_driver(micrel_switch_driver);
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

