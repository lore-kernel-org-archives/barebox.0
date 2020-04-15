Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeMC-0000ZX-RD
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 09:29:24 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 Apr 2020 11:29:14 +0200
Message-Id: <20200415092916.21285-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200415092916.21285-1-a.fatoum@pengutronix.de>
References: <20200415092916.21285-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/4] mci: sdhci: implement sdhci_reset()
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

SDHCI reset is common between many SDHCI variants. Add a library
function, so it can be reused.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/sdhci.c | 11 +++++++++++
 drivers/mci/sdhci.h |  3 +++
 2 files changed, 14 insertions(+)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 172c8343a199..dba26b2665da 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -138,3 +138,14 @@ int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data)
 
 	return 0;
 }
+
+int sdhci_reset(struct sdhci *sdhci, u8 mask)
+{
+	u8 val;
+
+	sdhci_write8(sdhci, SDHCI_SOFTWARE_RESET, mask);
+
+	return sdhci_read8_poll_timeout(sdhci, SDHCI_SOFTWARE_RESET,
+					val, !(val & mask),
+					100 * USEC_PER_MSEC);
+}
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 7ac32f1541b8..bf0c3e0f6c0c 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -70,6 +70,8 @@
 #define SDHCI_TIMEOUT_CONTROL					0x2e
 #define SDHCI_SOFTWARE_RESET					0x2f
 #define  SDHCI_RESET_ALL			BIT(0)
+#define  SDHCI_RESET_CMD			BIT(1)
+#define  SDHCI_RESET_DATA			BIT(2)
 #define SDHCI_INT_STATUS					0x30
 #define SDHCI_INT_NORMAL_STATUS					0x30
 #define  SDHCI_INT_DATA_END_BIT			BIT(22)
@@ -145,6 +147,7 @@ void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
 			     struct mci_data *data, bool dma, u32 *command,
 			     u32 *xfer);
 int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data);
+int sdhci_reset(struct sdhci *sdhci, u8 mask);
 
 /**
  * sdhci_readx_poll_timeout -	Periodically poll an sdhci register until
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
