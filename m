Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHs6y-000863-OG
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 17:17:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 19:17:08 +0200
Message-Id: <20200914171707.30127-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] ls: align file size correctly on non-ARM 64-bit platforms
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>

CONFIG_CPU_64 is ARM-specific. Use the generic CONFIG_64BIT instead
for aligning the file size.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/ls.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/ls.c b/commands/ls.c
index 59163f678d51..bedf2e1c4288 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -15,7 +15,7 @@
 /*
  * SIZELEN = strlen(itoa(MAX_LFS_FILESIZE)) + 1;
  */
-#ifdef CONFIG_CPU_64
+#ifdef CONFIG_64BIT
 #define SIZELEN		20
 #else
 #define SIZELEN		14
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
