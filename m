Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGtjZ-0003gt-Ii
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 15:41:10 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed, 26 Sep 2012 17:41:06 +0200
Message-Id: <1348674066-1385-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] commands/mount: fix typo and wording in help message
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 commands/mount.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/mount.c b/commands/mount.c
index 0628a60..f339c37 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -66,7 +66,7 @@ static int do_mount(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(mount)
 BAREBOX_CMD_HELP_USAGE("mount [[-t <fstype] <device> <mountpoint>]\n")
 BAREBOX_CMD_HELP_SHORT("Mount a filesystem of a given type to a mountpoint.\n")
-BAREBOX_CMD_HELP_SHORT("If no fstpye is specified detected it.\n")
+BAREBOX_CMD_HELP_SHORT("If no fstype is specified, try to detect it automatically.\n")
 BAREBOX_CMD_HELP_SHORT("If no argument is given, list mounted filesystems.\n")
 BAREBOX_CMD_HELP_END
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
