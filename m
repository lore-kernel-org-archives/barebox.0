Delivery-date: Tue, 10 May 2022 15:08:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noPb3-008Kp4-B6
	for lore@lore.pengutronix.de; Tue, 10 May 2022 15:08:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noPb0-0001JW-SX
	for lore@pengutronix.de; Tue, 10 May 2022 15:08:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=59wCAFNiOVo8JmkU30SrtaATCWhkOfY2gNK/H3XPXYw=; b=L57AZQULUNXMzI
	c56CFgGcVI0Rxd3LG3mUKrgPKmTrQO4tR284wmOAbcBOMcmY3IImFOkCoYt6rNgRSLY4NjCD9tVkq
	2P9lnB+z3N/On5e6WQ6+KKy28frzK0PuyIgKrIv8V0kkhGSAE/tWPwbJlo4Eh1246MoEoERsI4Apw
	dq8wY3yprWIF6YuEujfJsl6jnGOHxMqvYKyxByKiYBAhzv11JfGjFFr8XlXSLC1KoiL849zhrZIss
	wzOinnJlnunCdzXraykd+LnTKWueqed88p4qbho6LEEjYZLolL6vP7x7TcaUBpWyZSaqGbohSg0Fo
	11e3t/WUadoKICpeeNhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noPZH-0027Gq-D9; Tue, 10 May 2022 13:06:24 +0000
Received: from lx20.hoststar.hosting ([168.119.41.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noPXl-0026gA-AD
 for barebox@lists.infradead.org; Tue, 10 May 2022 13:04:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=emfend.at; 
 s=mail;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:
 From:Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sivhMav1F3LDb0t+grpE8W5wiGg76idxtdXcfbgLk5U=; b=fA/6OuAEjFSDbdMY6TKjjZRI6h
 wJ+p600xpP9+uO8hw1vhnjDxRVgiGSEk30KDaGeni8Dje0yxfr4A8blEC1+j9OXm3knM+ZPZh/1Um
 /HAs5yUVck810juZiWPE+kD+5uc78ljhjzvgbp2Ag0KYDvUMxO9rpHvz57UWyuFJZAIM=;
Received: from 194-208-208-245.tele.net ([194.208.208.245]:50788
 helo=localhost.localdomain)
 by lx20.hoststar.hosting with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <matthias.fend@emfend.at>) id 1noPXc-0033VU-SJ
 for barebox@lists.infradead.org; Tue, 10 May 2022 15:04:42 +0200
From: Matthias Fend <matthias.fend@emfend.at>
To: barebox@lists.infradead.org
Date: Tue, 10 May 2022 15:04:14 +0200
Message-Id: <20220510130414.344586-1-matthias.fend@emfend.at>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_060449_891041_DC36934A 
X-CRM114-Status: GOOD (  22.07  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] i2c: add Cadence i2c host controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a driver to support the Cadence I2C host controller found in Zynq
UltraScale+ MPSoCs.

Signed-off-by: Matthias Fend <matthias.fend@emfend.at>
---
 drivers/i2c/busses/Kconfig       |   8 +
 drivers/i2c/busses/Makefile      |   1 +
 drivers/i2c/busses/i2c-cadence.c | 453 +++++++++++++++++++++++++++++++
 3 files changed, 462 insertions(+)
 create mode 100644 drivers/i2c/busses/i2c-cadence.c

diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index d4e74552b..58f865606 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -70,4 +70,12 @@ config I2C_RK3X
 	  Say Y here to include support for the I2C adapter in Rockchip RK3xxx
 	  SoCs.
 
+config I2C_CADENCE
+	bool "Cadence I2C adapter"
+	depends on HAVE_CLK
+	depends on ARCH_ZYNQMP || COMPILE_TEST
+	help
+	  Say Y here to include support for the Cadence I2C host controller found
+	  in Zynq UltraScale+ MPSoCs.
+
 endmenu
diff --git a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile
index d6273f3d8..a8661f605 100644
--- a/drivers/i2c/busses/Makefile
+++ b/drivers/i2c/busses/Makefile
@@ -10,3 +10,4 @@ obj-$(CONFIG_I2C_VERSATILE)	+= i2c-versatile.o
 obj-$(CONFIG_I2C_DESIGNWARE)	+= i2c-designware.o
 obj-$(CONFIG_I2C_STM32)		+= i2c-stm32.o
 obj-$(CONFIG_I2C_RK3X)		+= i2c-rockchip.o
+obj-$(CONFIG_I2C_CADENCE)	+= i2c-cadence.o
diff --git a/drivers/i2c/busses/i2c-cadence.c b/drivers/i2c/busses/i2c-cadence.c
new file mode 100644
index 000000000..5537efff2
--- /dev/null
+++ b/drivers/i2c/busses/i2c-cadence.c
@@ -0,0 +1,453 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * I2C bus driver for the Cadence I2C host controller (master only).
+ *
+ * Partly based on the driver in the Linux kernel
+ *    Copyright (C) 2009 - 2014 Xilinx, Inc.
+ *
+ * Copyright (C) 2022 Matthias Fend <matthias.fend@emfend.at>
+ */
+
+#include <common.h>
+#include <i2c/i2c.h>
+#include <linux/iopoll.h>
+#include <errno.h>
+#include <linux/err.h>
+#include <driver.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <regmap.h>
+
+struct __packed i2c_regs {
+	u32 control;
+	u32 status;
+	u32 address;
+	u32 data;
+	u32 interrupt_status;
+	u32 transfer_size;
+	u32 slave_mon_pause;
+	u32 time_out;
+	u32 interrupt_mask;
+	u32 interrupt_enable;
+	u32 interrupt_disable;
+	u32 glitch_filter;
+};
+
+/* Control register fields */
+#define CDNS_I2C_CONTROL_RW		BIT(0)
+#define CDNS_I2C_CONTROL_MS		BIT(1)
+#define CDNS_I2C_CONTROL_NEA		BIT(2)
+#define CDNS_I2C_CONTROL_ACKEN		BIT(3)
+#define CDNS_I2C_CONTROL_HOLD		BIT(4)
+#define CDNS_I2C_CONTROL_SLVMON		BIT(5)
+#define CDNS_I2C_CONTROL_CLR_FIFO	BIT(6)
+#define CDNS_I2C_CONTROL_DIV_B_SHIFT	8
+#define CDNS_I2C_CONTROL_DIV_B_MASK	(0x3F << CDNS_I2C_CONTROL_DIV_B_SHIFT)
+#define CDNS_I2C_CONTROL_DIV_A_SHIFT	14
+#define CDNS_I2C_CONTROL_DIV_A_MASK	(0x03 << CDNS_I2C_CONTROL_DIV_A_SHIFT)
+
+#define CDNS_I2C_CONTROL_DIV_B_MAX	64
+#define CDNS_I2C_CONTROL_DIV_A_MAX	4
+
+/* Status register fields */
+#define CDNS_I2C_STATUS_RXRW		BIT(3)
+#define CDNS_I2C_STATUS_RXDV		BIT(5)
+#define CDNS_I2C_STATUS_TXDV		BIT(6)
+#define CDNS_I2C_STATUS_RXOVF		BIT(7)
+#define CDNS_I2C_STATUS_BA		BIT(8)
+
+/* Address register fields */
+#define CDNS_I2C_ADDRESS_MASK		0x3FF
+
+/* Interrupt register fields */
+#define CDNS_I2C_INTERRUPT_COMP		BIT(0)
+#define CDNS_I2C_INTERRUPT_DATA		BIT(1)
+#define CDNS_I2C_INTERRUPT_NACK		BIT(2)
+#define CDNS_I2C_INTERRUPT_TO		BIT(3)
+#define CDNS_I2C_INTERRUPT_SLVRDY	BIT(4)
+#define CDNS_I2C_INTERRUPT_RXOVF	BIT(5)
+#define CDNS_I2C_INTERRUPT_TXOVF	BIT(6)
+#define CDNS_I2C_INTERRUPT_RXUNF	BIT(7)
+#define CDNS_I2C_INTERRUPT_ARBLOST	BIT(9)
+
+#define CDNS_I2C_INTERRUPTS_MASK_MASTER	(CDNS_I2C_INTERRUPT_COMP  | \
+					CDNS_I2C_INTERRUPT_DATA   | \
+					CDNS_I2C_INTERRUPT_NACK   | \
+					CDNS_I2C_INTERRUPT_RXOVF  | \
+					CDNS_I2C_INTERRUPT_TXOVF  | \
+					CDNS_I2C_INTERRUPT_RXUNF  | \
+					CDNS_I2C_INTERRUPT_ARBLOST)
+
+#define CDNS_I2C_INTERRUPTS_MASK_ALL	(CDNS_I2C_INTERRUPT_COMP  | \
+					CDNS_I2C_INTERRUPT_DATA   | \
+					CDNS_I2C_INTERRUPT_NACK   | \
+					CDNS_I2C_INTERRUPT_TO     | \
+					CDNS_I2C_INTERRUPT_SLVRDY | \
+					CDNS_I2C_INTERRUPT_RXOVF  | \
+					CDNS_I2C_INTERRUPT_TXOVF  | \
+					CDNS_I2C_INTERRUPT_RXUNF  | \
+					CDNS_I2C_INTERRUPT_ARBLOST)
+
+#define CDNS_I2C_FIFO_DEPTH		16
+#define CDNS_I2C_TRANSFER_SIZE_MAX	255
+#define CDNS_I2C_TRANSFER_SIZE		(CDNS_I2C_TRANSFER_SIZE_MAX - 3)
+
+#define I2C_TIMEOUT_US			(100 * USEC_PER_MSEC)
+
+struct cdns_i2c {
+	struct i2c_adapter adapter;
+	struct clk *clk;
+	struct i2c_regs *regs;
+	bool bus_hold_flag;
+};
+
+static void cdns_i2c_reset_hardware(struct cdns_i2c *i2c)
+{
+	struct i2c_regs *regs = i2c->regs;
+	u32 regval;
+
+	writel(CDNS_I2C_INTERRUPTS_MASK_ALL, &regs->interrupt_disable);
+
+	regval = readl(&regs->control);
+	regval &= ~CDNS_I2C_CONTROL_HOLD;
+	regval |= CDNS_I2C_CONTROL_CLR_FIFO;
+	writel(regval, &regs->control);
+
+	writel(0xFF, &regs->time_out);
+
+	writel(0, &regs->transfer_size);
+
+	regval = readl(&regs->interrupt_status);
+	writel(regval, &regs->interrupt_status);
+
+	regval = readl(&regs->status);
+	writel(regval, &regs->status);
+
+	writel(0, &regs->control);
+}
+
+static void cdns_i2c_setup_master(struct cdns_i2c *i2c)
+{
+	u32 control;
+
+	control = readl(&i2c->regs->control);
+	control |= CDNS_I2C_CONTROL_MS | CDNS_I2C_CONTROL_ACKEN |
+		   CDNS_I2C_CONTROL_NEA;
+	writel(control, &i2c->regs->control);
+
+	writel(CDNS_I2C_INTERRUPTS_MASK_MASTER, &i2c->regs->interrupt_enable);
+}
+
+static void cdns_i2c_clear_hold_flag(struct cdns_i2c *i2c)
+{
+	u32 control;
+
+	control = readl(&i2c->regs->control);
+	if (control & CDNS_I2C_CONTROL_HOLD)
+		writel(control & ~CDNS_I2C_CONTROL_HOLD, &i2c->regs->control);
+}
+
+static bool cdns_i2c_is_busy(struct cdns_i2c *i2c)
+{
+	return readl(&i2c->regs->status) & CDNS_I2C_STATUS_BA;
+}
+
+static int cdns_i2c_hw_error(struct cdns_i2c *i2c)
+{
+	u32 isr_status;
+
+	isr_status = readl(&i2c->regs->interrupt_status);
+
+	if (isr_status & CDNS_I2C_INTERRUPT_NACK)
+		return -EREMOTEIO;
+
+	if (isr_status &
+	    (CDNS_I2C_INTERRUPT_ARBLOST | CDNS_I2C_INTERRUPT_RXOVF))
+		return -EAGAIN;
+
+	return 0;
+}
+
+static int cdns_i2c_wait_for_completion(struct cdns_i2c *i2c)
+{
+	int err;
+	u32 isr_status;
+	const u32 isr_mask =
+		(CDNS_I2C_INTERRUPT_COMP | CDNS_I2C_INTERRUPT_NACK |
+		 CDNS_I2C_INTERRUPT_ARBLOST);
+
+	err = readl_poll_timeout(&i2c->regs->interrupt_status, isr_status,
+				 isr_status & isr_mask, I2C_TIMEOUT_US);
+
+	if (err)
+		return -ETIMEDOUT;
+
+	return cdns_i2c_hw_error(i2c);
+}
+
+/*
+ * Find best clock divisors
+ *
+ * f = finput / (22 x (div_a + 1) x (div_b + 1))
+ */
+static int cdns_i2c_calc_divs(u32 *f, u32 input_clk, u32 *a, u32 *b)
+{
+	ulong fscl = *f, best_fscl = *f, actual_fscl, temp;
+	uint div_a, div_b, calc_div_a = 0, calc_div_b = 0;
+	uint last_error, current_error;
+
+	temp = input_clk / (22 * fscl);
+
+	if (!temp ||
+	    (temp > (CDNS_I2C_CONTROL_DIV_A_MAX * CDNS_I2C_CONTROL_DIV_B_MAX)))
+		return -EINVAL;
+
+	last_error = -1;
+	for (div_a = 0; div_a < CDNS_I2C_CONTROL_DIV_A_MAX; div_a++) {
+		div_b = DIV_ROUND_UP(input_clk, 22 * fscl * (div_a + 1));
+
+		if ((div_b < 1) || (div_b > CDNS_I2C_CONTROL_DIV_B_MAX))
+			continue;
+		div_b--;
+
+		actual_fscl = input_clk / (22 * (div_a + 1) * (div_b + 1));
+
+		if (actual_fscl > fscl)
+			continue;
+
+		current_error = ((actual_fscl > fscl) ? (actual_fscl - fscl) :
+							(fscl - actual_fscl));
+
+		if (last_error > current_error) {
+			calc_div_a = div_a;
+			calc_div_b = div_b;
+			best_fscl = actual_fscl;
+			last_error = current_error;
+		}
+	}
+
+	*a = calc_div_a;
+	*b = calc_div_b;
+	*f = best_fscl;
+
+	return 0;
+}
+
+static int cdns_i2c_set_clk(struct cdns_i2c *i2c, u32 scl_rate)
+{
+	u32 i2c_rate;
+	u32 control;
+	u32 div_a, div_b;
+	int err;
+
+	i2c_rate = clk_get_rate(i2c->clk);
+
+	err = cdns_i2c_calc_divs(&scl_rate, i2c_rate, &div_a, &div_b);
+	if (err)
+		return err;
+
+	control = readl(&i2c->regs->control);
+	control &= ~(CDNS_I2C_CONTROL_DIV_B_MASK | CDNS_I2C_CONTROL_DIV_A_MASK);
+	control |= (div_b << CDNS_I2C_CONTROL_DIV_B_SHIFT) |
+		   (div_a << CDNS_I2C_CONTROL_DIV_A_SHIFT);
+	writel(control, &i2c->regs->control);
+
+	return err;
+}
+
+static int cdns_i2c_read(struct cdns_i2c *i2c, uchar chip, uchar *buf,
+			 uint buf_len)
+{
+	struct i2c_regs *regs = i2c->regs;
+	u32 control;
+	int err;
+
+	control = readl(&regs->control);
+	control |= CDNS_I2C_CONTROL_RW | CDNS_I2C_CONTROL_CLR_FIFO;
+	if (i2c->bus_hold_flag || (buf_len > CDNS_I2C_FIFO_DEPTH))
+		control |= CDNS_I2C_CONTROL_HOLD;
+	writel(control, &regs->control);
+
+	do {
+		uint bytes_to_receive;
+		u32 isr_status;
+		u64 start_time;
+
+		isr_status = readl(&regs->interrupt_status);
+		writel(isr_status, &regs->interrupt_status);
+
+		if (buf_len > CDNS_I2C_TRANSFER_SIZE)
+			bytes_to_receive = CDNS_I2C_TRANSFER_SIZE;
+		else
+			bytes_to_receive = buf_len;
+
+		buf_len -= bytes_to_receive;
+
+		writel(bytes_to_receive, &regs->transfer_size);
+		writel(chip & CDNS_I2C_ADDRESS_MASK, &regs->address);
+
+		start_time = get_time_ns();
+		while (bytes_to_receive) {
+			err = cdns_i2c_hw_error(i2c);
+			if (err)
+				goto i2c_exit;
+
+			if (is_timeout(start_time,
+				       (I2C_TIMEOUT_US * USECOND))) {
+				err = -ETIMEDOUT;
+				goto i2c_exit;
+			}
+
+			if (readl(&regs->status) & CDNS_I2C_STATUS_RXDV) {
+				*buf++ = readl(&regs->data);
+				bytes_to_receive--;
+			}
+		}
+
+	} while (buf_len);
+
+	err = cdns_i2c_wait_for_completion(i2c);
+
+i2c_exit:
+	if (!i2c->bus_hold_flag)
+		cdns_i2c_clear_hold_flag(i2c);
+
+	return err;
+}
+
+static int cdns_i2c_write(struct cdns_i2c *i2c, uchar chip, uchar *buf,
+			  uint buf_len)
+{
+	struct i2c_regs *regs = i2c->regs;
+	u32 control;
+	u32 isr_status;
+	bool start_transfer;
+	int err;
+
+	control = readl(&regs->control);
+	control &= ~CDNS_I2C_CONTROL_RW;
+	control |= CDNS_I2C_CONTROL_CLR_FIFO;
+	if (i2c->bus_hold_flag || (buf_len > CDNS_I2C_FIFO_DEPTH))
+		control |= CDNS_I2C_CONTROL_HOLD;
+	writel(control, &regs->control);
+
+	isr_status = readl(&regs->interrupt_status);
+	writel(isr_status, &regs->interrupt_status);
+
+	start_transfer = true;
+	do {
+		uint bytes_to_send;
+
+		bytes_to_send =
+			CDNS_I2C_FIFO_DEPTH - readl(&regs->transfer_size);
+
+		if (buf_len < bytes_to_send)
+			bytes_to_send = buf_len;
+
+		buf_len -= bytes_to_send;
+
+		while (bytes_to_send--)
+			writel(*buf++, &regs->data);
+
+		if (start_transfer) {
+			writel(chip & CDNS_I2C_ADDRESS_MASK, &regs->address);
+			start_transfer = false;
+		}
+
+		err = cdns_i2c_wait_for_completion(i2c);
+		if (err)
+			goto i2c_exit;
+
+	} while (buf_len);
+
+i2c_exit:
+	if (!i2c->bus_hold_flag)
+		cdns_i2c_clear_hold_flag(i2c);
+
+	return err;
+}
+
+static int cdns_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msg,
+			 int nmsgs)
+{
+	struct cdns_i2c *i2c = container_of(adapter, struct cdns_i2c, adapter);
+	int i;
+	int err;
+
+	if (cdns_i2c_is_busy(i2c))
+		return -EBUSY;
+
+	for (i = 0; i < nmsgs; i++) {
+		i2c->bus_hold_flag = i < (nmsgs - 1);
+
+		if (msg->flags & I2C_M_RD) {
+			err = cdns_i2c_read(i2c, msg->addr, msg->buf, msg->len);
+		} else {
+			err = cdns_i2c_write(i2c, msg->addr, msg->buf,
+					     msg->len);
+		}
+
+		if (err)
+			return err;
+
+		msg++;
+	}
+
+	return nmsgs;
+}
+
+static int cdns_i2c_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct resource *iores;
+	struct cdns_i2c *i2c;
+	u32 bitrate;
+	int err;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	i2c = xzalloc(sizeof(*i2c));
+
+	dev->priv = i2c;
+	i2c->regs = IOMEM(iores->start);
+
+	i2c->clk = clk_get(dev, NULL);
+	if (IS_ERR(i2c->clk))
+		return PTR_ERR(i2c->clk);
+
+	err = clk_enable(i2c->clk);
+	if (err)
+		return err;
+
+	i2c->adapter.master_xfer = cdns_i2c_xfer;
+	i2c->adapter.nr = dev->id;
+	i2c->adapter.dev.parent = dev;
+	i2c->adapter.dev.device_node = np;
+
+	cdns_i2c_reset_hardware(i2c);
+
+	bitrate = 100000;
+	of_property_read_u32(np, "clock-frequency", &bitrate);
+
+	err = cdns_i2c_set_clk(i2c, bitrate);
+	if (err)
+		return err;
+
+	cdns_i2c_setup_master(i2c);
+
+	return i2c_add_numbered_adapter(&i2c->adapter);
+}
+
+static const struct of_device_id cdns_i2c_match[] = {
+	{ .compatible = "cdns,i2c-r1p14" },
+	{},
+};
+
+static struct driver_d cdns_i2c_driver = {
+	.name = "cdns-i2c",
+	.of_compatible = cdns_i2c_match,
+	.probe = cdns_i2c_probe,
+};
+coredevice_platform_driver(cdns_i2c_driver);
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

