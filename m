Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Siltv-0002SZ-3S
 for barebox@lists.infradead.org; Sun, 24 Jun 2012 12:26:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 24 Jun 2012 14:26:41 +0200
Message-Id: <1340540801-4889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] complete: fix parameter complete with multiple '.'
To: barebox@lists.infradead.org

When a device parameter has dots in its name, we have to use strchr instead
of strrchr, because the devicename ends at the first dot, not at the last one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/complete.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/complete.c b/common/complete.c
index 0780888..a6889ed 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -221,7 +221,7 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
 		end = ' ';
 	}
 
-	instr_param = strrchr(instr, '.');
+	instr_param = strchr(instr, '.');
 	len = strlen(instr);
 
 	current_c = get_current_context();
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
