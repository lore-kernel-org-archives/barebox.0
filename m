Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6l3F-0003Tm-3H
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:46:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 16:46:33 +0200
Message-Id: <1301928401-13571-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301928401-13571-1-git-send-email-s.hauer@pengutronix.de>
References: <1301928401-13571-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] commands: Make nand command optional
To: barebox@lists.infradead.org

The nand command is for bad block handling which some do not need.
So make it optional, but with default y.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |    6 ++++++
 commands/Makefile |    2 +-
 2 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index f137f47..40213d2 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -142,6 +142,12 @@ config CMD_UMOUNT
 	default y
 	prompt "umount"
 
+config CMD_NAND
+	tristate
+	default y
+	depends on NAND
+	prompt "nand"
+
 endmenu
 
 menu "console                       "
diff --git a/commands/Makefile b/commands/Makefile
index c89adcf..fb1b0ca 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -37,7 +37,7 @@ obj-$(CONFIG_CMD_EXPORT)	+= export.o
 obj-$(CONFIG_CMD_PRINTENV)	+= printenv.o
 obj-$(CONFIG_CMD_SAVEENV)	+= saveenv.o
 obj-$(CONFIG_CMD_LOADENV)	+= loadenv.o
-obj-$(CONFIG_NAND)		+= nand.o
+obj-$(CONFIG_CMD_NAND)		+= nand.o
 obj-$(CONFIG_CMD_TRUE)		+= true.o
 obj-$(CONFIG_CMD_FALSE)		+= false.o
 obj-$(CONFIG_CMD_VERSION)	+= version.o
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
