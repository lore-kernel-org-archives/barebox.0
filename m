Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeW98-0007ML-8G
 for barebox@lists.infradead.org; Tue, 22 Sep 2015 22:34:47 +0000
Received: by lagj9 with SMTP id j9so30572885lag.2
 for <barebox@lists.infradead.org>; Tue, 22 Sep 2015 15:34:23 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 23 Sep 2015 01:34:13 +0300
Message-Id: <1442961253-24762-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442961253-24762-1-git-send-email-antonynpavlov@gmail.com>
References: <1442961253-24762-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 6/6] MIPS: tplink-mr3020_defconfig: enable gpio & leds
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/tplink-mr3020_defconfig | 38 ++++++++++++++++++-------------
 1 file changed, 22 insertions(+), 16 deletions(-)

diff --git a/arch/mips/configs/tplink-mr3020_defconfig b/arch/mips/configs/tplink-mr3020_defconfig
index 9f81ce3..b675993 100644
--- a/arch/mips/configs/tplink-mr3020_defconfig
+++ b/arch/mips/configs/tplink-mr3020_defconfig
@@ -1,34 +1,40 @@
 CONFIG_BUILTIN_DTB=y
 CONFIG_BUILTIN_DTB_NAME="tplink-mr3020"
 CONFIG_MACH_MIPS_ATH79=y
-CONFIG_LONGHELP=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_GLOBAL=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MM=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GLOBAL=y
 CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
 CONFIG_CMD_FLASH=y
-# CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
 CONFIG_CMD_SPI=y
-CONFIG_CMD_CLK=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
 CONFIG_OFDEVICE=y
 CONFIG_DRIVER_SERIAL_AR933X=y
 CONFIG_DRIVER_SPI_ATH79=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_M25P80=y
-CONFIG_MD5=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
 CONFIG_DIGEST_SHA224_GENERIC=y
 CONFIG_DIGEST_SHA256_GENERIC=y
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
