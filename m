Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ1PG-0006SH-Am
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 13:53:47 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1WJ1Ot-00078k-6E
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 14:53:23 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 27 Feb 2014 14:53:20 +0100
Message-Id: <1393509203-836-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1393509203-836-1-git-send-email-l.stach@pengutronix.de>
References: <1393509203-836-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/5] ARM: i.MX: edmqmx6: correct MMDC init
To: barebox@lists.infradead.org

From: Philipp Zabel <p.zabel@pengutronix.de>

This is a squashed commit of the following downstream
commits:
- Set CS0_END in MMDC0_MDASP to 32Gb (4GB)T
- Fix writes to MMDC0_MDSCR
- Enable bank interleaving (BI_ON) and set write
  additional latency (WALAT) to 1 cycle in MMDC0_MDMISC
- Set ARCR_DYN_JMP=1 and ARCR_DYN_MAX=15 in MMDC0_MAARCR

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/datamodul-edm-qmx6/lowlevel.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
index 33e0152bc743..81b6ac4cbe0a 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
@@ -99,24 +99,19 @@ static void sdram_init(void)
 	writel(0x8A8F7934, 0x021b000c);
 	writel(0xDB568E65, 0x021b0010);
 	writel(0x01FF00DB, 0x021b0014);
-	writel(0x00000740, 0x021b0018);
+	writel(0x00011740, 0x021b0018);
 	writel(0x00008000, 0x021b001c);
 	writel(0x000026d2, 0x021b002c);
 	writel(0x008F0E21, 0x021b0030);
-	writel(0x00000047, 0x021b0040);
-	writel(0x11420000, 0x021b0400);
+	writel(0x0000007f, 0x021b0040);
+	writel(0x114201f0, 0x021b0400);
 	writel(0x11420000, 0x021b4400);
 	writel(0x841A0000, 0x021b0000);
 	writel(0x04108032, 0x021b001c);
-	writel(0x00008033, 0x021b001c);
+	writel(0x00028033, 0x021b001c);
 	writel(0x00048031, 0x021b001c);
 	writel(0x09308030, 0x021b001c);
 	writel(0x04008040, 0x021b001c);
-	writel(0x0410803A, 0x021b001c);
-	writel(0x0000803B, 0x021b001c);
-	writel(0x00048039, 0x021b001c);
-	writel(0x09308038, 0x021b001c);
-	writel(0x04008048, 0x021b001c);
 	writel(0x00005800, 0x021b0020);
 	writel(0x00011117, 0x021b0818);
 	writel(0x00011117, 0x021b4818);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
