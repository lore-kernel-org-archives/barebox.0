Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgBW5-0006Gu-QV
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 09:43:47 +0000
Date: Wed, 5 Dec 2012 10:43:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121205094344.GC10369@pengutronix.de>
References: <1354622643-7777-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354622643-7777-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: Re: [PATCH] ARM: give more detailed information about data aborts
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 04, 2012 at 01:04:03PM +0100, Enrico Scholz wrote:
> It is often very useful to get more details about a data abort.  Patch
> decodes the "Data Fault Status Register" (DFSR) and because this
> enlarges barebox a little bit, a Kconfig option was added to disable
> this feature on demand.
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  arch/arm/cpu/interrupts.c | 57 +++++++++++++++++++++++++++++++++++++++++------
>  common/Kconfig            |  6 +++++
>  2 files changed, 56 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
> index 6e60adc..476ed3c 100644
> --- a/arch/arm/cpu/interrupts.c
> +++ b/arch/arm/cpu/interrupts.c
> @@ -119,6 +119,43 @@ void do_prefetch_abort (struct pt_regs *pt_regs)
>  	do_exception(pt_regs);
>  }
>  
> +static char const *fault_status_str(u32 dfsr)
> +{
> +	static char		buf[sizeof("fault 0x12345")];
> +	char const * const	REASONS[32] = {
> +		[0x01] = "alignment fault",
> +		[0x04] = "instruction cache maintenance fault",
> +		[0x0a] = "translation table walk synchronous external abort (1st lvl)",
> +		[0x0c] = "translation table walk synchronous external abort (2st lvl)",
> +		[0x0a] = "translation table walk synchronous parity error (1st lvl)",
> +		[0x0c] = "translation table walk synchronous parity error (2st lvl)",
> +		[0x05] = "translation fault (section)",
> +		[0x07] = "translation fault (page)",
> +		[0x03] = "access flag fault (section)",
> +		[0x06] = "access flag fault (page)",
> +		[0x09] = "domain fault (section)",
> +		[0x0b] = "domain fault (page)",
> +		[0x0d] = "permission fault (section)",
> +		[0x0f] = "permission fault (page)",
> +		[0x02] = "debug event",
> +		[0x10] = "synchronous external abort",
> +		[0x19] = "memory access synchrounous parity error",
> +		[0x16] = "asynchronous external abort",
> +		[0x18] = "memory access asynchronous parity error",
> +	};
> +	char const		*res;
> +	unsigned int		code = (((dfsr &   (1 << 10)) >> 6) |
> +					((dfsr & (0xf <<  0)) >> 0));
> +
> +	res = REASONS[code];
> +	if (res == NULL) {
> +		snprintf(buf, sizeof buf, "fault 0x%05x", code);
> +		res = buf;
> +	}
> +
> +	return res;
> +}
> +
>  /**
>   * The CPU catches a data abort. That really should not happen!
>   * @param[in] pt_regs Register set content when the accident happens
> @@ -127,13 +164,19 @@ void do_prefetch_abort (struct pt_regs *pt_regs)
>   */
>  void do_data_abort (struct pt_regs *pt_regs)
>  {
> -	u32 far;
> -
> -	asm volatile ("mrc     p15, 0, %0, c6, c0, 0" : "=r" (far) : : "cc");
> -
> -	printf("unable to handle %s at address 0x%08x\n",
> -			far < PAGE_SIZE ? "NULL pointer dereference" :
> -			"paging request", far);
> +	if (!IS_ENABLED(CONFIG_VERBOSE_EXCEPTIONS)) {
> +		printf("data abort\n");

Why don't you keep the original message here? The fault address is a very
useful information.

> +	} else {
> +		u32 far;
> +		u32 dfsr;
> +
> +		asm volatile (
> +			"mrc     p15, 0, %0, c6, c0, 0\n"
> +			"mrc	 p15, 0, %1, c5, c0, 0\n"
> +			: "=r" (far), "=r" (dfsr) : : "cc");
> +
> +		printf("%s at address 0x%08x\n", fault_status_str(dfsr), far);
> +	}
>  
>  	do_exception(pt_regs);
>  }
> diff --git a/common/Kconfig b/common/Kconfig
> index d60db80..d4c7154 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -668,6 +668,12 @@ config DEBUG_LL
>  	help
>  	  Enable this to get low level debug messages during barebox initialization.
>  
> +config VERBOSE_EXCEPTIONS
> +	bool "decode processor specific exceptions"
> +	default y
> +	help
> +	  Enable this to give out more detailed information about data aborts.

This option should be in arch/arm/Kconfig since it's ARM specific. Also
it should depend on ARM_EXCEPTIONS.

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
