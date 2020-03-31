Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJBpg-0003gN-0e
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 08:01:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Mar 2020 10:01:08 +0200
Message-Id: <20200331080109.24402-2-s.hauer@pengutronix.de>
In-Reply-To: <20200331080109.24402-1-s.hauer@pengutronix.de>
References: <20200331080109.24402-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM64: attribute argument to create_sections() is 64bit
To: Barebox List <barebox@lists.infradead.org>

The attribute argument to create_sections() is 64bit, so pass in a
64bit variable. This is done in preparation for using some of the upper
bits in the (UN)CACHED_MEM defines.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 98cd4c754e..8181658952 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -158,19 +158,21 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 
 int arch_remap_range(void *_start, size_t size, unsigned flags)
 {
+	unsigned long attrs;
+
 	switch (flags) {
 	case MAP_CACHED:
-		flags = CACHED_MEM;
+		attrs = CACHED_MEM;
 		break;
 	case MAP_UNCACHED:
-		flags = UNCACHED_MEM;
+		attrs = UNCACHED_MEM;
 		break;
 	default:
 		return -EINVAL;
 	}
 
 	create_sections((uint64_t)_start, (uint64_t)_start, (uint64_t)size,
-			flags);
+			attrs);
 	return 0;
 }
 
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
