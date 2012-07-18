Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SrTrO-0003ov-GT
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 13:00:23 +0000
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Wed, 18 Jul 2012 14:58:46 +0200
Message-Id: <1342616327-2765-3-git-send-email-J.Kilb@phytec.de>
In-Reply-To: <1342616327-2765-1-git-send-email-J.Kilb@phytec.de>
References: <1342616327-2765-1-git-send-email-J.Kilb@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] pca-a-l1: added memory device for int. 60kB RAM.
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>


Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 arch/arm/boards/phycard-a-l1/pca-a-l1.c         |    2 ++
 arch/arm/mach-omap/include/mach/omap3-silicon.h |    1 +
 2 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
index 1cc2815..8fae405 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -292,6 +292,8 @@ static int pcaal1_mem_init(void)
 	 */
 	gpmc_generic_init(0x10);
 #endif
+	add_mem_device("sram0", OMAP_SRAM_BASE, 60 * SZ_1K,
+				   IORESOURCE_MEM_WRITEABLE);
 
 	arm_add_mem_device("ram0", OMAP_SDRC_CS0, get_sdr_cs_size(SDRC_CS0_OSET));
 
diff --git a/arch/arm/mach-omap/include/mach/omap3-silicon.h b/arch/arm/mach-omap/include/mach/omap3-silicon.h
index 361d25e..e4002e6 100644
--- a/arch/arm/mach-omap/include/mach/omap3-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap3-silicon.h
@@ -107,6 +107,7 @@
 #define OMAP_EHCI_BASE         (OMAP_L4_CORE_BASE + 0x64800)
 
 /** Interrupt Vector base address */
+#define OMAP_SRAM_BASE		0x40200000
 #define OMAP_SRAM_INTVECT	0x4020F800
 #define OMAP_SRAM_INTVECT_COPYSIZE	0x64
 /** Temporary stack for us to use C calls in low_level_init */
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
