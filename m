Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0001qM-Hx
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 71/78] ARM: aarch64: disable 32bit boot commands
Date: Fri, 16 Mar 2018 13:53:47 +0100
Message-Id: <20180316125354.23462-72-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

The 32bit boot support is full of legacy cruft. While it should be
possible to merge the aarch64 support there, a fresh start looks more
promising.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile               | 1 -
 arch/arm/lib32/Makefile         | 2 ++
 arch/arm/{lib => lib32}/bootm.c | 0
 arch/arm/{lib => lib32}/bootu.c | 0
 commands/Kconfig                | 4 ++--
 5 files changed, 4 insertions(+), 3 deletions(-)
 rename arch/arm/{lib => lib32}/bootm.c (100%)
 rename arch/arm/{lib => lib32}/bootu.c (100%)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index cf84a9a1c1..ac97de1e83 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -298,7 +298,6 @@ endif
 
 common-y += $(BOARD) arch/arm/boards/ $(MACH)
 common-y += arch/arm/cpu/
-common-y += arch/arm/lib/
 
 ifeq ($(CONFIG_CPU_V8), y)
 common-y += arch/arm/lib64/
diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
index cdd07322cf..3c02a0bf96 100644
--- a/arch/arm/lib32/Makefile
+++ b/arch/arm/lib32/Makefile
@@ -1,5 +1,7 @@
 obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
 obj-$(CONFIG_CMD_BOOTZ)	+= bootz.o
+obj-$(CONFIG_BOOTM)     += bootm.o
+obj-$(CONFIG_CMD_BOOTU) += bootu.o
 obj-y	+= div0.o
 obj-y	+= findbit.o
 obj-y	+= io.o
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib32/bootm.c
similarity index 100%
rename from arch/arm/lib/bootm.c
rename to arch/arm/lib32/bootm.c
diff --git a/arch/arm/lib/bootu.c b/arch/arm/lib32/bootu.c
similarity index 100%
rename from arch/arm/lib/bootu.c
rename to arch/arm/lib32/bootu.c
diff --git a/commands/Kconfig b/commands/Kconfig
index 17bbe0f27a..951a86963e 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -348,7 +348,7 @@ config CMD_BOOTM
 config CMD_BOOTU
 	tristate
 	default y
-	depends on ARM
+	depends on ARM && !CPU_64v8
 	prompt "bootu"
 	help
 	  Boot into already loaded Linux kernel, which must be raw (uncompressed).
@@ -357,7 +357,7 @@ config CMD_BOOTU
 
 config CMD_BOOTZ
 	tristate
-	depends on ARM
+	depends on ARM && !CPU_64v8
 	prompt "bootz"
 	help
 	  Boot Linux zImage
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
