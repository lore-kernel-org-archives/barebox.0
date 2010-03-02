Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NmVOM-000788-Gj
	for barebox@lists.infradead.org; Tue, 02 Mar 2010 16:56:22 +0000
Received: from themisto.ext.pengutronix.de ([92.198.50.58]
	helo=jupiter.intranet.kreuzholzen.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NmVNx-0007Xs-RE
	for barebox@lists.infradead.org; Tue, 02 Mar 2010 17:56:12 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 2 Mar 2010 17:55:51 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201003021755.52145.jbe@pengutronix.de>
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
Subject: [PATCH] Fix doc style
To: barebox@lists.infradead.org

Do it in the same way the 'saveenv' comand does it.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
diff --git a/commands/loadenv.c b/commands/loadenv.c
index 14fbf1e..9bbe0f4 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -44,7 +44,7 @@ static int do_loadenv(struct command *cmdtp, int argc, char *argv[])
 }
 
 static const __maybe_unused char cmd_loadenv_help[] =
-"Usage: loadenv [ENVFS] [DIRECTORY]\n"
+"Usage: loadenv [<envfs>] [<directory>]\n"
 "Load the persistent storage contained in <envfs> to the directory\n"
 "<directory>.\n"
 "If ommitted <directory> defaults to /env and <envfs> defaults to /dev/env0.\n"

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
