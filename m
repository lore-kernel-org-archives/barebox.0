Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a798b-0000F1-Cx
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 21:52:33 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 10 Dec 2015 21:51:39 +0000
Message-ID: <1449784305.26955.83.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <B4F8EE9374876045BF48EC354AE06C8F@kymetacorp.com>
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
Subject: [PATCH] socfpga: Allow setting partition xloader boots from for mmc
To: barebox <barebox@lists.infradead.org>

The xloader boots the 2nd stage barebox from socfpga_barebox_part when
using NOR.  But when using MMC it boots from a hardcoded "disk0.1".
Add the mmc device name to the partition description and use it for
mmc booting.

Add an extern declaration of socfpga_barebox_part to the socfpga
header so that a board can change it to use a different partition.

Initialize socfpga_barebox_part to the default value instead of NULL to
avoid the NULL check later.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 arch/arm/mach-socfpga/include/mach/generic.h | 4 ++++
 arch/arm/mach-socfpga/xload.c                | 8 +++-----
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-socfpga/include/mach/generic.h b/arch/arm/mach-socfpga/include/mach/generic.h
index 1f4247f..2a7e0ea 100644
--- a/arch/arm/mach-socfpga/include/mach/generic.h
+++ b/arch/arm/mach-socfpga/include/mach/generic.h
@@ -18,6 +18,10 @@ static inline void __udelay(unsigned us)
 struct socfpga_barebox_part {
 	unsigned int nor_offset;
 	unsigned int nor_size;
+	const char *mmc_disk;
 };
 
+/* Partition/device for xloader to load main bootloader from */
+extern const struct socfpga_barebox_part *barebox_part;
+
 #endif /* __MACH_SOCFPGA_GENERIC_H */
diff --git a/arch/arm/mach-socfpga/xload.c b/arch/arm/mach-socfpga/xload.c
index cf05ff3..fd0d777 100644
--- a/arch/arm/mach-socfpga/xload.c
+++ b/arch/arm/mach-socfpga/xload.c
@@ -20,12 +20,13 @@
 #include <mach/system-manager.h>
 #include <mach/socfpga-regs.h>
 
-struct socfpga_barebox_part *barebox_part;
 
 static struct socfpga_barebox_part default_part = {
 	.nor_offset = SZ_256K,
 	.nor_size = SZ_1M,
+	.mmc_disk = "disk0.1",
 };
+const struct socfpga_barebox_part *barebox_part = &default_part;
 
 enum socfpga_clks {
 	timer, mmc, qspi_clk, uart, clk_max
@@ -110,13 +111,10 @@ static __noreturn int socfpga_xload(void)
 	enum bootsource bootsource = bootsource_get();
 	void *buf;
 
-	if (!barebox_part)
-		barebox_part = &default_part;
-
 	switch (bootsource) {
 	case BOOTSOURCE_MMC:
 		socfpga_mmc_init();
-		buf = bootstrap_read_disk("disk0.1", "fat");
+		buf = bootstrap_read_disk(barebox_part->mmc_disk, "fat");
 		break;
 	case BOOTSOURCE_SPI:
 		socfpga_qspi_init();
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
