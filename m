Delivery-date: Fri, 15 Nov 2024 20:58:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2St-002NA5-2C
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 20:58:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2Sr-0001sp-Eb
	for lore@pengutronix.de; Fri, 15 Nov 2024 20:58:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fb9lenLuKErZ+Mdkcy8eqduismOchMX1Rc0vJd8QLL4=; b=ZBxmW6LtwYlA8f2Fob9rR30NtD
	iXAZM8Oezf/YovaUM7VvEDCkp9vCDQxaHgP453re7OFck6GKJ4iXofuvzweaV97DU9nlQaQrumDTo
	pPGnAZKlk7MySPht1tTSiOWMGBW6NM1cUu5b2gjlNIxetN8rk/L6Id4/r5Dk37RSQzbVwT5IYP0DO
	5UlHr6XeP4LR6bn61dOhXL8m2WSGJ8bWxbktj0Dqxv7PCyZ5+APSttgqcoG5troei8PYH1bvu5SW5
	k+Q34tgMbT7+xSgSWGGs1GwIpY2H0IN83SnTmClQn/FZmAO3pzMWtbkyfQY89m6vT8zIt1q5ss/DA
	867qF45Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2SF-00000003whl-4Axl;
	Fri, 15 Nov 2024 19:58:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2SC-00000003wcu-0UE6
	for barebox@bombadil.infradead.org;
	Fri, 15 Nov 2024 19:58:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=Fb9lenLuKErZ+Mdkcy8eqduismOchMX1Rc0vJd8QLL4=; b=bstj0MhDNXvAUG87v4/RT0fafR
	HGqlIpf1qYiukc5OWauLTzShQifx1Rw4KRCl/B9LVl9igQf/UWzpZVxkfp1P9ccGLlkW/XwsVMMLG
	WIY96c4f6OddOZ+g0gqnt/wjcikaM0Kn7c+wTX6dwQ4gwGsKgLumQnC6KfWYfIeicZl9aySk18aG5
	Pwxr4ssrGmDgSHnScQVmlfENORWNG/5qjzT0fErRB8YQ0QUaQSzRkZM3RofwxQ5pJVUGlcmuyZR+L
	hG3Wvmwyh9WSdK8BNr2A53ZRmUIfxX0z7ip+RiSp2zZs1i+Yue0gBqiCHGLLMe7rmd/N0X0ixatqs
	4EKUZ8Rw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2S7-00000000Jaj-3gH7
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 19:58:02 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tC2S1-00017y-Pa
	for barebox@lists.infradead.org; Fri, 15 Nov 2024 20:57:53 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 15 Nov 2024 20:57:46 +0100
Message-Id: <20241115195747.997164-11-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241115195747.997164-1-m.felsch@pengutronix.de>
References: <20241115195747.997164-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_195800_053891_9DB3216D 
X-CRM114-Status: GOOD (  33.41  )
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
Subject: [PATCH 11/12] spi: Provide common spi_message processing loop
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add barebox spi core message handling support. This mimics the current
Linux spi core handling and the initial Linux commit:

8<--------------------------------------------------------------------------------
commit b158935f70b9c156903338053216dd0adf7ce31c
Author: Mark Brown <broonie@linaro.org>
Date:   Sat Oct 5 11:50:40 2013 +0100

    spi: Provide common spi_message processing loop

    The loops which SPI controller drivers use to process the list of transfers
    in a spi_message are typically very similar and have some error prone areas
    such as the handling of /CS. Help simplify drivers by factoring this code
    out into the core - if drivers provide a transfer_one() function instead
    of a transfer_one_message() function the core will handle processing at the
    message level.

    /CS can be controlled by either setting cs_gpio or providing a set_cs
    function. If this is not possible for hardware reasons then both can be
    omitted and the driver should continue to implement manual /CS handling.

    This is a first step in refactoring and it is expected that there will be
    further enhancements, for example factoring out of the mapping of transfers
    for DMA and the initiation and completion of interrupt driven transfers.

    Signed-off-by: Mark Brown <broonie@linaro.org>
8<--------------------------------------------------------------------------------

This message handling implementation is much simpler compared to the
Linux but it should improve the current state of our spi framework by a
lot. After this commit it should be much simpler to port spi drivers from
Linux to barebox.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/spi/spi.c | 182 +++++++++++++++++++++++++++++++++++++++++++++-
 include/spi/spi.h |  44 +++++++++++
 2 files changed, 225 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 78569301776f..202527107625 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -300,6 +300,183 @@ static int spi_get_gpio_descs(struct spi_controller *ctlr)
 	return 0;
 }
 
+static void _spi_transfer_delay_ns(u32 ns)
+{
+	if (!ns)
+		return;
+	if (ns <= NSEC_PER_USEC) {
+		ndelay(ns);
+	} else {
+		u32 us = DIV_ROUND_UP(ns, NSEC_PER_USEC);
+
+		udelay(us);
+	}
+}
+
+int spi_delay_to_ns(struct spi_delay *_delay, struct spi_transfer *xfer)
+{
+	u32 delay = _delay->value;
+	u32 unit = _delay->unit;
+	u32 hz;
+
+	if (!delay)
+		return 0;
+
+	switch (unit) {
+	case SPI_DELAY_UNIT_USECS:
+		delay *= NSEC_PER_USEC;
+		break;
+	case SPI_DELAY_UNIT_NSECS:
+		/* Nothing to do here */
+		break;
+	case SPI_DELAY_UNIT_SCK:
+		/* Clock cycles need to be obtained from spi_transfer */
+		if (!xfer)
+			return -EINVAL;
+		/*
+		 * If there is unknown effective speed, approximate it
+		 * by underestimating with half of the requested Hz.
+		 */
+		hz = xfer->effective_speed_hz ?: xfer->speed_hz / 2;
+		if (!hz)
+			return -EINVAL;
+
+		/* Convert delay to nanoseconds */
+		delay *= DIV_ROUND_UP(NSEC_PER_SEC, hz);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return delay;
+}
+EXPORT_SYMBOL_GPL(spi_delay_to_ns);
+
+int spi_delay_exec(struct spi_delay *_delay, struct spi_transfer *xfer)
+{
+	int delay;
+
+	if (!_delay)
+		return -EINVAL;
+
+	delay = spi_delay_to_ns(_delay, xfer);
+	if (delay < 0)
+		return delay;
+
+	_spi_transfer_delay_ns(delay);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(spi_delay_exec);
+
+static void spi_set_cs(struct spi_device *spi, bool enable)
+{
+        bool activate = enable;
+
+        if (spi->cs_gpiod && !activate)
+                spi_delay_exec(&spi->cs_hold, NULL);
+
+        if (spi->mode & SPI_CS_HIGH)
+                enable = !enable;
+
+        if (spi->cs_gpiod) {
+                if (!(spi->mode & SPI_NO_CS)) {
+			/* Polarity handled by GPIO library */
+			gpiod_set_value(spi->cs_gpiod, activate);
+                }
+                /* Some SPI masters need both GPIO CS & slave_select */
+                if ((spi->controller->flags & SPI_CONTROLLER_GPIO_SS) &&
+                    spi->controller->set_cs)
+                        spi->controller->set_cs(spi, !enable);
+        } else if (spi->controller->set_cs) {
+                spi->controller->set_cs(spi, !enable);
+        }
+
+        if (spi->cs_gpiod || !spi->controller->set_cs_timing) {
+                if (activate)
+                        spi_delay_exec(&spi->cs_setup, NULL);
+                else
+                        spi_delay_exec(&spi->cs_inactive, NULL);
+        }
+}
+
+/*
+ * spi_transfer_one_message - Default implementation of transfer()
+ *
+ * This is a standard implementation of transfer() for drivers which implement a
+ * transfer_one() operation. It provides standard handling of delays and chip
+ * select management.
+ *
+ */
+static int spi_transfer_one_message(struct spi_device *spi, struct spi_message *msg)
+{
+	struct spi_controller *ctlr = spi->controller;
+	struct spi_transfer *xfer;
+	bool keep_cs = false;
+	int ret = 0;
+
+	if (ctlr->prepare_message) {
+		ret = ctlr->prepare_message(ctlr, msg);
+		if (ret) {
+			dev_err(ctlr->dev, "failed to prepare message: %d\n",
+				ret);
+			msg->status = ret;
+			return ret;
+		}
+	}
+
+	spi_set_cs(msg->spi, true);
+
+	list_for_each_entry(xfer, &msg->transfers, transfer_list) {
+		if ((xfer->tx_buf || xfer->rx_buf) && xfer->len) {
+			ret = ctlr->transfer_one(ctlr, msg->spi, xfer);
+			if (ret < 0) {
+				dev_err(&msg->spi->dev,
+					"SPI transfer failed: %d\n", ret);
+				goto out;
+			}
+		} else {
+			if (xfer->len)
+				dev_err(&msg->spi->dev,
+					"Bufferless transfer has length %u\n",
+					xfer->len);
+		}
+
+		if (msg->status != -EINPROGRESS)
+			goto out;
+
+		/* TODO: Convert to new spi_delay API */
+		if (xfer->delay_usecs)
+			udelay(xfer->delay_usecs);
+
+		if (xfer->cs_change) {
+			if (list_is_last(&xfer->transfer_list,
+					 &msg->transfers)) {
+				keep_cs = true;
+			} else {
+				spi_set_cs(msg->spi, false);
+				/* TODO: Convert to new spi_delay API */
+				udelay(10);
+				spi_set_cs(msg->spi, true);
+			}
+		}
+
+		msg->actual_length += xfer->len;
+	}
+
+out:
+	if (ret != 0 || !keep_cs)
+		spi_set_cs(msg->spi, false);
+
+	if (msg->status == -EINPROGRESS)
+		msg->status = ret;
+
+	if (msg->status && ctlr->handle_err)
+		ctlr->handle_err(ctlr, msg);
+
+	return ret;
+}
+
 static int spi_controller_check_ops(struct spi_controller *ctlr)
 {
 	/*
@@ -312,7 +489,7 @@ static int spi_controller_check_ops(struct spi_controller *ctlr)
 	if (ctlr->mem_ops) {
 		if (!ctlr->mem_ops->exec_op)
 			return -EINVAL;
-	} else if (!ctlr->transfer) {
+	} else if (!ctlr->transfer && !ctlr->transfer_one) {
 		return -EINVAL;
 	}
 
@@ -355,6 +532,9 @@ int spi_register_controller(struct spi_controller *ctrl)
 	if (status)
 		return status;
 
+	if (ctrl->transfer_one)
+		ctrl->transfer = spi_transfer_one_message;
+
 	slice_init(&ctrl->slice, dev_name(ctrl->dev));
 
 	/* even if it's just one always-selected device, there must
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 092eacd4a8e1..d0b338b2822b 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -10,6 +10,8 @@
 #include <linux/bitops.h>
 #include <linux/gpio/consumer.h>
 
+struct spi_controller;
+struct spi_transfer;
 struct spi_controller_mem_ops;
 struct spi_message;
 
@@ -26,6 +28,9 @@ struct spi_delay {
 	u8	unit;
 };
 
+extern int spi_delay_to_ns(struct spi_delay *_delay, struct spi_transfer *xfer);
+extern int spi_delay_exec(struct spi_delay *_delay, struct spi_transfer *xfer);
+
 struct spi_board_info {
 	char	*name;
 	int	max_speed_hz;
@@ -184,6 +189,26 @@ static inline void spi_set_ctldata(struct spi_device *spi, void *state)
  * delay interms of clock counts
  * @transfer: adds a message to the controller's transfer queue.
  * @cleanup: frees controller-specific state
+ * @set_cs: set the logic level of the chip select line.  May be called
+ *          from interrupt context.
+ * @prepare_message: set up the controller to transfer a single message,
+ *                   for example doing DMA mapping.  Called from threaded
+ *                   context.
+ * @transfer_one: transfer a single spi_transfer.
+ *
+ *                  - return 0 if the transfer is finished,
+ *                  - return 1 if the transfer is still in progress. When
+ *                    the driver is finished with this transfer it must
+ *                    call spi_finalize_current_transfer() so the subsystem
+ *                    can issue the next transfer. If the transfer fails, the
+ *                    driver must set the flag SPI_TRANS_FAIL_IO to
+ *                    spi_transfer->error first, before calling
+ *                    spi_finalize_current_transfer().
+ *                    Note: transfer_one and transfer_one_message are mutually
+ *                    exclusive; when both are set, the generic subsystem does
+ *                    not call your transfer_one callback.
+ * @handle_err: the subsystem calls the driver to handle an error that occurs
+ *		in the generic implementation of transfer_one_message().
  * @cs_gpiods: Array of GPIO descriptors to use as chip select lines; one per CS
  *	number. Any individual value may be NULL for CS lines that
  *	are not GPIOs (driven by the SPI controller itself).
@@ -284,6 +309,25 @@ struct spi_controller {
 	/* called on release() to free memory provided by spi_controller */
 	void			(*cleanup)(struct spi_device *spi);
 
+	/*
+	 * These hooks are for drivers that want to use the generic
+	 * controller transfer mechanism. If these are used, the
+	 * transfer() function above must NOT be specified by the driver.
+	 * Over time we expect SPI drivers to be phased over to this API.
+	 */
+	int (*prepare_message)(struct spi_controller *ctlr,
+			       struct spi_message *message);
+
+	/*
+	 * These hooks are for drivers that use a generic implementation
+	 * of transfer_one_message() provided by the core.
+	 */
+	void (*set_cs)(struct spi_device *spi, bool enable);
+	int (*transfer_one)(struct spi_controller *ctlr, struct spi_device *spi,
+			    struct spi_transfer *transfer);
+	void (*handle_err)(struct spi_controller *ctlr,
+			   struct spi_message *message);
+
 	/* GPIO chip select */
 	struct gpio_desc	**cs_gpiods;
 	bool			use_gpio_descriptors;
-- 
2.39.5



