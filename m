Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mge-0006Bq-BR
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 12:59:33 +0000
Message-ID: <5bfa3b2997a5d2a2e8ef33ecef461fbe9a030b73.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 22 Aug 2019 14:59:29 +0200
In-Reply-To: <20190822125158.10296-9-s.hauer@pengutronix.de>
References: <20190822125158.10296-1-s.hauer@pengutronix.de>
 <20190822125158.10296-9-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 8/8] ARM: nxp-imx8mq-evk: Update comments
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

On Thu, 2019-08-22 at 14:51 +0200, Sascha Hauer wrote:
> The comments mention contents of register r0, this is outdated. We
> base our decisions on the current EL. Update the comments.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/nxp-imx8mq-evk/lowlevel.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
> index 46dba16ec3..9d060fb589 100644
> --- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
> +++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
> @@ -88,11 +88,9 @@ static __noreturn noinline void nxp_imx8mq_evk_start(void)
>  		setup_uart();
>  
>  	/*
> -	 * if register r0 does not contain 1, we are running for the first time
> -	 * and need to initialize the DRAM, install the trampoline and run TF-A
> -	 * (BL31).
> -	 * Otherwise the 1 indicates that the DRAM setup and trampoline are
> -	 * already installed and TF-A has been run. In this case we can skip
> +	 * If we are in EL3 we are running for the first time and need to
> +	 * initialize the DRAM and run TF-A (BL31). The TF-A will then jump
> +	 * to DRAM in EL2.
>  	 */
>  	if (current_el() == 3) {
>  		nxp_imx8mq_evk_sram_setup();
> @@ -103,6 +101,7 @@ static __noreturn noinline void nxp_imx8mq_evk_start(void)
>  		 */
>  		memcpy((void *)MX8MQ_ATF_BL33_BASE_ADDR, _text, __bss_start - _text);
>  		imx8mq_atf_load_bl31(bl31, bl31_size);
> +		/* not reached */
>  	}
>  
>  	imx8_get_boot_source(&src, &instance);

Reviewed-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

- rcz


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
