Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3lQ-0004VG-OT
 for barebox@lists.infradead.org; Fri, 24 May 2019 06:33:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hU3lP-0004uL-CW
 for barebox@lists.infradead.org; Fri, 24 May 2019 08:33:11 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hU3lP-0005OC-5N
 for barebox@lists.infradead.org; Fri, 24 May 2019 08:33:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 24 May 2019 08:33:09 +0200
Message-Id: <20190524063309.20313-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: at91: fix at91sama5_get_ddram_size for sama5d4
To: barebox@lists.infradead.org

Editing mishap..  Sorry about that. :/

- Ahmad

---
 arch/arm/boards/sama5d3xek/lowlevel.c       | 2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/sama5d3xek/lowlevel.c b/arch/arm/boards/sama5d3xek/lowlevel.c
index b6d793e29f13..8492ae95fb74 100644
--- a/arch/arm/boards/sama5d3xek/lowlevel.c
+++ b/arch/arm/boards/sama5d3xek/lowlevel.c
@@ -19,5 +19,5 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5d3(), NULL);
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5d3_get_ddram_size(), NULL);
 }
diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
index e06e37d5fd3d..9021ef57c5de 100644
--- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
@@ -19,5 +19,5 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE - 16);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5d4(), NULL);
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5d4_get_ddram_size(), NULL);
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
