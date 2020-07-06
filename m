Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsKaT-0001CU-Dc
 for barebox@lists.infradead.org; Mon, 06 Jul 2020 06:26:46 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jul 2020 08:26:43 +0200
Message-Id: <20200706062643.29336-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] i2c: designware: use proper type for writel argument
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We need to write DW_IC_ENABLE_ENABLE (1 << 0) to the register to enable,
but instead we were writing true. This happens to work, but is quite
unusual. Make the code more readable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/busses/i2c-designware.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-designware.c b/drivers/i2c/busses/i2c-designware.c
index 33f89148f0cc..bb9a0b7c4ad4 100644
--- a/drivers/i2c/busses/i2c-designware.c
+++ b/drivers/i2c/busses/i2c-designware.c
@@ -121,6 +121,8 @@ static inline struct dw_i2c_dev *to_dw_i2c_dev(struct i2c_adapter *a)
 
 static void i2c_dw_enable(struct dw_i2c_dev *dw, bool enable)
 {
+	u32 reg = 0;
+
 	/*
 	 * This subrotine is an implementation of an algorithm
 	 * described in "Cyclone V Hard Processor System Technical
@@ -128,12 +130,13 @@ static void i2c_dw_enable(struct dw_i2c_dev *dw, bool enable)
 	 */
 	int timeout = MAX_T_POLL_COUNT;
 
-	enable = enable ? DW_IC_ENABLE_ENABLE : 0;
+	if (enable)
+		reg |= DW_IC_ENABLE_ENABLE;
 
 	do {
 		uint32_t ic_enable_status;
 
-		writel(enable, dw->base + DW_IC_ENABLE);
+		writel(reg, dw->base + DW_IC_ENABLE);
 
 		ic_enable_status = readl(dw->base + DW_IC_ENABLE_STATUS);
 		if ((ic_enable_status & DW_IC_ENABLE_STATUS_IC_EN) == enable)
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
