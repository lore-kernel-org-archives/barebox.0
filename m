Delivery-date: Fri, 15 Nov 2024 20:58:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2Sm-002N6e-0v
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 20:58:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2Sk-0001jU-1O
	for lore@pengutronix.de; Fri, 15 Nov 2024 20:58:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XYi02Ot21kZEAb/H51aoAxm/2uJ95xIEpuOnlYja8kE=; b=f0TNNpbRuH+K46HCa0aIufRR1e
	ZmXcnkFVVgSthFndXjw9AjyziXanwzyqXMXtWzUy1VrkxqJrQbHHgeiOs4ANDuj+y7KqRPCmgUH9B
	4hQT12/eKHMcvTh9xNgEUGWHPe7oeoAV69u19An3thXeOj/C8HU9dpZ6CvprsceZcc1H+bvCrCwcW
	en4HlMTJuUp21Jq9sJH4ylFnzBXY2kjRAJGoW/7xnwWLjt9w8ZjviPwaoiVrIlRQoJ+Op6ZHm0WST
	IvRiTDbGRyalZp8iZvW3StVbHbB1YkOYcOXyyuSB4V55BJUkpXYMKvvRtbtINAefIXXaVDvghRJLF
	uB8C5fCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2S8-00000003wbF-42li;
	Fri, 15 Nov 2024 19:58:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2S4-00000003wXJ-0DAd
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 19:57:58 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tC2S1-00017y-Jz
	for barebox@lists.infradead.org; Fri, 15 Nov 2024 20:57:53 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 15 Nov 2024 20:57:41 +0100
Message-Id: <20241115195747.997164-6-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241115195747.997164-1-m.felsch@pengutronix.de>
References: <20241115195747.997164-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_115756_086494_33234312 
X-CRM114-Status: GOOD (  21.58  )
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
Subject: [PATCH 06/12] spi: add support to handle cs-gpios
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

At the moment all drivers have to parse the cs-gpios on their own and
have to implement the mapping. By this commit we add the support to
handle this within the core and if there is a valid CS GPIO for a device
we assign it accordingly.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/spi/spi.c | 66 +++++++++++++++++++++++++++++++++++++++++++++++
 include/spi/spi.h |  9 +++++++
 2 files changed, 75 insertions(+)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 36d0653a191c..c239de9d8549 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -8,6 +8,8 @@
  */
 
 #include <common.h>
+#include <linux/device.h>
+#include <linux/gpio/consumer.h>
 #include <linux/spi/spi-mem.h>
 #include <spi/spi.h>
 #include <xfuncs.h>
@@ -64,6 +66,8 @@ struct spi_device *spi_new_device(struct spi_controller *ctrl,
 	proxy = xzalloc(sizeof *proxy);
 	proxy->master = ctrl;
 	proxy->chip_select = chip->chip_select;
+	if (ctrl->cs_gpiods)
+		proxy->cs_gpiod = ctrl->cs_gpiods[chip->chip_select];
 	proxy->max_speed_hz = chip->max_speed_hz;
 	proxy->mode = chip->mode;
 	proxy->bits_per_word = chip->bits_per_word ? chip->bits_per_word : 8;
@@ -215,6 +219,62 @@ static void scan_boardinfo(struct spi_controller *ctrl)
 	}
 }
 
+/**
+ * spi_get_gpio_descs() - grab chip select GPIOs for the master
+ * @ctlr: The SPI master to grab GPIO descriptors for
+ */
+static int spi_get_gpio_descs(struct spi_controller *ctlr)
+{
+	int nb, i;
+	struct gpio_desc **cs;
+	struct device *dev = ctlr->dev;
+
+	nb = gpiod_count(dev, "cs");
+	if (nb < 0) {
+		/* No GPIOs at all is fine, else return the error */
+		if (nb == -ENOENT)
+			return 0;
+		return nb;
+	}
+
+	ctlr->num_chipselect = max_t(int, nb, ctlr->num_chipselect);
+
+	cs = devm_kcalloc(dev, ctlr->num_chipselect, sizeof(*cs),
+			  GFP_KERNEL);
+	if (!cs)
+		return -ENOMEM;
+	ctlr->cs_gpiods = cs;
+
+	for (i = 0; i < nb; i++) {
+		/*
+		 * Most chipselects are active low, the inverted
+		 * semantics are handled by special quirks in gpiolib,
+		 * so initializing them GPIOD_OUT_LOW here means
+		 * "unasserted", in most cases this will drive the physical
+		 * line high.
+		 */
+		cs[i] = gpiod_get_index_optional(dev, "cs", i, GPIOD_OUT_LOW);
+		if (IS_ERR(cs[i]))
+			return PTR_ERR(cs[i]);
+
+		if (cs[i]) {
+			/*
+			 * If we find a CS GPIO, name it after the device and
+			 * chip select line.
+			 */
+			char *gpioname;
+
+			gpioname = basprintf("%s CS%d", dev_name(dev), i);
+			if (!gpioname)
+				return -ENOMEM;
+			gpiod_set_consumer_name(cs[i], gpioname);
+			free(gpioname);
+		}
+	}
+
+	return 0;
+}
+
 static int spi_controller_check_ops(struct spi_controller *ctlr)
 {
 	/*
@@ -285,6 +345,12 @@ int spi_register_controller(struct spi_controller *ctrl)
 	if (ctrl->bus_num < 0)
 		ctrl->bus_num = dyn_bus_id--;
 
+	if (ctrl->use_gpio_descriptors) {
+		status = spi_get_gpio_descs(ctrl);
+		if (status)
+			return status;
+	}
+
 	list_add_tail(&ctrl->list, &spi_controller_list);
 
 	spi_of_register_slaves(ctrl);
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 9261d508befd..53d6bd32e025 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -8,6 +8,7 @@
 #include <linux/kernel.h>
 #include <linux/string.h>
 #include <linux/bitops.h>
+#include <linux/gpio/consumer.h>
 
 struct spi_controller_mem_ops;
 struct spi_message;
@@ -99,6 +100,7 @@ struct spi_device {
 	void			*controller_state;
 	void			*controller_data;
 	const char		*modalias;
+	struct gpio_desc	*cs_gpiod;	/* Chip select gpio desc */
 
 	/*
 	 * likely need more hooks for more protocol options affecting how
@@ -156,6 +158,9 @@ static inline void spi_set_ctldata(struct spi_device *spi, void *state)
  *	the device whose settings are being modified.
  * @transfer: adds a message to the controller's transfer queue.
  * @cleanup: frees controller-specific state
+ * @cs_gpiods: Array of GPIO descriptors to use as chip select lines; one per CS
+ *	number. Any individual value may be NULL for CS lines that
+ *	are not GPIOs (driven by the SPI controller itself).
  * @list: link with the global spi_controller list
  *
  * Each SPI controller can communicate with one or more @spi_device
@@ -233,6 +238,10 @@ struct spi_controller {
 	/* called on release() to free memory provided by spi_controller */
 	void			(*cleanup)(struct spi_device *spi);
 
+	/* GPIO chip select */
+	struct gpio_desc	**cs_gpiods;
+	bool			use_gpio_descriptors;
+
 	struct list_head list;
 };
 
-- 
2.39.5



