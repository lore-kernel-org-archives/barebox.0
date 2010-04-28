Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.69 #1 (Red Hat Linux))
	id 1O6xBz-0004Al-S4
	for barebox@lists.infradead.org; Wed, 28 Apr 2010 02:40:04 +0000
Date: Wed, 28 Apr 2010 04:32:35 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100428023235.GF19722@game.jcrosoft.org>
References: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
	<1272013443-29196-11-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1272013443-29196-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 10/14] arm: reimplement startup code in C
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:03 Fri 23 Apr     , Sascha Hauer wrote:
> Lets translate the startup code to a language we all understand better.
> Tested on pcm038 (arm v5) and pcm043 (arm v6).
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/Makefile              |    6 +-
>  arch/arm/cpu/start-arm.S           |  248 ------------------------------------
>  arch/arm/cpu/start.c               |  107 ++++++++++++++++
>  arch/arm/include/asm/barebox-arm.h |    3 +
>  arch/arm/lib/barebox.lds.S         |    2 +-
>  5 files changed, 112 insertions(+), 254 deletions(-)
>  delete mode 100644 arch/arm/cpu/start-arm.S
>  create mode 100644 arch/arm/cpu/start.c
> 
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index ae1f762..036768e 100644
> --- a/arch/arm/cpu/Makefile
> +++ b/arch/arm/cpu/Makefile
> @@ -1,15 +1,11 @@
>  obj-y += cpu.o
>  obj-y += exceptions.o
>  obj-y += interrupts.o
> +obj-y += start.o
>  
>  #
>  # Any variants can be called as start-armxyz.S
>  #
> -obj-$(CONFIG_CPU_ARM920T) += start-arm.o
> -obj-$(CONFIG_CPU_ARM926T) += start-arm.o
> -obj-$(CONFIG_CPU_V7) += start-arm.o
> -obj-$(CONFIG_ARCH_IMX31) += start-arm.o
> -obj-$(CONFIG_ARCH_IMX35) += start-arm.o
>  obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
>  obj-$(CONFIG_MMU) += mmu.o
>  obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
> diff --git a/arch/arm/cpu/start-arm.S b/arch/arm/cpu/start-arm.S
> deleted file mode 100644
> index 4d61cee..0000000
> --- a/arch/arm/cpu/start-arm.S
> +++ /dev/null
> @@ -1,248 +0,0 @@
> -/*
> +
> +	/* disable MMU stuff and caches */
> +	__asm__ __volatile__("mrc p15, 0, %0, c1, c0, 0":"=r"(r));
> +	r &= ~0x2387; /* clear bits 13, 9:8, 7, 2:0 (--V- --RS B--- -CAM) */
> +	r |= 0x1002; /* set bit 2 (A) Align, set bit 12 (I) I-Cache */
can we use here the CP15 macro
as CR_M and get_cr and set_cr?
> +	__asm__ __volatile__("mcr p15, 0, %0, c1, c0, 0" : : "r"(r));
> +
> +#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
> +	board_init_lowlevel();
> +#endif
why not always avoid the ifdef CONFIG_ in the code and define an inline?
> +	board_init_lowlevel_return();
> +}
> +
otherwise it's really easier than the asm to maintain evenif I prefer to write
it in asm personnaly

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
