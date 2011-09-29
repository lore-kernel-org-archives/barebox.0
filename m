Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R9HEF-0002PW-0P
	for barebox@lists.infradead.org; Thu, 29 Sep 2011 14:04:48 +0000
Received: by mail-bw0-f49.google.com with SMTP id t2so845767bka.36
	for <barebox@lists.infradead.org>; Thu, 29 Sep 2011 07:04:46 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 29 Sep 2011 18:04:36 +0400
Message-Id: <1317305076-3334-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1317305076-3334-1-git-send-email-antonynpavlov@gmail.com>
References: <1317305076-3334-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC PATCH 6/6] toshiba-ac100_defconfig update: enable USB-related
	stuff
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/configs/toshiba_ac100_defconfig |   26 ++++++++++++++++++--------
 1 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/arch/arm/configs/toshiba_ac100_defconfig b/arch/arm/configs/toshiba_ac100_defconfig
index 7d4627a..48fd0b3 100644
--- a/arch/arm/configs/toshiba_ac100_defconfig
+++ b/arch/arm/configs/toshiba_ac100_defconfig
@@ -14,21 +14,31 @@ CONFIG_ENABLE_DEVICE_NOISE=y
 CONFIG_CMD_SLEEP=y
 # CONFIG_CMD_TRUE is not set
 # CONFIG_CMD_FALSE is not set
-# CONFIG_CMD_RM is not set
-# CONFIG_CMD_MKDIR is not set
-# CONFIG_CMD_RMDIR is not set
-# CONFIG_CMD_CP is not set
-# CONFIG_CMD_PWD is not set
-# CONFIG_CMD_MOUNT is not set
-# CONFIG_CMD_UMOUNT is not set
 # CONFIG_CMD_CLEAR is not set
 # CONFIG_CMD_ECHO is not set
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
 CONFIG_CMD_LOADS=y
 CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_ASIX=y
 # CONFIG_SPI is not set
+CONFIG_ATA=y
+CONFIG_ATA_DISK=y
+CONFIG_USB=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_STORAGE=y
+CONFIG_FS_FAT=y
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
