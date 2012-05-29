Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZMBG-00075x-2H
 for barebox@lists.infradead.org; Tue, 29 May 2012 13:09:46 +0000
Received: by laap9 with SMTP id p9so3286576laa.36
 for <barebox@lists.infradead.org>; Tue, 29 May 2012 06:09:44 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 29 May 2012 17:09:34 +0400
Message-Id: <1338296974-15096-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1338296974-15096-1-git-send-email-antonynpavlov@gmail.com>
References: <1338296974-15096-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v20120529.1 2/2] toshiba_ac100: add defconfig
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/configs/toshiba_ac100_defconfig |   39 ++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 arch/arm/configs/toshiba_ac100_defconfig

diff --git a/arch/arm/configs/toshiba_ac100_defconfig b/arch/arm/configs/toshiba_ac100_defconfig
new file mode 100644
index 0000000..053f53a
--- /dev/null
+++ b/arch/arm/configs/toshiba_ac100_defconfig
@@ -0,0 +1,39 @@
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
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
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
+CONFIG_USB=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_STORAGE=y
+CONFIG_FS_FAT=y
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
