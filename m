Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3HHS-0003g3-2U
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 09:31:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 04/14] clk: Make CLK_IGNORE_UNUSED generic
Date: Mon, 11 Mar 2019 10:31:13 +0100
Message-Id: <20190311093123.7956-5-s.hauer@pengutronix.de>
In-Reply-To: <20190311093123.7956-1-s.hauer@pengutronix.de>
References: <20190311093123.7956-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

barebox will never disable unused clocks, so add CLK_IGNORE_UNUSED as a
no-op flag. With this we can keep the changes to the imported kernel
code smaller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/rockchip/clk.h | 1 -
 include/linux/clk.h        | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index aa52638f70..d6798a9055 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -27,7 +27,6 @@
 #include <linux/clk.h>
 
 /* To keep changes from kernel smaller */
-#define CLK_IGNORE_UNUSED 0
 #define CLK_GATE_SET_TO_DISABLE	CLK_GATE_INVERTED
 #define CLK_GET_RATE_NOCACHE 0
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 6081a1af87..5b0a93095d 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -285,6 +285,7 @@ static inline void clk_put(struct clk *clk)
 #include <linux/list.h>
 
 #define CLK_SET_RATE_PARENT     (1 << 0) /* propagate rate change up one level */
+#define CLK_IGNORE_UNUSED       (1 << 3) /* do not gate even if unused */
 /* parents need enable during gate/ungate, set rate and re-parent */
 #define CLK_OPS_PARENT_ENABLE   (1 << 12)
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
