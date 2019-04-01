Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAtHi-0000kt-C0
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 09:31:21 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 11:30:59 +0200
Message-Id: <20190401093106.4595-4-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 03/10] arm: sama5d4: fix stack setup
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

From: Sam Ravnborg <sam@ravnborg.org>

The code that configure the stack uses sama5d3 constants.
Fix this to use the proper sama5d4 constants.

Boot tested on sama5d4_xplained.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/sama5d4_xplained/lowlevel.c | 2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
index 0e25270142f2..8ae4e6e0d237 100644
--- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
@@ -17,7 +17,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
+	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE - 16);
 
 	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
 }
diff --git a/arch/arm/boards/sama5d4ek/lowlevel.c b/arch/arm/boards/sama5d4ek/lowlevel.c
index 0e25270142f2..8ae4e6e0d237 100644
--- a/arch/arm/boards/sama5d4ek/lowlevel.c
+++ b/arch/arm/boards/sama5d4ek/lowlevel.c
@@ -17,7 +17,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
+	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE - 16);
 
 	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
