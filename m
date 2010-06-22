Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OR3GL-0004zP-9r
	for barebox@lists.infradead.org; Tue, 22 Jun 2010 13:11:38 +0000
Date: Tue, 22 Jun 2010 15:11:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100622131132.GK12115@pengutronix.de>
References: <L4F17N$3581604971B72AFF2E4EE2E9FBF2CD32@aruba.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <L4F17N$3581604971B72AFF2E4EE2E9FBF2CD32@aruba.it>
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
Subject: Re: Regression: not booting anymore on OMAP35xx
To: Luca Ceresoli <luca@lucaceresoli.net>
Cc: barebox@lists.infradead.org

Hi Luca,

On Tue, Jun 22, 2010 at 02:26:11PM +0200, Luca Ceresoli wrote:
> Hi,
> 
> recent versions of barebox do not boot anymore on OMAP3530 (Cortex-A8).
> 
> I build barebox with omap3530_beagle_per_uart_defconfig, and load it
> using pserial from Nishanth Menon's omap-u-boot-utils
> (http://github.com/nmenon/omap-u-boot-utils).
> 
> Symptoms:
> pserial detects the OMAP ID, then starts sending via UART.
> The transfer apparently gets completed (obvious as there is no control),
> but after that the UART line to the target is totally mute.
> 
> This happens since commit:
>  78104ae arm: reimplement startup code in C
> 
> And is still happening on current master:
>  ea5230c i2c: fix adapter_list manipulation

Seems that I lost the call to arch_init_lowlevel. Does the following
patch help?


diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index eea7dcf..91d2ccd 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -50,6 +50,8 @@ void __naked __bare_init reset(void)
 {
 	uint32_t r;
 
+	arch_init_lowlevel();
+
 	/* set the cpu to SVC32 mode */
 	__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
 	r &= ~0x1f;
diff --git a/arch/arm/mach-omap/omap3_core.S b/arch/arm/mach-omap/omap3_core.S
index 7337d4c..d904231 100644
--- a/arch/arm/mach-omap/omap3_core.S
+++ b/arch/arm/mach-omap/omap3_core.S
@@ -92,7 +92,7 @@ next:
 arch_start:
 	.word	arch_init_lowlevel
 barebox_start:
-	.word	_start
+	.word	exception_vectors
 SRAM_INTVECT:
 	.word	OMAP_SRAM_INTVECT

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
