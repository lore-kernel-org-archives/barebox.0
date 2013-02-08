Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp30.i.mail.ru ([94.100.177.90])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3knj-0000fF-DC
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 10:03:23 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Feb 2013 14:02:22 +0400
Message-Id: <1360317743-25975-10-git-send-email-shc_work@mail.ru>
In-Reply-To: <1360317743-25975-1-git-send-email-shc_work@mail.ru>
References: <1360317743-25975-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 10/11] ARM: clps711x: Turn off all peripherals on startup
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/lowlevel.c |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-clps711x/lowlevel.c b/arch/arm/mach-clps711x/lowlevel.c
index 7eed556..752619b 100644
--- a/arch/arm/mach-clps711x/lowlevel.c
+++ b/arch/arm/mach-clps711x/lowlevel.c
@@ -53,5 +53,12 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 	writel(SDCONF_CASLAT_3 | SDCONF_SIZE_256 | SDCONF_WIDTH_16 |
 	       SDCONF_CLKCTL | SDCONF_ACTIVE, SDCONF);
 
+	/* Disable UART1, IrDa, LCD */
+	writel(0, SYSCON1);
+	/* Disable PWM */
+	writew(0, PMPCON);
+	/* Disable LED flasher */
+	writew(0, LEDFLSH);
+
 	barebox_arm_entry(SDRAM0_BASE, SZ_8M, 0);
 }
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
