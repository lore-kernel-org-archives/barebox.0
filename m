Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aP9he-0008Az-Le
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 14:07:11 +0000
Received: by mail-wm0-x242.google.com with SMTP id l66so10065201wml.2
 for <barebox@lists.infradead.org>; Fri, 29 Jan 2016 06:06:49 -0800 (PST)
From: yegorslists@googlemail.com
Date: Fri, 29 Jan 2016 15:06:20 +0100
Message-Id: <1454076381-17375-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 1/2] dcache: add missing linux/list.h include
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 include/linux/dcache.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/dcache.h b/include/linux/dcache.h
index 9f33e75..dfb4667 100644
--- a/include/linux/dcache.h
+++ b/include/linux/dcache.h
@@ -10,6 +10,7 @@
  * with heavy changes by Linus Torvalds
  */
 
+#include <linux/list.h>
 #include <linux/spinlock.h>
 
 #define IS_ROOT(x) ((x) == (x)->d_parent)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
