Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw4AC-0006nR-3t
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 12:06:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gw4A9-0001yp-MD
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 13:06:13 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC5)
 (envelope-from <afa@pengutronix.de>) id 1gw4A9-0003od-Bs
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 13:06:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Feb 2019 13:06:11 +0100
Message-Id: <20190219120612.728-4-a.fatoum@pengutronix.de>
In-Reply-To: <20190219120612.728-1-a.fatoum@pengutronix.de>
References: <20190219120612.728-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: at91: fix at91sama5_get_ddram_size for sama5d4
To: barebox@lists.infradead.org

at91sama5_get_ddram_size() is despite the name specific to the
sama5d3 which it was added alongside of. sama5d4 board code continues
to use it, but accessing SAMA5D3_BASE_MPDDRC (0xffffea00) on
a sama5d4 should result in a Data Abort (Datasheet Figure 5-1)..

Fix this by giving at91sama5_get_ddram_size the mpddrc base
address as argument and adjust call sites appropriately.

This change was not tested on a sama5d4.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/sama5d3_xplained/lowlevel.c       | 2 +-
 arch/arm/boards/sama5d3xek/lowlevel.c             | 2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c       | 2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c              | 2 +-
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h | 6 ++----
 arch/arm/mach-at91/sama5d3_devices.c              | 2 +-
 arch/arm/mach-at91/sama5d4_devices.c              | 2 +-
 7 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/sama5d3_xplained/lowlevel.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
index b791f2a03cc7..56003c6330ec 100644
--- a/arch/arm/boards/sama5d3_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
@@ -19,5 +19,5 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(IOMEM(SAMA5D3_BASE_MPDDRC)), NULL);
 }
diff --git a/arch/arm/boards/sama5d3xek/lowlevel.c b/arch/arm/boards/sama5d3xek/lowlevel.c
index b791f2a03cc7..56003c6330ec 100644
--- a/arch/arm/boards/sama5d3xek/lowlevel.c
+++ b/arch/arm/boards/sama5d3xek/lowlevel.c
@@ -19,5 +19,5 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(IOMEM(SAMA5D3_BASE_MPDDRC)), NULL);
 }
diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
index b791f2a03cc7..82993c83551b 100644
--- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
@@ -19,5 +19,5 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(IOMEM(SAMA5D4_BASE_MPDDRC)), NULL);
 }
diff --git a/arch/arm/boards/sama5d4ek/lowlevel.c b/arch/arm/boards/sama5d4ek/lowlevel.c
index b791f2a03cc7..82993c83551b 100644
--- a/arch/arm/boards/sama5d4ek/lowlevel.c
+++ b/arch/arm/boards/sama5d4ek/lowlevel.c
@@ -19,5 +19,5 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(IOMEM(SAMA5D4_BASE_MPDDRC)), NULL);
 }
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index b0c003cd1e05..a775d3b19691 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -222,13 +222,11 @@ static inline u32 at91sam9n12_get_ddram_size(void)
 #endif
 
 #ifdef CONFIG_SOC_SAMA5
-#include <mach/sama5d3.h>
-static inline u32 at91sama5_get_ddram_size(void)
+static inline u32 at91sama5_get_ddram_size(void __iomem *base)
 {
 	u32 cr;
 	u32 mdr;
 	u32 size;
-	void * __iomem base = IOMEM(SAMA5D3_BASE_MPDDRC);
 
 	cr = readl(base + AT91_DDRSDRC_CR);
 	mdr = readl(base + AT91_DDRSDRC_MDR);
@@ -253,7 +251,7 @@ static inline u32 at91sama5_get_ddram_size(void)
 	return size;
 }
 #else
-static inline u32 at91sama5_get_ddram_size(void)
+static inline u32 at91sama5_get_ddram_size(void __iomem *base)
 {
 	return 0;
 }
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
index f5075b39374f..b61d2b309ce0 100644
--- a/arch/arm/mach-at91/sama5d3_devices.c
+++ b/arch/arm/mach-at91/sama5d3_devices.c
@@ -28,7 +28,7 @@
 void at91_add_device_sdram(u32 size)
 {
 	if (!size)
-		size = at91sama5_get_ddram_size();
+		size = at91sama5_get_ddram_size(IOMEM(SAMA5D3_BASE_MPDDRC));
 
 	arm_add_mem_device("ram0", SAMA5_DDRCS, size);
 	add_mem_device("sram0", SAMA5D3_SRAM_BASE,
diff --git a/arch/arm/mach-at91/sama5d4_devices.c b/arch/arm/mach-at91/sama5d4_devices.c
index 4064e4441f9f..546d0888bfd8 100644
--- a/arch/arm/mach-at91/sama5d4_devices.c
+++ b/arch/arm/mach-at91/sama5d4_devices.c
@@ -29,7 +29,7 @@
 void at91_add_device_sdram(u32 size)
 {
 	if (!size)
-		size = at91sama5_get_ddram_size();
+		size = at91sama5_get_ddram_size(IOMEM(SAMA5D4_BASE_MPDDRC));
 
 	arm_add_mem_device("ram0", SAMA5_DDRCS, size);
 	add_mem_device("sram0", SAMA5D4_SRAM_BASE,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
