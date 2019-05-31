Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWen8-0003hT-5H
 for barebox@lists.infradead.org; Fri, 31 May 2019 10:29:43 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1hWen5-0005Ye-A5
 for barebox@lists.infradead.org; Fri, 31 May 2019 12:29:39 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 31 May 2019 12:29:39 +0200
Message-Id: <20190531102939.26054-1-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: zii-common: add missing stddef.h include
To: barebox@lists.infradead.org

It's required for size_t types.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-common/pn-fixup.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/zii-common/pn-fixup.h b/arch/arm/boards/zii-common/pn-fixup.h
index 39b848bd00d3..925e8ad63491 100644
--- a/arch/arm/boards/zii-common/pn-fixup.h
+++ b/arch/arm/boards/zii-common/pn-fixup.h
@@ -15,6 +15,8 @@
 #ifndef __ZII_PN_FIXUP__
 #define __ZII_PN_FIXUP__
 
+#include <linux/stddef.h>
+
 struct zii_pn_fixup {
 	const char *pn;
 	void (*callback) (const struct zii_pn_fixup *fixup);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
