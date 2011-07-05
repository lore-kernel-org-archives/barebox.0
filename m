Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qe06y-0007Cy-Rp
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 07:32:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  5 Jul 2011 09:31:52 +0200
Message-Id: <1309851114-2069-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1309851114-2069-1-git-send-email-s.hauer@pengutronix.de>
References: <1309851114-2069-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] MCI imx-esdhc: Fix cache flush/inval for multi block
	support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 2937156..7595a93 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -257,10 +257,10 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 			return err;
 		if (data->flags & MMC_DATA_WRITE) {
 			dma_flush_range((unsigned long)data->src,
-				(unsigned long)(data->src + 512));
+				(unsigned long)(data->src + data->blocks * 512));
 		} else
 			dma_clean_range((unsigned long)data->src,
-				(unsigned long)(data->src + 512));
+				(unsigned long)(data->src + data->blocks * 512));
 
 	}
 
@@ -317,7 +317,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 
 		if (data->flags & MMC_DATA_READ) {
 			dma_inv_range((unsigned long)data->dest,
-					(unsigned long)(data->dest + 512));
+					(unsigned long)(data->dest + data->blocks * 512));
 		}
 #endif
 	}
-- 
1.7.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
