Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2oXk-0006DJ-1D
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 21:27:48 +0000
Received: by mail-la0-f47.google.com with SMTP id s18so592646lam.20
 for <barebox@lists.infradead.org>; Thu, 03 Jul 2014 14:27:24 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  4 Jul 2014 01:27:01 +0400
Message-Id: <1404422826-6589-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1404422826-6589-1-git-send-email-antonynpavlov@gmail.com>
References: <1404422826-6589-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v5 2/7] MIPS: add dma_alloc_coherent()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/dma-mapping.h | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/mips/include/asm/dma-mapping.h b/arch/mips/include/asm/dma-mapping.h
new file mode 100644
index 0000000..555efa5
--- /dev/null
+++ b/arch/mips/include/asm/dma-mapping.h
@@ -0,0 +1,25 @@
+#ifndef _ASM_DMA_MAPPING_H
+#define _ASM_DMA_MAPPING_H
+
+#include <xfuncs.h>
+#include <asm/addrspace.h>
+#include <asm/types.h>
+#include <malloc.h>
+
+static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+{
+	void *ret;
+
+	ret = xmemalign(PAGE_SIZE, size);
+
+	*dma_handle = CPHYSADDR(ret);
+
+	return (void *)CKSEG1ADDR(ret);
+}
+
+static inline void dma_free_coherent(void *vaddr)
+{
+	free(vaddr);
+}
+
+#endif /* _ASM_DMA_MAPPING_H */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
