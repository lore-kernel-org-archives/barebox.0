Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1hka-0004ys-95
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 20:00:28 +0000
Received: by mail-lb0-f169.google.com with SMTP id l4so6300529lbv.0
 for <barebox@lists.infradead.org>; Mon, 30 Jun 2014 13:00:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 30 Jun 2014 23:59:44 +0400
Message-Id: <1404158389-14632-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1404158389-14632-1-git-send-email-antonynpavlov@gmail.com>
References: <1404158389-14632-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v4 1/6] MIPS: add dma_alloc_coherent()
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
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
