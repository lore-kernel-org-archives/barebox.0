Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCfm6-00063m-OH
 for barebox@lists.infradead.org; Thu, 18 Feb 2021 09:39:07 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Feb 2021 10:38:58 +0100
Message-Id: <20210218093902.15354-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 1/5] include: <linux/math64.h>: include header for
 __always_inline definition
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The Linux <linux/math64.h> depends on __always_inline being defined
prior. Fix this at our side now to avoid a build failure when using
it to replace <asm-generic/div64.h> later on.

Fixes: f933da28cf3f ("include: <linux/math64.h>: sync with upstream")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - no change
v1 -> v2:
  - new patch
---
 include/linux/math64.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/math64.h b/include/linux/math64.h
index e8b737e70e50..8537c0412d09 100644
--- a/include/linux/math64.h
+++ b/include/linux/math64.h
@@ -3,6 +3,7 @@
 #define _LINUX_MATH64_H
 
 #include <linux/types.h>
+#include <linux/compiler.h>
 #include <asm-generic/div64.h>
 
 #if BITS_PER_LONG == 64
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
