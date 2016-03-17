Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1agUkv-00030Y-Bp
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 10:02:15 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id BD60827A707
 for <barebox@lists.infradead.org>; Thu, 17 Mar 2016 11:01:29 +0100 (CET)
From: Alexander Stein <alexander.stein@systec-electronic.com>
Date: Thu, 17 Mar 2016 11:00:27 +0100
Message-Id: <1458208829-25570-12-git-send-email-alexander.stein@systec-electronic.com>
In-Reply-To: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
References: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: [PATCH 11/13] barebox-wrapper: Implement kfree and vfree as static
 inline functions
To: barebox@lists.infradead.org
Cc: Daniel Krueger <daniel.krueger@systec-electronic.com>, Alexander Stein <alexander.stein@systec-electronic.com>

If kfree/vfree is called where free is a already variable name, code will
not compile.
Also both take a const* in Linux kernel code.

Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
---
 include/linux/barebox-wrapper.h | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index fc1b5c2..67b332e 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -1,14 +1,21 @@
 #ifndef __INCLUDE_LINUX_BAREBOX_WRAPPER_H
 #define __INCLUDE_LINUX_BAREBOX_WRAPPER_H
 
+#include <malloc.h>
 #include <xfuncs.h>
 
 #define kmalloc(len, mode)	malloc(len)
 #define kzalloc(len, mode)	xzalloc(len)
 #define vmalloc(len)		malloc(len)
-#define kfree(ptr)		free(ptr)
+static inline void kfree(const void *block)
+{
+	free((void *)block);
+}
 #define vzalloc(len)		kzalloc(len, 0)
-#define vfree(ptr)		free(ptr)
+static inline void vfree(const void *addr)
+{
+	free((void *)addr);
+}
 
 #define KERN_EMERG      ""   /* system is unusable                   */
 #define KERN_ALERT      ""   /* action must be taken immediately     */
-- 
2.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
