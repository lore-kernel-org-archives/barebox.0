Delivery-date: Fri, 21 Nov 2025 15:46:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vMSPX-003Nvu-2k
	for lore@lore.pengutronix.de;
	Fri, 21 Nov 2025 15:46:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vMSPX-0005Ob-4k
	for lore@pengutronix.de; Fri, 21 Nov 2025 15:46:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FvqngRC+MHtCQGnNwOh+KX80E4tVb+A3R+VP+pzpJxg=; b=I8DXOt5gbh/TbNk3lcEWvwwFWj
	3hZTE4AXB9wtGNgLsO+PfnO7s1/JY4N6sZ56cur2kmPETg/Zktg1ab4WNwbbnJqRw3Z5aNaS4GKIn
	aCfctlM4of3ySGqT2u0mRnFqi2AcYpWOfd9BjM6xm4OkW9wNjBVLrOuXVo2ldL7kRiMdlQxdJRg/h
	AjB0HBZ04geUw/FoyUISm72QhsNdVPKQZ5VYxVoHLvQPtfW834NZo8e0su19HI+SXfMFj4iKSP5Al
	UwHbw8atKfFnJa3fJNXnWzpuncDLJE/1WdrTFhACND3AXjzKQ+eccuzTpUYJAd4JJqFN7uo7uwWHb
	LQHvS8sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMSOo-00000008Xhq-0q3f;
	Fri, 21 Nov 2025 14:46:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMSOj-00000008XhN-2JdU
	for barebox@lists.infradead.org;
	Fri, 21 Nov 2025 14:46:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vMSOg-0005GX-85; Fri, 21 Nov 2025 15:46:02 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vMSOg-001bRo-0C;
	Fri, 21 Nov 2025 15:46:02 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vMSOg-0000000DMGx-1h2w;
	Fri, 21 Nov 2025 15:46:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 21 Nov 2025 15:46:01 +0100
Message-ID: <20251121144601.3183308-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251121_064605_594032_2FE4CEBF 
X-CRM114-Status: GOOD (  22.68  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] nvmem: am62l: add fuse support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This driver reads/writes to the extended OTP area using TF-A call using
TF-A calls.
So far only the AM62l is supported, but this should work on other K3
SoCs as well..
So far only the AM62l is supported, but this should work on other K3
SoCs as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-barebox.dtsi |   4 ++
 drivers/nvmem/Kconfig              |   6 ++
 drivers/nvmem/Makefile             |   1 +
 drivers/nvmem/k3-fuse.c            | 112 +++++++++++++++++++++++++++++
 4 files changed, 123 insertions(+)
 create mode 100644 drivers/nvmem/k3-fuse.c

diff --git a/arch/arm/dts/k3-am62l-barebox.dtsi b/arch/arm/dts/k3-am62l-barebox.dtsi
index 2c1cbb3871..949e2746d5 100644
--- a/arch/arm/dts/k3-am62l-barebox.dtsi
+++ b/arch/arm/dts/k3-am62l-barebox.dtsi
@@ -64,4 +64,8 @@ secure_ddr: optee@80200000 {
 			no-map;
 		};
 	};
+
+	otp: otp {
+		compatible = "ti,am62l-otp";
+	};
 };
diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 49f90452df..7b78f53909 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -136,4 +136,10 @@ config NVMEM_ATMEL_I2C
 	bool
 	select BITREVERSE
 
+config TI_K3_OTP
+	bool "TI K3 OTP"
+	depends on ARCH_K3
+	help
+	  This adds support for the TI K3 SMC call based OTP found on AM62L SoCs.
+
 endif
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 9cdc669a96..cb5e6d6330 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -36,3 +36,4 @@ obj-$(CONFIG_STARFIVE_OTP)	+= starfive-otp.o
 obj-$(CONFIG_IMX_OCOTP_ELE)	+= imx-ocotp-ele.o
 obj-$(CONFIG_NVMEM_ATMEL_I2C)	+= atmel-i2c.o
 obj-$(CONFIG_NVMEM_ATMEL_SHA204A) += atmel-sha204a.o
+obj-$(CONFIG_TI_K3_OTP)		+= k3-fuse.o
diff --git a/drivers/nvmem/k3-fuse.c b/drivers/nvmem/k3-fuse.c
new file mode 100644
index 0000000000..60d5706b1c
--- /dev/null
+++ b/drivers/nvmem/k3-fuse.c
@@ -0,0 +1,112 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <driver.h>
+#include <malloc.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <linux/regmap.h>
+#include <linux/nvmem-provider.h>
+#include <linux/arm-smccc.h>
+
+#define K3_SIP_OTP_READ		0xC2000002
+#define K3_SIP_OTP_WRITE	0xC2000001
+
+struct ti_k3_otp {
+	struct device *dev;
+};
+
+/*
+ * offset and size are assumed aligned to the size of the fuses (32-bit).
+ */
+static int ti_k3_otp_read(void *ctx, unsigned int offset, unsigned int *val)
+{
+	struct arm_smccc_res res;
+	unsigned int bank = 0;
+	unsigned int word = offset >> 2;
+
+	/* TF-A ignores bank argument */
+	arm_smccc_smc(K3_SIP_OTP_READ, bank, word,
+		      0, 0, 0, 0, 0, &res);
+
+	if (res.a0 != 0) {
+		*val = 0xdeadbeef;
+		return 0;
+	}
+
+	*val = res.a1;
+
+	return 0;
+}
+
+static int ti_k3_otp_write(void *ctx, unsigned int offset, unsigned int val)
+{
+	struct ti_k3_otp *priv = ctx;
+	struct arm_smccc_res res;
+	unsigned int bank = 0;
+	unsigned int word = offset >> 2;
+	unsigned int mask = val;
+
+	/*
+	 * At least on AM62L there is an inconsistency between reading and writing
+	 * fuse bits, see
+	 * https://e2e.ti.com/support/microcontrollers/arm-based-microcontrollers-group/arm-based-microcontrollers/f/arm-based-microcontrollers-forum/1590396/am62l-am62l-extended-otp
+	 * Until this is resolved we only allow to write the first 24 bits of word 0
+	 */
+	if (word != 0 || (val & GENMASK(31, 25))) {
+		dev_err(priv->dev, "Tried to write non supported word/bit");
+		return -EINVAL;
+	}
+
+	arm_smccc_smc(K3_SIP_OTP_WRITE, bank, word,
+		      val, mask, 0, 0, 0, &res);
+
+	if (res.a0 != 0) {
+		dev_err(priv->dev, "Writing fuse 0x%08x failed with: %u\n", res.a0);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static struct regmap_bus ti_k3_otp_regmap_bus = {
+	.reg_read = ti_k3_otp_read,
+	.reg_write = ti_k3_otp_write,
+};
+
+static int ti_k3_otp_probe(struct device *dev)
+{
+	struct ti_k3_otp *priv;
+	struct regmap_config config = {};
+	struct regmap *map;
+
+	config.name = "k3-otp";
+	config.reg_bits = 32;
+	config.val_bits = 32;
+	config.reg_stride = 4;
+	config.max_register = 127;
+
+	priv = xzalloc(sizeof(*priv));
+	priv->dev = dev;
+
+	map = regmap_init(dev, &ti_k3_otp_regmap_bus, priv, &config);
+	if (IS_ERR(map))
+		return PTR_ERR(map);
+
+	return PTR_ERR_OR_ZERO(nvmem_regmap_register(map, "ti-k3-otp"));
+}
+
+static struct of_device_id ti_k3_otp_dt_ids[] = {
+	{ .compatible = "ti,am62l-otp" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, ti_k3_otp_dt_ids);
+
+static struct driver ti_k3_otp_driver = {
+	.name	= "ti-k3-otp",
+	.probe	= ti_k3_otp_probe,
+	.of_compatible = ti_k3_otp_dt_ids,
+};
+device_platform_driver(ti_k3_otp_driver);
-- 
2.47.3



