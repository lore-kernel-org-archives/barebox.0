Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gK8QW-0001CY-El
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 20:58:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id a8-v6so13632256wmf.1
 for <barebox@lists.infradead.org>; Tue, 06 Nov 2018 12:58:09 -0800 (PST)
MIME-Version: 1.0
References: <20181106174254.21371-1-l.stach@pengutronix.de>
In-Reply-To: <20181106174254.21371-1-l.stach@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 6 Nov 2018 12:57:56 -0800
Message-ID: <CAHQ1cqHBUguROV=pi9qq1_6D4qm07X3wzPYooqHEVcMcHNWVDA@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] ARM: nxp-imx8mq-evk: remove SDRAM reservation for ATF
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Nov 6, 2018 at 9:43 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Recent versions of the i.MX8MQ ATF (like the one shipped with Barebox)
> reside in a part of OCRAM, so there is no need to reserve any part of
> SDRAM anymore.
>

Not sure if this will be handled by Barebox, but there's also:

/memreserve/ 0x40000000 0x00020000;

in arch/arm/dts/imx8mq.dtsi, do we want to drop that as well?

Other than that, definitely a good change:

Acked-by: Andrey Smirnov <andrew.smirnov@gmail.com>

> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/nxp-imx8mq-evk/board.c | 11 -----------
>  1 file changed, 11 deletions(-)
>
> diff --git a/arch/arm/boards/nxp-imx8mq-evk/board.c b/arch/arm/boards/nxp-imx8mq-evk/board.c
> index 764eadb766a9..7918b5fb3e36 100644
> --- a/arch/arm/boards/nxp-imx8mq-evk/board.c
> +++ b/arch/arm/boards/nxp-imx8mq-evk/board.c
> @@ -45,17 +45,6 @@ static int ar8031_phy_fixup(struct phy_device *phydev)
>         return 0;
>  }
>
> -static int imx8mq_evk_mem_init(void)
> -{
> -       if (!of_machine_is_compatible("fsl,imx8mq-evk"))
> -               return 0;
> -
> -       request_sdram_region("ATF", 0x40000000, SZ_128K);
> -
> -       return 0;
> -}
> -mem_initcall(imx8mq_evk_mem_init);
> -
>  static int nxp_imx8mq_evk_init(void)
>  {
>         if (!of_machine_is_compatible("fsl,imx8mq-evk"))
> --
> 2.19.1
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
