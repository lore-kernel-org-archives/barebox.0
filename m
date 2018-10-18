Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD2GZ-0003LT-A9
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 06:58:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Oct 2018 08:58:12 +0200
Message-Id: <20181018065827.19973-6-s.hauer@pengutronix.de>
In-Reply-To: <20181018065827.19973-1-s.hauer@pengutronix.de>
References: <20181018065827.19973-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/20] dma: Add missing re-inclusion protector
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/dma-dir.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/dma-dir.h b/include/dma-dir.h
index ba107f10ce..6e186d8148 100644
--- a/include/dma-dir.h
+++ b/include/dma-dir.h
@@ -1,6 +1,11 @@
+#ifndef __DMA_DIR_H
+#define __DMA_DIR_H
+
 enum dma_data_direction {
 	DMA_BIDIRECTIONAL = 0,
 	DMA_TO_DEVICE = 1,
 	DMA_FROM_DEVICE = 2,
 	DMA_NONE = 3,
 };
+
+#endif /* __DMA_DIR_H */
\ No newline at end of file
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
