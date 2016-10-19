Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bwkXQ-0001BN-F2
 for barebox@lists.infradead.org; Wed, 19 Oct 2016 06:39:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Oct 2016 08:39:20 +0200
Message-Id: <20161019063921.13247-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] linux/list.h: Add missing include
To: Barebox List <barebox@lists.infradead.org>

linux/list.h needs linux/kernel.h for container_of(). Add it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/list.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/list.h b/include/linux/list.h
index bc63ece..af5edc9 100644
--- a/include/linux/list.h
+++ b/include/linux/list.h
@@ -2,6 +2,7 @@
 #define _LINUX_LIST_H
 
 #include <linux/stddef.h> /* for NULL */
+#include <linux/kernel.h>
 
 /*
  * Simple doubly linked list implementation.
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
