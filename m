Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ds7Od-0007xj-T7
 for barebox@lists.infradead.org; Wed, 13 Sep 2017 13:08:08 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Wed, 13 Sep 2017 15:06:50 +0200
Message-Id: <20170913130650.18828-1-ejo@pengutronix.de>
In-Reply-To: <20170913122332.17585-1-ejo@pengutronix.de>
References: <20170913122332.17585-1-ejo@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] commands: nv: adjust command help
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

Help did not point out that -r option requires n arguments and did not
mention support for removing variables in help text.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---

Noticed this change would also be required to round out the prior changes for
option parsing.

 commands/nv.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/commands/nv.c b/commands/nv.c
index bb13ed1db0..e3ca9879bd 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -89,18 +89,18 @@ static int do_nv(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(nv)
 BAREBOX_CMD_HELP_TEXT("Add a new non volatile variable named VAR, optionally set to VALUE.")
-BAREBOX_CMD_HELP_TEXT("non volatile variables are persistent variables that overwrite the")
+BAREBOX_CMD_HELP_TEXT("Non volatile variables are persistent variables that overwrite the")
 BAREBOX_CMD_HELP_TEXT("global variables of the same name. Their value is saved implicitly with")
 BAREBOX_CMD_HELP_TEXT("'saveenv' or explicitly with 'nv -s'")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT("-r", "remove non volatile variables")
-BAREBOX_CMD_HELP_OPT("-s", "Save NV variables")
+BAREBOX_CMD_HELP_OPT("-r VAR1 ...", "remove non volatile variable(s)")
+BAREBOX_CMD_HELP_OPT("-s\t", "save NV variables")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(nv)
 	.cmd		= do_nv,
-	BAREBOX_CMD_DESC("create or set non volatile variables")
+	BAREBOX_CMD_DESC("create, set or remove non volatile variables")
 	BAREBOX_CMD_OPTS("[-r] VAR[=VALUE] ...")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_nv_help)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
