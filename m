Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahzE-0006RI-U0
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:13 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahzA-0006u0-14
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:08 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:57 +0100
Message-Id: <20191129151505.23946-32-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 31/39] ARM: layerscape: ppa: use sync_for_execution instead of
 a manual cache flush
To: barebox@lists.infradead.org

The copied code is then jumped to, so we need to sync the caches for
execution instead of just flushing the data caches.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-layerscape/ppa.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index 607045102071..987cb6587608 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -14,9 +14,9 @@
 #include <image-fit.h>
 #include <asm/psci.h>
 #include <mach/layerscape.h>
+#include <asm/cache.h>
 
 int ppa_entry(const void *, u32 *, u32 *);
-void dma_flush_range(void *ptr, size_t size);
 
 static int of_psci_do_fixup(struct device_node *root, void *unused)
 {
@@ -73,7 +73,7 @@ static int ppa_init(void *ppa, size_t ppa_size, void *sec_firmware_addr)
 
 	/* Copy the secure firmware to secure memory */
 	memcpy(sec_firmware_addr, buf, firmware_size);
-	dma_flush_range(sec_firmware_addr, ppa_size);
+	sync_caches_for_execution();
 
 	ret = ppa_entry(sec_firmware_addr, boot_loc_ptr_l, boot_loc_ptr_h);
 	if (ret) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
