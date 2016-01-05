Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGMvt-0000az-Os
 for barebox@lists.infradead.org; Tue, 05 Jan 2016 08:25:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  5 Jan 2016 09:25:09 +0100
Message-Id: <1451982310-21615-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] readline: Fix potential buffer overflow
To: Barebox List <barebox@lists.infradead.org>

cread_add_char doesn't take the trailing '\0' into account, so adding
it at the end of readline can overflow the buffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/readline.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/readline.c b/lib/readline.c
index c007e10..4c9bb76 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -150,7 +150,7 @@ static void cread_add_char(char ichar, int insert, unsigned long *num,
 
 	/* room ??? */
 	if (insert || *num == *eol_num) {
-		if (*eol_num > len - 1) {
+		if (*eol_num > len - 2) {
 			getcmd_cbeep();
 			return;
 		}
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
