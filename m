Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XBrUW-0001pt-2r
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 20:25:52 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Mon, 28 Jul 2014 22:25:15 +0200
Message-Id: <1406579115-3955-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH] include/bbu: Add missing include errno.h
To: barebox@lists.infradead.org

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 include/bbu.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/bbu.h b/include/bbu.h
index 095eebcf4afa..adb52b0dec42 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -1,6 +1,8 @@
 #ifndef __INCLUDE_BBU_H
 #define __INCLUDE_BBU_H
 
+#include <asm-generic/errno.h>
+
 struct bbu_data {
 #define BBU_FLAG_FORCE	(1 << 0)
 #define BBU_FLAG_YES	(1 << 1)
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
