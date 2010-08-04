Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgXJq-0004g5-Ug
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 06:19:15 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  4 Aug 2010 08:14:33 +0200
Message-Id: <1280902473-12183-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] stddef: introduce true/false enum
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/linux/stddef.h |    5 +++++
 include/xyzModem.h     |    3 ---
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/include/linux/stddef.h b/include/linux/stddef.h
index 81e34c2..e366328 100644
--- a/include/linux/stddef.h
+++ b/include/linux/stddef.h
@@ -8,6 +8,11 @@
 #define NULL ((void *)0)
 #endif
 
+enum {
+	false	= 0,
+	true	= 1
+};
+
 #ifndef _SIZE_T
 #include <linux/types.h>
 #endif
diff --git a/include/xyzModem.h b/include/xyzModem.h
index 9723e73..a3ea768 100644
--- a/include/xyzModem.h
+++ b/include/xyzModem.h
@@ -97,9 +97,6 @@ typedef struct {
 #endif
 } connection_info_t;
 
-#define false 0
-#define true 1
-
 #endif
 
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
