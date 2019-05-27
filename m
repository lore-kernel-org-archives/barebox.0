Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK9b-0001bH-JW
 for barebox@lists.infradead.org; Mon, 27 May 2019 18:15:25 +0000
Received: by mail-pf1-x442.google.com with SMTP id r22so7071154pfh.9
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 11:15:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 11:14:58 -0700
Message-Id: <20190527181500.17456-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/8] apbh: Use dma_alloc_coherent() to get DMA address
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Avoid converting virtual address to physical by simple casting by
making use of the fact that dma_alloc_coherent() can already return
that information to us.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/dma/apbh_dma.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index 15a523ac8..3bee89f78 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -381,14 +381,15 @@ static int mxs_dma_release(int channel)
 struct mxs_dma_desc *mxs_dma_desc_alloc(void)
 {
 	struct mxs_dma_desc *pdesc;
+	dma_addr_t dma_address;
 
 	pdesc = dma_alloc_coherent(sizeof(struct mxs_dma_desc),
-				   DMA_ADDRESS_BROKEN);
+				   &dma_address);
 
 	if (pdesc == NULL)
 		return NULL;
 
-	pdesc->address = (dma_addr_t)pdesc;
+	pdesc->address = dma_address;
 
 	return pdesc;
 };
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
