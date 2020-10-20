Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUjxY-0006Y5-QC
 for barebox@lists.infradead.org; Tue, 20 Oct 2020 05:13:22 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Oct 2020 07:13:17 +0200
Message-Id: <20201020051318.17233-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] commands: bootchooser: migrate menu entry to boot menu
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

While the bootchooser command is not required for boot with bootchooser,
it's still boot related and is more likely to be looked for in the boot
menu than the misc menu. The boot menu has other commands like uimage
which do not boot either, but are boot-related.

While at it, add some Kconfig help text.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index df18715f20d4..727946706300 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -498,6 +498,23 @@ config CMD_UIMAGE
 		  -e OUTFILE	extract image to OUTFILE
 		  -n NO		use image number NO in multifile image
 
+config CMD_BOOTCHOOSER
+	tristate
+	depends on BOOTCHOOSER
+	prompt "bootchooser control utility"
+	help
+	  Control misc behaviour of the bootchooser
+
+	  Options:
+	    -a <n|default> [TARGETS]
+	    	set remaining attempts of given targets to 'n' or the default attempts
+	    -p <n|default> [TARGETS]
+	    	set priority of given targets to 'n' or the default priority
+	    -i
+	    	Show information about the bootchooser
+	    -s
+		Mark the last boot successful
+
 # end Boot commands
 endmenu
 
@@ -2179,11 +2196,6 @@ config CMD_STATE
 	depends on STATE
 	prompt "state"
 
-config CMD_BOOTCHOOSER
-	tristate
-	depends on BOOTCHOOSER
-	prompt "bootchooser"
-
 config CMD_DHRYSTONE
 	bool
 	prompt "dhrystone"
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
