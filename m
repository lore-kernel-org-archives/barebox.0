Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkU-0002cM-VV
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:49 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:07 +0200
Message-Id: <1287765924-1856-16-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
References: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 15/32] doc: avoid that doxygen parses magic in command.h
To: barebox@lists.infradead.org

Don't let doxygen parse the command magic, which leads to these warnings:

command.h:93: Warning: explicit link request to 'define' could not be resolved
command.h:98: Warning: expected <tr> tag but found TK_LNKWORD token instead!
command.h:98: Warning: Found unknown command `\t'
command.h:101: Warning: explicit link request to 'define' could not be resolved
command.h:103: Warning: explicit link request to 'define' could not be resolved

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 include/command.h |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/include/command.h b/include/command.h
index e235f63..0be7a69 100644
--- a/include/command.h
+++ b/include/command.h
@@ -76,6 +76,8 @@ void barebox_cmd_usage(struct command *cmdtp);
 
 #endif	/* __ASSEMBLY__ */
 
+#ifndef DOXYGEN_SHOULD_SKIP_THIS
+
 #define Struct_Section  __attribute__ ((unused,section (".barebox_cmd")))
 
 #define BAREBOX_CMD_START(_name)							\
@@ -93,6 +95,8 @@ const struct command __barebox_cmd_##_name						\
 #define BAREBOX_CMD_HELP(text)
 #endif
 
+#endif /* DOXYGEN_SHOULD_SKIP_THIS */
+
 int register_command(struct command *);
 
 #endif	/* __COMMAND_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
