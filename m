Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OorHy-0005im-Ud
	for barebox@lists.infradead.org; Fri, 27 Aug 2010 05:15:47 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Aug 2010 07:15:16 +0200
Message-Id: <1282886118-15217-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1282886118-15217-1-git-send-email-plagnioj@jcrosoft.com>
References: <1282886118-15217-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/4] introduce pure_initcall
To: barebox@lists.infradead.org

A "pure" initcall has no dependencies on anything else, and purely
initializes variables that couldn't be statically initialized.

This only exists for built-in code, not for modules.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/init.h |   15 +++++++++++----
 1 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/include/init.h b/include/init.h
index accc4d0..bc70874 100644
--- a/include/init.h
+++ b/include/init.h
@@ -14,10 +14,17 @@ typedef int (*initcall_t)(void);
 	__attribute__((__section__(".initcall." level))) = fn
 
 
-#define core_initcall(fn)		__define_initcall("0",fn,0)
-#define postcore_initcall(fn)		__define_initcall("1",fn,1)
-#define console_initcall(fn)		__define_initcall("2",fn,2)
-#define postconsole_initcall(fn)	__define_initcall("3",fn,3)
+/*
+ * A "pure" initcall has no dependencies on anything else, and purely
+ * initializes variables that couldn't be statically initialized.
+ *
+ * This only exists for built-in code, not for modules.
+ */
+#define pure_initcall(fn)		__define_initcall("0",fn,0)
+
+#define core_initcall(fn)		__define_initcall("1",fn,1)
+#define postcore_initcall(fn)		__define_initcall("2",fn,2)
+#define console_initcall(fn)		__define_initcall("3",fn,3)
 #define coredevice_initcall(fn)		__define_initcall("4",fn,4)
 #define fs_initcall(fn)			__define_initcall("5",fn,5)
 #define device_initcall(fn)		__define_initcall("6",fn,6)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
