Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e9nRp-00047L-Kb
 for barebox@lists.infradead.org; Wed, 01 Nov 2017 07:28:29 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Wed,  1 Nov 2017 08:27:10 +0100
Message-Id: <20171101072710.31518-7-ejo@pengutronix.de>
In-Reply-To: <20171101072710.31518-1-ejo@pengutronix.de>
References: <20171101072710.31518-1-ejo@pengutronix.de>
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
Subject: [PATCH 6/6] command: nv: rewrap help text lines
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

Just let the help text appear a bit more aligned.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 commands/nv.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/nv.c b/commands/nv.c
index 4ea6d1774e..51b855ee4b 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -89,9 +89,9 @@ static int do_nv(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(nv)
 BAREBOX_CMD_HELP_TEXT("Add a new non volatile (NV) variable named VAR, optionally set to VALUE.")
-BAREBOX_CMD_HELP_TEXT("NV variables are persistent variables that overwrite the")
-BAREBOX_CMD_HELP_TEXT("global variables of the same name. Their value is saved implicitly with")
-BAREBOX_CMD_HELP_TEXT("'saveenv' or explicitly with 'nv -s'")
+BAREBOX_CMD_HELP_TEXT("NV variables are persistent variables that overwrite the global variables")
+BAREBOX_CMD_HELP_TEXT("of the same name.")
+BAREBOX_CMD_HELP_TEXT("Their value is saved implicitly with 'saveenv' or explicitly with 'nv -s'")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-r VAR1 ...", "remove NV variable(s)")
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
