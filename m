Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnHzX-0005x3-Ib
 for barebox@lists.infradead.org; Mon, 22 Jun 2020 08:40:57 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jun 2020 10:39:42 +0200
Message-Id: <20200622083943.21737-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200622083943.21737-1-a.fatoum@pengutronix.de>
References: <20200622083943.21737-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/3] mci: sdhci: atmel: use dev_printf instead of pr_print in
 common code
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

On boards like the sama5d27 som1 ek, we have two SD card slots, so error
messages are more useful if they refer to the SDHCI instance. We didn't
do this at first, because the common code is compiled for PBL as well.
With a sprinkle of preprocessor ifdeffery, we can have both.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/atmel-sdhci-common.c | 14 +++++++++-----
 drivers/mci/atmel-sdhci.c        |  2 ++
 drivers/mci/atmel-sdhci.h        |  1 +
 3 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index 060d1c33d1a5..a83610c3d090 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -16,6 +16,10 @@
 
 #ifdef __PBL__
 #define udelay early_udelay
+#undef  dev_err
+#define dev_err(d, ...)		pr_err(__VA_ARGS__)
+#undef  dev_warn
+#define dev_warn(d, ...)	pr_warn(__VA_ARGS__)
 #endif
 
 #include "atmel-sdhci.h"
@@ -97,7 +101,7 @@ static int at91_sdhci_wait_for_done(struct at91_sdhci *host, u32 mask)
 					USEC_PER_SEC);
 
 	if (ret < 0) {
-		pr_err("SDHCI timeout while waiting for done\n");
+		dev_err(host->dev, "SDHCI timeout while waiting for done\n");
 		return ret;
 	}
 
@@ -105,7 +109,7 @@ static int at91_sdhci_wait_for_done(struct at91_sdhci *host, u32 mask)
 		return -ETIMEDOUT;
 
 	if (status & SDHCI_INT_ERROR) {
-		pr_err("SDHCI_INT_STATUS: 0x%08x\n", status);
+		dev_err(host->dev, "SDHCI_INT_STATUS: 0x%08x\n", status);
 		return -EPERM;
 	}
 
@@ -129,7 +133,7 @@ int at91_sdhci_send_command(struct at91_sdhci *host, struct mci_cmd *cmd,
 	ret = sdhci_read32_poll_timeout(sdhci, SDHCI_PRESENT_STATE, state,
 					!(state & mask), 100 * USEC_PER_MSEC);
 	if (ret) {
-		pr_err("timeout while waiting for idle\n");
+		dev_err(host->dev, "timeout while waiting for idle\n");
 		return ret;
 	}
 
@@ -224,7 +228,7 @@ static int at91_sdhci_set_clock(struct at91_sdhci *host, unsigned clock)
 					!(reg & present_mask),
 					100 * USEC_PER_MSEC);
 	if (ret) {
-		pr_warn("Timeout waiting for CMD and DAT Inhibit bits\n");
+		dev_warn(host->dev, "Timeout waiting for CMD and DAT Inhibit bits\n");
 		return ret;
 	}
 
@@ -268,7 +272,7 @@ static int at91_sdhci_set_clock(struct at91_sdhci *host, unsigned clock)
 					clk & SDHCI_INTCLOCK_STABLE,
 					20 * USEC_PER_MSEC);
 	if (ret) {
-		pr_warn("Timeout waiting for clock stable\n");
+		dev_warn(host->dev, "Timeout waiting for clock stable\n");
 		return ret;
 	}
 
diff --git a/drivers/mci/atmel-sdhci.c b/drivers/mci/atmel-sdhci.c
index 635118647676..70d3cd4091ff 100644
--- a/drivers/mci/atmel-sdhci.c
+++ b/drivers/mci/atmel-sdhci.c
@@ -46,6 +46,8 @@ static int at91_sdhci_mci_init(struct mci_host *mci, struct device_d *dev)
 	struct sdhci *sdhci = &priv->host.sdhci;
 	int ret;
 
+	priv->host.dev = dev;
+
 	ret = sdhci_reset(sdhci, SDHCI_RESET_ALL);
 	if (ret)
 		return ret;
diff --git a/drivers/mci/atmel-sdhci.h b/drivers/mci/atmel-sdhci.h
index 897ed4e4de86..703229464786 100644
--- a/drivers/mci/atmel-sdhci.h
+++ b/drivers/mci/atmel-sdhci.h
@@ -11,6 +11,7 @@
 
 struct at91_sdhci {
 	struct sdhci	sdhci;
+	struct device_d *dev;
 	void __iomem	*base;
 	u32		caps_max_clock;
 };
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
