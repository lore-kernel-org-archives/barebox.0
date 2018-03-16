Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0008BS-HZ
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 33/78] ARM: aarch64: mmu: create_sections() takes size in bytes
Date: Fri, 16 Mar 2018 13:53:09 +0100
Message-Id: <20180316125354.23462-34-s.hauer@pengutronix.de>
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

create_sections() takes size in bytes, not in megabytes, so
drop the _m prefix from the size argument.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index eb54097514..6e22da9a26 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -196,10 +196,9 @@ static void map_region(uint64_t virt, uint64_t phys, uint64_t size, uint64_t att
 	}
 }
 
-static void create_sections(uint64_t virt, uint64_t phys, uint64_t size_m, uint64_t flags)
+static void create_sections(uint64_t virt, uint64_t phys, uint64_t size, uint64_t flags)
 {
-
-	map_region(virt, phys, size_m, flags);
+	map_region(virt, phys, size, flags);
 	tlb_invalidate();
 }
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
