Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QLh5N-0000IU-IJ
	for barebox@lists.infradead.org; Sun, 15 May 2011 19:34:43 +0000
Received: by wwb39 with SMTP id 39so3294638wwb.18
	for <barebox@lists.infradead.org>; Sun, 15 May 2011 12:34:39 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Sun, 15 May 2011 21:34:32 +0200
Message-Id: <1305488072-1765-6-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1305488072-1765-1-git-send-email-franck.jullien@gmail.com>
References: <1305488072-1765-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 5/5] [Nios2]: Fix dma mapping end address
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

The flush_dcache_range function takes an absolute end address
so we have to add start address to the second parameter.

Signed-off-by: Franck JULLIEN <franck.jullien@gmail.com>
---
 arch/nios2/include/asm/dma-mapping.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/nios2/include/asm/dma-mapping.h b/arch/nios2/include/asm/dma-mapping.h
index 49ebf79..5b70f4c 100644
--- a/arch/nios2/include/asm/dma-mapping.h
+++ b/arch/nios2/include/asm/dma-mapping.h
@@ -15,7 +15,7 @@ static inline void *dma_alloc_coherent(size_t len, unsigned long *handle)
 	void *addr = malloc(len + DCACHE_LINE_SIZE);
 	if (!addr)
 		return 0;
-	flush_dcache_range((unsigned long)addr, len + DCACHE_LINE_SIZE);
+	flush_dcache_range((unsigned long)addr,(unsigned long)addr + len + DCACHE_LINE_SIZE);
 	*handle = ((unsigned long)addr +
 		   (DCACHE_LINE_SIZE - 1)) &
 		~(DCACHE_LINE_SIZE - 1) & ~(IO_REGION_BASE);
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
