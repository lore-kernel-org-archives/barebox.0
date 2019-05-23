Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpoy-00022o-Ls
 for barebox@lists.infradead.org; Thu, 23 May 2019 15:39:59 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 May 2019 17:39:41 +0200
Message-Id: <20190523153943.7995-8-a.fatoum@pengutronix.de>
In-Reply-To: <20190523153943.7995-1-a.fatoum@pengutronix.de>
References: <20190523153943.7995-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 7/9] ARM: at91: fix at91sama5_get_ddram_size for sama5d4
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

at91sama5_get_ddram_size() is despite the name specific to the
sama5d3 which it was added alongside of. sama5d4 board code continues
to use it, but accessing SAMA5D3_BASE_MPDDRC (0xffffea00) on
a sama5d4 should result in a Data Abort (Datasheet Figure 5-1)..

Fix this by giving at91sama5_get_ddram_size the mpddrc base
address as argument and migrate users to use one of two helpers
that specify the base address.

Tested-by: Sam Ravnborg <sam@ravnborg.org>
[afa: Sam didn't test this exact change, but tested the use
 of the critical part: accessing a different register]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/sama5d3_xplained/lowlevel.c       |  2 +-
 arch/arm/boards/sama5d3xek/lowlevel.c             |  2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c       |  2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c              |  2 +-
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h | 13 +++++++++++--
 arch/arm/mach-at91/sama5d3_devices.c              |  2 +-
 arch/arm/mach-at91/sama5d4_devices.c              |  2 +-
 7 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/sama5d3_xplained/lowlevel.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
index 0e25270142f2..8492ae95fb74 100644
--- a/arch/arm/boards/sama5d3_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
@@ -19,5 +19,5 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5d3_get_ddram_size(), NULL);
 }
diff --git a/arch/arm/boards/sama5d3xek/lowlevel.c b/arch/arm/boards/sama5d3xek/lowlevel.c
index 0e25270142f2..b6d793e29f13 100644
--- a/arch/arm/boards/sama5d3xek/lowlevel.c
+++ b/arch/arm/boards/sama5d3xek/lowlevel.c
@@ -19,5 +19,5 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5d3(), NULL);
 }
diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
index 8ae4e6e0d237..e06e37d5fd3d 100644
--- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
@@ -19,5 +19,5 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE - 16);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5d4(), NULL);
 }
diff --git a/arch/arm/boards/sama5d4ek/lowlevel.c b/arch/arm/boards/sama5d4ek/lowlevel.c
index 8ae4e6e0d237..9021ef57c5de 100644
--- a/arch/arm/boards/sama5d4ek/lowlevel.c
+++ b/arch/arm/boards/sama5d4ek/lowlevel.c
@@ -19,5 +19,5 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE - 16);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5d4_get_ddram_size(), NULL);
 }
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index 835fdea259f2..604c38d7e46c 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -198,12 +198,11 @@ static inline u32 at91sam9n12_get_ddram_size(void)
 	return at91_get_ddram_size(IOMEM(AT91SAM9N12_BASE_DDRSDRC0), true);
 }
 
-static inline u32 at91sama5_get_ddram_size(void)
+static inline u32 at91sama5_get_ddram_size(void __iomem *base)
 {
 	u32 cr;
 	u32 mdr;
 	u32 size;
-	void * __iomem base = IOMEM(SAMA5D3_BASE_MPDDRC);
 
 	cr = readl(base + AT91_DDRSDRC_CR);
 	mdr = readl(base + AT91_DDRSDRC_MDR);
@@ -228,6 +227,16 @@ static inline u32 at91sama5_get_ddram_size(void)
 	return size;
 }
 
+static inline u32 at91sama5d3_get_ddram_size(void)
+{
+	return at91sama5_get_ddram_size(IOMEM(SAMA5D3_BASE_MPDDRC));
+}
+
+static inline u32 at91sama5d4_get_ddram_size(void)
+{
+	return at91sama5_get_ddram_size(IOMEM(SAMA5D4_BASE_MPDDRC));
+}
+
 #endif
 
 #endif
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
index f5075b39374f..bf4a03d40407 100644
--- a/arch/arm/mach-at91/sama5d3_devices.c
+++ b/arch/arm/mach-at91/sama5d3_devices.c
@@ -28,7 +28,7 @@
 void at91_add_device_sdram(u32 size)
 {
 	if (!size)
-		size = at91sama5_get_ddram_size();
+		size = at91sama5d3_get_ddram_size();
 
 	arm_add_mem_device("ram0", SAMA5_DDRCS, size);
 	add_mem_device("sram0", SAMA5D3_SRAM_BASE,
diff --git a/arch/arm/mach-at91/sama5d4_devices.c b/arch/arm/mach-at91/sama5d4_devices.c
index 4064e4441f9f..5a1109dc0eab 100644
--- a/arch/arm/mach-at91/sama5d4_devices.c
+++ b/arch/arm/mach-at91/sama5d4_devices.c
@@ -29,7 +29,7 @@
 void at91_add_device_sdram(u32 size)
 {
 	if (!size)
-		size = at91sama5_get_ddram_size();
+		size = at91sama5d4_get_ddram_size();
 
 	arm_add_mem_device("ram0", SAMA5_DDRCS, size);
 	add_mem_device("sram0", SAMA5D4_SRAM_BASE,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
