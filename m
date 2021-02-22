Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE4kS-0003AE-8p
 for barebox@lists.infradead.org; Mon, 22 Feb 2021 06:31:13 +0000
Received: from geraet.fritz.box (unknown [83.135.83.78])
 (Authenticated sender: ahmad@a3f.at)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id E73D9240002
 for <barebox@lists.infradead.org>; Mon, 22 Feb 2021 06:31:02 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Feb 2021 07:30:51 +0100
Message-Id: <20210222063052.566792-1-ahmad@a3f.at>
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
Subject: [PATCH 1/2] ARM: cpu: board-dt-2nd: rename of_find_mem for more
 generic use
To: barebox@lists.infradead.org

of_find_mem can be used for generic DT images for other architectures as
well. Prepare for the move by giving it a more descriptive name and
type to reflect that it operates read-only on a FDT.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/cpu/board-dt-2nd.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/board-dt-2nd.c b/arch/arm/cpu/board-dt-2nd.c
index 4e7d575e8a71..7a8155b7b01b 100644
--- a/arch/arm/cpu/board-dt-2nd.c
+++ b/arch/arm/cpu/board-dt-2nd.c
@@ -10,7 +10,7 @@
 #include <asm/sections.h>
 #include <linux/libfdt.h>
 
-static void of_find_mem(void *fdt, unsigned long *membase, unsigned long *memsize)
+static void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize)
 {
 	const __be32 *nap, *nsp, *reg;
 	uint32_t na, ns;
@@ -85,7 +85,7 @@ static noinline void dt_2nd_continue_aarch64(void *fdt)
 	if (!fdt)
 		hang();
 
-	of_find_mem(fdt, &membase, &memsize);
+	fdt_find_mem(fdt, &membase, &memsize);
 
 	barebox_arm_entry(membase, memsize, fdt);
 }
@@ -114,7 +114,7 @@ static noinline void dt_2nd_continue(void *fdt)
 	if (!fdt)
 		hang();
 
-	of_find_mem(fdt, &membase, &memsize);
+	fdt_find_mem(fdt, &membase, &memsize);
 
 	barebox_arm_entry(membase, memsize, fdt);
 }
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
