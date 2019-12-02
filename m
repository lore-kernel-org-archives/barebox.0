Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnUp-0004Yy-B1
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 15:20:20 +0000
Received: by mail-pl1-x644.google.com with SMTP id k20so42560pll.13
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2019 07:20:19 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  2 Dec 2019 07:19:45 -0800
Message-Id: <20191202151954.16032-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/12] mci: imx-esdhc: Drop extra helper varaible
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There's already 'ret' availible, no need to declare another return
value variable.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 7d12df2b8..b6dd75d2c 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -236,8 +236,6 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 
 	/* Set up for a data transfer if we have one */
 	if (data) {
-		int err;
-
 		if (!IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO)) {
 			num_bytes = data->blocks * data->blocksize;
 
@@ -254,9 +252,9 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 				return -EFAULT;
 		}
 
-		err = esdhc_setup_data(host, data, dma);
-		if(err)
-			return err;
+		ret = esdhc_setup_data(host, data, dma);
+		if (ret)
+			return ret;
 	}
 
 	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
