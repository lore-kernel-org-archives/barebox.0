Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XaTEE-0003pq-Jh
 for barebox@lists.infradead.org; Sat, 04 Oct 2014 17:34:47 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 90AE826C2002
 for <barebox@lists.infradead.org>; Sat,  4 Oct 2014 19:33:55 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  4 Oct 2014 19:40:07 +0200
Message-Id: <1412444425-2569-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
References: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 01/19] MIPS: malta: fix pci IO resource assignment
To: barebox@lists.infradead.org

Does the same thing as the Linux kernel now.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
I tested this with qemu-malta and at least barebox is now
again able to enumerate all 4 PCI devices.
---
 arch/mips/mach-malta/pci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/mach-malta/pci.c b/arch/mips/mach-malta/pci.c
index 9035175..47c0e22 100644
--- a/arch/mips/mach-malta/pci.c
+++ b/arch/mips/mach-malta/pci.c
@@ -151,7 +151,7 @@ static struct pci_controller gt64120_controller = {
 
 static int pcibios_init(void)
 {
-	resource_size_t start, end, map, start1, end1, map1, mask, res_end;
+	resource_size_t start, end, map, start1, end1, map1, mask;
 
 	/*
 	 * Due to a bug in the Galileo system controller, we need
@@ -207,7 +207,7 @@ static int pcibios_init(void)
 	BUG_ON((start & GT_PCI_HD_MSK) != (map & GT_PCI_HD_MSK) &&
 		mask != ~((mask & -mask) - 1));
 	gt64120_io_resource.start = map & mask;
-	res_end = (map & mask) | ~mask;
+	gt64120_io_resource.end = (map & mask) | ~mask;
 	gt64120_controller.io_offset = 0;
 	/* Addresses are 36-bit, so do shifts in the destinations. */
 	gt64120_io_resource.start <<= GT_PCI_DCRM_SHF;
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
