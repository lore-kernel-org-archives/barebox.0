Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOMkH-00051K-8A
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 07:09:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Sep 2013 09:08:45 +0200
Message-Id: <1380006527-2599-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
References: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] ARM: compile bootm code depending on CONFIG_BOOTM
To: barebox@lists.infradead.org

The bootm code is now independent from the actual bootm command, so
compile the ARM specific bootm code based on CONFIG_BOOTM and not on
CONFIG_CMD_BOOTM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig      | 2 +-
 arch/arm/lib/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 687acca..38116be 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -10,7 +10,7 @@ config ARM
 config ARM_LINUX
 	bool
 	default y
-	depends on CMD_BOOTZ || CMD_BOOTU || CMD_BOOTM
+	depends on CMD_BOOTZ || CMD_BOOTU || BOOTM
 
 config HAVE_MACH_ARM_HEAD
 	bool
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 3ea695c..a328795 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -1,5 +1,5 @@
 obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
-obj-$(CONFIG_CMD_BOOTM)	+= bootm.o
+obj-$(CONFIG_BOOTM)	+= bootm.o
 obj-$(CONFIG_CMD_BOOTZ)	+= bootz.o
 obj-$(CONFIG_CMD_BOOTU)	+= bootu.o
 obj-y	+= div0.o
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
