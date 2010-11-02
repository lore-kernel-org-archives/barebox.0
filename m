Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDGdU-0002Xe-OX
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 13:10:51 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Tue,  2 Nov 2010 14:10:32 +0100
Message-Id: <1288703442-5032-4-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288703442-5032-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288703442-5032-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 03/13] doc: remove ..., confuses doxygen
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/ls.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/ls.c b/commands/ls.c
index 2005178..4f9c408 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -195,7 +195,7 @@ static int do_ls(struct command *cmdtp, int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(ls)
-BAREBOX_CMD_HELP_USAGE("ls [OPTION]... [FILE]...\n")
+BAREBOX_CMD_HELP_USAGE("ls [OPTIONS] [FILES]\n")
 BAREBOX_CMD_HELP_SHORT("List information about the FILEs (the current directory by default).\n")
 BAREBOX_CMD_HELP_OPT  ("-R",  "list subdirectories recursively\n")
 BAREBOX_CMD_HELP_END
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
