Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og118.obsmtp.com ([64.18.0.160])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3OxC-0004cI-Vp
 for barebox@lists.infradead.org; Wed, 15 Jan 2014 11:48:15 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 15 Jan 2014 11:47:40 +0000
Message-Id: <1389786464-22085-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1389786464-22085-1-git-send-email-renaud.barbier@ge.com>
References: <1389786464-22085-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/5] ppc: cpu-85xx: upgrade MMU support to v2 pages sizes
To: barebox@lists.infradead.org

TLB support for the 85xx CPUs has been upgraded to support the MMUv2
page size definitions. This has been imported from U-Boot version
git-9407c3fc. This allows for future CPUs to make use of the new MMU
support.

Also the definition of MAX_MEM_MAPPED has been changed to avoid type
casting with "min" macro.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/cpu-85xx/tlb.c          | 30 +++++++++++++++++++-----------
 arch/ppc/include/asm/config.h    |  2 +-
 arch/ppc/include/asm/mmu.h       | 37 ++++++++++++++++++++++++-------------
 arch/ppc/include/asm/processor.h |  5 +++++
 4 files changed, 49 insertions(+), 25 deletions(-)

diff --git a/arch/ppc/cpu-85xx/tlb.c b/arch/ppc/cpu-85xx/tlb.c
index 3f56655..3ffcfff 100644
--- a/arch/ppc/cpu-85xx/tlb.c
+++ b/arch/ppc/cpu-85xx/tlb.c
@@ -123,21 +123,29 @@ static unsigned int e500_setup_ddr_tlbs_phys(phys_addr_t p_addr,
 					unsigned int memsize_in_meg)
 {
 	int i;
-	unsigned int tlb_size;
-	unsigned int wimge = 0;
+	unsigned int tlb_size, max_cam, tsize_mask;
+	unsigned int wimge = MAS2_M;
 	unsigned int ram_tlb_address = (unsigned int)CFG_SDRAM_BASE;
-	unsigned int max_cam = (mfspr(SPRN_TLB1CFG) >> 16) & 0xf;
 	u64 size, memsize = (u64)memsize_in_meg << 20;
 
-	size = min((u64)memsize, (u64)MAX_MEM_MAPPED);
-
-	/* Convert (4^max) kB to (2^max) bytes */
-	max_cam = (max_cam * 2) + 10;
+	size = min(memsize, MAX_MEM_MAPPED);
+	if ((mfspr(SPRN_MMUCFG) & MMUCFG_MAVN) == MMUCFG_MAVN_V1) {
+		/* Convert (4^max) kB to (2^max) bytes */
+		max_cam = ((mfspr(SPRN_TLB1CFG) >> 16) & 0xf) * 2 + 10;
+		tsize_mask = ~1U;
+	} else {
+		/* Convert (2^max) kB to (2^max) bytes */
+		max_cam = __ilog2(mfspr(SPRN_TLB1PS)) + 10;
+		tsize_mask = ~0U;
+	}
 
-	for (i = 0; size && (i < 8); i++) {
+	for (i = 0; size && i < 8; i++) {
 		int ram_tlb_index = e500_find_free_tlbcam();
-		u32 camsize = __ilog2_u64(size) & ~1U;
-		u32 align = __ilog2(ram_tlb_address) & ~1U;
+		u32 camsize = __ilog2_u64(size) & tsize_mask;
+		u32 align = __ilog2(ram_tlb_address) & tsize_mask;
+
+		if (ram_tlb_index == -1)
+			break;
 
 		if (align == -2)
 			align = max_cam;
@@ -147,7 +155,7 @@ static unsigned int e500_setup_ddr_tlbs_phys(phys_addr_t p_addr,
 		if (camsize > max_cam)
 			camsize = max_cam;
 
-		tlb_size = (camsize - 10) / 2;
+		tlb_size = camsize - 10;
 
 		e500_set_tlb(1, ram_tlb_address, p_addr,
 			MAS3_SX|MAS3_SW|MAS3_SR, wimge,
diff --git a/arch/ppc/include/asm/config.h b/arch/ppc/include/asm/config.h
index 64e87e5..ce6581a 100644
--- a/arch/ppc/include/asm/config.h
+++ b/arch/ppc/include/asm/config.h
@@ -23,7 +23,7 @@
 
 #ifndef MAX_MEM_MAPPED
 #if defined(CONFIG_E500)
-#define MAX_MEM_MAPPED	((phys_size_t)(2 << 30))
+#define MAX_MEM_MAPPED	(2ULL << 30)
 #endif
 #endif
 
diff --git a/arch/ppc/include/asm/mmu.h b/arch/ppc/include/asm/mmu.h
index 179ec2b..c886d14 100644
--- a/arch/ppc/include/asm/mmu.h
+++ b/arch/ppc/include/asm/mmu.h
@@ -382,7 +382,7 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
 #define MAS1_IPROT      0x40000000
 #define MAS1_TID(x)     (((x) << 16) & 0x3FFF0000)
 #define MAS1_TS         0x00001000
-#define MAS1_TSIZE(x)   (((x) << 8) & 0x00000F00)
+#define MAS1_TSIZE(x)   (((x) << 7) & 0x00000F80)
 
 #define MAS2_EPN        0xFFFFF000
 #define MAS2_SHAREN     0x00000200
@@ -438,18 +438,29 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
 #define FSL_BOOKE_MAS7(rpn) \
 		(((u64)(rpn)) >> 32)
 
-#define BOOKE_PAGESZ_1K         0
-#define BOOKE_PAGESZ_4K         1
-#define BOOKE_PAGESZ_16K        2
-#define BOOKE_PAGESZ_64K        3
-#define BOOKE_PAGESZ_256K       4
-#define BOOKE_PAGESZ_1M         5
-#define BOOKE_PAGESZ_4M         6
-#define BOOKE_PAGESZ_16M        7
-#define BOOKE_PAGESZ_64M        8
-#define BOOKE_PAGESZ_256M       9
-#define BOOKE_PAGESZ_1GB        10
-#define BOOKE_PAGESZ_4GB        11
+#define BOOKE_PAGESZ_1K		0
+#define BOOKE_PAGESZ_2K		1
+#define BOOKE_PAGESZ_4K		2
+#define BOOKE_PAGESZ_8K		3
+#define BOOKE_PAGESZ_16K	4
+#define BOOKE_PAGESZ_32K	5
+#define BOOKE_PAGESZ_64K	6
+#define BOOKE_PAGESZ_128K	7
+#define BOOKE_PAGESZ_256K	8
+#define BOOKE_PAGESZ_512K	9
+#define BOOKE_PAGESZ_1M		10
+#define BOOKE_PAGESZ_2M		11
+#define BOOKE_PAGESZ_4M		12
+#define BOOKE_PAGESZ_8M		13
+#define BOOKE_PAGESZ_16M	14
+#define BOOKE_PAGESZ_32M	15
+#define BOOKE_PAGESZ_64M	16
+#define BOOKE_PAGESZ_128M	17
+#define BOOKE_PAGESZ_256M	18
+#define BOOKE_PAGESZ_512M	19
+#define BOOKE_PAGESZ_1G		20
+#define BOOKE_PAGESZ_2G		21
+#define BOOKE_PAGESZ_4G		22
 
 #if defined(CONFIG_MPC86xx)
 #define LAWBAR_BASE_ADDR	0x00FFFFFF
diff --git a/arch/ppc/include/asm/processor.h b/arch/ppc/include/asm/processor.h
index 19530b0..059d33f 100644
--- a/arch/ppc/include/asm/processor.h
+++ b/arch/ppc/include/asm/processor.h
@@ -429,7 +429,12 @@
 
 #define SPRN_TLB0CFG   0x2B0   /* TLB 0 Config Register */
 #define SPRN_TLB1CFG   0x2B1   /* TLB 1 Config Register */
+#define SPRN_TLB1PS	0x159	/* TLB 1 Page Size Register */
 #define SPRN_MMUCSR0	0x3f4	/* MMU control and status register 0 */
+#define SPRN_MMUCFG	0x3f7	/* MMU Configuration Register */
+#define MMUCFG_MAVN	0x00000003	/* MMU Architecture Version Number */
+#define MMUCFG_MAVN_V1	0x00000000	/* v1.0 */
+#define MMUCFG_MAVN_V2	0x00000001	/* v2.0 */
 #define SPRN_MAS0       0x270   /* MMU Assist Register 0 */
 #define SPRN_MAS1       0x271   /* MMU Assist Register 1 */
 #define SPRN_MAS2       0x272   /* MMU Assist Register 2 */
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
