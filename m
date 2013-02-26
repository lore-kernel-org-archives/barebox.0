Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzO-0000cQ-2R
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:45 +0100
Message-Id: <1361909936-2665-19-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
References: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/29] oftree command: retire CMD_OFTREE_PROBE Kconfig option
To: barebox@lists.infradead.org

Whether or not the user wishes devicetree probe support can
now be decided indepentently of the oftree command, so retire
the CMD_OFTREE_PROBE option and use OFDEVICE in the code instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |    7 -------
 commands/oftree.c |    2 +-
 2 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index c8f06d8..0062758 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -486,13 +486,6 @@ config CMD_OFTREE
 	  The oftree command has support for dumping devicetrees and, if
 	  enabled, to probe devices from the devicetree
 
-config CMD_OFTREE_PROBE
-	bool
-	depends on CMD_OFTREE
-	prompt "oftree probe support"
-	help
-	  This enables the -p option to probe devices from the devicetree
-
 config CMD_OF_PROPERTY
 	tristate
 	select OFTREE
diff --git a/commands/oftree.c b/commands/oftree.c
index 612d01a..e4f52b8 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -64,7 +64,7 @@ static int do_oftree(int argc, char *argv[])
 			dump = 1;
 			break;
 		case 'p':
-			if (IS_ENABLED(CONFIG_CMD_OFTREE_PROBE)) {
+			if (IS_ENABLED(CONFIG_OFDEVICE)) {
 				probe = 1;
 			} else {
 				printf("oftree device probe support disabled\n");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
