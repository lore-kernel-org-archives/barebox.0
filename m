Delivery-date: Mon, 16 Dec 2024 14:04:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNAlh-008pLD-2Z
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 14:04:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNAlg-0005Az-H8
	for lore@pengutronix.de; Mon, 16 Dec 2024 14:04:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/eFpTYszdUTututDb7w25Ck037Nhex4cUmnldhegz5g=; b=S5Y6c+4RXDCO+hKVN5Kwz3cC85
	Pnr1WO5fq7sJsoCv2acJVSBVM9wzAYZ6Y4RlnyWN4JxunkPvbtiKuCSWkdQphlzBOFK8wX71pRHPu
	1FkYglJFLhP/KIQbWw0tBFmuGWGl2FXaSK4T57I5bb7UYXMOmywTu5gGP/UVSC0gtLUKxPBBImFXi
	VfhlZBLKIlyxHu3CFNJ3bWRT2EQJ+jZ6YYjkccOI1BxZUVKu0g9LJIVFU7MmxGljufWokjOrPtSPF
	YNXa1O56Vy4d7plAyM3IAowMcKgUbg6eovEH8DnHvN8PPL57aupzHhXWuFR9OCqawLgdjumPC6NI8
	7gc0bVXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAlD-0000000A21X-1Kiy;
	Mon, 16 Dec 2024 13:03:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAl6-0000000A1uy-2Zp1
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 13:03:39 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tNAl3-0004cI-Kq
	for barebox@lists.infradead.org; Mon, 16 Dec 2024 14:03:33 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 16 Dec 2024 14:03:22 +0100
Message-Id: <20241216130324.1592755-10-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241216130324.1592755-1-m.felsch@pengutronix.de>
References: <20241216130324.1592755-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_050336_702870_F9FB0A52 
X-CRM114-Status: GOOD (  14.89  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/12] spi: add support for spi_controller::set_cs_timing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Import the spi_controller set_cs_timing() hook to make it easier to port
Linux spi drivers.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
 - add spi_set_cs_timing()

 drivers/spi/spi.c | 20 ++++++++++++++++++++
 include/spi/spi.h | 12 ++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 78569301776f..425c35759045 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -34,6 +34,22 @@ struct boardinfo {
 static LIST_HEAD(board_list);
 static LIST_HEAD(spi_controller_list);
 
+/**
+ * spi_set_cs_timing - configure CS setup, hold, and inactive delays
+ * @spi: the device that requires specific CS timing configuration
+ *
+ * Return: zero on success, else a negative error code.
+ */
+static int spi_set_cs_timing(struct spi_device *spi)
+{
+	int status = 0;
+
+	if (spi->controller->set_cs_timing && !spi->cs_gpiod)
+		status = spi->controller->set_cs_timing(spi);
+
+	return status;
+}
+
 /**
  * spi_new_device - instantiate one new SPI device
  * @master: Controller to which device is connected
@@ -101,6 +117,10 @@ struct spi_device *spi_new_device(struct spi_controller *ctrl,
 		goto fail;
 	}
 
+	status = spi_set_cs_timing(proxy);
+	if (status)
+		goto fail;
+
 	status = register_device(&proxy->dev);
 	if (status)
 		goto fail;
diff --git a/include/spi/spi.h b/include/spi/spi.h
index a8bbf55e0a5a..106cca664068 100644
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
@@ -249,6 +252,15 @@ struct spi_controller {
 	/* setup mode and clock, etc (spi driver may call many times) */
 	int			(*setup)(struct spi_device *spi);
 
+	/*
+	 * set_cs_timing() method is for SPI controllers that supports
+	 * configuring CS timing.
+	 *
+	 * This hook allows SPI client drivers to request SPI controllers
+	 * to configure specific CS timing through spi_set_cs_timing().
+	 */
+	int (*set_cs_timing)(struct spi_device *spi);
+
 	/* bidirectional bulk transfers
 	 *
 	 * + The transfer() method may not sleep; its main role is
-- 
2.39.5



