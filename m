Delivery-date: Tue, 18 Jan 2022 09:22:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9jlW-005Ofy-FP
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 09:22:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9jlU-0008QL-V4
	for lore@pengutronix.de; Tue, 18 Jan 2022 09:22:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k3mAtjumbTqxJI+3ZK2kn7jDtTLctn3qSLdVTcEzE0k=; b=isuAR0eRiFUnTz
	r7n9EwE0xsLYtxG/wQa6erLI41UdnxQukmmYbE82pWFKAP7qaJZFvDjdYfaywJnoCMoMVNP6BC9pL
	rVb4AugwVgrlR0dRKthLDfBdK0Q3P/CNo+HEHGA5UCiZGeGj8t8r4LqAN6RHnKwgo3JEB9PpKqES/
	Ms2ekLHelXX56F21RDFXbLj4ZKpLVNWk6Sv/lhVtrvlhLw6UlepKqbXo/SFfToFMark/BxdTWLy9c
	KqU46QrgW4JVYiMAwFGcq1KVz2KlPjcM0QoFUS6R0hA9rEFdRVnfF099q1gcGeaE4pGktRAx4aiVb
	5ySmCExPWwXidPPVsdBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9jkC-000jJk-ER; Tue, 18 Jan 2022 08:21:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9jk4-000jIS-Sh
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 08:21:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <jbe@pengutronix.de>) id 1n9jk3-0008D7-Mn
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 09:21:23 +0100
Received: from [2a0a:edc0:0:900:1d::45] (helo=ginster)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <jbe@pengutronix.de>) id 1n9jk3-00AyBi-Mu
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 09:21:22 +0100
Received: from jbe by ginster with local (Exim 4.94.2)
 (envelope-from <jbe@pengutronix.de>) id 1n9jk2-000J3V-BD
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 09:21:22 +0100
From: Juergen Borleis <jbe@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 18 Jan 2022 09:21:21 +0100
Message-Id: <20220118082122.73204-1-jbe@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_002124_956922_4CD0E9AA 
X-CRM114-Status: GOOD (  19.46  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] Add the base Ricoh RN5T568 PMIC driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
 drivers/mfd/Kconfig   |   6 ++
 drivers/mfd/Makefile  |   1 +
 drivers/mfd/rn5t568.c | 165 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 172 insertions(+)
 create mode 100644 drivers/mfd/rn5t568.c

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 8468a2d..1602480 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -68,6 +68,12 @@ config MFD_STPMIC1
 	help
 	  Select this to support communication with the STPMIC1.
 
+config MFD_RN568PMIC
+	depends on I2C
+	bool "Ricoh RN5T568 MFD driver"
+	help
+	  Select this to support communication with the Ricoh RN5T568 PMIC.
+
 config MFD_SUPERIO
 	bool
 
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 2bcf900..50f54cf 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_MFD_TWL4030)	+= twl4030.o
 obj-$(CONFIG_MFD_TWL6030)	+= twl6030.o
 obj-$(CONFIG_RAVE_SP_CORE)	+= rave-sp.o
 obj-$(CONFIG_MFD_STPMIC1)	+= stpmic1.o
+obj-$(CONFIG_MFD_RN568PMIC)	+= rn5t568.o
 obj-$(CONFIG_MFD_SUPERIO)	+= superio.o
 obj-$(CONFIG_FINTEK_SUPERIO)	+= fintek-superio.o
 obj-$(CONFIG_SMSC_SUPERIO)	+= smsc-superio.o
diff --git a/drivers/mfd/rn5t568.c b/drivers/mfd/rn5t568.c
new file mode 100644
index 0000000..c1c792c
--- /dev/null
+++ b/drivers/mfd/rn5t568.c
@@ -0,0 +1,165 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * MFD core driver for Ricoh RN5T618 PMIC
+ * Note: Manufacturer is now Nisshinbo Micro Devices Inc.
+ *
+ * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
+ * Copyright (C) 2016 Toradex AG
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <i2c/i2c.h>
+#include <init.h>
+#include <of.h>
+#include <regmap.h>
+#include <reset_source.h>
+#include <restart.h>
+
+#define RN5T568_LSIVER 0x00
+#define RN5T568_OTPVER 0x01
+#define RN5T568_PONHIS 0x09
+# define RN5T568_PONHIS_ON_EXTINPON BIT(3)
+# define RN5T568_PONHIS_ON_REPWRPON BIT(1)
+# define RN5T568_PONHIS_ON_PWRONPON BIT(0)
+#define RN5T568_POFFHIS 0x0a
+# define RN5T568_POFFHIS_N_OEPOFF BIT(7)
+# define RN5T568_POFFHIS_DCLIMPOFF BIT(6)
+# define RN5T568_POFFHIS_WDGPOFF BIT(5)
+# define RN5T568_POFFHIS_CPUPOFF BIT(4)
+# define RN5T568_POFFHIS_IODETPOFF BIT(3)
+# define RN5T568_POFFHIS_VINDETPOFF BIT(2)
+# define RN5T568_POFFHIS_TSHUTPOFF BIT(1)
+# define RN5T568_POFFHIS_PWRONPOFF BIT(0)
+#define RN5T568_SLPCNT 0x0e
+# define RN5T568_SLPCNT_SWPPWROFF BIT(0)
+#define RN5T568_REPCNT 0x0f
+# define RN5T568_REPCNT_OFF_RESETO_16MS 0x30
+# define RN5T568_REPCNT_OFF_REPWRTIM_1000MS 0x06
+# define RN5T568_REPCNT_OFF_REPWRON BIT(0)
+#define RN5T568_MAX_REG 0xbc
+
+struct rn5t568 {
+	struct restart_handler restart;
+	struct regmap *regmap;
+};
+
+static void rn5t568_restart(struct restart_handler *rst)
+{
+	struct rn5t568 *rn5t568 = container_of(rst, struct rn5t568, restart);
+
+	regmap_write(rn5t568->regmap, RN5T568_SLPCNT, RN5T568_SLPCNT_SWPPWROFF);
+}
+
+static int rn5t568_reset_reason_detect(struct device_d *dev, struct regmap *regmap)
+{
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(regmap, RN5T568_PONHIS, &reg);
+	if (ret)
+		return ret;
+
+	dev_dbg(dev, "Power-on history: %x\n", reg);
+
+	if (reg == 0) {
+		dev_info(dev, "No power-on reason available\n");
+		return 0;
+	}
+
+	if (reg & RN5T568_PONHIS_ON_EXTINPON) {
+		reset_source_set_device(dev, RESET_POR);
+		return 0;
+	} else if (reg & RN5T568_PONHIS_ON_PWRONPON) {
+		reset_source_set_device(dev, RESET_POR);
+		return 0;
+	} else if (!(reg & RN5T568_PONHIS_ON_REPWRPON))
+		return -EINVAL;
+
+	ret = regmap_read(regmap, RN5T568_POFFHIS, &reg);
+	if (ret)
+		return ret;
+
+	dev_dbg(dev, "Power-off history: %x\n", reg);
+
+	if (reg & RN5T568_POFFHIS_PWRONPOFF)
+		reset_source_set_device(dev, RESET_POR);
+	else if (reg & RN5T568_POFFHIS_TSHUTPOFF)
+		reset_source_set_device(dev, RESET_THERM);
+	else if (reg & RN5T568_POFFHIS_VINDETPOFF)
+		reset_source_set_device(dev, RESET_BROWNOUT);
+	else if (reg & RN5T568_POFFHIS_IODETPOFF)
+		reset_source_set_device(dev, RESET_UKWN);
+	else if (reg & RN5T568_POFFHIS_CPUPOFF)
+		reset_source_set_device(dev, RESET_RST);
+	else if (reg & RN5T568_POFFHIS_WDGPOFF)
+		reset_source_set_device(dev, RESET_WDG);
+	else if (reg & RN5T568_POFFHIS_DCLIMPOFF)
+		reset_source_set_device(dev, RESET_BROWNOUT);
+	else if (reg & RN5T568_POFFHIS_N_OEPOFF)
+		reset_source_set_device(dev, RESET_EXT);
+	else
+		return -EINVAL;
+
+	return 0;
+}
+
+static const struct regmap_config rn5t568_regmap_config = {
+	.reg_bits	= 8,
+	.val_bits	= 8,
+	.max_register	= RN5T568_MAX_REG,
+};
+
+static int __init rn5t568_i2c_probe(struct device_d *dev)
+{
+	struct rn5t568 *pmic_instance;
+	unsigned char reg[2];
+	int ret;
+
+	pmic_instance = xzalloc(sizeof(struct rn5t568));
+	pmic_instance->regmap = regmap_init_i2c(to_i2c_client(dev), &rn5t568_regmap_config);
+	if (IS_ERR(pmic_instance->regmap))
+		return PTR_ERR(pmic_instance->regmap);
+
+	ret = regmap_register_cdev(pmic_instance->regmap, NULL);
+	if (ret)
+		return ret;
+
+	ret = regmap_bulk_read(pmic_instance->regmap, RN5T568_LSIVER, &reg, 2);
+	if (ret) {
+		dev_err(dev, "Failed to read PMIC version via I2C\n");
+		return ret;
+	}
+
+	dev_info(dev, "Found NMD RN5T568 LSI %x, OTP: %x\n", reg[0], reg[1]);
+
+	/* Settings used to trigger software reset and by a watchdog trigger */
+	regmap_write(pmic_instance->regmap, RN5T568_REPCNT, RN5T568_REPCNT_OFF_RESETO_16MS |
+		     RN5T568_REPCNT_OFF_REPWRTIM_1000MS | RN5T568_REPCNT_OFF_REPWRON);
+
+	pmic_instance->restart.priority = of_get_restart_priority(dev->device_node);
+	pmic_instance->restart.name = "RN5T568";
+	pmic_instance->restart.restart = &rn5t568_restart;
+	restart_handler_register(&pmic_instance->restart);
+	dev_dbg(dev, "RN5t: Restart handler with priority %d registered\n", pmic_instance->restart.priority);
+
+	ret = rn5t568_reset_reason_detect(dev, pmic_instance->regmap);
+	if (ret)
+		dev_warn(dev, "Failed to query reset reason\n");
+
+	return of_platform_populate(dev->device_node, NULL, dev);
+}
+
+static __maybe_unused const struct of_device_id rn5t568_of_match[] = {
+	{ .compatible = "ricoh,rn5t568", .data = NULL, },
+	{ }
+};
+
+static struct driver_d rn5t568_i2c_driver = {
+	.name		= "rn5t568-i2c",
+	.probe		= rn5t568_i2c_probe,
+	.of_compatible	= DRV_OF_COMPAT(rn5t568_of_match),
+};
+
+coredevice_i2c_driver(rn5t568_i2c_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

