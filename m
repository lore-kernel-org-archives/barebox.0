Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh5B0-0003CH-3L
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 04:09:11 +0000
Received: by mail-pg1-x543.google.com with SMTP id z10so2708086pgp.7
 for <barebox@lists.infradead.org>; Tue, 08 Jan 2019 20:09:09 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 Jan 2019 20:09:02 -0800
Message-Id: <20190109040902.18956-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] memory_display: Fix type of argument passed to %*s
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On AArch64, pointer arithmetic in (pos - line) resolves into "long
int", whereas "%*s" is expecting regular "int". Add explicit cast to
avoid compiler warnings.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/memory_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/memory_display.c b/common/memory_display.c
index cd0eadf88..fbb8bbb6f 100644
--- a/common/memory_display.c
+++ b/common/memory_display.c
@@ -96,7 +96,7 @@ int __pr_memory_display(int level, const void *addr, loff_t offs, unsigned nbyte
 			offs += size;
 		}
 
-		pos += sprintf(pos, "%*s", 61 - (pos - line), "");
+		pos += sprintf(pos, "%*s", (int)(61 - (pos - line)), "");
 
 		cp = linebuf;
 		for (i = 0; i < linebytes; i++) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
