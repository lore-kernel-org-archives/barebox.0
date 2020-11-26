Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiM3o-0007mu-MO
 for barebox@lists.infradead.org; Thu, 26 Nov 2020 18:32:06 +0000
Received: from geraet.fritz.box (unknown [87.123.103.207])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 476381BF20C
 for <barebox@lists.infradead.org>; Thu, 26 Nov 2020 18:31:59 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 26 Nov 2020 19:31:51 +0100
Message-Id: <20201126183154.348024-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] hush: remove non-functional code
To: barebox@lists.infradead.org

name is unused except for printing and value is modified, but never read
back. They currently serve no purpose, so drop them. The actual
splitting by '=' happens in set_local_var later.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/hush.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index ec0d5129b70d..a6fc4485bf52 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -798,16 +798,9 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 			 * This junk is all to decide whether or not to export this
 			 * variable. */
 			int export_me = 0;
-			char *name, *value;
 
-			name = xstrdup(child->argv[i]);
-			hush_debug("Local environment set: %s\n", name);
-			value = strchr(name, '=');
+			hush_debug("Local environment set: %s\n", child->argv[i]);
 
-			if (value)
-				*value = 0;
-
-			free(name);
 			p = insert_var_value(child->argv[i]);
 			rcode = set_local_var(p, export_me);
 			if (rcode)
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
