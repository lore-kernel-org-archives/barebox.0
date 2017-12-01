Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKkp9-0003ye-Ny
 for barebox@lists.infradead.org; Fri, 01 Dec 2017 12:53:50 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Fri,  1 Dec 2017 13:52:50 +0100
Message-Id: <20171201125251.23520-3-linux@rempel-privat.de>
In-Reply-To: <20171201125251.23520-1-linux@rempel-privat.de>
References: <20171201125251.23520-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 3/4] MIPS: add support for DPTechnics DPT-Module v1
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

This product can be found here:
https://dptechnics.com/en/products/dpt-module-v1.html

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/configs/dptechnics-dpt-module_defconfig | 89 +++++++++++++++++++++++
 arch/mips/dts/ar9331-dptechnics-dpt-module.dts    | 31 ++++++++
 2 files changed, 120 insertions(+)
 create mode 100644 arch/mips/configs/dptechnics-dpt-module_defconfig
 create mode 100644 arch/mips/dts/ar9331-dptechnics-dpt-module.dts

diff --git a/arch/mips/configs/dptechnics-dpt-module_defconfig b/arch/mips/configs/dptechnics-dpt-module_defconfig
new file mode 100644
index 000000000..dbad08fe6
--- /dev/null
+++ b/arch/mips/configs/dptechnics-dpt-module_defconfig
@@ -0,0 +1,89 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="ar9331-dptechnics-dpt-module"
+CONFIG_MACH_MIPS_ATH79=y
+CONFIG_BOARC_QCA_AR9331_GENERIC=y
+CONFIG_PBL_IMAGE=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x82000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_CONSOLE_RATP=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_RESET_SOURCE=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_HOST=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_WD=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_SNTP=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
+CONFIG_DRIVER_SERIAL_AR933X=y
+CONFIG_DRIVER_NET_AG71XX=y
+CONFIG_AR8327N_PHY=y
+CONFIG_AT803X_PHY=y
+CONFIG_MDIO_BITBANG=y
+CONFIG_MDIO_GPIO=y
+CONFIG_DRIVER_SPI_ATH79=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_M25P80=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_AR9344=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_RATP=y
+CONFIG_DIGEST_SHA224_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
new file mode 100644
index 000000000..39eb36600
--- /dev/null
+++ b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
@@ -0,0 +1,31 @@
+#include <mips/qca/ar9331_dpt_module.dts>
+#include "ar9331.dtsi"
+
+/ {
+	aliases {
+		spiflash = &spiflash;
+	};
+
+	chosen {
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &spiflash, "partname:barebox-environment";
+		};
+	};
+};
+
+&spiflash {
+	partition@0 {
+		label = "barebox";
+		reg = <0 0x80000>;
+	};
+
+	partition@80000 {
+		label = "barebox-environment";
+		reg = <0x80000 0x10000>;
+	};
+};
+
+&mac0 {
+	status = "okay";
+};
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
