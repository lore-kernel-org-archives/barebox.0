Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4e-0001Ku-OR
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:48:02 +0100
Message-Id: <1261151305-18627-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-13-git-send-email-s.hauer@pengutronix.de>
References: <1261151305-18627-1-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-2-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-3-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-4-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-5-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-6-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-7-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-8-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-9-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-10-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-11-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-12-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/36] sandbox: update defconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/sandbox/configs/sandbox_defconfig |    9 ++-------
 1 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 8757fd0..adcb07e 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -1,7 +1,7 @@
 #
 # Automatically generated make config: don't edit
 # barebox version: 2.0.0-rc10
-# Mon Oct 12 14:15:55 2009
+# Fri Dec 18 11:53:08 2009
 #
 CONFIG_ARCH_TEXT_BASE=0x00000000
 CONFIG_BOARDINFO="sandbox"
@@ -114,10 +114,8 @@ CONFIG_CMD_VERSION=y
 CONFIG_CMD_HELP=y
 CONFIG_CMD_DEVINFO=y
 CONFIG_NET=y
-CONFIG_NET_BOOTP=y
 CONFIG_NET_DHCP=y
 # CONFIG_NET_RARP is not set
-# CONFIG_NET_SNTP is not set
 # CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
@@ -143,6 +141,7 @@ CONFIG_DRIVER_NET_TAP=y
 # SPI drivers
 #
 # CONFIG_SPI is not set
+# CONFIG_I2C is not set
 
 #
 # flash drivers
@@ -152,10 +151,6 @@ CONFIG_DRIVER_NET_TAP=y
 # CONFIG_NAND is not set
 # CONFIG_USB is not set
 # CONFIG_USB_GADGET is not set
-
-#
-# Video drivers
-#
 # CONFIG_VIDEO is not set
 
 #
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
