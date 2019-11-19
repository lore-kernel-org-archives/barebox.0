Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX16n-00075b-Eo
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:51:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:17 +0100
Message-Id: <20191119105036.12300-3-s.hauer@pengutronix.de>
In-Reply-To: <20191119105036.12300-1-s.hauer@pengutronix.de>
References: <20191119105036.12300-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/21] mci: sdhci: Add missing command type defines
To: Barebox List <barebox@lists.infradead.org>

Add some missing register definitions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/sdhci.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 640398d9d8..bd98c96060 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -24,6 +24,9 @@
 #define  SDHCI_DMA_EN				BIT(0)
 #define SDHCI_COMMAND						0x0e
 #define  SDHCI_CMD_INDEX(c)			(((c) & 0x3f) << 8)
+#define  SDHCI_COMMAND_CMDTYP_SUSPEND		(1 << 6)
+#define  SDHCI_COMMAND_CMDTYP_RESUME		(2 << 6)
+#define  SDHCI_COMMAND_CMDTYP_ABORT		(3 << 6)
 #define  SDHCI_DATA_PRESENT			BIT(5)
 #define  SDHCI_CMD_INDEX_CHECK_EN		BIT(4)
 #define  SDHCI_CMD_CRC_CHECK_EN			BIT(3)
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
