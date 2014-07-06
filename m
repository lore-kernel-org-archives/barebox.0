Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X3uEb-0001oX-AV
 for barebox@lists.infradead.org; Sun, 06 Jul 2014 21:44:34 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  6 Jul 2014 23:43:28 +0200
Message-Id: <1404683008-3774-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] mmu: flush ttb in map_io_sections
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

We need to flush out the ttb in order to make the
changes observable to the page walker.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index bf0141b946db..e4afcc84115d 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -188,6 +188,7 @@ void *map_io_sections(unsigned long phys, void *_start, size_t size)
 	for (sec = start; sec < start + size; sec += (1 << 20))
 		ttb[sec >> 20] = (phys++ << 20) | PMD_SECT_DEF_UNCACHED;
 
+	dma_flush_range((unsigned long)ttb, (unsigned long)ttb + 0x4000);
 	tlb_invalidate();
 	return _start;
 }
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
