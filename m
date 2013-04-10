Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPr7U-0008Jm-Qw
 for barebox@lists.infradead.org; Wed, 10 Apr 2013 09:15:13 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 10 Apr 2013 11:14:48 +0200
Message-Id: <1365585295-2420-6-git-send-email-dev@lynxeye.de>
In-Reply-To: <1365585295-2420-1-git-send-email-dev@lynxeye.de>
References: <1365585295-2420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v4 06/13] tegra: switch to DT only
To: barebox@lists.infradead.org

We will follow the Linux kernel and go devicetree only for Tegra. This
doesn't prevent specific code for certain boards, but always requires a
valid DTB for all boards.

Also regenerate the AC100 defconfig to reflect this change.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
v4: unbrick ac100 defconfig
---
 arch/arm/Kconfig                         |  3 +++
 arch/arm/configs/toshiba_ac100_defconfig |  6 ++++--
 arch/arm/dts/tegra20-paz00.dts           | 12 ++++++++++++
 arch/arm/dts/tegra20.dtsi                |  5 +++++
 4 files changed, 24 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/dts/tegra20-paz00.dts
 create mode 100644 arch/arm/dts/tegra20.dtsi

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index befed5d..fdd803e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -139,6 +139,9 @@ config ARCH_TEGRA
 	bool "NVIDIA Tegra"
 	select CPU_V7
 	select HAS_DEBUG_LL
+	select BUILTIN_DTB
+	select OFDEVICE
+	select OFTREE
 
 config ARCH_ZYNQ
 	bool "Xilinx Zynq-based boards"
diff --git a/arch/arm/configs/toshiba_ac100_defconfig b/arch/arm/configs/toshiba_ac100_defconfig
index 065189d..6f7011b 100644
--- a/arch/arm/configs/toshiba_ac100_defconfig
+++ b/arch/arm/configs/toshiba_ac100_defconfig
@@ -1,3 +1,4 @@
+CONFIG_BUILTIN_DTB_NAME="tegra20-paz00"
 CONFIG_ARCH_TEGRA=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0x01000000
@@ -14,6 +15,7 @@ CONFIG_ENABLE_DEVICE_NOISE=y
 CONFIG_CMD_SLEEP=y
 # CONFIG_CMD_TRUE is not set
 # CONFIG_CMD_FALSE is not set
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
 CONFIG_CMD_LOADS=y
@@ -23,11 +25,10 @@ CONFIG_CMD_SHA1SUM=y
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
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_NET_USB=y
@@ -36,4 +37,5 @@ CONFIG_NET_USB_ASIX=y
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
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
