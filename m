Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Smrra-0002DR-PK
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:37:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 21:36:34 +0200
Message-Id: <1341517020-5581-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
References: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/30] uimage: introduce UIMAGE Kconfig symbol
To: barebox@lists.infradead.org

Both the uimage command and the bootm command need uImage support, so
add a Kconfig symbol for it to be able to select it properly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig |    2 ++
 common/Kconfig   |    3 +++
 common/Makefile  |    4 ++--
 3 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 2478e3f..92a8152 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -349,6 +349,7 @@ config CMD_BOOTM
 	tristate
 	default y
 	select CRC32
+	select UIMAGE
 	select UNCOMPRESS
 	select FILETYPE
 	select GLOBALVAR
@@ -397,6 +398,7 @@ config CMD_BOOTM_AIMAGE
 	  Support using Android Images.
 
 config CMD_UIMAGE
+	select UIMAGE
 	tristate
 	prompt "uimage"
 	help
diff --git a/common/Kconfig b/common/Kconfig
index b776031..9e4f6b3 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -47,6 +47,9 @@ config BINFMT
 	bool
 	select FILETYPE
 
+config UIMAGE
+	bool
+
 config GLOBALVAR
 	bool
 
diff --git a/common/Makefile b/common/Makefile
index a1926d3..d99dfa2 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -24,8 +24,8 @@ obj-$(CONFIG_CONSOLE_FULL) += console.o
 obj-$(CONFIG_CONSOLE_SIMPLE) += console_simple.o
 obj-$(CONFIG_DIGEST) += digest.o
 obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
-obj-$(CONFIG_CMD_BOOTM) += image.o
-obj-$(CONFIG_CMD_BOOTM) += uimage.o
+obj-$(CONFIG_UIMAGE) += image.o
+obj-$(CONFIG_UIMAGE) += uimage.o
 obj-y += startup.o
 obj-y += misc.o
 obj-y += memsize.o
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
