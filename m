Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGMvy-0000cF-Lx
 for barebox@lists.infradead.org; Tue, 05 Jan 2016 08:25:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  5 Jan 2016 09:25:10 +0100
Message-Id: <1451982310-21615-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1451982310-21615-1-git-send-email-s.hauer@pengutronix.de>
References: <1451982310-21615-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] readline: Fix potential buffer overflow in command history
To: Barebox List <barebox@lists.infradead.org>

Cursor up copies the last line into the buffer without checking if it
fits into the current buffer. Fix this using safe_strncpy.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/readline.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/readline.c b/lib/readline.c
index 4c9bb76..cac9670 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <readkey.h>
 #include <init.h>
+#include <libbb.h>
 #include <xfuncs.h>
 #include <complete.h>
 #include <linux/ctype.h>
@@ -321,7 +322,7 @@ int readline(const char *prompt, char *buf, int len)
 			ERASE_TO_EOL();
 
 			/* copy new line into place and display */
-			strcpy(buf, hline);
+			safe_strncpy(buf, hline, len);
 			eol_num = strlen(buf);
 			REFRESH_TO_EOL();
 			continue;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
