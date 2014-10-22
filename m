Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XgwQ9-0003Qz-CJ
 for barebox@lists.infradead.org; Wed, 22 Oct 2014 13:57:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 22 Oct 2014 15:57:16 +0200
Message-Id: <1413986236-893-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] include/environment.h: Add missing include
To: barebox@lists.infradead.org

include/environment.h uses error codes, so it needs errno.h.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/environment.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/environment.h b/include/environment.h
index a08f597..52eafe9 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -21,6 +21,7 @@
 #define _ENVIRONMENT_H_
 
 #include <linux/list.h>
+#include <errno.h>
 
 /**
  * Managment of a environment variable
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
