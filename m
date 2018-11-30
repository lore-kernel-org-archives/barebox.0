Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSibb-00075r-HR
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 13:13:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gSibP-0003ku-TE
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 14:13:03 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 30 Nov 2018 14:12:58 +0100
Message-Id: <20181130131303.2934-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/6] ARM: mmu64: include dma.h
To: barebox@lists.infradead.org

dma.h provides the prototypes for the different dma_alloc_* functions,
so we should include it to make sure the prototypes are consistent.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 69d1b20718f7..99ddd5a441b9 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -19,6 +19,7 @@
 #define pr_fmt(fmt)	"mmu: " fmt
 
 #include <common.h>
+#include <dma.h>
 #include <dma-dir.h>
 #include <init.h>
 #include <mmu.h>
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
