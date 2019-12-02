Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnUm-0004Y0-RI
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 15:20:18 +0000
Received: by mail-pg1-x541.google.com with SMTP id k1so18470159pgg.12
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2019 07:20:16 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  2 Dec 2019 07:19:43 -0800
Message-Id: <20191202151954.16032-2-andrew.smirnov@gmail.com>
In-Reply-To: <20191202151954.16032-1-andrew.smirnov@gmail.com>
References: <20191202151954.16032-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/12] mci: imx-esdhc: Drop unnecessary type conversion
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Nether esdhc_setup_data() nor esdhc_do_data() really need struct
mci_host, so we can drop a bit of extra type conversion code by
changing their signature to accept struct fsl_esdhc_host instead

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index bebc36d0b..7d12df2b8 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -164,10 +164,9 @@ static inline void esdhc_setbits32(struct fsl_esdhc_host *host, unsigned int reg
 	esdhc_clrsetbits32(host, reg, 0, set);
 }
 
-static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data,
+static int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
 			    dma_addr_t dma)
 {
-	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	u32 wml_value;
 
 	if (!IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO)) {
@@ -193,9 +192,8 @@ static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data,
 	return 0;
 }
 
-static int esdhc_do_data(struct mci_host *mci, struct mci_data *data)
+static int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data)
 {
-	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	u32 irqstat;
 
 	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO))
@@ -256,7 +254,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 				return -EFAULT;
 		}
 
-		err = esdhc_setup_data(mci, data, dma);
+		err = esdhc_setup_data(host, data, dma);
 		if(err)
 			return err;
 	}
@@ -319,7 +317,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 
 	/* Wait until all of the blocks are transferred */
 	if (data) {
-		ret = esdhc_do_data(mci, data);
+		ret = esdhc_do_data(host, data);
 		if (ret)
 			return ret;
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
