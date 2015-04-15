Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YiUAe-0004UE-Hk
 for barebox@lists.infradead.org; Wed, 15 Apr 2015 20:44:29 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 15 Apr 2015 22:44:00 +0200
Message-Id: <1429130640-15900-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1429130640-15900-1-git-send-email-mkl@pengutronix.de>
References: <1429130640-15900-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/2] include: add includes includes to make fdt.h,
 of.h and state.h self contained
To: barebox@lists.infradead.org

Otherwise compilation may fail with:

include/fdt.h:11:15: error: unknown type name 'uint64_t'
 static inline uint64_t fdt64_to_cpu(uint64_t x)

include/of.h:22:19: error: field 'list' has incomplete type
  struct list_head list;

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 include/fdt.h   | 2 ++
 include/of.h    | 2 ++
 include/state.h | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/include/fdt.h b/include/fdt.h
index 35278e30304b..1ccd4c67344a 100644
--- a/include/fdt.h
+++ b/include/fdt.h
@@ -1,6 +1,8 @@
 #ifndef _FDT_H
 #define _FDT_H
 
+#include <linux/types.h>
+
 #ifndef __ASSEMBLY__
 
 #define _B(n)	((unsigned long long)((uint8_t *)&x)[n])
diff --git a/include/of.h b/include/of.h
index 764a2e5939b7..7235138f30bf 100644
--- a/include/of.h
+++ b/include/of.h
@@ -3,6 +3,8 @@
 
 #include <fdt.h>
 #include <errno.h>
+#include <linux/types.h>
+#include <linux/list.h>
 #include <asm/byteorder.h>
 
 /* Default string compare functions */
diff --git a/include/state.h b/include/state.h
index 95bf8d263b19..e96d3bfb2e4f 100644
--- a/include/state.h
+++ b/include/state.h
@@ -1,6 +1,8 @@
 #ifndef __STATE_H
 #define __STATE_H
 
+#include <of.h>
+
 struct state;
 
 int state_backend_dtb_file(struct state *state, const char *path);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
