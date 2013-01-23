Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxxAO-0000vz-AS
 for barebox@lists.infradead.org; Wed, 23 Jan 2013 10:02:50 +0000
Received: from mail176.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 0BDA7FF9A3C
 for <barebox@lists.infradead.org>; Wed, 23 Jan 2013 11:16:35 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 23 Jan 2013 11:01:19 +0100
Message-Id: <1358935280-20387-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130123092028.GP26329@game.jcrosoft.org>
References: <20130123092028.GP26329@game.jcrosoft.org>
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
Subject: [PATCH 1/2] console: switch select to choice
To: barebox@lists.infradead.org

so we can add easly the console_none support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/archosg9_xload_defconfig            |    2 +-
 arch/arm/configs/omap3530_beagle_xload_defconfig     |    2 +-
 arch/arm/configs/panda_xload_defconfig               |    2 +-
 arch/arm/configs/pcm049_xload_defconfig              |    2 +-
 arch/arm/configs/phycard_a_l1_xload_defconfig        |    2 +-
 arch/arm/configs/phycard_a_xl2_xload_defconfig       |    2 +-
 .../arm/configs/usb_a9263_128mib_bootstrap_defconfig |    2 +-
 arch/arm/configs/usb_a9263_bootstrap_defconfig       |    2 +-
 common/Kconfig                                       |   18 +++++++++++-------
 9 files changed, 19 insertions(+), 15 deletions(-)

diff --git a/arch/arm/configs/archosg9_xload_defconfig b/arch/arm/configs/archosg9_xload_defconfig
index 6c6782f..83743fa 100644
--- a/arch/arm/configs/archosg9_xload_defconfig
+++ b/arch/arm/configs/archosg9_xload_defconfig
@@ -15,7 +15,7 @@ CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
-# CONFIG_CONSOLE_FULL is not set
+CONFIG_CONSOLE_SIMPLE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
index d951b1c..244891b 100644
--- a/arch/arm/configs/omap3530_beagle_xload_defconfig
+++ b/arch/arm/configs/omap3530_beagle_xload_defconfig
@@ -14,7 +14,7 @@ CONFIG_PROMPT="X-load Beagle>"
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
-# CONFIG_CONSOLE_FULL is not set
+CONFIG_CONSOLE_SIMPLE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
diff --git a/arch/arm/configs/panda_xload_defconfig b/arch/arm/configs/panda_xload_defconfig
index fec09ce..1ed20a1 100644
--- a/arch/arm/configs/panda_xload_defconfig
+++ b/arch/arm/configs/panda_xload_defconfig
@@ -14,7 +14,7 @@ CONFIG_PROMPT="barebox> "
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
-# CONFIG_CONSOLE_FULL is not set
+CONFIG_CONSOLE_SIMPLE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
diff --git a/arch/arm/configs/pcm049_xload_defconfig b/arch/arm/configs/pcm049_xload_defconfig
index b6d3a7a..9dfc30d 100644
--- a/arch/arm/configs/pcm049_xload_defconfig
+++ b/arch/arm/configs/pcm049_xload_defconfig
@@ -17,7 +17,7 @@ CONFIG_PROMPT="barebox> "
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
-# CONFIG_CONSOLE_FULL is not set
+CONFIG_CONSOLE_SIMPLE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
diff --git a/arch/arm/configs/phycard_a_l1_xload_defconfig b/arch/arm/configs/phycard_a_l1_xload_defconfig
index 30253cb..5901ed1 100644
--- a/arch/arm/configs/phycard_a_l1_xload_defconfig
+++ b/arch/arm/configs/phycard_a_l1_xload_defconfig
@@ -20,7 +20,7 @@ CONFIG_CBSIZE=128
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
-# CONFIG_CONSOLE_FULL is not set
+CONFIG_CONSOLE_SIMPLE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
diff --git a/arch/arm/configs/phycard_a_xl2_xload_defconfig b/arch/arm/configs/phycard_a_xl2_xload_defconfig
index 7975220..84160e3 100644
--- a/arch/arm/configs/phycard_a_xl2_xload_defconfig
+++ b/arch/arm/configs/phycard_a_xl2_xload_defconfig
@@ -17,7 +17,7 @@ CONFIG_PROMPT="barebox> "
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
-# CONFIG_CONSOLE_FULL is not set
+CONFIG_CONSOLE_SIMPLE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
diff --git a/arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig b/arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig
index 0411bd8..be56eb8 100644
--- a/arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig
+++ b/arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig
@@ -12,7 +12,7 @@ CONFIG_MMU=y
 CONFIG_MALLOC_DUMMY=y
 CONFIG_PROMPT="USB-9263:"
 CONFIG_SHELL_NONE=y
-# CONFIG_CONSOLE_FULL is not set
+CONFIG_CONSOLE_SIMPLE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 # CONFIG_SPI is not set
 CONFIG_MTD=y
diff --git a/arch/arm/configs/usb_a9263_bootstrap_defconfig b/arch/arm/configs/usb_a9263_bootstrap_defconfig
index 78c1c8f..d493efe 100644
--- a/arch/arm/configs/usb_a9263_bootstrap_defconfig
+++ b/arch/arm/configs/usb_a9263_bootstrap_defconfig
@@ -11,7 +11,7 @@ CONFIG_MMU=y
 CONFIG_MALLOC_DUMMY=y
 CONFIG_PROMPT="USB-9263:"
 CONFIG_SHELL_NONE=y
-# CONFIG_CONSOLE_FULL is not set
+CONFIG_CONSOLE_SIMPLE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 # CONFIG_SPI is not set
 CONFIG_MTD=y
diff --git a/common/Kconfig b/common/Kconfig
index 9d26abb..3231c27 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -461,10 +461,13 @@ config TIMESTAMP
 	  commands like bootm or iminfo. This option is
 	  automatically enabled when you select CFG_CMD_DATE .
 
+choice
+	prompt "console support"
+	default CONSOLE_FULL
+
 config CONSOLE_FULL
 	bool
-	default y
-	prompt "Enable full console support"
+	prompt "full"
 	help
 	  This option enables full console support capable of
 	  handling multiple consoles. Also the full console support
@@ -473,6 +476,12 @@ config CONSOLE_FULL
 	  once the first console is registered. Recommended for most
 	  usecases.
 
+config CONSOLE_SIMPLE
+	bool
+	prompt "simple"
+
+endchoice
+
 choice
 	prompt "Console activation strategy"
 	depends on CONSOLE_FULL
@@ -505,11 +514,6 @@ config CONSOLE_ACTIVATE_NONE
 
 endchoice
 
-config CONSOLE_SIMPLE
-	bool
-	default y
-	depends on !CONSOLE_FULL
-
 config PARTITION
 	bool
 	prompt "Enable Partitions"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
