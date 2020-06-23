Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnfrN-0004r6-V6
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 10:08:58 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Jun 2020 12:08:45 +0200
Message-Id: <20200623100846.21965-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200623100846.21965-1-a.fatoum@pengutronix.de>
References: <20200623100846.21965-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 2/3] mci: sdhci: atmel: use dev_printf instead of pr_print
 in common code
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

On boards like the sama5d27 som1 ek, we have two SD card slots, so error
messages are more useful if they refer to the SDHCI instance. We didn't
do this at first, because the common code is compiled for PBL as well.
With a sprinkle of preprocessor ifdeffery, we can have both.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  rebased on upstream/next to fix not applying hunk
---
 drivers/mci/atmel-sdhci-common.c | 17 ++++++++++++-----
 drivers/mci/atmel-sdhci.c        |  2 ++
 drivers/mci/atmel-sdhci.h        |  1 +
 3 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index fff4468d71e8..1884f3836337 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -12,6 +12,13 @@
 #include <common.h>
 #include <mci.h>
 
+#ifdef __PBL__
+#undef  dev_err
+#define dev_err(d, ...)		pr_err(__VA_ARGS__)
+#undef  dev_warn
+#define dev_warn(d, ...)	pr_warn(__VA_ARGS__)
+#endif
+
 #include "atmel-sdhci.h"
 
 #define AT91_SDHCI_CA1R		0x44	/* Capabilities 1 Register */
@@ -91,7 +98,7 @@ static int at91_sdhci_wait_for_done(struct at91_sdhci *host, u32 mask)
 					USEC_PER_SEC);
 
 	if (ret < 0) {
-		pr_err("SDHCI timeout while waiting for done\n");
+		dev_err(host->dev, "SDHCI timeout while waiting for done\n");
 		return ret;
 	}
 
@@ -99,7 +106,7 @@ static int at91_sdhci_wait_for_done(struct at91_sdhci *host, u32 mask)
 		return -ETIMEDOUT;
 
 	if (status & SDHCI_INT_ERROR) {
-		pr_err("SDHCI_INT_STATUS: 0x%08x\n", status);
+		dev_err(host->dev, "SDHCI_INT_STATUS: 0x%08x\n", status);
 		return -EPERM;
 	}
 
@@ -123,7 +130,7 @@ int at91_sdhci_send_command(struct at91_sdhci *host, struct mci_cmd *cmd,
 	ret = sdhci_read32_poll_timeout(sdhci, SDHCI_PRESENT_STATE, state,
 					!(state & mask), 100 * USEC_PER_MSEC);
 	if (ret) {
-		pr_err("timeout while waiting for idle\n");
+		dev_err(host->dev, "timeout while waiting for idle\n");
 		return ret;
 	}
 
@@ -218,7 +225,7 @@ static int at91_sdhci_set_clock(struct at91_sdhci *host, unsigned clock)
 					!(reg & present_mask),
 					100 * USEC_PER_MSEC);
 	if (ret) {
-		pr_warn("Timeout waiting for CMD and DAT Inhibit bits\n");
+		dev_warn(host->dev, "Timeout waiting for CMD and DAT Inhibit bits\n");
 		return ret;
 	}
 
@@ -262,7 +269,7 @@ static int at91_sdhci_set_clock(struct at91_sdhci *host, unsigned clock)
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
