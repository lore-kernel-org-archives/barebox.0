Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YRQVL-0005PA-Vx
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 19:23:22 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 5AACF26C2001
 for <barebox@lists.infradead.org>; Fri, 27 Feb 2015 20:22:21 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 27 Feb 2015 20:22:14 +0100
Message-Id: <1425064938-11558-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/5] bbu: include necessary headers
To: barebox@lists.infradead.org

Fixes compile errors due to undefined symbols.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 include/bbu.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/bbu.h b/include/bbu.h
index adb52b0..4a3d35e 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -2,6 +2,8 @@
 #define __INCLUDE_BBU_H
 
 #include <asm-generic/errno.h>
+#include <linux/list.h>
+#include <linux/types.h>
 
 struct bbu_data {
 #define BBU_FLAG_FORCE	(1 << 0)
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
