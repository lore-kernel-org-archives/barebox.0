Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nrsw5-0001UG-EJ
	for barebox@lists.infradead.org; Wed, 17 Mar 2010 13:05:25 +0000
Received: from themisto.ext.pengutronix.de ([92.198.50.58]
	helo=jupiter.intranet.kreuzholzen.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1NrsvY-0005Lp-Lv
	for barebox@lists.infradead.org; Wed, 17 Mar 2010 14:04:50 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 17 Mar 2010 14:04:45 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201003171404.46508.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Make some help comments less confusing
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 commands/nand.c         |    2 +-
 drivers/nand/nand_imx.c |    6 ++++--
 2 files changed, 5 insertions(+), 3 deletions(-)

Index: barebox-2010.03.0/commands/nand.c
===================================================================
--- barebox-2010.03.0.orig/commands/nand.c
+++ barebox-2010.03.0/commands/nand.c
@@ -363,6 +363,6 @@ static const __maybe_unused char cmd_nan
 
 BAREBOX_CMD_START(nand)
 	.cmd		= do_nand,
-	.usage		= "",
+	.usage		= "NAND specific handling",
 	BAREBOX_CMD_HELP(cmd_nand_help)
 BAREBOX_CMD_END
Index: barebox-2010.03.0/drivers/nand/nand_imx.c
===================================================================
--- barebox-2010.03.0.orig/drivers/nand/nand_imx.c
+++ barebox-2010.03.0/drivers/nand/nand_imx.c
@@ -1166,11 +1166,13 @@ static int do_nand_boot_test(struct comm
 }
 
 static const __maybe_unused char cmd_nand_boot_test_help[] =
-"Usage: nand_boot_test <dest> <size>\n";
+"Usage: nand_boot_test <dest> <size>\n"
+"This command loads the booloader from the NAND memory like the reset\n"
+"routine does. Its intended for development tests only";
 
 BAREBOX_CMD_START(nand_boot_test)
 	.cmd		= do_nand_boot_test,
-	.usage		= "list a file or directory",
+	.usage		= "load bootloader from NAND",
 	BAREBOX_CMD_HELP(cmd_nand_boot_test_help)
 BAREBOX_CMD_END
 #endif

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
