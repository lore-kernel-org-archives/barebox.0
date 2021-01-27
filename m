Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4g37-0003xw-6s
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 08:19:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Jan 2021 09:19:33 +0100
Message-Id: <20210127081933.12678-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] hush: stop parsing string at its end
To: Barebox List <barebox@lists.infradead.org>

remove_quotes_in_str() doesn't stop parsing at the string end when
there's a single "'" in the string.
Handling quotes and double quotes is broken in many ways in hush, so
I am not exactly sure this is the right thing to do, but at least it
avoids going out of the string boundaries.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/hush.c b/common/hush.c
index 9ced67af48..44ce4e5225 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -623,8 +623,11 @@ static void remove_quotes_in_str(char *src)
 	while (*src) {
 		if (*src == '\'') {
 			src++;
-			while (*src != '\'')
+			while (*src != '\'') {
+				if (!*src)
+					return;
 				*trg++ = *src++;
+			}
 			src++;
 			continue;
 		}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
