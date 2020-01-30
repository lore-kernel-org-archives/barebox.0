Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDFO-0007vh-5W
 for barebox@lists.infradead.org; Thu, 30 Jan 2020 17:04:55 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 30 Jan 2020 18:04:45 +0100
Message-Id: <20200130170449.9761-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200130170449.9761-1-a.fatoum@pengutronix.de>
References: <20200130170449.9761-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/5] mci: stm32_sdmmc2: use correct card power cycle sequence
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The stm32mp157c RM0436 reference manual lists following sequence for
resetting the SDMMC:

1. Reset using the RCC.SDMMCxRST register bit
  -> We do this via reset_control_assert

2. Disable Vcc power to the card
  -> We don't do this, because the rail often has other 3v3 peripherals
     hanging off it

3. Set the SDMMC to power-cycle state
  -> We do this only when the MCI core sets the frequency to zero, not
     on init!

4. reenable Vcc power to the card after a >1ms
  -> We don't do this, because we don't disable Vcc

5. Wait >1ms for the power ramp period, then put card into power-off
  -> We do this in stm32_sdmmc2_pwron

6. Wait >1ms, then put card into power-on state
  -> We do this in stm32_sdmmc2_pwron

7. Wait 74 SDMMC_CK cycles before sending the first command to the card
  -> We don't have an explicit delay between mci_startup_{sd,mmc} and
     mci_set_blocklen, so a low max-speed may run afoul of the timing
     constraint

Fix 3 & 7. 3 is the main one and doing it fixes an issue of timeouts
occurring, when having barebox in a reboot loop or the SD-Card inside
a USB-SD-Mux.

Fixes: ce99d0c86b32ec ("mci: add support for stm32mp sd/mmc controller")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/stm32_sdmmc2.c | 29 ++++++++++++++---------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 1a41c34d24e2..eba079f1799b 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -185,31 +185,31 @@ struct stm32_sdmmc2_priv {
 
 #define to_mci_host(mci)	container_of(mci, struct stm32_sdmmc2_priv, mci)
 
-/*
- * Reset the SDMMC with the RCC.SDMMCxRST register bit.
- * This will reset the SDMMC to the reset state and the CPSM and DPSM
- * to the Idle state. SDMMC is disabled, Signals Hiz.
- */
 static int stm32_sdmmc2_reset(struct mci_host *mci, struct device_d *mci_dev)
 {
 	struct stm32_sdmmc2_priv *priv = to_mci_host(mci);
 
+	/*
+	 * Reset the SDMMC with the RCC.SDMMCxRST register bit.
+	 * This will reset the SDMMC to the reset state and the CPSM and DPSM
+	 * to the Idle state. SDMMC is disabled, Signals Hiz.
+	 */
 	reset_control_assert(priv->reset_ctl);
 	udelay(2);
 	reset_control_deassert(priv->reset_ctl);
 
-	/* init the needed SDMMC register after reset */
-	writel(priv->pwr_reg_msk, priv->base + SDMMC_POWER);
+	/*
+	 * Set the SDMMC in power-cycle state.
+	 * This will make that the SDMMC_D[7:0],
+	 * SDMMC_CMD and SDMMC_CK are driven low, to prevent the card from being
+	 * supplied through the signal lines.
+	 */
+	writel(SDMMC_POWER_PWRCTRL_CYCLE | priv->pwr_reg_msk,
+	       priv->base + SDMMC_POWER);
 
 	return 0;
 }
 
-/*
- * Set the SDMMC in power-cycle state.
- * This will make that the SDMMC_D[7:0],
- * SDMMC_CMD and SDMMC_CK are driven low, to prevent the card from being
- * supplied through the signal lines.
- */
 static void stm32_sdmmc2_pwrcycle(struct stm32_sdmmc2_priv *priv)
 {
 	if ((readl(priv->base + SDMMC_POWER) & SDMMC_POWER_PWRCTRL_MASK) ==
@@ -217,8 +217,6 @@ static void stm32_sdmmc2_pwrcycle(struct stm32_sdmmc2_priv *priv)
 		return;
 
 	stm32_sdmmc2_reset(&priv->mci, priv->dev);
-	writel(SDMMC_POWER_PWRCTRL_CYCLE | priv->pwr_reg_msk,
-	       priv->base + SDMMC_POWER);
 }
 
 /*
@@ -256,6 +254,7 @@ static void stm32_sdmmc2_pwron(struct stm32_sdmmc2_priv *priv)
 	       priv->base + SDMMC_POWER);
 
 	/* during the first 74 SDMMC_CK cycles the SDMMC is still disabled. */
+	udelay(DIV_ROUND_UP(74 * USEC_PER_SEC, priv->mci.clock));
 }
 
 static void stm32_sdmmc2_start_data(struct stm32_sdmmc2_priv *priv,
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
