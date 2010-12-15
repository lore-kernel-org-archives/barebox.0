Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptk-0004Pv-2r
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:51:57 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:37 +0100
Message-Id: <1292413908-464-24-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1292413908-464-1-git-send-email-r.schwebel@pengutronix.de>
References: <1292413908-464-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 23/34] doc: add documentation for 'meminfo' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/meminfo.c         |    5 +++++
 2 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index c26abc2..907818e 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -68,7 +68,7 @@ available in @a Barebox:
 @li @subpage lsmod_command
 @li @subpage md
 @li @subpage memcmp
-@li @subpage meminfo
+@li @subpage meminfo_command
 @li @subpage memset
 @li @subpage menu
 @li @subpage mkdir_command
diff --git a/commands/meminfo.c b/commands/meminfo.c
index abbaf9c..176a636 100644
--- a/commands/meminfo.c
+++ b/commands/meminfo.c
@@ -30,6 +30,11 @@ static int do_meminfo(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(meminfo)
+BAREBOX_CMD_HELP_USAGE("meminfo\n")
+BAREBOX_CMD_HELP_SHORT("Print info about memory usage.\n")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(meminfo)
 	.cmd		= do_meminfo,
 	.usage		= "print info about memory usage",
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
