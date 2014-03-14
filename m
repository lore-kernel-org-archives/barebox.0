Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WOTAp-0003AT-DN
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:33 +0100
Message-Id: <1394807569-23620-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/29] clk: introduce CLK_SET_RATE_PARENT flag
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/clk.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 7e5010a..2704b0f 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -196,6 +196,9 @@ static inline int clk_set_rate(struct clk *clk, unsigned long rate)
 #endif
 
 #ifdef CONFIG_COMMON_CLK
+
+#define CLK_SET_RATE_PARENT     (1 << 0) /* propagate rate change up one level */
+
 struct clk_ops {
 	int		(*enable)(struct clk *clk);
 	void		(*disable)(struct clk *clk);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
