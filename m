Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTffL-0004WI-HO
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 03:45:11 +0000
Received: by mail-pl0-x243.google.com with SMTP id a7-v6so4644083plp.3
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 20:44:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 20:44:09 -0700
Message-Id: <20180615034409.22180-11-andrew.smirnov@gmail.com>
In-Reply-To: <20180615034409.22180-1-andrew.smirnov@gmail.com>
References: <20180615034409.22180-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v7 10/10] ARM: Introduce imx_v8_defconfig
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Similar to imx_v7_defconfig, add imx_v8_defconfig as a default
configuration encompassing all ARMv8 based i.MX SoCs.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/configs/imx_v8_defconfig | 107 ++++++++++++++++++++++++++++++
 1 file changed, 107 insertions(+)
 create mode 100644 arch/arm/configs/imx_v8_defconfig

diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
new file mode 100644
index 000000000..cc41f4975
--- /dev/null
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -0,0 +1,107 @@
+CONFIG_ARCH_IMX=y
+CONFIG_IMX_MULTI_BOARDS=y
+CONFIG_MACH_NXP_IMX8MQ_EVK=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BLSPEC=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_RESET_SOURCE=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_REGULATOR=y
+CONFIG_CMD_MMC_EXTCSD=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_WD=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_DRIVER_SPI_IMX=y
+CONFIG_I2C=y
+CONFIG_I2C_IMX=y
+CONFIG_MCI=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_EEPROM_AT25=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_IMX=y
+CONFIG_NVMEM=y
+CONFIG_IMX_OCOTP=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_ZLIB=y
+CONFIG_LZO_DECOMPRESS=y
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
