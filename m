Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvbpV-0001BO-Ak
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 05:18:46 +0000
Received: by mail-pl1-x641.google.com with SMTP id 38-v6so1459725pld.0
 for <barebox@lists.infradead.org>; Thu, 30 Aug 2018 22:18:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 30 Aug 2018 22:18:23 -0700
Message-Id: <20180831051826.13587-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/5] net: fec_imx: Specify that DMA is 32-bit only
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

FEC can only do a DMA transfer to 32-bit address space, so mark it as
such.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 087483801..f459516df 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -769,6 +769,8 @@ static int fec_probe(struct device_d *dev)
 	edev->set_ethaddr = fec_set_hwaddr;
 	edev->parent = dev;
 
+	dma_set_mask(dev, DMA_BIT_MASK(32));
+
 	ret = fec_clk_get(fec);
 	if (ret < 0)
 		goto err_free;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
