Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-v.mail.gandi.net ([217.70.178.76])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NduUu-0005Ea-KE
	for barebox@lists.infradead.org; Sat, 06 Feb 2010 23:55:37 +0000
Date: Sun, 7 Feb 2010 00:55:13 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100206235513.GE15617@darwin>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] EP93xx: Fix system controller register definitions
To: barebox@lists.infradead.org

EP93xx: The system controller register definition doesn't take into account a 4
byte gap between ChipId and SysCfg, in consequence all accesses to syscon registers
ahead of ChipId fail. Fix this by inserting a filler field

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---
 arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h b/arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h
index 50bb0eb..544f7f9 100644
--- a/arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h
+++ b/arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h
@@ -562,8 +562,9 @@ struct syscon_regs {
 	uint32_t i2sclkdiv;
 	uint32_t keytchclkdiv;
 	uint32_t chipid;
+	uint32_t reserved4;
 	uint32_t syscfg;
-	uint32_t reserved4[8];
+	uint32_t reserved5[8];
 	uint32_t sysswlock;
 };
 #else
-- 
1.6.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
