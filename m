Delivery-date: Sat, 08 Jan 2022 18:17:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FLG-00EchF-FY
	for lore@lore.pengutronix.de; Sat, 08 Jan 2022 18:17:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FLE-00057y-Tf
	for lore@pengutronix.de; Sat, 08 Jan 2022 18:17:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W1gwndg/ztbo0BB87IFnyt2P/b+5L2B+cbczs+bsPpU=; b=Hm7IH0aITwJQip
	y7BVJ0eFMzVTekyA2mOvrKzbtQHV3kFcNp4qmxOJ+u7KqFtpRFJ/Da3S0ebEwy/x1LM+Z3240Ei4t
	Zhql4Wzvd0+IXVVcCKICW52B8tgkKSwOCVtZAcKe5h/M2Hel6WCpYw9ODDGgaJZ7cq/mBpHqFQFvq
	YRL2BeeS5vsxfDKJQUxKqogEQJVXS838V7NphfChJFnrttyfWdmj6NZOVmK+pQ9zsE4WKE6KuQSsN
	ccOENpqoWlc+9xazWeYl4qKPjtJedUbMaC7sdTGiL8OXq7rQu3IRLVysomUiIpPTaP1UqFPeVmBOH
	G7iV11Sdn0dJ3vH6WjAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6FJw-006juD-3K; Sat, 08 Jan 2022 17:16:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6FJP-006jeq-Nq
 for barebox@lists.infradead.org; Sat, 08 Jan 2022 17:15:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJO-0004Au-Bn; Sat, 08 Jan 2022 18:15:26 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJN-002Smb-F9; Sat, 08 Jan 2022 18:15:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat,  8 Jan 2022 18:15:19 +0100
Message-Id: <20220108171524.587144-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220108171524.587144-1-a.fatoum@pengutronix.de>
References: <20220108171524.587144-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_091527_834044_FBED4ECD 
X-CRM114-Status: GOOD (  19.00  )
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
Subject: [PATCH 4/9] RISC-V: virt: riscvemu: repurpose 64k low RAM for
 state/environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

TinyEMU's RISC-V machine emulates a 64K SRAM at address 0.
First 4K page is unused, then a maximum of 0x40 bytes for boot ROM
(trampoline that passes FDT), then the FDT. The remainder of the 64K is
unused. Make use of that space for storing state and environment.

We start the mtd-ram at 0x1000 to easily allow for a faulting zero page.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/boards/riscvemu/Makefile           |   1 +
 arch/riscv/boards/riscvemu/board.c            |   9 ++
 .../riscv/boards/riscvemu/overlay-of-sram.dts | 119 ++++++++++++++++++
 arch/riscv/configs/virt32_defconfig           |   1 +
 arch/riscv/configs/virt64_defconfig           |   1 +
 5 files changed, 131 insertions(+)
 create mode 100644 arch/riscv/boards/riscvemu/overlay-of-sram.dts

diff --git a/arch/riscv/boards/riscvemu/Makefile b/arch/riscv/boards/riscvemu/Makefile
index ad283446eaf1..75f52ada8f37 100644
--- a/arch/riscv/boards/riscvemu/Makefile
+++ b/arch/riscv/boards/riscvemu/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += board.o
+obj-y += overlay-of-sram.dtb.o
diff --git a/arch/riscv/boards/riscvemu/board.c b/arch/riscv/boards/riscvemu/board.c
index 73d787a8335a..60c93716a2bc 100644
--- a/arch/riscv/boards/riscvemu/board.c
+++ b/arch/riscv/boards/riscvemu/board.c
@@ -7,6 +7,7 @@
 #include <driver.h>
 #include <poweroff.h>
 #include <restart.h>
+#include <deep-probe.h>
 #include <asm/system.h>
 #include <asm/barebox-riscv.h>
 
@@ -28,12 +29,19 @@ static void __noreturn riscvemu_restart(struct restart_handler *rst)
 	priv->restart(riscv_hartid(), barebox_riscv_boot_dtb());
 }
 
+extern char __dtb_overlay_of_sram_start[];
+
 static int riscvemu_probe(struct device_d *dev)
 {
 	struct device_node *of_chosen;
+	struct device_node *overlay;
 	struct riscvemu_priv *priv;
 	u64 start;
 
+	overlay = of_unflatten_dtb(__dtb_overlay_of_sram_start, INT_MAX);
+	of_overlay_apply_tree(dev->device_node, overlay);
+	/* of_probe() will happen later at of_populate_initcall */
+
 	of_chosen = of_find_node_by_path("/chosen");
 
 	if (of_property_read_u64(of_chosen, "riscv,kernel-start", &start))
@@ -52,6 +60,7 @@ static const struct of_device_id riscvemu_of_match[] = {
 	{ .compatible = "ucbbar,riscvemu-bar_dev" },
 	{ /* sentinel */ },
 };
+BAREBOX_DEEP_PROBE_ENABLE(riscvemu_of_match);
 
 static struct driver_d riscvemu_board_driver = {
 	.name = "board-riscvemu",
diff --git a/arch/riscv/boards/riscvemu/overlay-of-sram.dts b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
new file mode 100644
index 000000000000..839887fef24c
--- /dev/null
+++ b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
@@ -0,0 +1,119 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+/dts-v1/;
+/plugin/;
+
+/ {
+	fragment@0 {
+		target-path = "/soc";
+		__overlay__ {
+			#address-cells = <2>;
+			#size-cells = <2>;
+			sram@0 {
+				compatible = "mtd-ram";
+				reg = <0 0x1000 0 0x10000>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				partitions {
+					compatible = "fixed-partitions";
+					#address-cells = <1>;
+					#size-cells = <1>;
+
+					partition@0 {
+						label = "bootrom";
+						reg = <0x0 0x40>;
+					};
+
+					partition@40 {
+						label = "fdt";
+						reg = <0x40 0x1fc0>;
+					};
+
+					environment_sram: partition@3000 {
+						label = "barebox-environment";
+						reg = <0x3000 0xb000>;
+					};
+
+					backend_state_sram: partition@e000 {
+						label = "barebox-state";
+						reg = <0xe000 0x1000>;
+					};
+				};
+			};
+		};
+	};
+
+	fragment@2 {
+		target-path = "/chosen";
+		__overlay__ {
+			environment {
+				compatible = "barebox,environment";
+				device-path = "/soc/sram@0/partitions/partition@3000";
+			};
+		};
+	};
+
+	fragment@3 {
+		target-path = "/";
+		__overlay__ {
+			aliases {
+				state = "/state";
+			};
+
+			state {
+				#address-cells = <1>;
+				#size-cells = <1>;
+				compatible = "barebox,state";
+				magic = <0x290cf8c6>;
+				backend-type = "raw";
+				backend = <&backend_state_sram>;
+				backend-stridesize = <64>;
+
+				bootstate {
+					#address-cells = <1>;
+					#size-cells = <1>;
+
+					system0 {
+						#address-cells = <1>;
+						#size-cells = <1>;
+
+						remaining_attempts@0 {
+							reg = <0x0 0x4>;
+							type = "uint32";
+							default = <3>;
+						};
+
+						priority@4 {
+							reg = <0x4 0x4>;
+							type = "uint32";
+							default = <20>;
+						};
+					};
+
+					system1 {
+						#address-cells = <1>;
+						#size-cells = <1>;
+
+						remaining_attempts@8 {
+							reg = <0x8 0x4>;
+							type = "uint32";
+							default = <3>;
+						};
+
+						priority@c {
+							reg = <0xc 0x4>;
+							type = "uint32";
+							default = <21>;
+						};
+					};
+
+					last_chosen@10 {
+						reg = <0x10 0x4>;
+						type = "uint32";
+					};
+				};
+			};
+		};
+	};
+};
diff --git a/arch/riscv/configs/virt32_defconfig b/arch/riscv/configs/virt32_defconfig
index bfea7771efd8..28a20673e9b7 100644
--- a/arch/riscv/configs/virt32_defconfig
+++ b/arch/riscv/configs/virt32_defconfig
@@ -88,6 +88,7 @@ CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_CONCAT=y
 CONFIG_MTD_M25P80=y
+CONFIG_MTD_MTDRAM=y
 CONFIG_DRIVER_CFI=y
 CONFIG_DRIVER_CFI_BANK_WIDTH_8=y
 CONFIG_DISK=y
diff --git a/arch/riscv/configs/virt64_defconfig b/arch/riscv/configs/virt64_defconfig
index 2ddc174b8a65..17588f61fa35 100644
--- a/arch/riscv/configs/virt64_defconfig
+++ b/arch/riscv/configs/virt64_defconfig
@@ -89,6 +89,7 @@ CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_CONCAT=y
 CONFIG_MTD_M25P80=y
+CONFIG_MTD_MTDRAM=y
 CONFIG_DRIVER_CFI=y
 CONFIG_DRIVER_CFI_BANK_WIDTH_8=y
 CONFIG_DISK=y
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

