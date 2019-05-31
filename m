Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcNn-0004E9-7N
 for barebox@lists.infradead.org; Fri, 31 May 2019 07:55:24 +0000
Received: by mail-it1-x142.google.com with SMTP id m3so14294103itl.1
 for <barebox@lists.infradead.org>; Fri, 31 May 2019 00:55:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190531074102.28035-1-a.fatoum@pengutronix.de>
In-Reply-To: <20190531074102.28035-1-a.fatoum@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 31 May 2019 00:55:10 -0700
Message-ID: <CAHQ1cqFMjDBVdBEoRyxRPJ6YS9wOJnfA8-W8RjOL=CMTB7zhAw@mail.gmail.com>
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
Subject: Re: [PATCH RFC] ARM: imx8: fix discrepancy between comment and code
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, May 31, 2019 at 12:41 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> The comment speaks of a one second polling timeout, while the polling
> is indefinite with timeout not accounted for. Thus change the comment
> to reflect the actual behavior.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Ugh, my bad, not sure where I got that comment from, I am guessing
some version of old U-Boot code that actually implemented that timeout
properly. Definitely should be fixed.

Acked-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Thanks,
Andrey Smirnov

> ---
>  arch/arm/mach-imx/imx8-ddrc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/mach-imx/imx8-ddrc.c b/arch/arm/mach-imx/imx8-ddrc.c
> index 18454a91533b..736865eb6f12 100644
> --- a/arch/arm/mach-imx/imx8-ddrc.c
> +++ b/arch/arm/mach-imx/imx8-ddrc.c
> @@ -29,7 +29,7 @@ static u32 ddrc_phy_get_message(void __iomem *phy, int type)
>
>         /*
>          * When BIT0 set to 0, the PMU has a message for the user
> -        * 10ms seems not enough for poll message, so use 1s here.
> +        * Wait for it indefinitely.
>          */
>         readl_poll_timeout(phy + DDRC_PHY_REG(0xd0004),
>                            r, !(r & BIT(0)), 0);
> @@ -104,4 +104,4 @@ void ddrc_phy_wait_training_complete(void __iomem *phy)
>                 putc_ll('\r');
>                 putc_ll('\n');
>         }
> -}
> \ No newline at end of file
> +}
> --
> 2.20.1
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
