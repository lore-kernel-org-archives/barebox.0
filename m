Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp29.i.mail.ru ([94.100.177.89])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uvo4L-00068s-4e
 for barebox@lists.infradead.org; Sun, 07 Jul 2013 12:27:58 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun,  7 Jul 2013 16:27:15 +0400
Message-Id: <1373200037-4008-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/3] blackfin: Remove unneeded assignment
To: barebox@lists.infradead.org

Assignment of function parameter has no effect outside the function.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/blackfin/lib/bf533_string.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/blackfin/lib/bf533_string.c b/arch/blackfin/lib/bf533_string.c
index ff9410f..860ee92 100644
--- a/arch/blackfin/lib/bf533_string.c
+++ b/arch/blackfin/lib/bf533_string.c
@@ -176,6 +176,6 @@ void *dma_memcpy(void * dest,const void *src,size_t count)
 		*pMDMA_D0_IRQ_STATUS |= (DMA_DONE | DMA_ERR);
 
 		dest += count;
-		src  += count;
+
 		return dest;
 }
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
