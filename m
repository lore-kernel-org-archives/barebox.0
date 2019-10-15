Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKI4r-0001FE-PW
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 08:21:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 15 Oct 2019 10:21:05 +0200
Message-Id: <20191015082105.5197-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: at91: build for all SoCs when AT91_MULTI_BOARDS
 is selected
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This reverts a hunk I missed after a rebase:
A previous commit restricts ARCH_BAREBOX_MAX_BARE_INIT to only
non-multi-image boards, so no need to touch it to be compatible
with the new multi-image changes.

---
 arch/arm/mach-at91/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index ef00e32e380d..5ad1f62c8d67 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -245,13 +245,13 @@ config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	hex
 	default 0x1000 if ARCH_AT91SAM9260
 	default 0x27000 if ARCH_AT91SAM9261
+	default 0x12000 if ARCH_AT91SAM9263
 	default 0x4000 if ARCH_AT91SAM9G20
 	default 0x3000 if ARCH_AT91SAM9G10
 	default 0xF000 if ARCH_AT91SAM9G45
+	default 0x6000 if ARCH_AT91SAM9X5
 	default 0x6000 if ARCH_AT91SAM9N12
-	default 0x12000 if SOC_AT91SAM9263
-	default 0x6000 if SOC_AT91SAM9X5
-	default 0x6000 if SOC_SAMA5D3
+	default 0x6000 if ARCH_SAMA5D3
 	default 0xffffffff
 
 if ARCH_AT91RM9200
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
