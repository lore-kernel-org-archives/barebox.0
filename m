Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOodi-00077P-Rx
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:19:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:19:19 +0200
Message-Id: <1335784768-9189-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1335784768-9189-1-git-send-email-s.hauer@pengutronix.de>
References: <1335784768-9189-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/13] hush: remove bogus 'else'
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/hush.c b/common/hush.c
index 017f96d..4e78577 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -610,7 +610,9 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 		rcode = run_list_real(ctx, child->group);
 
 		return rcode;
-	} else if (pi->num_progs == 1 && pi->progs[0].argv != NULL) {
+	}
+
+	if (pi->num_progs == 1 && pi->progs[0].argv != NULL) {
 
 		for (i = 0; is_assignment(child->argv[i]); i++)
 			{ /* nothing */ }
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
