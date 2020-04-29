Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTgOJ-0002kp-De
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 06:40:20 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 29 Apr 2020 08:40:14 +0200
Message-Id: <20200429064014.26584-1-a.fatoum@pengutronix.de>
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
Subject: [RFC PATCH] ddr: fsl: fix null pointer dereference handling DDR4
 memories
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

cppcheck reports:

  drivers/ddr/fsl/util.c:42:27: error: Null pointer dereference:
	  c [ctunullpointer]
   unsigned int data_rate = c->ddr_freq;
                            ^
  drivers/ddr/fsl/ctrl_regs.c:1114:55: note: Calling function
      get_memory_clk_period_ps, 1st argument is null
   const unsigned int mclk_ps = get_memory_clk_period_ps(0);

Because get_memory_clk_period_ps expects a valid pointer, but is instead
passed NULL. Fix this by passing along the DDR controller handle like all
other calls to the function do. This is untested.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/ddr/fsl/ctrl_regs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ddr/fsl/ctrl_regs.c b/drivers/ddr/fsl/ctrl_regs.c
index 4957320d600c..eb99e0ea21e7 100644
--- a/drivers/ddr/fsl/ctrl_regs.c
+++ b/drivers/ddr/fsl/ctrl_regs.c
@@ -1111,7 +1111,7 @@ static void set_ddr_sdram_mode_9(struct fsl_ddr_controller *c,
 	unsigned short esdmode5;	/* Extended SDRAM mode 5 */
 	int rtt_park = 0;
 	bool four_cs = false;
-	const unsigned int mclk_ps = get_memory_clk_period_ps(0);
+	const unsigned int mclk_ps = get_memory_clk_period_ps(c);
 
 	if ((ddr->cs[0].config & SDRAM_CS_CONFIG_EN) &&
 	    (ddr->cs[1].config & SDRAM_CS_CONFIG_EN) &&
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
