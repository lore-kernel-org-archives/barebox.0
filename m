Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2Pj-0006GP-G4
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 03:05:32 +0000
Received: by mail-pl1-x642.google.com with SMTP id ba4-v6so455804plb.11
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 20:05:21 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 20:05:09 -0700
Message-Id: <20180824030511.23021-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180824030511.23021-1-andrew.smirnov@gmail.com>
References: <20180824030511.23021-1-andrew.smirnov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] mci: imx-esdhc: Bail out if DMA address is larger than
 32-bits
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On 64-bit SoCs it becomes possible to end up with a DMA buffer
allocated in the region of memory inaccessible to ESDHC
controller. Change the code to bail out if that happens to avoid
silent failures.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index db96a8139..f6451e204 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -304,6 +304,9 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 			dma = dma_map_single(host->dev, ptr, num_bytes, dir);
 			if (dma_mapping_error(host->dev, dma))
 				return -EIO;
+
+			if (dma > U32_MAX)
+				return -EFAULT;
 		}
 
 		err = esdhc_setup_data(mci, data, dma);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
