Delivery-date: Wed, 11 Jan 2023 09:04:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW6S-008dxI-Op
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:04:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW6Q-00012A-9T
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:04:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ajSQQTXzwh1daFOI7Dxfm+8hIYwts4nAvPczJyQYlKg=; b=hOmSDygZ4WVwcVAkjIe2rxrHbz
	wKyt3s0LfMO8cBBUaqbIqb0a4mCuLA4Zkj6h8WQ536rkBy3JNPnju+fns0vBfZwdCP1vV1oUD54d1
	hBjXoaK/jMrGo9UjmDQlllouuTzwmzkGn9BXd4sO0QL/ZGZh69wdO4FL64Ffd19ZXaxO7PHKy/ACR
	RakfT2SPC9lq1cZFU+jrURrZ1gigHupygxOlOKZ9kElUIW/TRNu6dlvoz/fb952Kc3/ZcFonac2PB
	V40JjG8StXg6rcqRL76aBmcW5i6E/+5u20jVKAmwLEWLjlyMlmhp+jIdPf93B+rvn0X5TJB1eHpK7
	b8Y5CMTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW51-00AFeI-Ph; Wed, 11 Jan 2023 08:03:28 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW3C-00AEaY-TG
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 08:01:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW37-0008Nz-H5; Wed, 11 Jan 2023 09:01:29 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW36-005Ffd-U4; Wed, 11 Jan 2023 09:01:28 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW33-003v09-BR; Wed, 11 Jan 2023 09:01:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 09:01:16 +0100
Message-Id: <20230111080119.933475-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111080119.933475-1-a.fatoum@pengutronix.de>
References: <20230111080119.933475-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_000134_992763_C12A71CD 
X-CRM114-Status: GOOD (  11.13  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/11] dev: add dev_bus_is_spi/i2c helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

These will simplify writing drivers that can probe via either I2C or SPI
like the SSD1307FB and upcoming KSZ I2C switch support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/ssd1307fb.c | 4 ++--
 include/i2c/i2c.h         | 5 +++++
 include/spi/spi.h         | 5 +++++
 3 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index c2b5cd9b3481..7d2769a228af 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -451,12 +451,12 @@ static int ssd1307fb_probe(struct device *dev)
 
 	par->device_info = (struct ssd1307fb_deviceinfo *)match->data;
 
-	if (IS_ENABLED(CONFIG_I2C) && dev->bus == &i2c_bus) {
+	if (dev_bus_is_i2c(dev)) {
 		par->client = to_i2c_client(dev);
 		i2c_set_clientdata(par->client, par);
 		par->write_array = ssd1307fb_i2c_write_array;
 	}
-	if (IS_ENABLED(CONFIG_SPI) && dev->bus == &spi_bus) {
+	if (dev_bus_is_spi(dev)) {
 		par->spi = to_spi_device(dev);
 		par->dc = of_get_named_gpio(node, "dc-gpios", 0);
 		if (!gpio_is_valid(par->dc)) {
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 5cca73a2f86d..b1ab72850c75 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -330,6 +330,11 @@ extern int i2c_write_reg(struct i2c_client *client, u32 addr, const u8 *buf, u16
 
 extern struct bus_type i2c_bus;
 
+static inline bool dev_bus_is_i2c(struct device *dev)
+{
+	return IS_ENABLED(CONFIG_I2C) && dev->bus == &i2c_bus;
+}
+
 static inline int i2c_driver_register(struct driver *drv)
 {
 	drv->bus = &i2c_bus;
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 7591d0ff3b26..5071dd69650b 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -556,6 +556,11 @@ static inline ssize_t spi_w8r8(struct spi_device *spi, u8 cmd)
 
 extern struct bus_type spi_bus;
 
+static inline bool dev_bus_is_spi(struct device_d *dev)
+{
+	return IS_ENABLED(CONFIG_SPI) && dev->bus == &spi_bus;
+}
+
 struct spi_controller *spi_get_controller(int bus);
 
 static inline int spi_driver_register(struct driver *drv)
-- 
2.30.2



