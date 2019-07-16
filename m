Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnLAQ-0002Q5-S4
 for barebox@lists.infradead.org; Tue, 16 Jul 2019 10:58:44 +0000
From: Bastian Krause <bst@pengutronix.de>
Date: Tue, 16 Jul 2019 12:58:35 +0200
Message-Id: <20190716105837.18237-1-bst@pengutronix.de>
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
Subject: [PATCH 1/3] digest.h: needs errno definitions
To: barebox@lists.infradead.org
Cc: Juergen Borleis <jbe@pengutronix.de>, Bastian Krause <bst@pengutronix.de>

From: Juergen Borleis <jbe@pengutronix.de>

digest_set_key() returns -ENOTSUPP conditionally, so include errno.h.

Fixes: 2f3c3f512b ("digest: add HMAC support for md5, sha1, sha224, sha256, sha384, sha512")
Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 include/digest.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/digest.h b/include/digest.h
index 474bdd160a..176084146b 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -20,6 +20,7 @@
 #define __DIGEST_H__
 
 #include <linux/list.h>
+#include <errno.h>
 
 struct digest;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
