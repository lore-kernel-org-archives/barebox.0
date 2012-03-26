Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SCEF7-0007f9-Ex
 for barebox@lists.infradead.org; Mon, 26 Mar 2012 18:02:14 +0000
Received: by mail-lb0-f177.google.com with SMTP id l5so4938114lbo.36
 for <barebox@lists.infradead.org>; Mon, 26 Mar 2012 11:02:09 -0700 (PDT)
From: esben.haabendal@gmail.com
Date: Mon, 26 Mar 2012 20:02:06 +0200
Message-Id: <1332784926-4709-1-git-send-email-esben.haabendal@gmail.com>
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
Subject: [PATCH 2/2] mx28-evk: Enable LCD support and bmp command
To: barebox@lists.infradead.org
Cc: Esben Haabendal <esben.haabendal@prevas.dk>

From: Esben Haabendal <esben.haabendal@prevas.dk>

Signed-off-by: Esben Haabendal <esben.haabendal@prevas.dk>
---
 arch/arm/configs/imx28evk_defconfig |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/arch/arm/configs/imx28evk_defconfig b/arch/arm/configs/imx28evk_defconfig
index 1860aef..1b44cf4 100644
--- a/arch/arm/configs/imx28evk_defconfig
+++ b/arch/arm/configs/imx28evk_defconfig
@@ -33,6 +33,7 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_BMP=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
@@ -41,6 +42,8 @@ CONFIG_NET_TFTP=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_STM=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MXS=y
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
