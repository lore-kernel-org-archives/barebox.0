Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK9Z-0001ag-FR
 for barebox@lists.infradead.org; Mon, 27 May 2019 18:15:23 +0000
Received: by mail-pl1-x644.google.com with SMTP id gn7so7279195plb.10
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 11:15:21 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 11:14:56 -0700
Message-Id: <20190527181500.17456-4-andrew.smirnov@gmail.com>
In-Reply-To: <20190527181500.17456-1-andrew.smirnov@gmail.com>
References: <20190527181500.17456-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/8] apbh: Do not zero out DMA coherent memory
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Memory returned by dma_alloc_coherent() should already be zeroed
out, so there's no need to do this explicitly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/dma/apbh_dma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index 72c2f364c..15a523ac8 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -388,7 +388,6 @@ struct mxs_dma_desc *mxs_dma_desc_alloc(void)
 	if (pdesc == NULL)
 		return NULL;
 
-	memset(pdesc, 0, sizeof(*pdesc));
 	pdesc->address = (dma_addr_t)pdesc;
 
 	return pdesc;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
