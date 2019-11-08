Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSzch-00058v-5T
 for barebox@lists.infradead.org; Fri, 08 Nov 2019 08:28:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Nov 2019 09:28:00 +0100
Message-Id: <20191108082800.22044-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: mmu-early: On i.MX6 with HAB map ROM is mapped without XN
To: Barebox List <barebox@lists.infradead.org>

On i.MX6 with HAB enabled we call into the ROM later in
imx6_hab_get_status(). This only works when the XN bit is not set for
this area, so remap the first MiB as cached which doesn't have the XN
bit set.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu-early.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index 7c30526b94..b985aa455f 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -58,5 +58,12 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 	/* maps main memory as cachable */
 	map_region(membase, memsize, PMD_SECT_DEF_CACHED);
 
+	/*
+	 * With HAB enabled we call into the ROM code later in imx6_hab_get_status().
+	 * Map the ROM cached which has the effect that the XN bit is not set.
+	 */
+	if (IS_ENABLED(CONFIG_HABV4) && IS_ENABLED(CONFIG_ARCH_IMX6))
+		map_region(0x0, SZ_1M, PMD_SECT_DEF_CACHED);
+
 	__mmu_cache_on();
 }
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
