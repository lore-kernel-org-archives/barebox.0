Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAtHi-0000l0-3y
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 09:31:19 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 11:31:05 +0200
Message-Id: <20190401093106.4595-10-a.fatoum@pengutronix.de>
In-Reply-To: <20190401093106.4595-1-a.fatoum@pengutronix.de>
References: <20190401093106.4595-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 09/10] ARM: at91: remove at91sama5_get_ddram_size helper
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

Substitute the current #ifdefery in at91sam9_ddrsdr.h by
open-coding at91sama5_get_ddram_size wherever it was called.

Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/sama5d3_xplained/lowlevel.c       |  4 +++-
 arch/arm/boards/sama5d3xek/lowlevel.c             |  4 +++-
 arch/arm/boards/sama5d4_xplained/lowlevel.c       |  4 +++-
 arch/arm/boards/sama5d4ek/lowlevel.c              |  4 +++-
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h | 12 ------------
 arch/arm/mach-at91/sama5d3_devices.c              |  2 +-
 arch/arm/mach-at91/sama5d4_devices.c              |  2 +-
 7 files changed, 14 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boards/sama5d3_xplained/lowlevel.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
index 92dd515ca64e..31c176a3a4c2 100644
--- a/arch/arm/boards/sama5d3_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
@@ -19,5 +19,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(IOMEM(SAMA5D3_BASE_MPDDRC)), NULL);
+	barebox_arm_entry(SAMA5_DDRCS,
+			at91_get_ddram_size(IOMEM(SAMA5D3_BASE_MPDDRC), true),
+			NULL);
 }
diff --git a/arch/arm/boards/sama5d3xek/lowlevel.c b/arch/arm/boards/sama5d3xek/lowlevel.c
index 92dd515ca64e..31c176a3a4c2 100644
--- a/arch/arm/boards/sama5d3xek/lowlevel.c
+++ b/arch/arm/boards/sama5d3xek/lowlevel.c
@@ -19,5 +19,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(IOMEM(SAMA5D3_BASE_MPDDRC)), NULL);
+	barebox_arm_entry(SAMA5_DDRCS,
+			at91_get_ddram_size(IOMEM(SAMA5D3_BASE_MPDDRC), true),
+			NULL);
 }
diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
index 168d424baee7..47cadfe6750c 100644
--- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
@@ -19,5 +19,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE - 16);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(IOMEM(SAMA5D4_BASE_MPDDRC)), NULL);
+	barebox_arm_entry(SAMA5_DDRCS,
+			at91_get_ddram_size(IOMEM(SAMA5D4_BASE_MPDDRC), true),
+			NULL);
 }
diff --git a/arch/arm/boards/sama5d4ek/lowlevel.c b/arch/arm/boards/sama5d4ek/lowlevel.c
index 168d424baee7..47cadfe6750c 100644
--- a/arch/arm/boards/sama5d4ek/lowlevel.c
+++ b/arch/arm/boards/sama5d4ek/lowlevel.c
@@ -19,5 +19,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE - 16);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(IOMEM(SAMA5D4_BASE_MPDDRC)), NULL);
+	barebox_arm_entry(SAMA5_DDRCS,
+			at91_get_ddram_size(IOMEM(SAMA5D4_BASE_MPDDRC), true),
+			NULL);
 }
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index cc3affa17a61..b50c11b128bf 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -176,18 +176,6 @@ static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
 	return size;
 }
 
-#ifdef CONFIG_SOC_SAMA5
-static inline u32 at91sama5_get_ddram_size(void __iomem *base)
-{
-	return at91_get_ddram_size(base, true);
-}
-#else
-static inline u32 at91sama5_get_ddram_size(void __iomem *base)
-{
-	return 0;
-}
-#endif
-
 #endif
 
 #endif
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
index b61d2b309ce0..479e81f0f588 100644
--- a/arch/arm/mach-at91/sama5d3_devices.c
+++ b/arch/arm/mach-at91/sama5d3_devices.c
@@ -28,7 +28,7 @@
 void at91_add_device_sdram(u32 size)
 {
 	if (!size)
-		size = at91sama5_get_ddram_size(IOMEM(SAMA5D3_BASE_MPDDRC));
+		size = at91_get_ddram_size(IOMEM(SAMA5D3_BASE_MPDDRC), true),
 
 	arm_add_mem_device("ram0", SAMA5_DDRCS, size);
 	add_mem_device("sram0", SAMA5D3_SRAM_BASE,
diff --git a/arch/arm/mach-at91/sama5d4_devices.c b/arch/arm/mach-at91/sama5d4_devices.c
index 546d0888bfd8..4a6683981595 100644
--- a/arch/arm/mach-at91/sama5d4_devices.c
+++ b/arch/arm/mach-at91/sama5d4_devices.c
@@ -29,7 +29,7 @@
 void at91_add_device_sdram(u32 size)
 {
 	if (!size)
-		size = at91sama5_get_ddram_size(IOMEM(SAMA5D4_BASE_MPDDRC));
+		size = at91_get_ddram_size(IOMEM(SAMA5D4_BASE_MPDDRC), true);
 
 	arm_add_mem_device("ram0", SAMA5_DDRCS, size);
 	add_mem_device("sram0", SAMA5D4_SRAM_BASE,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
