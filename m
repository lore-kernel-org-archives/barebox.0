Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha5UW-0002RT-W0
 for barebox@lists.infradead.org; Sun, 09 Jun 2019 21:36:43 +0000
References: <20190607070658.10919-1-r.czerwinski@pengutronix.de>
 <20190607070658.10919-2-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <2b8e26bf-950a-b1ca-2310-83a7c306d678@pengutronix.de>
Date: Sun, 9 Jun 2019 23:36:35 +0200
MIME-Version: 1.0
In-Reply-To: <20190607070658.10919-2-r.czerwinski@pengutronix.de>
Content-Language: en-US
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 2/3] add CONFIG_PBL_BREAK option
To: barebox@lists.infradead.org, "ore@pengutronix.de" <ore@pengutronix.de>, rcz@pengutronix.de

Hello Oleksij,

On 7/6/19 09:06, Rouven Czerwinski wrote:
> From: Oleksij Rempel <linux@rempel-privat.de>
> 
> With this option barebox will be build with breakpoint instruction
> in early pbl stage and on main barebox entry. Otherwise two nop
> instructions are generated which allow binary patching of existing
> barebox binaries.

At least arm-linux-gnueabihf-gcc (Debian 8.3.0-2) does some funny
reordering with the result that the barebox header may no longer be
at the very start of the image.
This results e.g. in bootm not working for stm32 bareboxes, because
file_detect_type no longer detects them as valid barebox ARM images.

Steps to reproduce with current next:

$ make stm32mp1_defconfig
$ make
$ xxd -l64 -g1 images/start_stm32mp157c_dk2.pblb
00000000: 04 46 0d 46 16 46 00 00 01 90 8f e2 19 ff 2f e1  .F.F.F......../.
00000010: 00 f0 22 f8 fe e7 fe e7 fe e7 fe e7 fe e7 fe e7  ..".............
00000020: fe e7 fe e7 fe e7 fe e7 62 61 72 65 62 6f 78 00  ........barebox.
00000030: 00 00 00 00 00 00 00 00 55 55 55 55 55 55 55 55  ........UUUUUUUU

Note how the new 8 bytes are not after the __barebox_arm_head as they should.
This leads to the barebox string being shifted from the
ARM_HEAD_MAGICWORD_OFFSET, where it's expected.

Could you take a look?
Thanks. 

> In case production barebox images should be debugged, the corresponding
> ELF binaries need to be kept to allow later JTAG debugging.
> This option only works with an attached JTAG debugger, the board will
> hang otherwise.
> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/cpu/common.c              | 13 +++++++++++++
>  arch/arm/cpu/start.c               |  2 ++
>  arch/arm/include/asm/barebox-arm.h |  2 ++
>  common/Kconfig                     |  9 +++++++++
>  4 files changed, 26 insertions(+)
> 
> diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
> index 51fe7ed988..6fe3476aa2 100644
> --- a/arch/arm/cpu/common.c
> +++ b/arch/arm/cpu/common.c
> @@ -30,6 +30,19 @@
>  #define R_ARM_RELATIVE 23
>  #define R_AARCH64_RELATIVE 1027
>  
> +void pbl_barebox_break(void)
> +{
> +	__asm__ __volatile__ (
> +#ifdef CONFIG_PBL_BREAK
> +		"bkpt #17\n"
> +		"nop\n"
> +#else
> +		"nop\n"
> +		"nop\n"
> +#endif
> +	);
> +}
> +
>  /*
>   * relocate binary to the currently running address
>   */
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 6573c2ef74..6bfc4da34c 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -168,6 +168,8 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
>  
>  	barrier();
>  
> +	pbl_barebox_break();
> +
>  	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
>  
>  	arm_endmem = endmem;
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index a11d34923d..12765b7277 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -55,6 +55,7 @@ static inline unsigned long global_variable_offset(void)
>  }
>  
>  void setup_c(void);
> +void pbl_barebox_break(void);
>  void relocate_to_current_adr(void);
>  void relocate_to_adr(unsigned long target);
>  void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize, void *boarddata);
> @@ -177,6 +178,7 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
>  				(uint32_t r0, uint32_t r1, uint32_t r2)	\
>  		{							\
>  			__barebox_arm_head();				\
> +			pbl_barebox_break();				\
>  			__##name(r0, r1, r2);				\
>  		}							\
>  		static void NAKED noinline __##name			\
> diff --git a/common/Kconfig b/common/Kconfig
> index ffb7537592..59f6f59dcf 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1245,6 +1245,15 @@ config DEBUG_INITCALLS
>  	help
>  	  If enabled this will print initcall traces.
>  
> +
> +config PBL_BREAK
> +	bool "Execute software break on pbl start"
> +	help
> +	  If this enabled, barebox will be compiled with BKPT instruction
> +	  during early pbl init and entry of the main barebox.
> +	  This option can only be used with a JTAG debugger,
> +	  the board hangs otherwise.
> +
>  endmenu
>  
>  config HAS_DEBUG_LL
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
