Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x22a.google.com ([2607:f8b0:4002:c01::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGraQ-00069a-L8
 for barebox@lists.infradead.org; Fri, 21 Feb 2014 15:00:23 +0000
Received: by mail-yh0-f42.google.com with SMTP id a41so2403134yho.15
 for <barebox@lists.infradead.org>; Fri, 21 Feb 2014 06:59:59 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 21 Feb 2014 11:59:48 -0300
Message-Id: <1392994788-10551-1-git-send-email-festevam@gmail.com>
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
Subject: [PATCH] lib: math: Return NULL pointer
To: s.hauer@pengutronix.de
Cc: Fabio Estevam <fabio.estevam@freescale.com>, barebox@lists.infradead.org

From: Fabio Estevam <fabio.estevam@freescale.com>

Fix the following sparse warning:

lib/math.c:309:16: warning: Using plain integer as NULL pointer

Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
---
 lib/math.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/math.c b/lib/math.c
index 2e53b09..19c8f08 100644
--- a/lib/math.c
+++ b/lib/math.c
@@ -306,7 +306,7 @@ static const char *arith_lookup_val(arith_state_t *math_state, var_or_num_t *t)
 		/* treat undefined var as 0 */
 		t->val = 0;
 	}
-	return 0;
+	return NULL;
 }
 
 /* "Applying" a token means performing it on the top elements on the integer
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
