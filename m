Delivery-date: Sat, 19 Jun 2021 06:55:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT1C-0004cJ-SI
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:55:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT1B-0001m6-43
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:55:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B98UdbQpI62IgtzP5sQ4y6WHUiFsYTMFYtIbeA2TU6Q=; b=vkePXAD9deV92z
	D+kd+bvt0P6OiWbQlv7kzc6BOXiaDA/3nvil384X2wSUGE5T3q7Ej0pVdZDaw2zOlu4O1Cf0hZtmk
	v6sWM24tQ/E+q19V0r0Az/+s2POeSbYYVJ6Q+ma53J8VhGkNsCn2AiPgFNoJqKsxxA5JtXxG4+mQH
	uRxVTuykJixqk9VEwocv78y2YCPbsaHUM+kBN1UfTZMInd8t+r23yp5w1IRNWugF4S0tB40TOlY3s
	X1SZz9U9MubRMvX/7SYFCEs+h11iruBGOZNiSSWx32MPHqrybn+MjckPq9AtTSw5Qk+Gaw9clOU/T
	0o4zn2GWvJtxshO0DjeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luSzf-00GJUZ-6N; Sat, 19 Jun 2021 04:54:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwu-00GHm2-6P
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwc-0008M5-SW; Sat, 19 Jun 2021 06:50:58 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001Kp-Og; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:34 +0200
Message-Id: <20210619045055.779-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215116_281916_F040FF8B 
X-CRM114-Status: GOOD (  21.46  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/29] nvmem: add StarFive OTP support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The OTP holds the ethernet MAC address. Add a driver, so barebox can
read it out.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/Kconfig        |   8 ++
 drivers/nvmem/Makefile       |   2 +
 drivers/nvmem/starfive-otp.c | 201 +++++++++++++++++++++++++++++++++++
 3 files changed, 211 insertions(+)
 create mode 100644 drivers/nvmem/starfive-otp.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 0d7c0b7b9e3d..3781f7a839fc 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -65,4 +65,12 @@ config STM32_BSEC
 	  This adds support for the STM32 OTP controller. Reads and writes
 	  to will go to the shadow RAM, not the OTP fuses themselvers.
 
+config STARFIVE_OTP
+	tristate "Starfive OTP Supprot"
+	depends on SOC_STARFIVE
+	depends on OFDEVICE
+	help
+	  This adds support for the StarFive OTP controller. Only reading
+	  is currently supported.
+
 endif
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 53c02dc7850c..55507f544126 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -22,3 +22,5 @@ nvmem_eeprom_93xx46-y		:= eeprom_93xx46.o
 
 obj-$(CONFIG_STM32_BSEC)	+= nvmem_bsec.o
 nvmem_bsec-y			:= bsec.o
+
+obj-$(CONFIG_STARFIVE_OTP)	+= starfive-otp.o
diff --git a/drivers/nvmem/starfive-otp.c b/drivers/nvmem/starfive-otp.c
new file mode 100644
index 000000000000..f9bf05ca87ec
--- /dev/null
+++ b/drivers/nvmem/starfive-otp.c
@@ -0,0 +1,201 @@
+// SPDX_License-Identifier: GPL-2.0
+/*
+ *   Copyright 2021 StarFive, Inc
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <gpiod.h>
+#include <init.h>
+#include <net.h>
+#include <io.h>
+#include <of.h>
+#include <regmap.h>
+#include <machine_id.h>
+#include <linux/reset.h>
+#include <linux/clk.h>
+#include <linux/nvmem-provider.h>
+
+// otp reg offset
+#define OTP_CFGR        0x00
+#define OTPC_IER        0x04
+#define OTPC_SRR        0x08
+#define OTP_OPRR        0x0c
+#define OTPC_CTLR       0x10
+#define OTPC_ADDRR      0x14
+#define OTPC_DINR       0x18
+#define OTPC_DOUTR      0x1c
+
+#define OTP_EMPTY_CELL_VALUE  0xffffffffUL
+
+// cfgr (offset 0x00)
+#define OTP_CFGR_PRG_CNT_MASK   0xff
+#define OTP_CFGR_PRG_CNT_SHIFT  0
+#define OTP_CFGR_DIV_1US_MASK   0xff
+#define OTP_CFGR_DIV_1US_SHIFT  8
+#define OTP_CFGR_RD_CYC_MASK    0x0f
+#define OTP_CFGR_RD_CYC_SHIFT   16
+
+// ier (offset 0x04)
+#define OTPC_IER_DONE_IE        BIT(0)
+#define OTPC_IER_BUSY_OPR_IE    BIT(1)
+
+// srr (offset 0x08)
+#define OTPC_SRR_DONE           BIT(0)
+#define OTPC_SRR_BUSY_OPR       BIT(1)
+#define OTPC_SRR_INFO_RD_LOCK   BIT(29)
+#define OTPC_SRR_INFO_WR_LOCK   BIT(30)
+#define OTPC_SRR_BUSY           BIT(31)
+
+// oprr (offset 0x0c)
+#define OTP_OPRR_OPR_MASK           0x00000007
+#define OTP_OPRR_OPR_SHIFT          0
+
+#define OTP_OPR_STANDBY             0x0 // user mode
+#define OTP_OPR_READ                0x1 // user mode
+#define OTP_OPR_MARGIN_READ_PROG    0x2 // testing mode
+#define OTP_OPR_MARGIN_READ_INIT    0x3 // testing mode
+#define OTP_OPR_PROGRAM             0x4 // user mode
+#define OTP_OPR_DEEP_STANDBY        0x5 // user mode
+#define OTP_OPR_DEBUG               0x6 // user mode
+
+// ctlr (offset 0x10, see EG512X32TH028CW01_v1.0.pdf "Pin Description")
+#define OTPC_CTLR_PCE               BIT(0)
+#define OTPC_CTLR_PTM_MASK          0x0000000e
+#define OTPC_CTLR_PTM_SHIFT         1
+#define OTPC_CTLR_PDSTB             BIT(4)
+#define OTPC_CTLR_PTR               BIT(5)
+#define OTPC_CTLR_PPROG             BIT(6)
+#define OTPC_CTLR_PWE               BIT(7)
+#define OTPC_CTLR_PCLK              BIT(8)
+
+// addrr (offset 0x14)
+#define OTPC_ADDRR_PA_MASK          0x000001ff
+#define OTPC_ADDRR_PA_SHIFT         0
+
+/*
+ * data format:
+ * struct starfive_otp_data{
+ * 	char vendor[32];
+ * 	uint64_t sn;
+ * 	uint8_t mac_addr[6];
+ * 	uint8_t padding_0[2];
+ * }
+ */
+
+struct starfive_otp {
+	int power_gpio;
+	struct starfive_otp_regs __iomem *regs;
+};
+
+struct starfive_otp_regs {
+	/* TODO: add otp ememory_eg512x32 registers define */
+	u32 otp_cfg;		/* timing Register */
+	u32 otpc_ie;		/* interrupt Enable */
+	u32 otpc_sr;		/* status Register */
+	u32 otp_opr;		/* operation mode select Register */
+	u32 otpc_ctl;		/* otp control port */
+	u32 otpc_addr;		/* otp pa port */
+	u32 otpc_din;		/* otp pdin port */
+	u32 otpc_dout;		/* otp pdout */
+	u32 reserved[504];
+	u32 mem[512];
+};
+
+/*
+ * offset and size are assumed aligned to the size of the fuses (32-bit).
+ */
+static int starfive_otp_read(void *ctx, unsigned offset, unsigned *val)
+{
+	struct starfive_otp *priv = ctx;
+
+	gpio_set_active(priv->power_gpio, true);
+	mdelay(10);
+
+	//otp set to read mode
+	writel(OTP_OPR_READ, &priv->regs->otp_opr);
+	mdelay(5);
+
+	/* read all requested fuses */
+	*val = readl(&priv->regs->mem[offset / 4]);
+
+	gpio_set_active(priv->power_gpio, false);
+	mdelay(5);
+
+	return 0;
+}
+
+static int starfive_otp_write(void *ctx, unsigned offset, unsigned val)
+{
+	return -EOPNOTSUPP;
+}
+
+static struct regmap_bus starfive_otp_regmap_bus = {
+	.reg_read = starfive_otp_read,
+	.reg_write = starfive_otp_write,
+};
+
+static int starfive_otp_probe(struct device_d *dev)
+{
+	struct starfive_otp *priv;
+	struct regmap_config config = {};
+	struct resource *iores;
+	struct regmap *map;
+	struct clk *clk;
+	u32 total_fuses;
+	int ret;
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	clk_enable(clk);
+
+	ret = device_reset(dev);
+	if (ret)
+		return ret;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	ret = of_property_read_u32(dev->device_node, "fuse-count", &total_fuses);
+	if (ret < 0) {
+		dev_err(dev, "missing required fuse-count property\n");
+		return ret;
+	}
+
+	config.name = "starfive-otp";
+	config.reg_bits = 32;
+	config.val_bits = 32;
+	config.reg_stride = 4;
+	config.max_register = total_fuses;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->regs = IOMEM(iores->start);
+	priv->power_gpio = gpiod_get(dev, "power", GPIOD_OUT_LOW);
+	if (priv->power_gpio < 0)
+		return priv->power_gpio;
+
+	map = regmap_init(dev, &starfive_otp_regmap_bus, priv, &config);
+	if (IS_ERR(map))
+		return PTR_ERR(map);
+
+	return PTR_ERR_OR_ZERO(nvmem_regmap_register(map, "starfive-otp"));
+}
+
+static struct of_device_id starfive_otp_dt_ids[] = {
+	{ .compatible = "starfive,fu740-otp" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d starfive_otp_driver = {
+	.name	= "starfive_otp",
+	.probe	= starfive_otp_probe,
+	.of_compatible = starfive_otp_dt_ids,
+};
+device_platform_driver(starfive_otp_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

