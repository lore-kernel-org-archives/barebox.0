Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qmjbn-0005Oq-1G
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 09:43:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jul 2011 11:43:47 +0200
Message-Id: <1311932630-5687-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311932630-5687-1-git-send-email-s.hauer@pengutronix.de>
References: <1311932630-5687-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] ARM: pass size to dma_free_coherent
To: barebox@lists.infradead.org

We'll need it later once we remap dma memory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c           |    2 +-
 arch/arm/include/asm/mmu.h   |    9 +++++++--
 drivers/usb/gadget/fsl_udc.c |    2 +-
 3 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 8465d1a..bb067e3 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -155,7 +155,7 @@ void *phys_to_virt(unsigned long phys)
 	return (void *)(phys + dma_coherent_offset);
 }
 
-void dma_free_coherent(void *mem)
+void dma_free_coherent(void *mem, size_t size)
 {
 	free(mem - dma_coherent_offset);
 }
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index d96c728..9ebc2cd 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -17,7 +17,7 @@ void setup_dma_coherent(unsigned long offset);
 
 #ifdef CONFIG_MMU
 void *dma_alloc_coherent(size_t size);
-void dma_free_coherent(void *mem);
+void dma_free_coherent(void *mem, size_t size);
 
 void dma_clean_range(unsigned long, unsigned long);
 void dma_flush_range(unsigned long, unsigned long);
@@ -26,12 +26,17 @@ unsigned long virt_to_phys(void *virt);
 void *phys_to_virt(unsigned long phys);
 
 #else
+static inline int mmu_init(void)
+{
+	return -EINVAL;
+}
+
 static inline void *dma_alloc_coherent(size_t size)
 {
 	return xmemalign(4096, size);
 }
 
-static inline void dma_free_coherent(void *mem)
+static inline void dma_free_coherent(void *mem, size_t size)
 {
 	free(mem);
 }
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 20a5064..1401169 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -560,7 +560,7 @@ static void done(struct fsl_ep *ep, struct fsl_req *req, int status)
 		if (j != req->dtd_count - 1) {
 			next_td = curr_td->next_td_virt;
 		}
-		dma_free_coherent(curr_td);
+		dma_free_coherent(curr_td, sizeof(struct ep_td_struct));
 	}
 
 	dma_inv_range((unsigned long)req->req.buf,
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
