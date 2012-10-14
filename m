Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNK0x-0005Jq-AU
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 08:57:42 +0000
Date: Sun, 14 Oct 2012 10:57:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121014085733.GD27665@pengutronix.de>
References: <1350137007-10135-1-git-send-email-vicencb@gmail.com>
 <1350137007-10135-4-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350137007-10135-4-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 3/5] ARM: ensure irqs are disabled at barebox exit
To: Vicente <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 13, 2012 at 04:03:25PM +0200, Vicente wrote:
> 
> Signed-off-by: Vicente <vicencb@gmail.com>
> ---
>  arch/arm/cpu/cpu.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
> index 51da3b5..2bfd3ed 100644
> --- a/arch/arm/cpu/cpu.c
> +++ b/arch/arm/cpu/cpu.c
> @@ -31,6 +31,7 @@
>  #include <asm/system_info.h>
>  #include <asm/cputype.h>
>  #include <asm/cache.h>
> +#include <asm/ptrace.h>
>  
>  /**
>   * Enable processor's instruction cache
> @@ -78,6 +79,16 @@ void arch_shutdown(void)
>  	mmu_disable();
>  #endif
>  	flush_icache();
> +	/*
> +	 * barebox normally does not use interrupts, but some functionalities
> +	 * (eg. OMAP4_USBBOOT) require them enabled. So be sure interrupts are
> +	 * disabled before exiting.
> +	 */
> +#if __LINUX_ARM_ARCH__ >= 6
> +	__asm__ __volatile__("cpsid i");
> +#else
> +	__asm__ __volatile__("msr cpsr_c, %0" : : "I"(PSR_I_BIT | SVC_MODE));
> +#endif

This won't work with multi ARM architecture support and also does not
compile in Thumb2 mode. So I suggest to do:

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 25a0893..1328f0e 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -87,6 +87,23 @@ void arch_shutdown(void)
 		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
 	);
 #endif
+
+	/*
+	 * barebox normally does not use interrupts, but some functionalities
+	 * (eg. OMAP4_USBBOOT) require them enabled. So be sure interrupts are
+	 * disabled before exiting.
+	 */
+	if (cpu_architecture() >= CPU_ARCH_ARMv6) {
+#if __LINUX_ARM_ARCH__ >= 6
+		__asm__ __volatile__("cpsid i");
+#endif
+	} else {
+		uint32_t r;
+
+		__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
+		r |= PSR_I_BIT;
+		__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
+	}
 }
 
 #ifdef CONFIG_THUMB2_BAREBOX

Or the following which is simpler as it doesn't use the cpsid
instruction which is only available on >= ARMv6:


diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 25a0893..bfad49d 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -73,6 +73,8 @@ int icache_status(void)
  */
 void arch_shutdown(void)
 {
+	uint32_t r;
+
 #ifdef CONFIG_MMU
 	/* nearly the same as below, but this could also disable
 	 * second level cache.
@@ -87,6 +89,15 @@ void arch_shutdown(void)
 		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
 	);
 #endif
+
+	/*
+	 * barebox normally does not use interrupts, but some functionalities
+	 * (eg. OMAP4_USBBOOT) require them enabled. So be sure interrupts are
+	 * disabled before exiting.
+	 */
+	__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
+	r |= PSR_I_BIT;
+	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
 }
 
 #ifdef CONFIG_THUMB2_BAREBOX

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
