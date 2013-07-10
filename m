Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwt4N-0001ji-BS
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 12:00:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 13:59:54 +0200
Message-Id: <1373457601-7225-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373457601-7225-1-git-send-email-s.hauer@pengutronix.de>
References: <1373457601-7225-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/11] dma: apbh: remove CONFIG_ARCH_DMA_PIO_WORDS
To: barebox@lists.infradead.org

This define allows to overwrite DMA_PIO_WORDS with an architecture
specific value. Since this is unused and not clean anyway remove
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/dma/apbh-dma.h | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/include/dma/apbh-dma.h b/include/dma/apbh-dma.h
index 52747e2..f10bb6f 100644
--- a/include/dma/apbh-dma.h
+++ b/include/dma/apbh-dma.h
@@ -28,12 +28,6 @@
 
 #include <linux/list.h>
 
-#ifndef	CONFIG_ARCH_DMA_PIO_WORDS
-#define	DMA_PIO_WORDS		15
-#else
-#define	DMA_PIO_WORDS		CONFIG_ARCH_DMA_PIO_WORDS
-#endif
-
 #define MXS_DMA_ALIGNMENT	32
 
 /*
@@ -90,7 +84,8 @@ struct mxs_dma_cmd {
 		dma_addr_t	address;
 		unsigned long	alternate;
 	};
-	unsigned long		pio_words[DMA_PIO_WORDS];
+#define	APBH_DMA_PIO_WORDS		15
+	unsigned long		pio_words[APBH_DMA_PIO_WORDS];
 };
 
 /*
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
