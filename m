Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaHlq-0003Ya-1D
 for barebox@lists.infradead.org; Sun, 17 May 2020 11:47:55 +0000
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com
 [209.85.222.41]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 04HBlL80017634
 for <barebox@lists.infradead.org>; Sun, 17 May 2020 20:47:21 +0900
Received: by mail-ua1-f41.google.com with SMTP id z12so357492uap.6
 for <barebox@lists.infradead.org>; Sun, 17 May 2020 04:47:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200515153947.31109-1-cleger@kalray.eu>
In-Reply-To: <20200515153947.31109-1-cleger@kalray.eu>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 17 May 2020 20:46:44 +0900
Message-ID: <CAK7LNATD3qieDu9psZhORE74MKHw71suphj9Su2=UzZjo4C=dA@mail.gmail.com>
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
Subject: Re: [PATCH] clocksource: kvx: remove unused variable np.
To: Clement Leger <cleger@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Sat, May 16, 2020 at 12:40 AM Clement Leger <cleger@kalray.eu> wrote:


No period at the end of the patch subject, please.

(Maybe, Sascha can fix it up, though)


> Remove unused variable np from probe function.
>
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  drivers/clocksource/kvx_timer.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/clocksource/kvx_timer.c b/drivers/clocksource/kvx_timer.c
> index f16d77b9d..4125ddbee 100644
> --- a/drivers/clocksource/kvx_timer.c
> +++ b/drivers/clocksource/kvx_timer.c
> @@ -27,7 +27,6 @@ static int kvx_timer_probe(struct device_d *dev)
>  {
>         struct clk *clk;
>         uint32_t clk_freq;
> -       struct device_node *np = dev->device_node;
>
>         /* Get clock frequency */
>         clk = clk_get(dev, NULL);
> --
> 2.17.1
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
