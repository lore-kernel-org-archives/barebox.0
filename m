Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZZatf-0006xa-VR
 for barebox@lists.infradead.org; Wed, 09 Sep 2015 08:38:28 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZZatK-0001ql-Fi
 for barebox@lists.infradead.org; Wed, 09 Sep 2015 10:38:06 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  9 Sep 2015 10:38:05 +0200
Message-Id: <1441787886-10673-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: add implementation for dma_alloc_writecombine for
 !CONFIG_MMU
To: barebox@lists.infradead.org

This fixes build failures in builds without MMU support by providing
a fallback implementation.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/include/asm/dma.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
index d9bce3d70e61..1ba2edf01275 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -23,6 +23,11 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 	return ret;
 }
 
+static inline void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
+{
+	return dma_alloc_coherent(size, dma_handle);
+}
+
 static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
 				     size_t size)
 {
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
