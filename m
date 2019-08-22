Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mkr-0007qT-OX
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 13:03:54 +0000
Message-ID: <c3d4f25c4720883e939cae759d5b3eb21287d4d3.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 22 Aug 2019 15:03:52 +0200
In-Reply-To: <20190822125158.10296-6-s.hauer@pengutronix.de>
References: <20190822125158.10296-1-s.hauer@pengutronix.de>
 <20190822125158.10296-6-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 5/8] ARM: nxp-imx8mq-evk: Remove duplicate call to
 imx8mq_cpu_lowlevel_init()
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

On Thu, 2019-08-22 at 14:51 +0200, Sascha Hauer wrote:
> imx8mq_cpu_lowlevel_init() is called twice. Remove the second call.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/nxp-imx8mq-evk/lowlevel.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
> b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
> index a74171e5e5..cb1c499cb0 100644
> --- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
> +++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
> @@ -105,8 +105,6 @@ static __noreturn noinline void
> nxp_imx8mq_evk_start(void)
>  	const u8 *bl31;
>  	size_t bl31_size;
>  
> -	imx8mq_cpu_lowlevel_init();
> -
>  	if (IS_ENABLED(CONFIG_DEBUG_LL))
>  		setup_uart();
>  

Reviewed-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

- rcz


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
