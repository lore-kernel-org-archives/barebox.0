Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehCO1-0006BS-92
 for barebox@lists.infradead.org; Thu, 01 Feb 2018 10:46:34 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu,  1 Feb 2018 11:46:11 +0100
Message-Id: <20180201104615.19524-1-p.zabel@pengutronix.de>
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
Subject: [PATCH 1/4] include linux/compiler.h in linux/unaligned/generic.h
To: barebox@lists.infradead.org

Without this include, the __force macro used in this header may be
undefined.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 include/linux/unaligned/generic.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/unaligned/generic.h b/include/linux/unaligned/generic.h
index 02d97ff3df..43d5f2af24 100644
--- a/include/linux/unaligned/generic.h
+++ b/include/linux/unaligned/generic.h
@@ -1,6 +1,8 @@
 #ifndef _LINUX_UNALIGNED_GENERIC_H
 #define _LINUX_UNALIGNED_GENERIC_H
 
+#include <linux/compiler.h>
+
 /*
  * Cause a link-time error if we try an unaligned access other than
  * 1,2,4 or 8 bytes long
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
