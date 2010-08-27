Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OorHy-0005il-Uj
	for barebox@lists.infradead.org; Fri, 27 Aug 2010 05:15:47 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Aug 2010 07:15:15 +0200
Message-Id: <1282886118-15217-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/4] xfuncs.h: include linux/types.h to avoid non decleration
	of size_t
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/xfuncs.h |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/include/xfuncs.h b/include/xfuncs.h
index 4ce4e92..222ea41 100644
--- a/include/xfuncs.h
+++ b/include/xfuncs.h
@@ -1,6 +1,8 @@
 #ifndef __XFUNCS_H
 #define __XFUNCS_H
 
+#include <linux/types.h>
+
 void *xmalloc(size_t size);
 void *xrealloc(void *ptr, size_t size);
 void *xzalloc(size_t size);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
