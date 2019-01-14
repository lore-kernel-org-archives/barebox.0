Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gj5JX-0006yf-BI
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 16:42:20 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gj5JT-0007Zj-UH
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 17:42:11 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 14 Jan 2019 17:42:04 +0100
Message-Id: <20190114164211.10871-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/8] clk: add missing list.h include
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/linux/clk.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 26da1114e85a..494221a43070 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -197,6 +197,8 @@ static inline int clk_set_rate(struct clk *clk, unsigned long rate)
 
 #ifdef CONFIG_COMMON_CLK
 
+#include <linux/list.h>
+
 #define CLK_SET_RATE_PARENT     (1 << 0) /* propagate rate change up one level */
 /* parents need enable during gate/ungate, set rate and re-parent */
 #define CLK_OPS_PARENT_ENABLE   (1 << 12)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
