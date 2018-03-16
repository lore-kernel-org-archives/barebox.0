Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosD-0008BP-5t
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:14 +0100
Message-Id: <20180316125354.23462-39-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 38/78] ARM: aarch64: qemu board: remove unnecessary mapping
To: Barebox List <barebox@lists.infradead.org>

Now that we do the initial flat mapping as device memory all addresses
that are not SDRAM are already mapped as device memory, so we can drop
the mapping from the board file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/qemu-virt64/init.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boards/qemu-virt64/init.c b/arch/arm/boards/qemu-virt64/init.c
index 18831755df..686231696e 100644
--- a/arch/arm/boards/qemu-virt64/init.c
+++ b/arch/arm/boards/qemu-virt64/init.c
@@ -66,11 +66,6 @@ postcore_initcall(virt_core_init);
 #ifdef CONFIG_MMU
 static int virt_mmu_enable(void)
 {
-	/* Mapping all periph and flash range */
-	arch_remap_range((void *)0x00000000, 0x40000000,
-			 PMD_ATTRINDX(MT_DEVICE_nGnRnE) | PMD_SECT_AF |
-			 PMD_TYPE_SECT);
-
 	mmu_enable();
 
 	return 0;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
