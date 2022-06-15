Delivery-date: Wed, 15 Jun 2022 22:41:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1Zp5-003IZc-AJ
	for lore@lore.pengutronix.de; Wed, 15 Jun 2022 22:41:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1Zp4-0007uy-Jm
	for lore@pengutronix.de; Wed, 15 Jun 2022 22:41:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XEdjmAlPePxrV5+vXdQm+CAt8hl+pf5e9r4dD3gzw+A=; b=Yxi5XG75YI6D6uBxWHK6DKSsN7
	K2b3u+sEdn1+ih3NdROc7sJ/UR7R3eX0gVT8lYPHLhnqIsDN7nzNDV5w11U8B0pblWLRXPX1wrvly
	8I92iUcWbZXZAE1dDfcBNAOIxwSlV1N9Vuxiqp4DEwQjvccaxfxVP001gtMsD2oLNFE7sPc1AwoRV
	HCPt0LiVeRGUosDd34BePHk2+Mim6/yMelqbyMKjnfZDbPDfgZ2vwj/gP1Co+7VCWhJuFAhBqlEtF
	MtBfc20Nkk4kjhGB5+qAwBFRGDg4eNfSKeaO9ffGHGo4iiAR5fCH6iSdEM8n9r3UfXg46R4UC+fL+
	p2LK9vNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1ZnM-00GGZX-8t; Wed, 15 Jun 2022 20:39:20 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1ZnG-00GGXl-0y
	for barebox@lists.infradead.org; Wed, 15 Jun 2022 20:39:17 +0000
Received: by mail-ej1-x62f.google.com with SMTP id u12so25457161eja.8
        for <barebox@lists.infradead.org>; Wed, 15 Jun 2022 13:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XEdjmAlPePxrV5+vXdQm+CAt8hl+pf5e9r4dD3gzw+A=;
        b=K2ujqXAUxFyhYZ3IexmHFUUL1eWbjFkx8Cmk1yUi5DFgAkLO/h6aZIcJh3TWDwOe6X
         3QcPm+FU1iV2Z7+ujrT+5/UiYkpCakv56TXIy+7HDdAaQCQxvghY22J7Qkh2BYSnEh/8
         Dr1KX8TRSzuNjr+xunW3+gOkt5+jLfZ2TozCd1K0G+0IRbnMOgQHXqXUSE0KGTlpJCrx
         Is+i8EUSuOtKC72PY4rFrikjoloeWxSIwt1ff2a9mtSbD0a8ud2l1GKqlzjBJlkBs4D3
         Yx8SkpJv/ZF7piEKOXa6vQ1RFeHRkiT2FpOfJ6dCLxAiJlJZ8iQlx8FjM1POAmYy/+PA
         PWGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XEdjmAlPePxrV5+vXdQm+CAt8hl+pf5e9r4dD3gzw+A=;
        b=PBjIgOMG3X+ee3z1QSzzdGrFfKlAYYYaB1rHbtpipBFryCcpTN1rUrNr/bUZY+B2dz
         tsaCpZhwGrRUuQ2McHfonlCiqyxCim+X5iyJ7mN+NV+O1XJNcfb7nNSQrwf4KGCySdGY
         3DdTDRIyYeBUNko3+n35ou9wUpSwYupq5eaRlCfowTYeOW2IX0TKJ13n3LQI2NE6cKh2
         2jD3cXCQS0c4WnZnyo83a4d2mWf1ev8eCf8SeqjHh0HvAGVXRTcadaFHQrgAgXbqnlWS
         Y/tYmRwkfvshgx1LCkXUY17CKpnEOdjvr/QZMnrD5StXzF8ZNG+mYwzKflSISPin8LDo
         ih9w==
X-Gm-Message-State: AJIora+ieMB31rXHPxqkg/0vX4RmAcVVoqWczWq2CArCLN8xTM318PRt
	lx/RSKM2P2lK7p1RY7hH6YOKB6YT1Fo=
X-Google-Smtp-Source: AGRyM1tvs+Nx3RUpVV/cdpTNeb9FIAIRzwZGI+RILl1GUF7lJKMl1+MucqbG94zgPViGQW0ianlrxg==
X-Received: by 2002:a17:906:3f4f:b0:715:85b4:54be with SMTP id f15-20020a1709063f4f00b0071585b454bemr1514586ejj.368.1655325551246;
        Wed, 15 Jun 2022 13:39:11 -0700 (PDT)
Received: from DESKTOP-KJS3OJ9.localdomain (ip-78-45-69-229.net.upcbroadband.cz. [78.45.69.229])
        by smtp.gmail.com with ESMTPSA id v2-20020a170906380200b006fea2035036sm6729347ejc.86.2022.06.15.13.39.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 13:39:10 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Wed, 15 Jun 2022 22:39:09 +0200
Message-Id: <20220615203909.27363-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_133914_151062_57F8ACE3 
X-CRM114-Status: GOOD (  28.17  )
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
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] i2c: add bcm283x i2c host controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a driver to support the i2c host controller (BSC)
found in Broadcom's bcm283x family of SoCs (used by rpi boards).

Signed-off-by: Daniel Brát <danek.brat@gmail.com>
---
 arch/arm/configs/rpi_defconfig     |   3 +-
 arch/arm/configs/rpi_v8a_defconfig |   3 +-
 drivers/i2c/busses/Kconfig         |   4 +
 drivers/i2c/busses/Makefile        |   1 +
 drivers/i2c/busses/i2c-bcm283x.c   | 327 +++++++++++++++++++++++++++++
 5 files changed, 336 insertions(+), 2 deletions(-)
 create mode 100644 drivers/i2c/busses/i2c-bcm283x.c

diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index e0e149748..e7d695f8a 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -24,7 +24,6 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH=""
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
@@ -83,6 +82,8 @@ CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_SMSC95XX=y
+CONFIG_I2C=y
+CONFIG_I2C_BCM283X=y
 CONFIG_USB_HOST=y
 CONFIG_USB_DWC2_HOST=y
 CONFIG_MCI=y
diff --git a/arch/arm/configs/rpi_v8a_defconfig b/arch/arm/configs/rpi_v8a_defconfig
index 68cd2438b..e218311a7 100644
--- a/arch/arm/configs/rpi_v8a_defconfig
+++ b/arch/arm/configs/rpi_v8a_defconfig
@@ -81,6 +81,8 @@ CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_SMSC95XX=y
+CONFIG_I2C=y
+CONFIG_I2C_BCM283X=y
 CONFIG_USB_HOST=y
 CONFIG_USB_DWC2_HOST=y
 CONFIG_USB_DWC2_GADGET=y
@@ -108,4 +110,3 @@ CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
 CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index 58f865606..766aa5edf 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -17,6 +17,10 @@ config I2C_AT91
 	bool "AT91 I2C Master driver"
 	depends on ARCH_AT91
 
+config I2C_BCM283X
+	bool "BCM283X I2C Master driver"
+	depends on ARCH_BCM283X || COMPILE_TEST
+
 config I2C_IMX
 	bool "MPC85xx/MPC5200/i.MX I2C Master driver"
 	depends on ARCH_IMX || ARCH_MPC85XX || ARCH_MPC5200 || ARCH_LAYERSCAPE
diff --git a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile
index a8661f605..a1ab46fb2 100644
--- a/drivers/i2c/busses/Makefile
+++ b/drivers/i2c/busses/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_I2C_AT91)		+= i2c-at91.o
+obj-$(CONFIG_I2C_BCM283X)	+= i2c-bcm283x.o
 obj-$(CONFIG_I2C_GPIO)		+= i2c-gpio.o
 obj-$(CONFIG_I2C_IMX)		+= i2c-imx.o
 lwl-$(CONFIG_I2C_IMX_EARLY)	+= i2c-imx-early.o
diff --git a/drivers/i2c/busses/i2c-bcm283x.c b/drivers/i2c/busses/i2c-bcm283x.c
new file mode 100644
index 000000000..097f73d98
--- /dev/null
+++ b/drivers/i2c/busses/i2c-bcm283x.c
@@ -0,0 +1,327 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * I2C bus driver for the BSC peripheral on Broadcom's bcm283x family of SoCs
+ *
+ * Based on documentation published by Raspberry Pi foundation and the kernel
+ * driver written by Stephen Warren.
+ *
+ * Copyright (C) Stephen Warren
+ * Copyright (C) 2022 Daniel Brát
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <i2c/i2c.h>
+#include <i2c/i2c-algo-bit.h>
+#include <linux/iopoll.h>
+#include <linux/clk.h>
+#include <init.h>
+#include <of_address.h>
+
+// BSC C (Control) register
+#define BSC_C_READ		BIT(0)
+#define BSC_C_CLEAR1		BIT(4)
+#define BSC_C_CLEAR2		BIT(5)
+#define BSC_C_ST		BIT(7)
+#define BSC_C_INTD		BIT(8)
+#define BSC_C_INTT		BIT(9)
+#define BSC_C_INTR		BIT(10)
+#define BSC_C_I2CEN		BIT(15)
+
+// BSC S (Status) register
+#define BSC_S_TA		BIT(0)
+#define BSC_S_DONE		BIT(1)
+#define BSC_S_TXW		BIT(2)
+#define BSC_S_RXR		BIT(3)
+#define BSC_S_TXD		BIT(4)
+#define BSC_S_RXD		BIT(5)
+#define BSC_S_TXE		BIT(6)
+#define BSC_S_RXF		BIT(7)
+#define BSC_S_ERR		BIT(8)
+#define BSC_S_CLKT		BIT(9)
+
+// BSC A (Address) register
+#define BSC_A_MASK		0x7f
+
+// Constants
+#define BSC_CDIV_MIN		0x0002
+#define BSC_CDIV_MAX		0xfffe
+#define BSC_FIFO_SIZE		16U
+
+struct __packed bcm283x_i2c_regs {
+	u32 c;
+	u32 s;
+	u32 dlen;
+	u32 a;
+	u32 fifo;
+	u32 div;
+	u32 del;
+	u32 clkt;
+};
+
+struct bcm283x_i2c {
+	struct i2c_adapter adapter;
+	struct clk *mclk;
+	struct bcm283x_i2c_regs __iomem *regs;
+	u32 bitrate;
+};
+
+static inline struct bcm283x_i2c *to_bcm283x_i2c(struct i2c_adapter *adapter)
+{
+	return container_of(adapter, struct bcm283x_i2c, adapter);
+}
+
+static inline int bcm283x_i2c_init(struct bcm283x_i2c *bcm_i2c)
+{
+	struct device_d *dev = &bcm_i2c->adapter.dev;
+	u32 mclk_rate, cdiv, redl, fedl;
+
+	/*
+	 * Reset control reg, flush FIFO, clear all flags and disable
+	 * clock stretching
+	 */
+	writel(0UL, &bcm_i2c->regs->c);
+	writel(BSC_C_CLEAR1, &bcm_i2c->regs->c);
+	writel(BSC_S_DONE | BSC_S_ERR | BSC_S_CLKT, &bcm_i2c->regs->s);
+	writel(0UL, &bcm_i2c->regs->clkt);
+
+	/*
+	 * Set the divider based on the master clock frequency and the
+	 * requested i2c bitrate
+	 */
+	mclk_rate = clk_get_rate(bcm_i2c->mclk);
+	cdiv = DIV_ROUND_UP(mclk_rate, bcm_i2c->bitrate);
+	dev_dbg(dev, "bcm283x_i2c_init: mclk_rate=%u, cdiv=%08x\n",
+		mclk_rate, cdiv);
+	/* Note from kernel driver:
+	 *   Per the datasheet, the register is always interpreted as an even
+	 *   number, by rounding down. In other words, the LSB is ignored. So,
+	 *   if the LSB is set, increment the divider to avoid any issue.
+	 */
+	if (cdiv & 1)
+		cdiv++;
+	if ((cdiv < BSC_CDIV_MIN) || (cdiv > BSC_CDIV_MAX)) {
+		dev_err(dev, "failed to calculate valid clock divider value\n");
+		return -EINVAL;
+	}
+	dev_dbg(dev, "bcm283x_i2c_init: cdiv adjusted to %04x\n", cdiv);
+	fedl = max(cdiv / 16, 1U);
+	redl = max(cdiv / 4, 1U);
+	dev_dbg(dev, "bcm283x_i2c_init: fedl=%04x, redl=%04x\n", fedl, redl);
+	writel(cdiv & 0xffff, &bcm_i2c->regs->div);
+	writel((fedl << 16) | redl, &bcm_i2c->regs->del);
+	dev_dbg(dev, "bcm283x_i2c_init: regs->div=%08x, regs->del=%08x\n",
+		readl(&bcm_i2c->regs->div), readl(&bcm_i2c->regs->del));
+
+	return 0;
+}
+
+/*
+ * Macro to calculate generous timeout for given bitrate and number of bytes
+ */
+#define calc_byte_timeout_us(bitrate) \
+	(3 * 9 * DIV_ROUND_UP(1000000, bitrate))
+#define calc_msg_timeout_us(bitrate, bytes) \
+	((bytes + 1) * calc_byte_timeout_us(bitrate))
+
+static int bcm283x_i2c_msg_xfer(struct bcm283x_i2c *bcm_i2c,
+				struct i2c_msg *msg)
+{
+	int ret;
+	u32 reg_c, reg_s, reg_dlen, timeout;
+	struct device_d *dev = &bcm_i2c->adapter.dev;
+	bool msg_read = (msg->flags & I2C_M_RD) > 0;
+	bool msg_10bit = (msg->flags & I2C_M_TEN) > 0;
+	u16 buf_pos = 0;
+	u32 bytes_left = reg_dlen = msg->len;
+
+	if (msg_10bit && msg_read) {
+		timeout = calc_byte_timeout_us(bcm_i2c->bitrate);
+		writel(1UL, &bcm_i2c->regs->dlen);
+		writel(msg->addr & 0xff, &bcm_i2c->regs->fifo);
+		writel(((msg->addr >> 8) | 0x78) & BSC_A_MASK, &bcm_i2c->regs->a);
+		writel(BSC_C_ST | BSC_C_I2CEN, &bcm_i2c->regs->c);
+		ret = readl_poll_timeout(&bcm_i2c->regs->s, reg_s,
+					 reg_s & (BSC_S_TA | BSC_S_ERR), timeout);
+
+		if (ret) {
+			dev_err(dev, "timeout: 10bit read initilization\n");
+			return ret;
+		}
+		if (reg_s & BSC_S_ERR)
+			goto nack;
+
+	} else if (msg_10bit) {
+		reg_dlen++;
+		writel(msg->addr & 0xff, &bcm_i2c->regs->fifo);
+		writel(((msg->addr >> 8) | 0x78) & BSC_A_MASK, &bcm_i2c->regs->a);
+	} else {
+		writel(msg->addr & BSC_A_MASK, &bcm_i2c->regs->a);
+	}
+
+	writel(reg_dlen, &bcm_i2c->regs->dlen);
+	reg_c = BSC_C_ST | BSC_C_I2CEN;
+	if (msg_read)
+		reg_c |= BSC_C_READ;
+	writel(reg_c, &bcm_i2c->regs->c);
+
+	if (msg_read) {
+		/*
+		 * Read out data from FIFO as soon as it is available
+		 */
+		timeout = calc_byte_timeout_us(bcm_i2c->bitrate);
+		for (; bytes_left; bytes_left--) {
+			ret = readl_poll_timeout(&bcm_i2c->regs->s, reg_s,
+						 reg_s & (BSC_S_RXD | BSC_S_ERR),
+						 timeout);
+
+			if (ret) {
+				dev_err(dev, "timeout: waiting for data in FIFO\n");
+				return ret;
+			}
+			if (reg_s & BSC_S_ERR)
+				goto nack;
+
+			msg->buf[buf_pos++] = (u8) readl(&bcm_i2c->regs->fifo);
+		}
+	} else {
+		timeout = calc_byte_timeout_us(bcm_i2c->bitrate);
+		/*
+		 * Feed data to FIFO as soon as there is space for them
+		 */
+		for (; bytes_left; bytes_left--) {
+			ret = readl_poll_timeout(&bcm_i2c->regs->s, reg_s,
+						 reg_s & (BSC_S_TXD | BSC_S_ERR),
+						 timeout);
+
+			if (ret) {
+				dev_err(dev, "timeout: waiting for space in FIFO\n");
+				return ret;
+			}
+			if (reg_s & BSC_S_ERR)
+				goto nack;
+
+			writel(msg->buf[buf_pos++], &bcm_i2c->regs->fifo);
+		}
+	}
+
+	/*
+	 * Wait for the current transfer to finish and then flush FIFO
+	 * and clear any flags so that we are ready for next msg
+	 */
+	timeout = calc_msg_timeout_us(bcm_i2c->bitrate, reg_dlen);
+	ret = readl_poll_timeout(&bcm_i2c->regs->s, reg_s,
+				 reg_s & (BSC_S_DONE | BSC_S_ERR), timeout);
+
+	if (ret) {
+		dev_err(dev, "timeout: waiting for transfer to end\n");
+		return ret;
+	}
+	if (reg_s & BSC_S_ERR)
+		goto nack;
+	writel(BSC_S_DONE | BSC_S_ERR | BSC_S_CLKT, &bcm_i2c->regs->s);
+	writel(BSC_C_CLEAR1 | BSC_C_I2CEN, &bcm_i2c->regs->c);
+	return 0;
+nack:
+	dev_dbg(dev, "device with addr %x didn't ACK\n", msg->addr);
+	return -EREMOTEIO;
+}
+
+static int bcm283x_i2c_xfer(struct i2c_adapter *adapter,
+			    struct i2c_msg *msgs, int count)
+{
+	int ret, i;
+	struct i2c_msg *msg;
+	struct bcm283x_i2c *bcm_i2c = to_bcm283x_i2c(adapter);
+
+	/*
+	 * Reset control reg, flush FIFO, clear flags and enable the BSC
+	 */
+	writel(0UL, &bcm_i2c->regs->c);
+	writel(BSC_C_CLEAR1, &bcm_i2c->regs->c);
+	writel(BSC_S_DONE | BSC_S_ERR | BSC_S_CLKT, &bcm_i2c->regs->s);
+	writel(BSC_C_I2CEN, &bcm_i2c->regs->c);
+
+	for (i = 0; i < count; i++) {
+		msg = &msgs[i];
+		ret = bcm283x_i2c_msg_xfer(bcm_i2c, msg);
+		if (ret)
+			goto out;
+	}
+
+	writel(0UL, &bcm_i2c->regs->c);
+	return count;
+out:
+	writel(0UL, &bcm_i2c->regs->c);
+	writel(BSC_C_CLEAR1, &bcm_i2c->regs->c);
+	writel(BSC_S_DONE | BSC_S_ERR | BSC_S_CLKT, &bcm_i2c->regs->s);
+	return ret;
+}
+
+static int bcm283x_i2c_probe(struct device_d *dev)
+{
+	int ret;
+	struct resource *iores;
+	struct bcm283x_i2c *bcm_i2c;
+	struct device_node *np = dev->device_node;
+
+	bcm_i2c = xzalloc(sizeof(*bcm_i2c));
+
+	if (!np) {
+		ret = -ENXIO;
+		goto err;
+	}
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		dev_err(dev, "could not get iomem region\n");
+		ret = PTR_ERR(iores);
+		goto err;
+	}
+	bcm_i2c->regs = IOMEM(iores->start);
+
+	bcm_i2c->mclk = clk_get(dev, NULL);
+	if (IS_ERR(bcm_i2c->mclk)) {
+		dev_err(dev, "could not acquire clock\n");
+		ret = PTR_ERR(bcm_i2c->mclk);
+		goto err;
+	}
+	clk_enable(bcm_i2c->mclk);
+
+	bcm_i2c->bitrate = I2C_MAX_STANDARD_MODE_FREQ;
+	of_property_read_u32(np, "clock-frequency", &bcm_i2c->bitrate);
+	if (bcm_i2c->bitrate > I2C_MAX_FAST_MODE_FREQ) {
+		dev_err(dev, "clock frequency of %u is not supported\n",
+			bcm_i2c->bitrate);
+		ret = -EINVAL;
+		goto err;
+	}
+
+	bcm_i2c->adapter.master_xfer = bcm283x_i2c_xfer;
+	bcm_i2c->adapter.nr = dev->id;
+	bcm_i2c->adapter.dev.parent = dev;
+	bcm_i2c->adapter.dev.device_node = np;
+
+	ret = bcm283x_i2c_init(bcm_i2c);
+	if (ret)
+		goto err;
+
+	return i2c_add_numbered_adapter(&bcm_i2c->adapter);
+err:
+	free(bcm_i2c);
+	return ret;
+}
+
+static struct of_device_id bcm283x_i2c_dt_ids[] = {
+	{ .compatible = "brcm,bcm2835-i2c", },
+	{ .compatible = "brcm,bcm2711-i2c", },
+	{ /* sentinel */ }
+};
+
+static struct driver_d bcm283x_i2c_driver = {
+	.name		= "i2c-bcm283x",
+	.probe		= bcm283x_i2c_probe,
+	.of_compatible	= DRV_OF_COMPAT(bcm283x_i2c_dt_ids),
+};
+device_platform_driver(bcm283x_i2c_driver);
-- 
2.17.1



