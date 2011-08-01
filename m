Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QnsqM-0003go-76
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 13:47:45 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id A75BAFFA5CB
	for <barebox@lists.infradead.org>;
	Mon,  1 Aug 2011 15:48:36 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  1 Aug 2011 15:29:39 +0200
Message-Id: <1312205383-13266-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110801132643.GH6255@game.jcrosoft.org>
References: <20110801132643.GH6255@game.jcrosoft.org>
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
Subject: [PATCH 5/9] ARM: pass size to dma_free_coherent
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

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
index c321e8f..1e4d4b0 100644
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
