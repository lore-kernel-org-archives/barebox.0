Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8U1K-0008RT-Te
 for barebox@lists.infradead.org; Wed, 19 Aug 2020 19:45:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Aug 2020 21:45:09 +0200
Message-Id: <20200819194511.14005-5-s.hauer@pengutronix.de>
In-Reply-To: <20200819194511.14005-1-s.hauer@pengutronix.de>
References: <20200819194511.14005-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] clk: imx: Add imx_clk_gate4_flags
To: Barebox List <barebox@lists.infradead.org>

Needed for further clock driver updates, taken from Linux Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 32e7c5cbb7..02270cdf0f 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -141,6 +141,12 @@ static inline struct clk *imx_clk_gate4(const char *name, const char *parent,
 	return clk_gate2(name, parent, reg, shift, 0x3, CLK_OPS_PARENT_ENABLE);
 }
 
+static inline struct clk *imx_clk_gate4_flags(const char *name, const char *parent,
+		void __iomem *reg, u8 shift, unsigned long flags)
+{
+	return clk_gate2(name, parent, reg, shift, 0x3, flags | CLK_OPS_PARENT_ENABLE);
+}
+
 static inline struct clk *imx_clk_gate_shared(const char *name, const char *parent,
 					      const char *shared)
 {
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
