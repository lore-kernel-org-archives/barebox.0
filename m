Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6Psc-0002CC-A6
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 19:24:04 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1W6PsE-0005RS-9G
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 20:23:34 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <mgr@pengutronix.de>) id 1W6PsE-0004YZ-7l
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 20:23:34 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 23 Jan 2014 20:23:28 +0100
Message-Id: <1390505010-7546-2-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1390505010-7546-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1390505010-7546-1-git-send-email-m.grzeschik@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] ARM: mvebu: make dove_memory_find reachable for drivers
To: barebox@lists.infradead.org

Some drivers need to setup data based on the available
memory on the system. Make it possible for them to find
the available memory.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-mvebu/dove.c                   | 4 ++--
 arch/arm/mach-mvebu/include/mach/dove-regs.h | 3 +++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index f081e50..3fec7cf 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -41,8 +41,8 @@ static inline void dove_remap_mc_regs(void)
 	writel(val, mcboot + SDRAM_REGS_BASE_DECODE);
 }
 
-static inline void dove_memory_find(unsigned long *phys_base,
-				    unsigned long *phys_size)
+void dove_memory_find(unsigned long *phys_base,
+		    unsigned long *phys_size)
 {
 	int n;
 
diff --git a/arch/arm/mach-mvebu/include/mach/dove-regs.h b/arch/arm/mach-mvebu/include/mach/dove-regs.h
index 8b4319b..36a6808 100644
--- a/arch/arm/mach-mvebu/include/mach/dove-regs.h
+++ b/arch/arm/mach-mvebu/include/mach/dove-regs.h
@@ -62,4 +62,7 @@
 #define  SDRAM_ADDRESS_MASK	(0x1ff << 7)
 #define  SDRAM_MAP_VALID	BIT(0)
 
+void dove_memory_find(unsigned long *phys_base,
+		    unsigned long *phys_size);
+
 #endif /* __MACH_MVEBU_DOVE_REGS_H */
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
