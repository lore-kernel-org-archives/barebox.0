Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsY0S-000451-PR
 for barebox@lists.infradead.org; Wed, 22 Aug 2018 18:37:26 +0000
Received: by mail-lj1-x244.google.com with SMTP id p10-v6so2201046ljg.2
 for <barebox@lists.infradead.org>; Wed, 22 Aug 2018 11:37:14 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed, 22 Aug 2018 20:36:51 +0200
Message-Id: <20180822183651.32071-3-sam@ravnborg.org>
In-Reply-To: <20180822183555.GA24084@ravnborg.org>
References: <20180822183555.GA24084@ravnborg.org>
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
Subject: [PATCH v4 3/3] at91sam9263ek: add PHY, miitool etc. to config
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Added Davicom phy to the config now it is supported.
Add miitool to show the phy info.
Also add a bunch of extra commands that can be useful
when handling the evaluation board.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/configs/at91sam9263ek_defconfig | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index e8ad841fa..45c6f79de 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -18,7 +18,7 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
@@ -33,22 +33,32 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
+CONFIG_CMD_HOST=y
+CONFIG_NET_CMD_IFUP=y
+CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SPLASH=y
+CONFIG_CMD_FBTEST=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_MACB=y
+CONFIG_DAVICOM_PHY=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
