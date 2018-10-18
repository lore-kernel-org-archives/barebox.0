Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD2GZ-0003M6-AU
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 06:59:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Oct 2018 08:58:15 +0200
Message-Id: <20181018065827.19973-9-s.hauer@pengutronix.de>
In-Reply-To: <20181018065827.19973-1-s.hauer@pengutronix.de>
References: <20181018065827.19973-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/20] ARM: cache: include mmu.h
To: Barebox List <barebox@lists.infradead.org>

mmu.h provides the prototypes for __mmu_cache_* functions, so include it
from the file that implements these functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/cpu/cache.c b/arch/arm/cpu/cache.c
index f4781fe3b3..e86243db53 100644
--- a/arch/arm/cpu/cache.c
+++ b/arch/arm/cpu/cache.c
@@ -4,6 +4,8 @@
 #include <asm/cache.h>
 #include <asm/system_info.h>
 
+#include "mmu.h"
+
 struct cache_fns {
 	void (*dma_clean_range)(unsigned long start, unsigned long end);
 	void (*dma_flush_range)(unsigned long start, unsigned long end);
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
