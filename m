Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpti-0001uU-Lk
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:04 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:28 +0100
Message-Id: <1292413908-464-15-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 14/34] doc: add documentation for 'lsmod' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/lsmod.c           |    5 +++++
 2 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 0293edc..04718b8 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -65,7 +65,7 @@ available in @a Barebox:
 @li @subpage loadxc
 @li @subpage login
 @li @subpage ls_command
-@li @subpage lsmod
+@li @subpage lsmod_command
 @li @subpage md
 @li @subpage memcmp
 @li @subpage meminfo
diff --git a/commands/lsmod.c b/commands/lsmod.c
index 26d2fe4..9a90e88 100644
--- a/commands/lsmod.c
+++ b/commands/lsmod.c
@@ -12,6 +12,11 @@ static int do_lsmod(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(lsmod)
+BAREBOX_CMD_HELP_USAGE("lsmod\n")
+BAREBOX_CMD_HELP_SHORT("List modules.\n")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(lsmod)
 	.cmd		= do_lsmod,
 	.usage		= "list modules",
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
