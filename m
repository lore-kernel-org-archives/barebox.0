Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgEOZ-00060z-W9
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 13:52:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2013 14:52:14 +0100
Message-Id: <1384264339-15986-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1384264339-15986-1-git-send-email-s.hauer@pengutronix.de>
References: <1384264339-15986-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] hush: refactor file_get()
To: barebox@lists.infradead.org

Save indentation level by returning early.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 28 +++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 7a077ba..f0f2eda 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -471,21 +471,23 @@ static int file_get(struct in_str *i)
 	int ch;
 
 	ch = 0;
+
 	/* If there is data waiting, eat it up */
-	if (i->p && *i->p) {
+	if (i->p && *i->p)
+		return *i->p++;
+
+	/* need to double check i->file because we might be doing something
+	 * more complicated by now, like sourcing or substituting. */
+	while (!i->p  || strlen(i->p) == 0 )
+		get_user_input(i);
+
+	i->promptmode = 2;
+
+	if (i->p && *i->p)
 		ch = *i->p++;
-	} else {
-		/* need to double check i->file because we might be doing something
-		 * more complicated by now, like sourcing or substituting. */
-			while (!i->p  || strlen(i->p) == 0 ) {
-				get_user_input(i);
-			}
-			i->promptmode = 2;
-			if (i->p && *i->p) {
-				ch = *i->p++;
-			}
-		debug("%s: got a %d\n", __func__, ch);
-	}
+
+	debug("%s: got a %d\n", __func__, ch);
+
 	return ch;
 }
 
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
