Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHlH6-0001jS-Mj
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 09:59:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 11:59:48 +0200
Message-Id: <20200914095948.16811-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] readkey: shrink table of known escape sequences in size
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Instead of storing pointers to 4-byte strings, we could just store the
characters directly in the struct. Can save us up to 18 pointers worth
of space. Additionally, the nul byte need not be stored explicitly for
3-byte strings, if we know those are the largest strings we have.

The latter likely does not save us any space because of the usual
alignment rules, but it will allow us to support sequences one byte
bigger in future at no increase in size.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/readkey.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/lib/readkey.c b/lib/readkey.c
index c26e9d51aba9..551296de3eb6 100644
--- a/lib/readkey.c
+++ b/lib/readkey.c
@@ -20,8 +20,10 @@
 #include <linux/ctype.h>
 #include <readkey.h>
 
+#define MAX_ESC_LEN 3
+
 struct esc_cmds {
-	const char *seq;
+	const char seq[MAX_ESC_LEN];
 	unsigned char val;
 };
 
@@ -49,7 +51,7 @@ static const struct esc_cmds esccmds[] = {
 int read_key(void)
 {
 	unsigned char c;
-	unsigned char esc[5];
+	unsigned char esc[MAX_ESC_LEN + 2];
 	c = getchar();
 
 	if (c == 27) {
@@ -67,7 +69,7 @@ int read_key(void)
 		}
 		esc[i] = 0;
 		for (i = 0; i < ARRAY_SIZE(esccmds); i++){
-			if (!strcmp(esc, esccmds[i].seq))
+			if (!strncmp(esc, esccmds[i].seq, MAX_ESC_LEN))
 				return esccmds[i].val;
 		}
 		return -1;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
