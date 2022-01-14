Delivery-date: Fri, 14 Jan 2022 09:52:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IJf-001szb-Qk
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 09:52:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IJd-0002zx-RP
	for lore@pengutronix.de; Fri, 14 Jan 2022 09:52:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwrll+y2GCW81p6d12yUCgMks+3A5iG158P5ZKvzU9g=; b=Pctqzv9+BNXoWc
	YuRXbQLPjhPa6k+K+Vg8N9YeEiYJCK80B9HOnpQfT92AJsd50cw4xUmte80qncUt6fHz26tAAcnF3
	GchAtdskkPJz16qVmu+CWmwxLseUa29zYHLzy5EtfcSk+/gENRo7gSwwSA2BvHuemfyI40Hlc6lCp
	sStd6xZb3Bk9aIzu1ss5H73GYrfZFxPyakw6IcKmLxRFY1C4FzvqRresyQtRUg/ulos1nGAhGwwX5
	RKAyylWTNDgql4yX+TYJdDLVleslNcAvm2SzW7kdohqc7htTo443nhgcnCykq5gDDNqNbxV/qgrmj
	nNoMre5KnsICHP2IH6Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8IIQ-008Mfo-9v; Fri, 14 Jan 2022 08:50:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8IIK-008MeJ-PC
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 08:50:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n8IIJ-0002lb-Io; Fri, 14 Jan 2022 09:50:47 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n8IIJ-001JcA-1n; Fri, 14 Jan 2022 09:50:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Jan 2022 09:50:46 +0100
Message-Id: <20220114085046.313677-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220114085046.313677-1-a.fatoum@pengutronix.de>
References: <20220114085046.313677-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_005049_018157_2EE52C4B 
X-CRM114-Status: GOOD (  22.20  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] nvmem: add Rockchip eFuse support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The driver allows read-only support to e.g. the Hardware UID, which
could in future be used to derive a MAC like U-Boot does.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/Kconfig          |   8 +
 drivers/nvmem/Makefile         |   1 +
 drivers/nvmem/rockchip-efuse.c | 299 +++++++++++++++++++++++++++++++++
 3 files changed, 308 insertions(+)
 create mode 100644 drivers/nvmem/rockchip-efuse.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 7b1ebe1d689d..ea1156918a34 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -84,4 +84,12 @@ config STARFIVE_OTP
 	  This adds support for the StarFive OTP controller. Only reading
 	  is currently supported.
 
+config ROCKCHIP_EFUSE
+	tristate "Rockchip eFuse Support"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	depends on OFDEVICE
+	help
+	  This is a simple drive to dump specified values of Rockchip SoC
+	  from eFuse, such as CPU ID.
+
 endif
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 586591961215..2261816c189c 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -25,3 +25,4 @@ obj-$(CONFIG_STM32_BSEC)	+= nvmem_bsec.o
 nvmem_bsec-y			:= bsec.o
 
 obj-$(CONFIG_STARFIVE_OTP)	+= starfive-otp.o
+obj-$(CONFIG_ROCKCHIP_EFUSE)	+= rockchip-efuse.o
diff --git a/drivers/nvmem/rockchip-efuse.c b/drivers/nvmem/rockchip-efuse.c
new file mode 100644
index 000000000000..24e7de0aa9ce
--- /dev/null
+++ b/drivers/nvmem/rockchip-efuse.c
@@ -0,0 +1,299 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Rockchip eFuse Driver
+ *
+ * Copyright (c) 2015 Rockchip Electronics Co. Ltd.
+ * Author: Caesar Wang <wxt@rock-chips.com>
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <linux/overflow.h>
+#include <clock.h>
+#include <driver.h>
+#include <io.h>
+#include <linux/nvmem-provider.h>
+#include <of.h>
+#include <init.h>
+
+#define clk_prepare_enable clk_enable
+#define clk_disable_unprepare clk_disable
+
+#define RK3288_A_SHIFT		6
+#define RK3288_A_MASK		0x3ff
+#define RK3288_PGENB		BIT(3)
+#define RK3288_LOAD		BIT(2)
+#define RK3288_STROBE		BIT(1)
+#define RK3288_CSB		BIT(0)
+
+#define RK3328_SECURE_SIZES	96
+#define RK3328_INT_STATUS	0x0018
+#define RK3328_DOUT		0x0020
+#define RK3328_AUTO_CTRL	0x0024
+#define RK3328_INT_FINISH	BIT(0)
+#define RK3328_AUTO_ENB		BIT(0)
+#define RK3328_AUTO_RD		BIT(1)
+
+#define RK3399_A_SHIFT		16
+#define RK3399_A_MASK		0x3ff
+#define RK3399_NBYTES		4
+#define RK3399_STROBSFTSEL	BIT(9)
+#define RK3399_RSB		BIT(7)
+#define RK3399_PD		BIT(5)
+#define RK3399_PGENB		BIT(3)
+#define RK3399_LOAD		BIT(2)
+#define RK3399_STROBE		BIT(1)
+#define RK3399_CSB		BIT(0)
+
+#define REG_EFUSE_CTRL		0x0000
+#define REG_EFUSE_DOUT		0x0004
+
+struct rockchip_efuse_chip {
+	struct device_d *dev;
+	void __iomem *base;
+	struct clk *clk;
+};
+
+static int rockchip_rk3288_efuse_read(void *context, unsigned int offset,
+				      void *val, size_t bytes)
+{
+	struct rockchip_efuse_chip *efuse = context;
+	u8 *buf = val;
+	int ret;
+
+	ret = clk_prepare_enable(efuse->clk);
+	if (ret < 0) {
+		dev_err(efuse->dev, "failed to prepare/enable efuse clk\n");
+		return ret;
+	}
+
+	writel(RK3288_LOAD | RK3288_PGENB, efuse->base + REG_EFUSE_CTRL);
+	udelay(1);
+	while (bytes--) {
+		writel(readl(efuse->base + REG_EFUSE_CTRL) &
+			     (~(RK3288_A_MASK << RK3288_A_SHIFT)),
+			     efuse->base + REG_EFUSE_CTRL);
+		writel(readl(efuse->base + REG_EFUSE_CTRL) |
+			     ((offset++ & RK3288_A_MASK) << RK3288_A_SHIFT),
+			     efuse->base + REG_EFUSE_CTRL);
+		udelay(1);
+		writel(readl(efuse->base + REG_EFUSE_CTRL) |
+			     RK3288_STROBE, efuse->base + REG_EFUSE_CTRL);
+		udelay(1);
+		*buf++ = readb(efuse->base + REG_EFUSE_DOUT);
+		writel(readl(efuse->base + REG_EFUSE_CTRL) &
+		       (~RK3288_STROBE), efuse->base + REG_EFUSE_CTRL);
+		udelay(1);
+	}
+
+	/* Switch to standby mode */
+	writel(RK3288_PGENB | RK3288_CSB, efuse->base + REG_EFUSE_CTRL);
+
+	clk_disable_unprepare(efuse->clk);
+
+	return 0;
+}
+
+static int rockchip_rk3328_efuse_read(void *context, unsigned int offset,
+				      void *val, size_t bytes)
+{
+	struct rockchip_efuse_chip *efuse = context;
+	unsigned int addr_start, addr_end, addr_offset, addr_len;
+	u32 out_value, status;
+	u8 *buf;
+	int ret, i = 0;
+
+	ret = clk_prepare_enable(efuse->clk);
+	if (ret < 0) {
+		dev_err(efuse->dev, "failed to prepare/enable efuse clk\n");
+		return ret;
+	}
+
+	/* 128 Byte efuse, 96 Byte for secure, 32 Byte for non-secure */
+	offset += RK3328_SECURE_SIZES;
+	addr_start = rounddown(offset, RK3399_NBYTES) / RK3399_NBYTES;
+	addr_end = roundup(offset + bytes, RK3399_NBYTES) / RK3399_NBYTES;
+	addr_offset = offset % RK3399_NBYTES;
+	addr_len = addr_end - addr_start;
+
+	buf = kzalloc(array3_size(addr_len, RK3399_NBYTES, sizeof(*buf)),
+		      GFP_KERNEL);
+	if (!buf) {
+		ret = -ENOMEM;
+		goto nomem;
+	}
+
+	while (addr_len--) {
+		writel(RK3328_AUTO_RD | RK3328_AUTO_ENB |
+		       ((addr_start++ & RK3399_A_MASK) << RK3399_A_SHIFT),
+		       efuse->base + RK3328_AUTO_CTRL);
+		udelay(4);
+		status = readl(efuse->base + RK3328_INT_STATUS);
+		if (!(status & RK3328_INT_FINISH)) {
+			ret = -EIO;
+			goto err;
+		}
+		out_value = readl(efuse->base + RK3328_DOUT);
+		writel(RK3328_INT_FINISH, efuse->base + RK3328_INT_STATUS);
+
+		memcpy(&buf[i], &out_value, RK3399_NBYTES);
+		i += RK3399_NBYTES;
+	}
+
+	memcpy(val, buf + addr_offset, bytes);
+err:
+	kfree(buf);
+nomem:
+	clk_disable_unprepare(efuse->clk);
+
+	return ret;
+}
+
+static int rockchip_rk3399_efuse_read(void *context, unsigned int offset,
+				      void *val, size_t bytes)
+{
+	struct rockchip_efuse_chip *efuse = context;
+	unsigned int addr_start, addr_end, addr_offset, addr_len;
+	u32 out_value;
+	u8 *buf;
+	int ret, i = 0;
+
+	ret = clk_prepare_enable(efuse->clk);
+	if (ret < 0) {
+		dev_err(efuse->dev, "failed to prepare/enable efuse clk\n");
+		return ret;
+	}
+
+	addr_start = rounddown(offset, RK3399_NBYTES) / RK3399_NBYTES;
+	addr_end = roundup(offset + bytes, RK3399_NBYTES) / RK3399_NBYTES;
+	addr_offset = offset % RK3399_NBYTES;
+	addr_len = addr_end - addr_start;
+
+	buf = kzalloc(array3_size(addr_len, RK3399_NBYTES, sizeof(*buf)),
+		      GFP_KERNEL);
+	if (!buf) {
+		clk_disable_unprepare(efuse->clk);
+		return -ENOMEM;
+	}
+
+	writel(RK3399_LOAD | RK3399_PGENB | RK3399_STROBSFTSEL | RK3399_RSB,
+	       efuse->base + REG_EFUSE_CTRL);
+	udelay(1);
+	while (addr_len--) {
+		writel(readl(efuse->base + REG_EFUSE_CTRL) | RK3399_STROBE |
+		       ((addr_start++ & RK3399_A_MASK) << RK3399_A_SHIFT),
+		       efuse->base + REG_EFUSE_CTRL);
+		udelay(1);
+		out_value = readl(efuse->base + REG_EFUSE_DOUT);
+		writel(readl(efuse->base + REG_EFUSE_CTRL) & (~RK3399_STROBE),
+		       efuse->base + REG_EFUSE_CTRL);
+		udelay(1);
+
+		memcpy(&buf[i], &out_value, RK3399_NBYTES);
+		i += RK3399_NBYTES;
+	}
+
+	/* Switch to standby mode */
+	writel(RK3399_PD | RK3399_CSB, efuse->base + REG_EFUSE_CTRL);
+
+	memcpy(val, buf + addr_offset, bytes);
+
+	kfree(buf);
+
+	clk_disable_unprepare(efuse->clk);
+
+	return 0;
+}
+
+static struct nvmem_config econfig = {
+	.name = "rockchip-efuse",
+	.stride = 1,
+	.word_size = 1,
+	.read_only = true,
+};
+
+static const struct of_device_id rockchip_efuse_match[] = {
+	/* deprecated but kept around for dts binding compatibility */
+	{
+		.compatible = "rockchip,rockchip-efuse",
+		.data = (void *)&rockchip_rk3288_efuse_read,
+	},
+	{
+		.compatible = "rockchip,rk3066a-efuse",
+		.data = (void *)&rockchip_rk3288_efuse_read,
+	},
+	{
+		.compatible = "rockchip,rk3188-efuse",
+		.data = (void *)&rockchip_rk3288_efuse_read,
+	},
+	{
+		.compatible = "rockchip,rk3228-efuse",
+		.data = (void *)&rockchip_rk3288_efuse_read,
+	},
+	{
+		.compatible = "rockchip,rk3288-efuse",
+		.data = (void *)&rockchip_rk3288_efuse_read,
+	},
+	{
+		.compatible = "rockchip,rk3368-efuse",
+		.data = (void *)&rockchip_rk3288_efuse_read,
+	},
+	{
+		.compatible = "rockchip,rk3328-efuse",
+		.data = (void *)&rockchip_rk3328_efuse_read,
+	},
+	{
+		.compatible = "rockchip,rk3399-efuse",
+		.data = (void *)&rockchip_rk3399_efuse_read,
+	},
+	{ /* sentinel */},
+};
+MODULE_DEVICE_TABLE(of, rockchip_efuse_match);
+
+static int rockchip_efuse_probe(struct device_d *dev)
+{
+	struct resource *res;
+	struct nvmem_device *nvmem;
+	struct rockchip_efuse_chip *efuse;
+	const void *data;
+
+	data = device_get_match_data(dev);
+	if (!data) {
+		dev_err(dev, "failed to get match data\n");
+		return -EINVAL;
+	}
+
+	efuse = kzalloc(sizeof(struct rockchip_efuse_chip), GFP_KERNEL);
+	if (!efuse)
+		return -ENOMEM;
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	efuse->base = IOMEM(res->start);
+
+	efuse->clk = clk_get(dev, "pclk_efuse");
+	if (IS_ERR(efuse->clk))
+		return PTR_ERR(efuse->clk);
+
+	efuse->dev = dev;
+	if (of_property_read_u32(dev->device_node, "rockchip,efuse-size",
+				 &econfig.size))
+		econfig.size = resource_size(res);
+	econfig.reg_read = data;
+	econfig.priv = efuse;
+	econfig.dev = efuse->dev;
+	nvmem = nvmem_register(&econfig);
+
+	return PTR_ERR_OR_ZERO(nvmem);
+}
+
+static struct driver_d rockchip_efuse_driver = {
+	.name = "rockchip-efuse",
+	.of_compatible = rockchip_efuse_match,
+	.probe = rockchip_efuse_probe,
+};
+device_platform_driver(rockchip_efuse_driver);
+MODULE_DESCRIPTION("rockchip_efuse driver");
+MODULE_LICENSE("GPL v2");
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

