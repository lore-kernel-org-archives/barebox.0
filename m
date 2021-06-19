Delivery-date: Sat, 19 Jun 2021 06:54:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSzn-0004Ze-KL
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:54:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSzl-0001Dc-Jn
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:54:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A1KqwUoOHahEkKUBSAnPr72gbyosXJPrDaAkAPzHfO8=; b=JonkVTkRvQZbG3
	mHPdcpVbfGNZ+a52ZlCSZ1GwwbPDWuC5+Vz/FTemADT9noVEgY2UGkuS/MFqM2EJRhcT9lIiK9sfP
	2hVzuPU5/Du9NYdTWCczM0ViwxZ32T1/zwc1Ot0TO5vGx/kImrr/ceQBGEqQLKyYNYe9t7poqWSIe
	hP1NNg4nczkefBXPJiklznq30kNKGrO0T3FmXlrXV8MhBgQKc0nFl/E9OLdFBQ02qaiTPC3kok06D
	noCucZhqnxBamE0kpkKsMblMIMQtdHkvFuEwBDW/8YTK4VfwICPJvAZnIHrWXjed+tah30hun7wCF
	zv5CwPZ9ntScB9Zid94w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luSyD-00GIZL-Oe; Sat, 19 Jun 2021 04:52:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwq-00GHjz-Qs
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008MP-EH; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwb-0001Ln-25; Sat, 19 Jun 2021 06:50:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:54 +0200
Message-Id: <20210619045055.779-29-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215112_965296_31778DC7 
X-CRM114-Status: GOOD (  22.35  )
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
Subject: [PATCH v2 28/29] misc: add power sequencing driver for initializing
 StarFive peripherals
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There will likely not be a use case for having neural network
accelerator driver support within barebox. Still the driver requires a
reset sequence, which is not yet supported by vendor kernel's or known
forks. Until Linux can take care of this itself, add a simple driver
that gets some of the peripherals out of reset.

There also enables unconditionally some of the clocks that the vendor
kernel may depend on. Hopefully, in future, the whole driver can be
dropped when the kernel starts to do clock and reset control itself.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/misc/Kconfig           | 10 ++++
 drivers/misc/Makefile          |  1 +
 drivers/misc/starfive-pwrseq.c | 92 ++++++++++++++++++++++++++++++++++
 3 files changed, 103 insertions(+)
 create mode 100644 drivers/misc/starfive-pwrseq.c

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 87674a2a29f9..7426dfc46398 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -42,4 +42,14 @@ config ACPI_TEST
 	help
 	  This is a simple Test driver to test the ACPI bus.
 
+config STARFIVE_PWRSEQ
+	bool "StarFive power sequencing driver"
+	depends on SOC_STARFIVE
+	help
+	  This driver sets up a number of StarFive peripherals not matched
+	  by more specific barebox drivers by deasserting reset lines, muxing
+	  pins and/or enabling clocks. Peripherals set up by this can then
+	  be accessed over /dev/mem or used from kernels which still depend
+	  on bootloader for initialization.
+
 endmenu
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index 4d92465a1e5e..36743e6ae6a3 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -8,3 +8,4 @@ obj-$(CONFIG_STATE_DRV)		+= state.o
 obj-$(CONFIG_DEV_MEM)		+= mem.o
 obj-$(CONFIG_UBOOTVAR)		+= ubootvar.o
 obj-$(CONFIG_ACPI_TEST)		+= acpi-test.o
+obj-$(CONFIG_STARFIVE_PWRSEQ)	+= starfive-pwrseq.o
diff --git a/drivers/misc/starfive-pwrseq.c b/drivers/misc/starfive-pwrseq.c
new file mode 100644
index 000000000000..6236547bc568
--- /dev/null
+++ b/drivers/misc/starfive-pwrseq.c
@@ -0,0 +1,92 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2021 Ahmad Fatoum, Pengutronix
+ */
+
+#include <driver.h>
+#include <init.h>
+#include <linux/reset.h>
+#include <dt-bindings/clock/starfive-jh7100.h>
+#include <linux/clk.h>
+
+struct starfive_pwrseq {
+	const char **names;
+};
+
+static int starfive_pwrseq_probe(struct device_d *dev)
+{
+	int ret;
+
+	ret = device_reset_all(dev);
+	if (ret)
+		return ret;
+
+	return of_platform_populate(dev->device_node, NULL, dev);
+}
+
+static struct of_device_id starfive_pwrseq_dt_ids[] = {
+	{ .compatible = "starfive,axi-dma" },
+	{ .compatible = "cm,cm521-vpu" },
+	{ .compatible = "starfive,vic-sec" },
+	{ .compatible = "sfc,tempsensor" },
+	{ .compatible = "cm,codaj12-jpu-1" },
+	{ .compatible = "cdns,xrp" },
+	{ .compatible = "starfive,nne50" },
+	{ .compatible = "nvidia,nvdla_os_initial" },
+	{ .compatible = "starfive,spi2ahb" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d starfive_pwrseq_driver = {
+	.name	= "starfive_pwrseq",
+	.probe	= starfive_pwrseq_probe,
+	.of_compatible = starfive_pwrseq_dt_ids,
+};
+
+static const int clks[] = {
+	CLK_VDEC_AXI, CLK_VDECBRG_MAIN, CLK_VDEC_BCLK, CLK_VDEC_CCLK, CLK_VDEC_APB,
+	CLK_JPEG_AXI, CLK_JPEG_CCLK, CLK_JPEG_APB,
+	CLK_DLA_AXI, CLK_DLANOC_AXI, CLK_DLA_APB, CLK_NNENOC_AXI, CLK_DLASLV_AXI,
+	CLK_VENC_AXI, CLK_VENCBRG_MAIN, CLK_VENC_BCLK, CLK_VENC_CCLK, CLK_VENC_APB,
+	CLK_SGDMA1P_AXI,
+	CLK_DMA2PNOC_AXI, CLK_SGDMA2P_AXI, CLK_SGDMA2P_AHB,
+	CLK_SDIO0_AHB,
+	CLK_SDIO1_AHB,
+	CLK_SPI2AHB_AHB, CLK_SPI2AHB_CORE,
+	CLK_EZMASTER_AHB,
+	CLK_SEC_AHB, CLK_AES, CLK_SHA, CLK_PKA,
+	CLK_UART0_APB, CLK_UART0_CORE,
+	CLK_UART1_APB, CLK_UART1_CORE,
+	CLK_UART2_APB, CLK_UART2_CORE,
+	CLK_UART3_APB, CLK_UART3_CORE,
+	CLK_SPI0_APB, CLK_SPI0_CORE,
+	CLK_SPI1_APB, CLK_SPI1_CORE,
+	CLK_SPI2_APB, CLK_SPI2_CORE,
+	CLK_SPI3_APB, CLK_SPI3_CORE,
+	CLK_I2C0_APB, CLK_I2C0_CORE,
+	CLK_I2C1_APB, CLK_I2C1_CORE,
+	CLK_I2C2_APB, CLK_I2C2_CORE,
+	CLK_I2C3_APB, CLK_I2C3_CORE,
+	CLK_VP6INTC_APB,
+	CLK_TEMP_APB, CLK_TEMP_SENSE,
+
+	CLK_END
+};
+
+static int __init starfive_pwrseq_driver_register(void)
+{
+	struct of_phandle_args clkspec;
+	int i;
+
+	clkspec.args_count = 1;
+	clkspec.np = of_find_compatible_node(NULL, NULL, "starfive,jh7100-clkgen");
+	if (clkspec.np) {
+		for (i = 0; clks[i] != CLK_END; i++) {
+			clkspec.args[0] = clks[i];
+			clk_enable(of_clk_get_from_provider(&clkspec));
+		}
+	}
+
+	return platform_driver_register(&starfive_pwrseq_driver);
+}
+device_initcall(starfive_pwrseq_driver_register);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

