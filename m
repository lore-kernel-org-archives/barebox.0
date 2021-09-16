Delivery-date: Thu, 16 Sep 2021 11:37:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQnpF-0006d3-4K
	for lore@lore.pengutronix.de; Thu, 16 Sep 2021 11:37:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQnpE-0007Ot-38
	for lore@pengutronix.de; Thu, 16 Sep 2021 11:37:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tMU6TDZKVVPBxJDN4OcbAJxyie9Ak3ZTgFRGRIAER2A=; b=BHRErfKwby7Ugy
	/CgirNgRKDPjveB85tLgPGe/fZpnzrzvEZmfGYFF9gSwb/efV9m4wMKBwXhUS2hK/3cqPNm+/Ucxc
	lWTkpd8fHlVcn34YTDmbrW8zy55q7VYjNd+yH96UE9NexTW2Z3opBgumA45P/yT5+Hhb/gtLynVSK
	eDZmbIoPBrFx2epf0PEKiSq3DtMXgchWTODH1x5mk92WYbXqGUhrt83kGejjFR0BO0AioFghJsU1v
	/bKrrCsXFRCRQeV6VnRZcVl6llEgCkXMVp7NmKDinn0EBoIGGhPmFtMyOSI8NwxjO05SIY+F2LBUR
	jJ4J48s3JncOqmOzhFwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQnny-00Aiku-1P; Thu, 16 Sep 2021 09:35:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQnnr-00Aij4-MX
 for barebox@lists.infradead.org; Thu, 16 Sep 2021 09:35:38 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mQnnq-0006tk-Gn; Thu, 16 Sep 2021 11:35:34 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mQnnq-0005jQ-8M; Thu, 16 Sep 2021 11:35:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 16 Sep 2021 11:35:32 +0200
Message-Id: <20210916093532.21699-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_023535_809403_6FE58A5D 
X-CRM114-Status: GOOD (  20.67  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] RISC-V: virt: support poweroff/restart on tinyemu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

QEMU Virt on RISC-V has syscon-reboot and syscon-poweroff compatible
devices and describes them in the device tree. TinyEMU's Virt machine
is different and has a HTIF based poweroff and no dedicated reset
mechanism. Add board support for the HTIF poweroff and use a poor man's
reset that jumps back to the reset vector.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig.socs             |  8 +++
 arch/riscv/boards/Makefile          |  1 +
 arch/riscv/boards/riscvemu/Makefile |  1 +
 arch/riscv/boards/riscvemu/board.c  | 76 +++++++++++++++++++++++++++++
 4 files changed, 86 insertions(+)
 create mode 100644 arch/riscv/boards/riscvemu/Makefile
 create mode 100644 arch/riscv/boards/riscvemu/board.c

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 221ea133d4d0..1bd9b4d579d9 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -22,6 +22,14 @@ config SOC_VIRT
 	  Generates an image tht can be be booted by QEMU. The image is called
 	  barebox-dt-2nd.img
 
+config BOARD_RISCVEMU
+	depends on SOC_VIRT
+	bool "TinyEMU Virt Machine (riscvemu)"
+	default y
+	help
+	  TinyEMU's Virt machine differs from QEMU in poweroff and restart
+	  mechanisms. This adds the necessary support.
+
 config CPU_SIFIVE
 	bool
 	select HAS_CACHE
diff --git a/arch/riscv/boards/Makefile b/arch/riscv/boards/Makefile
index cb28a25d8bc8..99630266d126 100644
--- a/arch/riscv/boards/Makefile
+++ b/arch/riscv/boards/Makefile
@@ -2,3 +2,4 @@
 obj-$(CONFIG_BOARD_ERIZO_GENERIC)	+= erizo/
 obj-$(CONFIG_BOARD_HIFIVE)		+= hifive/
 obj-$(CONFIG_BOARD_BEAGLEV)		+= beaglev/
+obj-$(CONFIG_BOARD_RISCVEMU)		+= riscvemu/
diff --git a/arch/riscv/boards/riscvemu/Makefile b/arch/riscv/boards/riscvemu/Makefile
new file mode 100644
index 000000000000..dcfc2937d325
--- /dev/null
+++ b/arch/riscv/boards/riscvemu/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/riscv/boards/riscvemu/board.c b/arch/riscv/boards/riscvemu/board.c
new file mode 100644
index 000000000000..7dbf9afe4c2d
--- /dev/null
+++ b/arch/riscv/boards/riscvemu/board.c
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <poweroff.h>
+#include <restart.h>
+#include <asm/system.h>
+#include <asm/barebox-riscv.h>
+
+struct riscvemu_priv {
+	struct restart_handler rst;
+	void __noreturn (*restart)(unsigned long, void *);
+
+};
+
+#define HTIF_BASE_ADDR		IOMEM(0x40008000)
+#define HTIF_TOHOST_LOW		(HTIF_BASE_ADDR + 0)
+#define HTIF_TOHOST_HIGH	(HTIF_BASE_ADDR + 4)
+
+static void __noreturn riscvemu_poweroff(struct poweroff_handler *pwr)
+{
+	writel(1, HTIF_TOHOST_LOW);
+	writel(0, HTIF_TOHOST_HIGH);
+
+	__builtin_unreachable();
+}
+
+static void __noreturn riscvemu_restart(struct restart_handler *rst)
+{
+	struct riscvemu_priv *priv = container_of(rst, struct riscvemu_priv, rst);
+
+	/*
+	 * barebox PBL relocates itself to end of RAM early on, so unless
+	 * something explicitly scrubbed the initial PBL, we can jump back to
+	 * the reset vector to "reset".
+	 */
+	priv->restart(riscv_hartid(), barebox_riscv_boot_dtb());
+}
+
+static int riscvemu_probe(struct device_d *dev)
+{
+	struct device_node *of_chosen;
+	struct riscvemu_priv *priv;
+	u64 start;
+
+	if (of_find_compatible_node(NULL, NULL, "ucb,htif0"))
+		poweroff_handler_register_fn(riscvemu_poweroff);
+
+	of_chosen = of_find_node_by_path("/chosen");
+
+	if (of_property_read_u64(of_chosen, "riscv,kernel-start", &start))
+		return 0;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->restart = (void *)(uintptr_t)start;
+	priv->rst.restart = riscvemu_restart;
+	priv->rst.name = "vector";
+
+	return restart_handler_register(&priv->rst);
+}
+
+static const struct of_device_id riscvemu_of_match[] = {
+	{ .compatible = "ucbbar,riscvemu-bar_dev" },
+	{ /* sentinel */ },
+};
+
+static struct driver_d riscvemu_board_driver = {
+	.name = "board-riscvemu",
+	.probe = riscvemu_probe,
+	.of_compatible = riscvemu_of_match,
+};
+device_platform_driver(riscvemu_board_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

