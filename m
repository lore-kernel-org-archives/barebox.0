Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgEOj-00061G-R7
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 13:52:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2013 14:52:18 +0100
Message-Id: <1384264339-15986-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] hush: use standard ARRAY_SIZE
To: barebox@lists.infradead.org

Use standard ARRAY_SIZE instead of handcrafted NRES.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 35c3c3c..d844e74 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1192,13 +1192,15 @@ static struct reserved_combo reserved_list[] = {
 	{ "do",    RES_DO,    FLAG_DONE },
 	{ "done",  RES_DONE,  FLAG_END  }
 };
-#define NRES (sizeof(reserved_list)/sizeof(struct reserved_combo))
 
 static int reserved_word(o_string *dest, struct p_context *ctx)
 {
 	struct reserved_combo *r;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(reserved_list); i++) {
+		r = &reserved_list[i];
 
-	for (r = reserved_list; r < reserved_list + NRES; r++) {
 		if (strcmp(dest->data, r->literal) == 0) {
 
 			debug("found reserved word %s, code %d\n",r->literal,r->code);
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
