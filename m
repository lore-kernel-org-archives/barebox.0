Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos8-00067l-8J
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:13 +0100
Message-Id: <20180316125354.23462-38-s.hauer@pengutronix.de>
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
Subject: [PATCH 37/78] ARM: aarch64: mmu: Fix mair register setting
To: Barebox List <barebox@lists.infradead.org>

The memory attributes register contains the memory attribute settings
for the corresponding to the possible AttrIndx values in the page
table entries. Passing UNCACHED_MEM makes no sense here, pass the
desired attributes instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c            | 5 +++--
 arch/arm/include/asm/pgtable64.h | 7 +++++++
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 27b5acd6a7..639aa6d189 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -243,7 +243,8 @@ static int mmu_init(void)
 
 		memset(ttb, 0, GRANULE_SIZE);
 
-		set_ttbr_tcr_mair(current_el(), (uint64_t)ttb, TCR_FLAGS, UNCACHED_MEM);
+		set_ttbr_tcr_mair(current_el(), (uint64_t)ttb, TCR_FLAGS,
+				  MEMORY_ATTRIBUTES);
 	}
 
 	pr_debug("ttb: 0x%p\n", ttb);
@@ -298,7 +299,7 @@ void mmu_early_enable(uint64_t membase, uint64_t memsize, uint64_t _ttb)
 
 	memset(ttb, 0, GRANULE_SIZE);
 
-	set_ttbr_tcr_mair(current_el(), (uint64_t)ttb, TCR_FLAGS, UNCACHED_MEM);
+	set_ttbr_tcr_mair(current_el(), (uint64_t)ttb, TCR_FLAGS, MEMORY_ATTRIBUTES);
 
 	create_sections(0, 0, 1UL << (BITS_PER_VA - 1), UNCACHED_MEM);
 
diff --git a/arch/arm/include/asm/pgtable64.h b/arch/arm/include/asm/pgtable64.h
index 20bea5b28a..7f7efa10ca 100644
--- a/arch/arm/include/asm/pgtable64.h
+++ b/arch/arm/include/asm/pgtable64.h
@@ -109,6 +109,13 @@
 #define MT_NORMAL		4
 #define MT_NORMAL_WT		5
 
+#define MEMORY_ATTRIBUTES ((0x00 << (MT_DEVICE_nGnRnE * 8))	| \
+			  (0x04 << (MT_DEVICE_nGnRE * 8)) 	| \
+			  (0x0c << (MT_DEVICE_GRE * 8)) 	| \
+			  (0x44 << (MT_NORMAL_NC * 8))		| \
+			  (UL(0xff) << (MT_NORMAL * 8))		| \
+			  (UL(0xbb) << (MT_NORMAL_WT * 8)))
+
 /*
  * TCR flags.
  */
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
