Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43mG-0002er-FT
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 14:23:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Feb 2020 15:23:05 +0100
Message-Id: <20200218142305.26992-7-a.fatoum@pengutronix.de>
In-Reply-To: <20200218142305.26992-1-a.fatoum@pengutronix.de>
References: <20200218142305.26992-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 6/6] net: designware: eqos: stm32: drop no longer needed
 syscfg-clk
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The upstream device tree no longer lists "syscfg-clk" and the syscon node
contains a clocks property that the barebox syscon driver now
automatically clocks before access.

Thus drop the requirement that "syscfg-clk" is specified.

Fixes: 4aaceef58 ("dts: update to v5.6-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_stm32.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/designware_stm32.c b/drivers/net/designware_stm32.c
index 4c682a5daca3..1e0cdfa6952f 100644
--- a/drivers/net/designware_stm32.c
+++ b/drivers/net/designware_stm32.c
@@ -57,12 +57,11 @@ static inline struct eqos_stm32 *to_stm32(struct eqos *eqos)
 	return eqos->priv;
 }
 
-enum { CLK_STMMACETH, CLK_MAX_RX, CLK_MAX_TX, CLK_SYSCFG,  };
+enum { CLK_STMMACETH, CLK_MAX_RX, CLK_MAX_TX, };
 static const struct clk_bulk_data stm32_clks[] = {
 	[CLK_STMMACETH] = { .id = "stmmaceth" },
 	[CLK_MAX_RX]    = { .id = "mac-clk-rx" },
 	[CLK_MAX_TX]    = { .id = "mac-clk-tx" },
-	[CLK_SYSCFG]    = { .id = "syscfg-clk" },
 };
 
 static unsigned long eqos_get_csr_clk_rate_stm32(struct eqos *eqos)
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
