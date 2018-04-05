Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3zc4-0002U1-24
 for barebox@lists.infradead.org; Thu, 05 Apr 2018 07:47:18 +0000
Date: Thu, 5 Apr 2018 09:47:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180405074703.s7jywugclkxd47qm@pengutronix.de>
References: <20180326192025.28809-1-l.stach@pengutronix.de>
 <20180326192025.28809-4-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180326192025.28809-4-l.stach@pengutronix.de>
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
Subject: Re: [PATCH v3 04/10] ARM: add file for HYP mode related setup
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 26, 2018 at 09:20:19PM +0200, Lucas Stach wrote:
> This adds routines to add hyp mode vectors and switch back to HYP
> mode from SVC. This is needed in both the PBL and Barebox proper.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Roland Hieber <r.hieber@pengutronix.de>
> ---
> v3:
> - fix whitespace
> - use __BARE_INIT
> ---
>  arch/arm/cpu/Makefile         |   4 ++
>  arch/arm/cpu/hyp.S            | 116 ++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/cpu/sm_as.S          |  11 ----
>  arch/arm/include/asm/secure.h |   8 +++
>  4 files changed, 128 insertions(+), 11 deletions(-)
>  create mode 100644 arch/arm/cpu/hyp.S
> 
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index 13fe12c31f6f..f86dff975bb4 100644
> --- a/arch/arm/cpu/Makefile
> +++ b/arch/arm/cpu/Makefile
> @@ -9,6 +9,10 @@ obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions.o
>  obj-$(CONFIG_MMU) += mmu.o mmu-early.o
>  pbl-$(CONFIG_MMU) += mmu-early.o
>  lwl-y += lowlevel.o
> +obj-y += hyp.o
> +AFLAGS_hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
> +pbl-y += hyp.o
> +AFLAGS_pbl-hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
>  endif
>  
>  obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
> diff --git a/arch/arm/cpu/hyp.S b/arch/arm/cpu/hyp.S
> new file mode 100644
> index 000000000000..1314b56eab25
> --- /dev/null
> +++ b/arch/arm/cpu/hyp.S
> @@ -0,0 +1,116 @@
> +#include <linux/linkage.h>
> +#include <asm/system.h>
> +#include <asm/opcodes-virt.h>
> +#include <init.h>
> +
> +.arch_extension sec
> +.arch_extension virt
> +
> +__BARE_INIT
> +
> +.data
> +	.align  2
> +ENTRY(__boot_cpu_mode)
> +	.long   0
> +.text
> +
> +ENTRY(__hyp_install)
> +	mrs	r12, cpsr
> +	and	r12, r12, #MODE_MASK
> +
> +	@ Save the initial CPU state
> +	adr	r0, .L__boot_cpu_mode_offset
> +	ldr	r1, [r0]
> +	str	r12, [r0, r1]
> +
> +	cmp	r12, #HYP_MODE
> +	movne	pc, lr			@ give up if the CPU is not in HYP mode
> +
> +	@ Now install the hypervisor stub:
> +	adr	r12, __hyp_vectors
> +	mcr	p15, 4, r12, c12, c0, 0	@ set hypervisor vector base (HVBAR)
> +
> +	@ Disable all traps, so we don't get any nasty surprise
> +	mov	r12, #0
> +	mcr	p15, 4, r12, c1, c1, 0	@ HCR
> +	mcr	p15, 4, r12, c1, c1, 2	@ HCPTR
> +	mcr	p15, 4, r12, c1, c1, 3	@ HSTR
> +
> +THUMB(	orr	r12, #(1 << 30)	)	@ HSCTLR.TE
> +	mcr	p15, 4, r12, c1, c0, 0	@ HSCTLR
> +
> +	mrc	p15, 4, r12, c1, c1, 1	@ HDCR
> +	and	r12, #0x1f		@ Preserve HPMN
> +	mcr	p15, 4, r12, c1, c1, 1	@ HDCR
> +
> +	@ Make sure NS-SVC is initialised appropriately
> +	mrc	p15, 0, r12, c1, c0, 0	@ SCTLR
> +	orr	r12, #(1 << 5)		@ CP15 barriers enabled
> +	bic	r12, #(3 << 7)		@ Clear SED/ITD for v8 (RES0 for v7)
> +	bic	r12, #(3 << 19)		@ WXN and UWXN disabled
> +	mcr	p15, 0, r12, c1, c0, 0	@ SCTLR
> +
> +	mrc	p15, 0, r12, c0, c0, 0	@ MIDR
> +	mcr	p15, 4, r12, c0, c0, 0	@ VPIDR
> +
> +	mrc	p15, 0, r12, c0, c0, 5	@ MPIDR
> +	mcr	p15, 4, r12, c0, c0, 5	@ VMPIDR
> +	bx	lr
> +ENDPROC(__hyp_install)
> +
> +ENTRY(armv7_hyp_install)
> +	mov	r2, lr
> +
> +	bl	__hyp_install
> +
> +	/* set the cpu to SVC32 mode, mask irq and fiq */
> +	mrs	r12, cpsr
> +	eor	r12, r12, #HYP_MODE
> +	tst	r12, #MODE_MASK
> +	bic	r12, r12, #MODE_MASK
> +	orr	r12, r12, #(PSR_I_BIT | PSR_F_BIT | SVC_MODE)
> +THUMB(	orr	r12, r12, #PSR_T_BIT	)
> +	bne	1f
> +	orr	r12, r12, #PSR_A_BIT
> +	adr	lr, 2f
> +	msr	spsr_cxsf, r12
> +	__MSR_ELR_HYP(14)
> +	__ERET
> +1:	msr	cpsr_c, r12
> +2:
> +	mov	pc, r2
> +ENDPROC(armv7_hyp_install)

armv7_hyp_install does the same as arm_cpu_lowlevel_init().
arm_cpu_lowlevel_init() was called by the board code already, why do you
have to do this again in the generic startup path?

I understand that you have to call __hyp_install in non-pbl code again,
but wouldn't it be sufficient to call only that?

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
