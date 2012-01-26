Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RqVQH-0000dk-AX
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 19:55:54 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 26 Jan 2012 20:55:27 +0100
Message-Id: <1327607728-2788-4-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1327607728-2788-1-git-send-email-robert.jarzmik@free.fr>
References: <1327607728-2788-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] arm/mach-pxa: add CCCR bits definitions
To: barebox@lists.infradead.org

Add CCCR bits definition for PXA SoC, so that the bootloader
can setup a stable core clock frequency, which is not the
initial reset clock, as required by Intel's PXA27x Processor
family developer's guide, chapter 3.5.5, table 3.7 (clock
frequencies).

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/mach-pxa/include/mach/pxa2xx-regs.h |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h b/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
index 4762d8a..b43648e 100644
--- a/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
+++ b/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
@@ -222,6 +222,11 @@
 #define CCCR_N_MASK	0x0380	/* Run Mode Frequency to Turbo Mode Frequency Multiplier */
 #define CCCR_M_MASK	0x0060	/* Memory Frequency to Run Mode Frequency Multiplier */
 #define CCCR_L_MASK	0x001f	/* Crystal Frequency to Memory Frequency Multiplier */
+#define CCCR_CPDIS	(1 << 31)
+#define CCCR_PPDIS	(1 << 30)
+#define CCCR_LCD26	(1 << 27)
+#define CCCR_PLL_EARLY	(1 << 26)
+#define CCCR_A		(1 << 25)
 
 #define CKEN_AC97CONF   (1 << 31)    /* AC97 Controller Configuration */
 #define CKEN_CAMERA	(1 << 24)	/* Camera Interface Clock Enable */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
