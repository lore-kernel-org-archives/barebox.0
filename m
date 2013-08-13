Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9906-0008BZ-VC
 for barebox@lists.infradead.org; Tue, 13 Aug 2013 07:26:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 Aug 2013 09:26:11 +0200
Message-Id: <1376378772-25649-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
References: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] ARM: mvebu: dove: use timer from devicetree
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mvebu/dove.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index 397e7a3..a943c6d 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -113,9 +113,6 @@ static int dove_init_soc(void)
 	clkdev_add_physbase(tclk, (unsigned int)DOVE_SPI0_BASE, NULL);
 	clkdev_add_physbase(tclk, (unsigned int)DOVE_SPI1_BASE, NULL);
 	clkdev_add_physbase(tclk, (unsigned int)CONSOLE_UART_BASE, NULL);
-	add_generic_device("orion-timer", DEVICE_ID_SINGLE, NULL,
-			   (unsigned int)DOVE_TIMER_BASE, 0x30,
-			   IORESOURCE_MEM, NULL);
 	dove_memory_find(&phys_base, &phys_size);
 	arm_add_mem_device("ram0", phys_base, phys_size);
 
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
