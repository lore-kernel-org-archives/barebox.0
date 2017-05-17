Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp109.iad3a.emailsrvr.com ([173.203.187.109])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAyx9-0001g9-9M
 for barebox@lists.infradead.org; Wed, 17 May 2017 13:25:24 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Wed, 17 May 2017 14:24:24 +0100
Message-Id: <20170517132426.13367-4-abbotti@mev.co.uk>
In-Reply-To: <20170517132426.13367-1-abbotti@mev.co.uk>
References: <20170517132426.13367-1-abbotti@mev.co.uk>
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
Subject: [PATCH 4/6] help: make help_aliases[] const
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

Although the elements of `help_aliases[]` are of type `const char *`,
the elements themselves are not const-qualified.  Make them `const`.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 commands/help.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/help.c b/commands/help.c
index 819c40653..34ffa9a41 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -139,7 +139,7 @@ BAREBOX_CMD_HELP_OPT ("-a", "output help on all commands")
 BAREBOX_CMD_HELP_OPT ("-v", "verbose")
 BAREBOX_CMD_HELP_END
 
-static const char *help_aliases[] = { "?", NULL};
+static const char * const help_aliases[] = { "?", NULL};
 
 BAREBOX_CMD_START(help)
 	.cmd		= do_help,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
