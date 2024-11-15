Delivery-date: Fri, 15 Nov 2024 20:58:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2Sq-002N8s-26
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 20:58:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2So-0001p0-FU
	for lore@pengutronix.de; Fri, 15 Nov 2024 20:58:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9D0TuaMIT3iC2ADZm6AKtHCKImnJXrwWZ8EVZ6sGos0=; b=lwp56xkKfetP8hE09hWRocqKzP
	bsVNtjFxFLeBdmZv+IV5Y4nfGSL6VOFaxMsQ83VChgVjVlDN3yfUzgddQ2zVVtsAglRzR7WGp752C
	2KpwpB0dPSHDRmtdDCFVuxwa/TU8gOM/KydiZvzdL+hfBOz2CSGeWe2yGXeVRdAjtz9XuwpS+sOxE
	X9h/lHH4g/XOQpzDXrXg8+uYcpaBvgHHBNXJQU3ozsQuxzkdlh6YU/wwvMXhIT2bS43vIWXSZCxTD
	l6NyEHLzAIA2JAAIoQGR1IA3Z19vSw2UmCem7lNhtgZl6JeoWtT7feEZtS3WrEZm6SV35x2oeAExM
	XtRLqYHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2SC-00000003wdO-2fPf;
	Fri, 15 Nov 2024 19:58:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2SA-00000003wbj-3pDc
	for barebox@bombadil.infradead.org;
	Fri, 15 Nov 2024 19:58:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=9D0TuaMIT3iC2ADZm6AKtHCKImnJXrwWZ8EVZ6sGos0=; b=oUEYORiAlZHmnLtjoA1ftdJ2bC
	Nc4hao6VpPMMPfUoaeTbWb67Ymb8eGVzljSFxb23ojCqdamoSuF/64w8DTIDmHGcvEYh+IQsX+jCY
	lWgRxQ7gZTExx3q1r4kK6B0/BVoN65Ad2MUwsuTiV7J6UACbU3hBaBGbfpXZPTWo7cagG9QTyOC1i
	UJoNQvHyOXwH6GfPwzEp70nCi0Ege1no9O3CdG70oxca9P55IR1sYJGyMv/Sks5N18dZkHvv3FLGi
	gAec1DdTg0/VLC2b/fBrOtRubvzFf0WUYHJqGs6melvtBKmGaNjrta+3pCr7xV7DCm4sYSwYSM6BJ
	g4QFXgsQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2S7-00000000Jaf-3OMp
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 19:58:01 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tC2S1-00017y-LD
	for barebox@lists.infradead.org; Fri, 15 Nov 2024 20:57:53 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 15 Nov 2024 20:57:42 +0100
Message-Id: <20241115195747.997164-7-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241115195747.997164-1-m.felsch@pengutronix.de>
References: <20241115195747.997164-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_195759_949374_EFA4F5EA 
X-CRM114-Status: GOOD (  14.16  )
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
Subject: [PATCH 07/12] spi: add support to setup spi-cs-{setup,hold,inactive}-delay-ns
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support to parse and setup the common OF CS delay properties. The
parsing is quite confusing since the kernel driver API decided to use a
u16 for the value. I kept it this way to be closer to the Linux code.

This prepares the core for the upcoming core based message handling.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/spi/spi.c | 25 +++++++++++++++++++++++++
 include/spi/spi.h | 22 ++++++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index c239de9d8549..e8a0b1b84be5 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -70,6 +70,9 @@ struct spi_device *spi_new_device(struct spi_controller *ctrl,
 		proxy->cs_gpiod = ctrl->cs_gpiods[chip->chip_select];
 	proxy->max_speed_hz = chip->max_speed_hz;
 	proxy->mode = chip->mode;
+	proxy->cs_setup = chip->cs_setup;
+	proxy->cs_hold = chip->cs_hold;
+	proxy->cs_inactive = chip->cs_inactive;
 	proxy->bits_per_word = chip->bits_per_word ? chip->bits_per_word : 8;
 	proxy->dev.platform_data = chip->platform_data;
 	proxy->dev.bus = &spi_bus;
@@ -111,6 +114,22 @@ struct spi_device *spi_new_device(struct spi_controller *ctrl,
 }
 EXPORT_SYMBOL(spi_new_device);
 
+static void of_spi_parse_dt_cs_delay(struct device_node *nc,
+				     struct spi_delay *delay, const char *prop)
+{
+	u32 value;
+
+	if (!of_property_read_u32(nc, prop, &value)) {
+		if (value > U16_MAX) {
+			delay->value = DIV_ROUND_UP(value, 1000);
+			delay->unit = SPI_DELAY_UNIT_USECS;
+		} else {
+			delay->value = value;
+			delay->unit = SPI_DELAY_UNIT_NSECS;
+		}
+	}
+}
+
 static void spi_of_register_slaves(struct spi_controller *ctrl)
 {
 	struct device_node *n;
@@ -145,6 +164,12 @@ static void spi_of_register_slaves(struct spi_controller *ctrl)
 			chip.mode |= SPI_3WIRE;
 		of_property_read_u32(n, "spi-max-frequency",
 				&chip.max_speed_hz);
+
+		/* Device CS delays */
+		of_spi_parse_dt_cs_delay(n, &chip.cs_setup, "spi-cs-setup-delay-ns");
+		of_spi_parse_dt_cs_delay(n, &chip.cs_hold, "spi-cs-hold-delay-ns");
+		of_spi_parse_dt_cs_delay(n, &chip.cs_inactive, "spi-cs-inactive-delay-ns");
+
 		reg = of_find_property(n, "reg", NULL);
 		if (!reg)
 			continue;
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 53d6bd32e025..8363e73c6754 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -13,6 +13,19 @@
 struct spi_controller_mem_ops;
 struct spi_message;
 
+/**
+ * struct spi_delay - SPI delay information
+ * @value: Value for the delay
+ * @unit: Unit for the delay
+ */
+struct spi_delay {
+#define SPI_DELAY_UNIT_USECS	0
+#define SPI_DELAY_UNIT_NSECS	1
+#define SPI_DELAY_UNIT_SCK	2
+	u16	value;
+	u8	unit;
+};
+
 struct spi_board_info {
 	char	*name;
 	int	max_speed_hz;
@@ -26,6 +39,11 @@ struct spi_board_info {
 	u8	bits_per_word;
 	void	*platform_data;
 	struct device_node *device_node;
+
+	/* CS delays */
+	struct spi_delay	cs_setup;
+	struct spi_delay	cs_hold;
+	struct spi_delay	cs_inactive;
 };
 
 /**
@@ -101,6 +119,10 @@ struct spi_device {
 	void			*controller_data;
 	const char		*modalias;
 	struct gpio_desc	*cs_gpiod;	/* Chip select gpio desc */
+	/* CS delays */
+	struct spi_delay	cs_setup;
+	struct spi_delay	cs_hold;
+	struct spi_delay	cs_inactive;
 
 	/*
 	 * likely need more hooks for more protocol options affecting how
-- 
2.39.5



