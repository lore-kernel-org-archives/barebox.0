Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0008BK-UV
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 36/78] ARM: aarch64: mmu: by default map as device memory
Date: Fri, 16 Mar 2018 13:53:12 +0100
Message-Id: <20180316125354.23462-37-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

By default map the whole address space as unshared device memory
as this is what barebox drivers normally expect.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 357e244042..27b5acd6a7 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -35,7 +35,7 @@
 #include "mmu.h"
 
 #define CACHED_MEM      (PMD_ATTRINDX(MT_NORMAL) | PMD_SECT_S | PMD_SECT_AF | PMD_TYPE_SECT)
-#define UNCACHED_MEM    (PMD_ATTRINDX(MT_NORMAL_NC) | PMD_SECT_S | PMD_SECT_AF | PMD_TYPE_SECT)
+#define UNCACHED_MEM    (PMD_ATTRINDX(MT_DEVICE_nGnRnE) | PMD_SECT_AF)
 
 static uint64_t *ttb;
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
