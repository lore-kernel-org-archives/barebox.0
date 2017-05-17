Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp93.iad3a.emailsrvr.com ([173.203.187.93])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAxQX-0006HM-OU
 for barebox@lists.infradead.org; Wed, 17 May 2017 11:47:40 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Wed, 17 May 2017 12:46:49 +0100
Message-Id: <20170517114649.26061-1-abbotti@mev.co.uk>
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
Subject: [PATCH] commands: add ':' as alias for 'true'
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

':' is the null command, sometimes used in shell scripts (especially
after 'then'), but it is not yet supported by barebox.  It is supposed
to do nothing, successfully, just like the 'true' command, so add it as
an alias.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 commands/true.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/commands/true.c b/commands/true.c
index 24dea4692..b850f5165 100644
--- a/commands/true.c
+++ b/commands/true.c
@@ -26,7 +26,10 @@ static int do_true(int argc, char *argv[])
 	return 0;
 }
 
+static const char *true_aliases[] = { ":", NULL};
+
 BAREBOX_CMD_START(true)
+	.aliases	= true_aliases,
 	.cmd		= do_true,
 	BAREBOX_CMD_DESC("do nothing, successfully")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
