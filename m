Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvbpW-0001BP-OW
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 05:18:48 +0000
Received: by mail-pl1-x643.google.com with SMTP id s17-v6so4888279plp.7
 for <barebox@lists.infradead.org>; Thu, 30 Aug 2018 22:18:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 30 Aug 2018 22:18:24 -0700
Message-Id: <20180831051826.13587-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180831051826.13587-1-andrew.smirnov@gmail.com>
References: <20180831051826.13587-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/5] mci: imx-esdhc: Specify that DMA is 32-bit only
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

ESDHC can only do a DMA transfer to 32-bit address space, so mark it
as such.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index db96a8139..7f2472012 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -629,6 +629,8 @@ static int fsl_esdhc_probe(struct device_d *dev)
 			host->socdata = &esdhc_imx25_data;
 	}
 
+	dma_set_mask(dev, DMA_BIT_MASK(32));
+
 	host->clk = clk_get(dev, "per");
 	if (IS_ERR(host->clk))
 		return PTR_ERR(host->clk);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
