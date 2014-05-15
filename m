Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wkx9X-0002Hn-61
 for barebox@lists.infradead.org; Thu, 15 May 2014 15:01:00 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Wkx94-0007UK-HJ
 for barebox@lists.infradead.org; Thu, 15 May 2014 17:00:30 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 15 May 2014 17:00:36 +0200
Message-Id: <1400166036-31135-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] syscon: fix prototype compile error
To: barebox@lists.infradead.org

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

gcc 4.8.3 throws the following error

include/mfd/syscon.h: In function 'syscon_base_lookup_by_pdevname':
include/mfd/syscon.h:22:1: error: parameter name omitted
 static inline void __iomem *syscon_base_lookup_by_pdevname(const char *)

Fix it by adding the name to the function prototype.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/mfd/syscon.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/mfd/syscon.h b/include/mfd/syscon.h
index 0eccd5cb5d84..20445202b252 100644
--- a/include/mfd/syscon.h
+++ b/include/mfd/syscon.h
@@ -15,11 +15,11 @@
 #define __MFD_SYSCON_H__
 
 #ifdef CONFIG_MFD_SYSCON
-void __iomem *syscon_base_lookup_by_pdevname(const char *);
+void __iomem *syscon_base_lookup_by_pdevname(const char *s);
 void __iomem *syscon_base_lookup_by_phandle
 	(struct device_node *np, const char *property);
 #else
-static inline void __iomem *syscon_base_lookup_by_pdevname(const char *)
+static inline void __iomem *syscon_base_lookup_by_pdevname(const char *s)
 {
 	return NULL;
 }
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
