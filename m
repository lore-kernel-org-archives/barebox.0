Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR8I2-0001op-8H
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 05:51:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 22 Apr 2020 07:49:51 +0200
Message-Id: <20200422054951.11970-2-s.hauer@pengutronix.de>
In-Reply-To: <20200422054951.11970-1-s.hauer@pengutronix.de>
References: <20200415092916.21285-1-a.fatoum@pengutronix.de>
 <20200422054951.11970-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mci: sdhci: provide sdhci_readx_poll_timeout helpers
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

The sdhci_readN accessors don't lend themselves for clean use with
readx_poll_timeout because they accept two arguments. Add
a sdhci-specific helper, so the sdhci drivers can cut down on the
timeout loop boilerplate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/sdhci.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index a307dc97cd..8c250a4d89 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -1,6 +1,9 @@
 #ifndef __MCI_SDHCI_H
 #define __MCI_SDHCI_H
 
+#include <pbl.h>
+#include <linux/iopoll.h>
+
 #define SDHCI_DMA_ADDRESS					0x00
 #define SDHCI_BLOCK_SIZE__BLOCK_COUNT				0x04
 #define SDHCI_BLOCK_SIZE					0x04
@@ -144,4 +147,13 @@ void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
 			     u32 *xfer);
 int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data);
 
+#define sdhci_read8_poll_timeout(sdhci, reg, val, cond, timeout_us) \
+	read_poll_timeout(sdhci_read8, val, cond, timeout_us, sdhci, reg)
+
+#define sdhci_read16_poll_timeout(sdhci, reg, val, cond, timeout_us) \
+	read_poll_timeout(sdhci_read16, val, cond, timeout_us, sdhci, reg)
+
+#define sdhci_read32_poll_timeout(sdhci, reg, val, cond, timeout_us) \
+	read_poll_timeout(sdhci_read32, val, cond, timeout_us, sdhci, reg)
+
 #endif /* __MCI_SDHCI_H */
-- 
2.26.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
