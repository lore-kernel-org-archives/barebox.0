Delivery-date: Sun, 22 Jan 2023 16:07:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJbwO-0027Vv-JI
	for lore@lore.pengutronix.de; Sun, 22 Jan 2023 16:07:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJbwM-0004Yy-LW
	for lore@pengutronix.de; Sun, 22 Jan 2023 16:07:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gbw7Ibc7f13U9D3mSIGcH62P65vtfHzkBPzS3rIOtQI=; b=ntGP7dqICPJnyjvbbIvr0GCUS4
	ik7FNl+Fh0QhkCDtqoY3buh43ckvVDwNRja86Vj9OWJeWZafZL2hnn1YcuBtkqcRyNQq7qjTvRHnn
	tYdmr5vFuW9NpoXOO1QcEgKe60P7qfakCozlFLFug6OWiakQ5PUsTMpd4UeuX+Uoy3sZXkti6LjaI
	g0PXO8mXqd+3vbCeQW7/smFcl98gQq4ZWCFfX3OTmNdhCLJepJ7zxc+Cj0M6CLLCXpIRsaeqN4UmM
	gDbeIxlqDXr+uyRs5oBX4GhrD4OKfQkTqsvw1rvKlB8nx3j8Ty8+Zc7hBLT02VdX2qkg1Xcf/IRMz
	nsBDhOyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJbuZ-00FT30-OC; Sun, 22 Jan 2023 15:05:35 +0000
Received: from out-184.mta0.migadu.com ([91.218.175.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJbuT-00FT2R-L7
	for barebox@lists.infradead.org; Sun, 22 Jan 2023 15:05:31 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674399920;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=gbw7Ibc7f13U9D3mSIGcH62P65vtfHzkBPzS3rIOtQI=;
	b=gSBguno1V4JFd5vRHSx/qe0JM3V+woNPeF6tHGy8GMvKMmJo2kL710Cy5oWJKuNE3vFvjG
	HB+k/e/umRz20BruAmdmP9retvIeu69hexdmx5lqolkP3HAWPhVaTSgY0UOqn1yg7tL1QW
	FFxhrpYRMMYq2GdjT+yKbPedsXGdjXg1fLCAr95CfxCPVR6eQHRgU7V87Fy4QmoWjzV+eY
	8bszfnyZoowkg0W/J2az0Wmx5Pq8UclCr0oUamfQRkA9/GCfVfR9MsGAW+4+BkqUA8Rl7D
	L5xkuchBObfk8xI0oUns2uNLiQKKPuXQc7t6T1gopGRIQ3NsorIby5iaOZaYcQ==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Mon, 23 Jan 2023 02:04:33 +1100
Message-Id: <20230122150432.4096816-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_070530_328580_E65C3A8A 
X-CRM114-Status: GOOD (  11.22  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] spi: Fix probing SPI drivers without a cs-gpios node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_gpio_named_count returns a negative value on error but this
is discarded and cast to a u16, making error handling impossible.

With debug logging enabled this effectively halts booting so the board can
print an error over serial 65534 times.

Check for this error and proceed as if there are no gpios specified.

Signed-off-by: John Watts <contact@jookia.org>
---
 drivers/spi/atmel_spi.c | 8 +++++++-
 drivers/spi/imx_spi.c   | 8 +++++++-
 drivers/spi/stm32_spi.c | 8 +++++++-
 3 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index ec90330e53..a2314be8ee 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -388,6 +388,7 @@ static int atmel_spi_probe(struct device_d *dev)
 	struct resource *iores;
 	int ret = 0;
 	int i;
+	int num_gpios;
 	struct spi_master *master;
 	struct device_node *node = dev->device_node;
 	struct atmel_spi *as;
@@ -408,7 +409,12 @@ static int atmel_spi_probe(struct device_d *dev)
 		master->num_chipselect = pdata->num_chipselect;
 		as->cs_pins = pdata->chipselect;
 	} else {
-		master->num_chipselect = of_gpio_named_count(node, "cs-gpios");
+		num_gpios = of_gpio_named_count(node, "cs-gpios");
+		if (num_gpios < 0) {
+			num_gpios = 0;
+		}
+
+		master->num_chipselect = num_gpios;
 		as->cs_pins = xzalloc(sizeof(u32) * master->num_chipselect);
 
 		for (i = 0; i < master->num_chipselect; i++) {
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 3e0ad2db00..b10076639a 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -564,11 +564,17 @@ static int imx_spi_dt_probe(struct imx_spi *imx)
 {
 	struct device_node *node = imx->master.dev->device_node;
 	int i;
+	int num_gpios;
 
 	if (!node)
 		return -ENODEV;
 
-	imx->master.num_chipselect = of_gpio_named_count(node, "cs-gpios");
+	num_gpios = of_gpio_named_count(node, "cs-gpios");
+	if (num_gpios < 0) {
+		num_gpios = 0;
+	}
+
+	imx->master.num_chipselect = num_gpios;
 	imx->cs_array = xzalloc(sizeof(u32) * imx->master.num_chipselect);
 
 	for (i = 0; i < imx->master.num_chipselect; i++)
diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
index 639c4f1740..a34e0b143d 100644
--- a/drivers/spi/stm32_spi.c
+++ b/drivers/spi/stm32_spi.c
@@ -513,8 +513,14 @@ static void stm32_spi_dt_probe(struct stm32_spi_priv *priv)
 {
 	struct device_node *node = priv->master.dev->device_node;
 	int i;
+	int num_gpios;
 
-	priv->master.num_chipselect = of_gpio_named_count(node, "cs-gpios");
+	num_gpios = of_gpio_named_count(node, "cs-gpios");
+	if (num_gpios < 0) {
+		num_gpios = 0;
+	}
+
+	priv->master.num_chipselect = num_gpios;
 	priv->cs_gpios = xzalloc(sizeof(u32) * priv->master.num_chipselect);
 
 	for (i = 0; i < priv->master.num_chipselect; i++)
-- 
2.39.0



