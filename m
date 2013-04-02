Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UMua7-00071h-0b
 for barebox@lists.infradead.org; Tue, 02 Apr 2013 06:20:31 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  2 Apr 2013 08:19:05 +0200
Message-Id: <1364883552-6563-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1364883552-6563-1-git-send-email-dev@lynxeye.de>
References: <1364883552-6563-1-git-send-email-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 03/10] tegra: switch to DT only
To: barebox@lists.infradead.org

We will follow the Linux kernel and go devicetree only for Tegra. This
doesn't prevent specific code for certain boards, but always requires a
valid DTB for all boards.

Also regenerate the AC100 defconfig to reflect this change.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/Kconfig                         |  2 ++
 arch/arm/configs/toshiba_ac100_defconfig |  9 ++++++---
 arch/arm/dts/tegra20-paz00.dts           | 12 ++++++++++++
 arch/arm/dts/tegra20.dtsi                |  5 +++++
 4 files changed, 25 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/dts/tegra20-paz00.dts
 create mode 100644 arch/arm/dts/tegra20.dtsi

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 7d42826..8f37d12 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -139,6 +139,8 @@ config ARCH_TEGRA
 	bool "Nvidia Tegra"
 	select CPU_V7
 	select HAS_DEBUG_LL
+	select BUILTIN_DTB
+	select OFTREE
 
 config ARCH_ZYNQ
 	bool "Xilinx Zynq-based boards"
diff --git a/arch/arm/configs/toshiba_ac100_defconfig b/arch/arm/configs/toshiba_ac100_defconfig
index 065189d..b44fd26 100644
--- a/arch/arm/configs/toshiba_ac100_defconfig
+++ b/arch/arm/configs/toshiba_ac100_defconfig
@@ -1,4 +1,5 @@
-CONFIG_ARCH_TEGRA=y
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="tegra20-paz00"
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0x01000000
 CONFIG_BROKEN=y
@@ -14,6 +15,7 @@ CONFIG_ENABLE_DEVICE_NOISE=y
 CONFIG_CMD_SLEEP=y
 # CONFIG_CMD_TRUE is not set
 # CONFIG_CMD_FALSE is not set
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
 CONFIG_CMD_LOADS=y
@@ -23,12 +25,12 @@ CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_OFDEVICE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
@@ -36,4 +38,5 @@ CONFIG_NET_USB_ASIX=y
 CONFIG_USB=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
diff --git a/arch/arm/dts/tegra20-paz00.dts b/arch/arm/dts/tegra20-paz00.dts
new file mode 100644
index 0000000..09ccb8b
--- /dev/null
+++ b/arch/arm/dts/tegra20-paz00.dts
@@ -0,0 +1,12 @@
+/dts-v1/;
+
+/include/ "tegra20.dtsi"
+
+/ {
+	model = "Toshiba AC100 / Dynabook AZ";
+	compatible = "compal,paz00", "nvidia,tegra20";
+
+	memory {
+		reg = <0x00000000 0x20000000>;
+	};
+};
diff --git a/arch/arm/dts/tegra20.dtsi b/arch/arm/dts/tegra20.dtsi
new file mode 100644
index 0000000..9f8860b
--- /dev/null
+++ b/arch/arm/dts/tegra20.dtsi
@@ -0,0 +1,5 @@
+/include/ "skeleton.dtsi"
+
+/ {
+	compatible = "nvidia,tegra20";
+};
-- 
1.8.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
