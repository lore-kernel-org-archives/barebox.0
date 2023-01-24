Delivery-date: Tue, 24 Jan 2023 21:08:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKPaM-000o7q-9r
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 21:08:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKPaJ-0008Ht-M1
	for lore@pengutronix.de; Tue, 24 Jan 2023 21:08:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lh++WRZ24U9xO9A554PU1q34ZcqhrBlbyPxXNio1sNs=; b=w7HSxvqlKGGcTJiEwZawSmKTcn
	6qc5F4FSKOwTSZhvwqg3a3Pd40G863f7Q2p8QvyP6PgA5o/wimdCpxmszCBUz2L+VEjvSNUZjYtoS
	5xeYTZEHpoe3nUHiP4oEaHQxt3j9/QTFQeMWKRuapfhh/5OSHLCSB3YKY00dvQXHxG3DyxfNdtkBQ
	XgQvaquIjiiJFZStAD46OwW1dR12klE7mHR9MiXxNlfv1sf5F6cr3cW2FcmXNsn5/UkJoLVIy4EeY
	Wh+H+dA2CNpxF93+Y+Tj1rzps2Q+eMD/puPsbKtGKi0IPmfyoNnhGNdlOvUG4Uq3lXIxQbG3ZVP9y
	RTVewirw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKPYx-0059ze-ED; Tue, 24 Jan 2023 20:06:35 +0000
Received: from out-166.mta0.migadu.com ([2001:41d0:1004:224b::a6])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKPYq-0059yP-RX
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 20:06:31 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674590784;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Lh++WRZ24U9xO9A554PU1q34ZcqhrBlbyPxXNio1sNs=;
	b=d5Ys4IDz+jiAqTJiCa9c5xbZnLaVGCBK6HwDp77L6V0MrVvJb0cYd7WsSfKqsb0mIpDT4c
	f8LHc0QWS2NEowUM5UHMavSl9U4pQg5pJydbPeCnLO28dPsPfMA0p605Y5SIksVTjXvvmN
	ASnHpm058oiZlWMMdQtknz2WG1hbtr9rXaBq8Z2LeMQUdqDmja7S/THQz44xXbNsuNIPzZ
	K/sseVbtxlpCBamphlSw1CJHDuBDCxDt3bSpHhvHTk0uHuUCHK69Ze4CuTG/7r92/xvVzL
	InNUdAz+7Pc7qWdOuONJmfe2I24oz9NA7rocSNFK7pFlhXtXMy5yS6sI2blwuQ==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Wed, 25 Jan 2023 07:05:55 +1100
Message-Id: <20230124200554.1701687-1-contact@jookia.org>
In-Reply-To: <20230122150432.4096816-1-contact@jookia.org>
References: <20230122150432.4096816-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_120629_651332_DFC2D565 
X-CRM114-Status: GOOD (  13.45  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] spi: Fix probing SPI drivers with no cs-gpios
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_gpio_named_count returns a negative value on error but this
is discarded and cast to a u16, making error handling impossible.

With debug logging enabled this effectively halts booting so the board can
print an error over serial 65534 times.

Introduce of_gpio_count_csgpios which returns 0 in the case of an error
rather than a negative value.

Signed-off-by: John Watts <contact@jookia.org>
---
Changes v1 -> v2:
- Refactored logic in to separate of_gpio_count_csgpios function
---
 drivers/spi/atmel_spi.c |  2 +-
 drivers/spi/imx_spi.c   |  2 +-
 drivers/spi/stm32_spi.c |  2 +-
 include/of_gpio.h       | 17 +++++++++++++++++
 4 files changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 399c47c81d..9bf85874c5 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -408,7 +408,7 @@ static int atmel_spi_probe(struct device *dev)
 		master->num_chipselect = pdata->num_chipselect;
 		as->cs_pins = pdata->chipselect;
 	} else {
-		master->num_chipselect = of_gpio_named_count(node, "cs-gpios");
+		master->num_chipselect = of_gpio_count_csgpios(node);
 		as->cs_pins = xzalloc(sizeof(u32) * master->num_chipselect);
 
 		for (i = 0; i < master->num_chipselect; i++) {
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index eb30d757d5..f81d9e851f 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -568,7 +568,7 @@ static int imx_spi_dt_probe(struct imx_spi *imx)
 	if (!node)
 		return -ENODEV;
 
-	imx->master.num_chipselect = of_gpio_named_count(node, "cs-gpios");
+	imx->master.num_chipselect = of_gpio_count_csgpios(node);
 	imx->cs_array = xzalloc(sizeof(u32) * imx->master.num_chipselect);
 
 	for (i = 0; i < imx->master.num_chipselect; i++)
diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
index 821a95980f..0d7407c279 100644
--- a/drivers/spi/stm32_spi.c
+++ b/drivers/spi/stm32_spi.c
@@ -514,7 +514,7 @@ static void stm32_spi_dt_probe(struct stm32_spi_priv *priv)
 	struct device_node *node = priv->master.dev->of_node;
 	int i;
 
-	priv->master.num_chipselect = of_gpio_named_count(node, "cs-gpios");
+	priv->master.num_chipselect = of_gpio_count_csgpios(node);
 	priv->cs_gpios = xzalloc(sizeof(u32) * priv->master.num_chipselect);
 
 	for (i = 0; i < priv->master.num_chipselect; i++)
diff --git a/include/of_gpio.h b/include/of_gpio.h
index 30ff204baf..794a9926cd 100644
--- a/include/of_gpio.h
+++ b/include/of_gpio.h
@@ -69,6 +69,23 @@ static inline int of_gpio_count(struct device_node *np)
 	return of_gpio_named_count(np, "gpios");
 }
 
+/**
+ * of_gpio_count() - Count cs-gpios for a device
+ * @np:		device node to count cs-gpios for
+ *
+ * Same as of_gpio_named_count, but hard coded to use the 'cs-gpios' property
+ * Returns 0 on error
+ */
+static inline int of_gpio_count_csgpios(struct device_node *np)
+{
+	int count = of_gpio_named_count(np, "cs-gpios");
+
+	if (count > 0)
+		return count;
+	else
+		return 0;
+}
+
 static inline int of_get_gpio_flags(struct device_node *np, int index,
 		      enum of_gpio_flags *flags)
 {
-- 
2.39.0



