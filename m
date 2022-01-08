Delivery-date: Sat, 08 Jan 2022 18:17:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FKx-00EcfP-Fw
	for lore@lore.pengutronix.de; Sat, 08 Jan 2022 18:17:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FKv-00050p-9Y
	for lore@pengutronix.de; Sat, 08 Jan 2022 18:17:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kvoJnR0CVDGYp1SXMaZoS3dPkphTcgkR02/pI5j+3kQ=; b=fx1D1pcmkNbzjE
	aiolDCxfTbLjL0IYDAAfUmKEzKD4f2rCItlsMSjx0idLHanDgqABACCl3f09GlzzkGtISTAueP43t
	cSGxlfz0w/2qfwW9IitvwUMZ1VJDWWFInKF4s2JchZD2UWAL/OcCkXdBtN0B5bY1lr/JLSH3wFHTg
	1/2Gz+dBsrITYMR7RCDMnxc8jWphLwHGeB5rt+eDcinicCiA55qmvrFQGNfrC0CxBXpvodcP2j0Cq
	rOqhzMNf/nZ5K/bJa/GUo/zvKGX5PWfNZkVSXQB8l6TpfM47Vo3SPx1+4tWdmLJt2/EDlqTSob6QF
	M5sTB/w5m8FEykKp1fgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6FJf-006jlF-0t; Sat, 08 Jan 2022 17:15:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6FJP-006jeo-IR
 for barebox@lists.infradead.org; Sat, 08 Jan 2022 17:15:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJO-0004Ar-9M; Sat, 08 Jan 2022 18:15:26 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJN-002SmV-E4; Sat, 08 Jan 2022 18:15:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat,  8 Jan 2022 18:15:17 +0100
Message-Id: <20220108171524.587144-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220108171524.587144-1-a.fatoum@pengutronix.de>
References: <20220108171524.587144-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_091527_647668_49F4B6AE 
X-CRM114-Status: GOOD (  21.13  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] power: reset: add RISC-V/UC Berkely HTIF poweroff driver
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have a driver in board code and device tree passed by
emulator already has a node for it. Match against it and create a proper
driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/boards/riscvemu/board.c  | 15 ----------
 arch/riscv/configs/virt32_defconfig |  1 +
 arch/riscv/configs/virt64_defconfig |  1 +
 arch/riscv/include/asm/htif.h       | 31 +++++++++++++++++++
 drivers/power/reset/Kconfig         |  7 +++++
 drivers/power/reset/Makefile        |  1 +
 drivers/power/reset/htif-poweroff.c | 46 +++++++++++++++++++++++++++++
 7 files changed, 87 insertions(+), 15 deletions(-)
 create mode 100644 arch/riscv/include/asm/htif.h
 create mode 100644 drivers/power/reset/htif-poweroff.c

diff --git a/arch/riscv/boards/riscvemu/board.c b/arch/riscv/boards/riscvemu/board.c
index 7dbf9afe4c2d..73d787a8335a 100644
--- a/arch/riscv/boards/riscvemu/board.c
+++ b/arch/riscv/boards/riscvemu/board.c
@@ -16,18 +16,6 @@ struct riscvemu_priv {
 
 };
 
-#define HTIF_BASE_ADDR		IOMEM(0x40008000)
-#define HTIF_TOHOST_LOW		(HTIF_BASE_ADDR + 0)
-#define HTIF_TOHOST_HIGH	(HTIF_BASE_ADDR + 4)
-
-static void __noreturn riscvemu_poweroff(struct poweroff_handler *pwr)
-{
-	writel(1, HTIF_TOHOST_LOW);
-	writel(0, HTIF_TOHOST_HIGH);
-
-	__builtin_unreachable();
-}
-
 static void __noreturn riscvemu_restart(struct restart_handler *rst)
 {
 	struct riscvemu_priv *priv = container_of(rst, struct riscvemu_priv, rst);
@@ -46,9 +34,6 @@ static int riscvemu_probe(struct device_d *dev)
 	struct riscvemu_priv *priv;
 	u64 start;
 
-	if (of_find_compatible_node(NULL, NULL, "ucb,htif0"))
-		poweroff_handler_register_fn(riscvemu_poweroff);
-
 	of_chosen = of_find_node_by_path("/chosen");
 
 	if (of_property_read_u64(of_chosen, "riscv,kernel-start", &start))
diff --git a/arch/riscv/configs/virt32_defconfig b/arch/riscv/configs/virt32_defconfig
index ea7d1de8be68..bfea7771efd8 100644
--- a/arch/riscv/configs/virt32_defconfig
+++ b/arch/riscv/configs/virt32_defconfig
@@ -109,6 +109,7 @@ CONFIG_BLK_DEV_NVME=y
 CONFIG_SYSCON_REBOOT_MODE=y
 CONFIG_POWER_RESET_SYSCON=y
 CONFIG_POWER_RESET_SYSCON_POWEROFF=y
+CONFIG_POWER_RESET_HTIF_POWEROFF=y
 CONFIG_VIRTIO_MMIO=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
diff --git a/arch/riscv/configs/virt64_defconfig b/arch/riscv/configs/virt64_defconfig
index b1c7a6712ac3..2ddc174b8a65 100644
--- a/arch/riscv/configs/virt64_defconfig
+++ b/arch/riscv/configs/virt64_defconfig
@@ -110,6 +110,7 @@ CONFIG_BLK_DEV_NVME=y
 CONFIG_SYSCON_REBOOT_MODE=y
 CONFIG_POWER_RESET_SYSCON=y
 CONFIG_POWER_RESET_SYSCON_POWEROFF=y
+CONFIG_POWER_RESET_HTIF_POWEROFF=y
 CONFIG_VIRTIO_MMIO=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
diff --git a/arch/riscv/include/asm/htif.h b/arch/riscv/include/asm/htif.h
new file mode 100644
index 000000000000..7312f09d2e6e
--- /dev/null
+++ b/arch/riscv/include/asm/htif.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
+ */
+
+#ifndef __ASM_HTIF_LL__
+#define __ASM_HTIF_LL__
+
+#define HTIF_DEFAULT_BASE_ADDR		0x40008000
+
+#define HTIF_DEV_SYSCALL		0
+#define		HTIF_CMD_SYSCALL	0
+
+#ifndef __ASSEMBLY__
+
+#include <linux/types.h>
+#include <io-64-nonatomic-lo-hi.h>
+
+static inline void __htif_tohost(void __iomem *htif, u8 device, u8 command, u64 arg)
+{
+	writeq(((u64)device << 56) | ((u64)command << 48) | arg, htif);
+}
+
+static inline void htif_tohost(u8 device, u8 command, u64 arg)
+{
+	__htif_tohost(IOMEM(HTIF_DEFAULT_BASE_ADDR), device, command, arg);
+}
+
+#endif
+
+#endif
diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index e4151d8bc608..968d4b8ba47d 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -54,3 +54,10 @@ config POWER_RESET_GPIO_RESTART
 	  This driver supports restarting your board via a GPIO line.
 	  If your board needs a GPIO high/low to restart, say Y and
 	  create a binding in your devicetree.
+
+config POWER_RESET_HTIF_POWEROFF
+	bool "HTIF poweroff driver"
+	depends on RISCV
+	help
+	  Adds poweroff support via the syscall device on systems
+	  supporting the UC Berkely Host/Target Interface (HTIF).
diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
index 10d6f2a41e22..c581382be86d 100644
--- a/drivers/power/reset/Makefile
+++ b/drivers/power/reset/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_POWER_RESET_SYSCON) += syscon-reboot.o
 obj-$(CONFIG_POWER_RESET_SYSCON_POWEROFF) += syscon-poweroff.o
 obj-$(CONFIG_POWER_RESET_GPIO) += gpio-poweroff.o
 obj-$(CONFIG_POWER_RESET_GPIO_RESTART) += gpio-restart.o
+obj-$(CONFIG_POWER_RESET_HTIF_POWEROFF) += htif-poweroff.o
diff --git a/drivers/power/reset/htif-poweroff.c b/drivers/power/reset/htif-poweroff.c
new file mode 100644
index 000000000000..8df060d5079f
--- /dev/null
+++ b/drivers/power/reset/htif-poweroff.c
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <poweroff.h>
+#include <asm/htif.h>
+
+static void __iomem *htif = IOMEM(HTIF_DEFAULT_BASE_ADDR);
+
+static void __noreturn riscvemu_poweroff(struct poweroff_handler *pwr)
+{
+	shutdown_barebox();
+
+	__htif_tohost(htif, HTIF_DEV_SYSCALL, 0, 1);
+
+	__builtin_unreachable();
+}
+
+static int htif_poweroff_probe(struct device_d *dev)
+{
+	struct resource *iores;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (!IS_ERR(iores))
+		htif = IOMEM(iores->start);
+	else if (PTR_ERR(iores) != -ENOENT)
+		return PTR_ERR(iores);
+
+	return poweroff_handler_register_fn(riscvemu_poweroff);
+}
+
+
+static const struct of_device_id htif_poweroff_of_match[] = {
+	{ .compatible = "ucb,htif0" },
+	{}
+};
+
+static struct driver_d htif_poweroff_driver = {
+	.name = "htif-poweroff",
+	.of_compatible = htif_poweroff_of_match,
+	.probe = htif_poweroff_probe,
+};
+coredevice_platform_driver(htif_poweroff_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

