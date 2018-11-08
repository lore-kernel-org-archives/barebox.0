Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tf.think-future.de ([193.7.177.246] helo=think-future.de)
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gKlUe-0002EP-BU
 for barebox@lists.infradead.org; Thu, 08 Nov 2018 14:41:13 +0000
From: perachet7@gmail.com
Date: Thu, 08 Nov 2018 15:34:29 +0100
Message-Id: <2337209.lTZxGkHaYR@think-future.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: perachet7@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] rk3188: don't set same clk rate twice
To: barebox@lists.infradead.org

Hi,

We found setting a clock rate which has already been set, rk3188 (radxa rock 
pro) bails out. This is a quick fix only. Underlying situation not (yet) 
investigated: why it is even trying to set it to the same rate again. It 
remains to state that some but not all rrpro boards exhibit this behaviour, no 
other rk3188 boards have been tested.

Signed-off-by: P. Rachet <perachet7@gmail.com>
---
 drivers/clk/rockchip/clk-pll.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index f0dc12091..690da4afb 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -164,6 +164,11 @@ static int rockchip_rk3066_pll_set_rate(struct clk *hw, 
unsigned long drate,
  int cur_parent;
  int ret;

+  if (old_rate == drate) {
+    pr_debug("%s: not changing rate, old == new rate (clk/old/new/parent): 
%s/%lu/%lu/%lu\n", __func__, __clk_get_name(hw), old_rate, drate, prate);
+    return 0;
+  }
+
  pr_debug("%s: changing %s from %lu to %lu with a parent rate of %lu\n",
     __func__, __clk_get_name(hw), old_rate, drate, prate);

--
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
