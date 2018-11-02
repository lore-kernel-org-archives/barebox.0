Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIhwp-0002G7-Vc
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 22:29:49 +0000
Date: Fri, 2 Nov 2018 23:27:27 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181102222727.GA17886@ravnborg.org>
References: <20181101091846.10882-1-l.stach@pengutronix.de>
 <20181101091846.10882-4-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181101091846.10882-4-l.stach@pengutronix.de>
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
Subject: Re: [PATCH v4 04/11] ARM: allow secure monitor code to be built
 without PSCI
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Lucas.

On Thu, Nov 01, 2018 at 10:18:39AM +0100, Lucas Stach wrote:
> The hyp mode handling added in the secure monitor code is also useful
> when Barebox doesn't have PSCI control. Allow to build without PSCI.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Roland Hieber <r.hieber@pengutronix.de>
> ---
>  arch/arm/cpu/sm_as.S | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/cpu/sm_as.S b/arch/arm/cpu/sm_as.S
> index 09580e75de5f..0d01e1bf2435 100644
> --- a/arch/arm/cpu/sm_as.S
> +++ b/arch/arm/cpu/sm_as.S
> @@ -129,7 +129,9 @@ secure_monitor:
>  	sub	sp, sp, #4*4			@ allocate result structure on stack
>  	mov	r12, sp
>  	push	{r4-r6, r12}
> +#ifdef CONFIG_ARM_PSCI
>  	bl	psci_entry
> +#endif
>  	pop	{r4-r6, r12}
>  	ldm	r12, {r0-r3}
>  	add	sp, sp, #4*4
> @@ -163,6 +165,8 @@ ENTRY(psci_cpu_entry)
>  	mcr	p15, 0, r0, c1, c0, 1	@ ACTLR
>  
>  	bl	secure_monitor_stack_setup
> +#ifdef CONFIG_ARM_PSCI
>  	bl	psci_cpu_entry_c
> +#endif

It looks strange to have two consecutive

	bl  something
	bl  something_else

In the above (when CONFIG_ARM_PSCI is defined).
Seems that we will never hit the second branch long instruction.

But maybe I am just clueless on the assembly syntax?

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
