Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnNg-0005pq-Dp
 for barebox@lists.infradead.org; Wed, 17 Jul 2019 17:06:18 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Jul 2019 19:05:58 +0200
Message-Id: <20190717170604.23732-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 0/6] clk: imx6: work around LDB hang caused by ERR009219
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Short version:

barebox always reparents the ldb_di[01] clocks to pll5_video_div.
Due to a hardware erratum, this can trigger a glitch that causes
LDB lock up.

Thus:

1) remove the automatic reparenting, like the kernel now does and
   mark the affected clocks read only, so assigned-clock-parents
   can't affect them
2) parse assigned-clock-parents in the clk-imx6 code as well, but
   there use a convoluted non-glitchy work around to apply them

Long version available alongside v1 here:
https://www.spinics.net/lists/u-boot-v2/msg37658.html
and in the commit messages of the patches.
v2 is available here:
https://www.spinics.net/lists/u-boot-v2/msg37970.html

Changes since v2:
 - reordered commits to avoid intermittent breakage, final
   diff unaffected
 - prepended a commit fixing premature use of cpu_is_mx6
 - fixed brace placement of cpu_(mx6_)?has_err009219
 - changed commits to use cpu_mx6_is_mx6*, all suggested by Andrey
 - updated commit messages, collected Andrey's Tested-By and
   Philipp's Reviewed-By

Changes since v1:
 - reordered/squashed commits after discussion with Sascha and Phillip
 - removed superfluous comment
 - add MUX_READ_ONLY at the correct place in the MUX_READ_ONLY arguments

Except for the last two, the total diff, is exactly the same
as v1's.

Ahmad Fatoum (3):
  clk: imx6: fix use of cpu_is_mx6* before they are initialized
  clk: imx6: remove quirky clk_set_parent(LDB_diN_sel, pll5_video_div)
  clk: imx6: define an enum for ldb mux inputs

Fabio Estevam (1):
  clk: imx6: Fix procedure to switch the parent of LDB_DI_CLK

Philipp Zabel (2):
  clk: imx6: Mask mmdc_ch1 handshake for periph2_sel and
    mmdc_ch1_axi_podf
  clk: imx6: Make the LDB_DI0 and LDB_DI1 clocks read-only

 drivers/clk/imx/clk-imx6.c | 329 ++++++++++++++++++++++++++++++++++---
 drivers/clk/imx/clk.h      |   8 +
 2 files changed, 317 insertions(+), 20 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
