Delivery-date: Wed, 05 May 2021 12:11:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUg-0007bF-O5
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:11:02 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUd-0005Gg-B0
	for lore@pengutronix.de; Wed, 05 May 2021 12:11:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HMtEq6jTMXfakMrJY+yxQ296byhh8htcVVwLxXVNkVg=; b=EUHE76gTmDQdBmSEW/yl8aZuc
	cxEQodhtCYFIARd+kkcY52jcrO4qCf3ZZ10XQUE0qdMiqVkUI+cPbVPAo+xfc3Elj8Ypjy562yq9u
	B4WQ00SzuboFoCUMbvHHl19HXSSB4deSM+8O47oJTRhRhXECe+1pYUktOv0fk3147x41SnCvNqUEY
	Yuhg99VqPZ72GS4nfspF+WmTkdqhqTiL9LKhZeZmUxk/iRYNsGEbw3i8I8GJOZmh1zNgVYLOrDjGn
	YkGDXi1Jh7saikLDQgqi3MYGa/Hgrk/LVwtpCyBreydyLDo7aWF2fQp33ZhxCvE4KwPxLxmleK+9w
	k6wuSeDlA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leETX-000q9u-OA; Wed, 05 May 2021 10:09:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leET9-000q1N-Mi
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:09:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Qd8/tBqRaTQ4hhc734rBF3/mGQOMGZAiR057oTrDS5g=; b=ng56rHQVE/k32IKVN+2FHFoZgM
 ES7LM9yCy4bqqMhqmO4igvDwElPiK3VUGa+nXfc8azGYfvmLt/TngIHlZUgevAAly8CURfsV5EOYA
 GdUp4yB0+MCgWVRJbJWIUxh/QwzY3+dYaAQ9frZlW+UJNJElxsaoZ8E75vhZ9xZkfwBNXxzYTRXKK
 v10JDQbbYfi4Tadmjmr4o36KW/leH7qcxpH7ZHhCO7x2OT6MbEiNNmMTBdMOxjt6Vwd7f1phdcTef
 fUw8s1ERZYPqx+R6SbkkjHHUyKqzePl1N5hbnsDt7RPC6mzfH2UPW6DluzyFV+3de8Z06KTIAIOEg
 yk3CasWQ==;
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leET6-004eQ4-An
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:09:26 +0000
Received: by mail-lf1-x134.google.com with SMTP id x20so1775517lfu.6
 for <barebox@lists.infradead.org>; Wed, 05 May 2021 03:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qd8/tBqRaTQ4hhc734rBF3/mGQOMGZAiR057oTrDS5g=;
 b=rE79SahZOrBoH/5I+c3mM6HPJ+Tt/u/WGZu5T0uS/KkWn8BaWP/3QEPitBYvse+D1/
 jAy9u6cAgPmPJo65+9kCl1bv/XXjneEGvQ3w/vaHgXqwLPHkyaUY1+0b/K/wiPWnx0Ft
 acnKJJWWHWyOrCILWxMp8+2AnAjA53uICbgvUmaC9pRvLLgEixkQHmvF5xyta4lyGBNk
 O3WIzC2h3V41JKrJjG30OzmpjBd+UFo5RWkmagRVXghbamYfbM/xwZUGPHYfoAHiMtsC
 2K1/WoLecPKRuCii9uz6w13RW6GS8hSZJverBV3LqokONOrZ1vDI57WYWYPRFPKSMeKy
 vAOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qd8/tBqRaTQ4hhc734rBF3/mGQOMGZAiR057oTrDS5g=;
 b=R2OXqEcQXVVd0kpFDAdgeadqEWrUb/t47h5a6LxutQcS4medx2a0XdL/b6hzdnsMlf
 F5hToQnUC7tuxKI4UCh7TvY3fitlk835Mwn1vbAeREs7oW3R2fKfbXqKvLL7lJVZPsMR
 xrqyWUJZKXFJ0TZPOphgv0UGACbiL19dLdhj3bUvgx4JRRWhKSz/iLBJ3DCdLdC/RSFK
 FMHxZpLljaZrKztlAwhN8IPibNEjz9s05cDmh6UrmXdnoYwE6A+sZuJ4zKQnpdjMTzST
 AagN4cvT2NPUpBF8HdKkxkT/rw1NV0zwqX6QCMXWAHnVci1NQjkDPL1Cq2PgPckRLzyQ
 6WNQ==
X-Gm-Message-State: AOAM5322KATtXpNgjf/L2SakC5xPQcR1zYQAHSnN3gWyiKrrFyY3liYi
 P2GN9OPKrGl84D2BtxwMhQLGjwg5oD/zhw==
X-Google-Smtp-Source: ABdhPJw1JjFO74zYUBt6KgnDSTS7uSB/rjSlZ66u2zBJsCCykCxwWs+h1y+fBjUakGpfnwg/50uwkQ==
X-Received: by 2002:a19:df54:: with SMTP id q20mr20836490lfj.109.1620209362575; 
 Wed, 05 May 2021 03:09:22 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id u8sm497114lfu.284.2021.05.05.03.09.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 03:09:22 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  5 May 2021 13:08:57 +0300
Message-Id: <20210505100900.88141-7-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210505100900.88141-1-antonynpavlov@gmail.com>
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_030924_406973_FAAFD6DB 
X-CRM114-Status: GOOD (  22.28  )
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
Cc: Marek Czerski <m.czerski@ap-tech.pl>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/9] net: add LiteEth driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

LiteEth provides a small footprint and configurable Ethernet core.

LiteEth is part of LiteX libraries whose aims are to lower entry level of
complex FPGA cores by providing simple, elegant and efficient implementations
of components used in today's SoC such as Ethernet, SATA, PCIe, SDRAM Controller...

Using Migen to describe the HDL allows the core to be highly and easily configurable.

LiteEth can be used as LiteX library or can be integrated with your standard
design flow by generating the verilog rtl that you will use as a standard core.

See https://github.com/enjoy-digital/liteeth for details.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Marek Czerski <m.czerski@ap-tech.pl>
---
 drivers/net/Kconfig   |   8 +
 drivers/net/Makefile  |   1 +
 drivers/net/liteeth.c | 376 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 385 insertions(+)

Cc: Marek Czerski <m.czerski@ap-tech.pl>

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 0d55ea7a3b..4818f52603 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -271,6 +271,14 @@ config TSE_USE_DEDICATED_DESC_MEM
 	  reserved with a malloc but directly mapped to the memory
 	  address (defined in config.h)
 
+config DRIVER_NET_LITEETH
+	bool "LiteX ethernet driver"
+	select PHYLIB
+	select MDIO_BITBANG
+	help
+	  This option enables support for the LiteX LiteEth
+	  ethernet IP core.
+
 source "drivers/net/phy/Kconfig"
 source "drivers/net/usb/Kconfig"
 
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 656d45a868..bb751943f6 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -36,3 +36,4 @@ obj-$(CONFIG_DRIVER_NET_TAP)		+= tap.o
 obj-$(CONFIG_DRIVER_NET_TSE)		+= altera_tse.o
 obj-$(CONFIG_DRIVER_NET_EFI_SNP)	+= efi-snp.o
 obj-$(CONFIG_DRIVER_NET_AG71XX)		+= ag71xx.o
+obj-$(CONFIG_DRIVER_NET_LITEETH)	+= liteeth.o
diff --git a/drivers/net/liteeth.c b/drivers/net/liteeth.c
new file mode 100644
index 0000000000..137cb854c5
--- /dev/null
+++ b/drivers/net/liteeth.c
@@ -0,0 +1,376 @@
+/*
+ * LiteX Liteeth Ethernet
+ *
+ * Copyright 2017 Joel Stanley <joel@jms.id.au>
+ *
+ * Ported to barebox from linux kernel
+ *   Copyright (C) 2019-2021 Antony Pavlov <antonynpavlov@gmail.com>
+ *   Copyright (C) 2021 Marek Czerski <m.czerski@ap-tech.pl>
+ *
+ */
+
+#include <common.h>
+#include <io.h>
+#include <linux/iopoll.h>
+#include <malloc.h>
+#include <net.h>
+#include <init.h>
+#include <of_net.h>
+#include <linux/phy.h>
+#include <linux/mdio-bitbang.h>
+
+#define DRV_NAME	"liteeth"
+
+#define LITEETH_WRITER_SLOT		0x00
+#define LITEETH_WRITER_LENGTH		0x04
+#define LITEETH_WRITER_ERRORS		0x08
+#define LITEETH_WRITER_EV_STATUS	0x0c
+#define LITEETH_WRITER_EV_PENDING	0x10
+#define LITEETH_WRITER_EV_ENABLE	0x14
+#define LITEETH_READER_START		0x18
+#define LITEETH_READER_READY		0x1c
+#define LITEETH_READER_LEVEL		0x20
+#define LITEETH_READER_SLOT		0x24
+#define LITEETH_READER_LENGTH		0x28
+#define LITEETH_READER_EV_STATUS	0x2c
+#define LITEETH_READER_EV_PENDING	0x30
+#define LITEETH_READER_EV_ENABLE	0x34
+#define LITEETH_PREAMBLE_CRC		0x38
+#define LITEETH_PREAMBLE_ERRORS		0x3c
+#define LITEETH_CRC_ERRORS		0x40
+
+#define LITEETH_PHY_CRG_RESET		0x00
+#define LITEETH_MDIO_W			0x04
+#define  MDIO_W_CLK			BIT(0)
+#define  MDIO_W_OE			BIT(1)
+#define  MDIO_W_DO			BIT(2)
+
+#define LITEETH_MDIO_R			0x08
+#define  MDIO_R_DI			BIT(0)
+
+#define LITEETH_BUFFER_SIZE		0x800
+#define MAX_PKT_SIZE			LITEETH_BUFFER_SIZE
+
+struct liteeth {
+	struct device_d *dev;
+	struct eth_device edev;
+	void __iomem *base;
+	void __iomem *mdio_base;
+	struct mii_bus *mii_bus;
+	struct mdiobb_ctrl mdiobb;
+
+	/* Link management */
+	int cur_duplex;
+	int cur_speed;
+
+	/* Tx */
+	int tx_slot;
+	int num_tx_slots;
+	void __iomem *tx_base;
+
+	/* Rx */
+	int rx_slot;
+	int num_rx_slots;
+	void __iomem *rx_base;
+};
+
+static inline void litex_write8(void __iomem *addr, u8 val)
+{
+	writeb(val, addr);
+}
+
+static inline void litex_write16(void __iomem *addr, u16 val)
+{
+	writew(val, addr);
+}
+
+static inline u8 litex_read8(void __iomem *addr)
+{
+	return readb(addr);
+}
+
+static inline u32 litex_read32(void __iomem *addr)
+{
+	return readl(addr);
+}
+
+static void liteeth_mdio_w_modify(struct liteeth *priv, u8 clear, u8 set)
+{
+	void __iomem *mdio_w = priv->mdio_base + LITEETH_MDIO_W;
+
+	litex_write8(mdio_w, (litex_read8(mdio_w) & ~clear) | set);
+}
+
+static void liteeth_mdio_ctrl(struct mdiobb_ctrl *ctrl, u8 mask, int set)
+{
+	struct liteeth *priv = container_of(ctrl, struct liteeth, mdiobb);
+
+	liteeth_mdio_w_modify(priv, mask, set ? mask : 0);
+}
+
+/* MDC pin control */
+static void liteeth_set_mdc(struct mdiobb_ctrl *ctrl, int level)
+{
+	liteeth_mdio_ctrl(ctrl, MDIO_W_CLK, level);
+}
+
+/* Data I/O pin control */
+static void liteeth_set_mdio_dir(struct mdiobb_ctrl *ctrl, int output)
+{
+	liteeth_mdio_ctrl(ctrl, MDIO_W_OE, output);
+}
+
+/* Set data bit */
+static void liteeth_set_mdio_data(struct mdiobb_ctrl *ctrl, int value)
+{
+	liteeth_mdio_ctrl(ctrl, MDIO_W_DO, value);
+}
+
+/* Get data bit */
+static int liteeth_get_mdio_data(struct mdiobb_ctrl *ctrl)
+{
+	struct liteeth *priv = container_of(ctrl, struct liteeth, mdiobb);
+
+	return (litex_read8(priv->mdio_base + LITEETH_MDIO_R) & MDIO_R_DI) != 0;
+}
+
+/* MDIO bus control struct */
+static struct mdiobb_ops bb_ops = {
+	.set_mdc = liteeth_set_mdc,
+	.set_mdio_dir = liteeth_set_mdio_dir,
+	.set_mdio_data = liteeth_set_mdio_data,
+	.get_mdio_data = liteeth_get_mdio_data,
+};
+
+static int liteeth_init_dev(struct eth_device *edev)
+{
+	return 0;
+}
+
+static int liteeth_eth_open(struct eth_device *edev)
+{
+	struct liteeth *priv = edev->priv;
+	int ret;
+
+	/* Disable events */
+	litex_write8(priv->base + LITEETH_WRITER_EV_ENABLE, 0);
+	litex_write8(priv->base + LITEETH_READER_EV_ENABLE, 0);
+
+	/* Clear pending events? */
+	litex_write8(priv->base + LITEETH_WRITER_EV_PENDING, 1);
+	litex_write8(priv->base + LITEETH_READER_EV_PENDING, 1);
+
+	ret = phy_device_connect(edev, priv->mii_bus, -1, NULL, 0, -1);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int liteeth_eth_send(struct eth_device *edev, void *packet,
+				int packet_length)
+{
+	struct liteeth *priv = edev->priv;
+	void *txbuffer;
+	int ret;
+	u8 val;
+	u8 reg;
+
+	reg = litex_read8(priv->base + LITEETH_READER_EV_PENDING);
+	if (reg) {
+		litex_write8(priv->base + LITEETH_READER_EV_PENDING, reg);
+	}
+
+	/* Reject oversize packets */
+	if (unlikely(packet_length > MAX_PKT_SIZE)) {
+		dev_err(priv->dev, "tx packet too big\n");
+		goto drop;
+	}
+
+	txbuffer = priv->tx_base + priv->tx_slot * LITEETH_BUFFER_SIZE;
+	memcpy(txbuffer, packet, packet_length);
+	litex_write8(priv->base + LITEETH_READER_SLOT, priv->tx_slot);
+	litex_write16(priv->base + LITEETH_READER_LENGTH, packet_length);
+
+	ret = readb_poll_timeout(priv->base + LITEETH_READER_READY,
+			val, val, 1000);
+	if (ret == -ETIMEDOUT) {
+		dev_err(priv->dev, "LITEETH_READER_READY timed out\n");
+		goto drop;
+	}
+
+	litex_write8(priv->base + LITEETH_READER_START, 1);
+
+	priv->tx_slot = (priv->tx_slot + 1) % priv->num_tx_slots;
+
+drop:
+	return 0;
+}
+
+static int liteeth_eth_rx(struct eth_device *edev)
+{
+	struct liteeth *priv = edev->priv;
+	u8 rx_slot;
+	int len = 0;
+	u8 reg;
+
+	reg = litex_read8(priv->base + LITEETH_WRITER_EV_PENDING);
+	if (!reg) {
+		goto done;
+	}
+
+	len = litex_read32(priv->base + LITEETH_WRITER_LENGTH);
+	if (len == 0 || len > 2048) {
+		len = 0;
+		dev_err(priv->dev, "%s: invalid len %d\n", __func__, len);
+		litex_write8(priv->base + LITEETH_WRITER_EV_PENDING, reg);
+		goto done;
+	}
+
+	rx_slot = litex_read8(priv->base + LITEETH_WRITER_SLOT);
+
+	memcpy(NetRxPackets[0], priv->rx_base + rx_slot * LITEETH_BUFFER_SIZE, len);
+
+	net_receive(edev, NetRxPackets[0], len);
+
+	litex_write8(priv->base + LITEETH_WRITER_EV_PENDING, reg);
+
+done:
+	return len;
+}
+
+static void liteeth_eth_halt(struct eth_device *edev)
+{
+	struct liteeth *priv = edev->priv;
+
+	litex_write8(priv->base + LITEETH_WRITER_EV_ENABLE, 0);
+	litex_write8(priv->base + LITEETH_READER_EV_ENABLE, 0);
+}
+
+static void liteeth_reset_hw(struct liteeth *priv)
+{
+	/* Reset, twice */
+	litex_write8(priv->base + LITEETH_PHY_CRG_RESET, 0);
+	udelay(10);
+	litex_write8(priv->base + LITEETH_PHY_CRG_RESET, 1);
+	udelay(10);
+	litex_write8(priv->base + LITEETH_PHY_CRG_RESET, 0);
+	udelay(10);
+}
+
+static int liteeth_get_ethaddr(struct eth_device *edev, unsigned char *m)
+{
+	return 0;
+}
+
+static int liteeth_set_ethaddr(struct eth_device *edev,
+					const unsigned char *mac_addr)
+{
+	return 0;
+}
+
+static int liteeth_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct eth_device *edev;
+	void __iomem *buf_base;
+	struct liteeth *priv;
+	int err;
+
+	priv = xzalloc(sizeof(struct liteeth));
+	edev = &priv->edev;
+	edev->priv = priv;
+	priv->dev = dev;
+
+	priv->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(priv->base)) {
+		err = PTR_ERR(priv->base);
+		goto err;
+	}
+
+	priv->mdio_base = dev_request_mem_region(dev, 1);
+	if (IS_ERR(priv->mdio_base)) {
+		err = PTR_ERR(priv->mdio_base);
+		goto err;
+	}
+
+	buf_base = dev_request_mem_region(dev, 2);
+	if (IS_ERR(buf_base)) {
+		err = PTR_ERR(buf_base);
+		goto err;
+	}
+
+	err = of_property_read_u32(np, "rx-fifo-depth",
+			&priv->num_rx_slots);
+	if (err) {
+		dev_err(dev, "unable to get rx-fifo-depth\n");
+		goto err;
+	}
+
+	err = of_property_read_u32(np, "tx-fifo-depth",
+			&priv->num_tx_slots);
+	if (err) {
+		dev_err(dev, "unable to get tx-fifo-depth\n");
+		goto err;
+	}
+
+	/* Rx slots */
+	priv->rx_base = buf_base;
+	priv->rx_slot = 0;
+
+	/* Tx slots come after Rx slots */
+	priv->tx_base = buf_base + priv->num_rx_slots * LITEETH_BUFFER_SIZE;
+	priv->tx_slot = 0;
+
+	edev->init = liteeth_init_dev;
+	edev->open = liteeth_eth_open;
+	edev->send = liteeth_eth_send;
+	edev->recv = liteeth_eth_rx;
+	edev->get_ethaddr = liteeth_get_ethaddr;
+	edev->set_ethaddr = liteeth_set_ethaddr;
+	edev->halt = liteeth_eth_halt;
+	edev->parent = dev;
+
+	priv->mdiobb.ops = &bb_ops;
+
+	priv->mii_bus = alloc_mdio_bitbang(&priv->mdiobb);
+	priv->mii_bus->parent = dev;
+
+	liteeth_reset_hw(priv);
+
+	err = eth_register(edev);
+	if (err) {
+		dev_err(dev, "failed to register edev\n");
+		goto err;
+	}
+
+	err = mdiobus_register(priv->mii_bus);
+	if (err) {
+		dev_err(dev, "failed to register mii_bus\n");
+		goto err;
+	}
+
+	dev_info(dev, DRV_NAME " driver registered\n");
+
+	return 0;
+
+err:
+	return err;
+}
+
+static const struct of_device_id liteeth_dt_ids[] = {
+	{
+		.compatible = "litex,liteeth"
+	}, {
+	}
+};
+
+static struct driver_d liteeth_driver = {
+	.name = DRV_NAME,
+	.probe = liteeth_probe,
+	.of_compatible = DRV_OF_COMPAT(liteeth_dt_ids),
+};
+device_platform_driver(liteeth_driver);
+
+MODULE_AUTHOR("Joel Stanley <joel@jms.id.au>");
+MODULE_LICENSE("GPL");
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

