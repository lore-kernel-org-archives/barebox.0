Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RJmQ9-0006DE-MH
	for barebox@lists.infradead.org; Fri, 28 Oct 2011 13:24:30 +0000
Received: by mail-bw0-f49.google.com with SMTP id 11so1504117bke.36
	for <barebox@lists.infradead.org>; Fri, 28 Oct 2011 06:24:29 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Oct 2011 17:24:13 +0400
Message-Id: <1319808253-16693-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1319808253-16693-1-git-send-email-antonynpavlov@gmail.com>
References: <1319808253-16693-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC PATCH V2 6/6] add toshiba_ac100_defconfig
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/configs/toshiba_ac100_defconfig |   49 ++++++++++++++++++++++++++++++
 1 files changed, 49 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/configs/toshiba_ac100_defconfig

diff --git a/arch/arm/configs/toshiba_ac100_defconfig b/arch/arm/configs/toshiba_ac100_defconfig
new file mode 100644
index 0000000..1eb3211
--- /dev/null
+++ b/arch/arm/configs/toshiba_ac100_defconfig
@@ -0,0 +1,49 @@
+CONFIG_ARCH_TEGRA=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_TEXT_BASE=0x01000000
+CONFIG_BROKEN=y
+CONFIG_EXPERIMENTAL=y
+CONFIG_PROMPT="toshiba ac100> "
+CONFIG_LONGHELP=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_POLLER=y
+CONFIG_ENABLE_DEVICE_NOISE=y
+CONFIG_CMD_SLEEP=y
+# CONFIG_CMD_TRUE is not set
+# CONFIG_CMD_FALSE is not set
+# CONFIG_CMD_CLEAR is not set
+# CONFIG_CMD_ECHO is not set
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_I2C=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_ASIX=y
+# CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_TEGRA=y
+CONFIG_ATA=y
+CONFIG_ATA_DISK=y
+CONFIG_USB=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_STORAGE=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_FB_TEGRA_DUMMY=y
+CONFIG_FS_FAT=y
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
