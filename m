Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzb2p-0003RQ-CC
 for barebox@lists.infradead.org; Wed, 13 Jan 2021 07:58:20 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 13 Jan 2021 08:57:57 +0100
Message-Id: <20210113075757.21478-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20210113075757.21478-1-r.czerwinski@pengutronix.de>
References: <20210113075757.21478-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] ARM: qemu: support for state & env via DT overlay
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add support for state and barebox environment by applying an overlay on
top of the qemu generated device tree. If qemu is used with a persistent
flash partition, this allows usage of environments and state across qemu
reboots.
Simple testing can be performed by starting with

  qemu-system-arm -m 256M -M virt -kernel images/barebox-dt-2nd.img -nographic

Storing data, changing into the qemu console via Ctrl-A Ctrl-C, issuing
'system_reset' and Ctrl-A Ctrl-C to get back into the barebox console.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/qemu-virt/.gitignore          |  1 +
 arch/arm/boards/qemu-virt/Makefile            |  1 +
 arch/arm/boards/qemu-virt/board.c             | 34 +++++++
 .../arm/boards/qemu-virt/overlay-of-flash.dts | 97 +++++++++++++++++++
 arch/arm/configs/vexpress_defconfig           |  1 +
 arch/arm/mach-vexpress/Kconfig                |  1 +
 6 files changed, 135 insertions(+)
 create mode 100644 arch/arm/boards/qemu-virt/.gitignore
 create mode 100644 arch/arm/boards/qemu-virt/overlay-of-flash.dts

diff --git a/arch/arm/boards/qemu-virt/.gitignore b/arch/arm/boards/qemu-virt/.gitignore
new file mode 100644
index 0000000000..5d65b54bf1
--- /dev/null
+++ b/arch/arm/boards/qemu-virt/.gitignore
@@ -0,0 +1 @@
+*.dtb*
diff --git a/arch/arm/boards/qemu-virt/Makefile b/arch/arm/boards/qemu-virt/Makefile
index dcfc2937d3..8451c7832d 100644
--- a/arch/arm/boards/qemu-virt/Makefile
+++ b/arch/arm/boards/qemu-virt/Makefile
@@ -1 +1,2 @@
 obj-y += board.o
+obj-y += overlay-of-flash.dtb.o
diff --git a/arch/arm/boards/qemu-virt/board.c b/arch/arm/boards/qemu-virt/board.c
index 3aeea1a017..9d8c90eb5b 100644
--- a/arch/arm/boards/qemu-virt/board.c
+++ b/arch/arm/boards/qemu-virt/board.c
@@ -5,7 +5,41 @@
  */
 #include <common.h>
 #include <init.h>
+#include <of.h>
 #include <asm/system_info.h>
+#include <asm/barebox-arm.h>
+
+extern char __dtb_overlay_of_flash_start[];
+
+static int replace_dtb(void) {
+	struct device_node *overlay;
+	void *fdt;
+	struct device_node *root;
+
+	fdt = barebox_arm_boot_dtb();
+	if (fdt)
+		pr_debug("using boarddata provided DTB\n");
+
+	if (!fdt) {
+		pr_debug("No DTB found\n");
+		return 0;
+	}
+
+	root = of_unflatten_dtb(fdt);
+
+	if (!of_device_is_compatible(root, "linux,dummy-virt")) {
+		of_delete_node(root);
+		return 0;
+	}
+
+	overlay = of_unflatten_dtb(__dtb_overlay_of_flash_start);
+	of_overlay_apply_tree(root, overlay);
+	barebox_register_of(root);
+
+	return 0;
+}
+
+pure_initcall(replace_dtb);
 
 static int virt_probe(struct device_d *dev)
 {
diff --git a/arch/arm/boards/qemu-virt/overlay-of-flash.dts b/arch/arm/boards/qemu-virt/overlay-of-flash.dts
new file mode 100644
index 0000000000..e00dc5d7e2
--- /dev/null
+++ b/arch/arm/boards/qemu-virt/overlay-of-flash.dts
@@ -0,0 +1,97 @@
+/dts-v1/;
+/plugin/;
+/ {
+	fragment@0 {
+		target-path = "/flash@0";
+		__overlay__ {
+			partitions {
+				compatible = "fixed-partitions";
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				partition@0 {
+					label = "initramfs";
+					reg = <0x0 0x3c00000>;
+				};
+
+				environment_flash: partition@3c00000 {
+					label = "barebox-environment";
+					reg = <0x3c00000 0x200000>;
+				};
+
+				backend_state_flash: partition@3e00000 {
+					label = "barebox-state";
+					reg = <0x3e00000 0x200000>;
+				};
+			};
+		};
+	};
+	fragment@1 {
+		target-path="/";
+		__overlay__ {
+			chosen {
+				environment {
+					compatible = "barebox,environment";
+					device-path = "/flash@0/partitions/partition@3c00000";
+				};
+			};
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
+				backend = < &backend_state_flash >;
+				backend-stridesize = <0x200>;
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
diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
index f17af2bb95..760e39b440 100644
--- a/arch/arm/configs/vexpress_defconfig
+++ b/arch/arm/configs/vexpress_defconfig
@@ -50,6 +50,7 @@ CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_OVERLAY=y
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_NET_SMC91111=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
index 9d301f7ae8..557c9653f4 100644
--- a/arch/arm/mach-vexpress/Kconfig
+++ b/arch/arm/mach-vexpress/Kconfig
@@ -11,5 +11,6 @@ config MACH_VIRT
 	bool "QEMU virt"
 	select ARM_PSCI_CLIENT
 	select BOARD_ARM_GENERIC_DT
+	select OF_OVERLAY
 
 endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
