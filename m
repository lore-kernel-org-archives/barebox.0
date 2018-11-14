Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gN44g-0007kw-MB
 for barebox@lists.infradead.org; Wed, 14 Nov 2018 22:55:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id u5-v6so13824691wrn.9
 for <barebox@lists.infradead.org>; Wed, 14 Nov 2018 14:55:44 -0800 (PST)
MIME-Version: 1.0
References: <20181114151454.8326-1-ejo@pengutronix.de>
In-Reply-To: <20181114151454.8326-1-ejo@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 14 Nov 2018 14:55:31 -0800
Message-ID: <CAHQ1cqEiST3eJwRmRYP3s1WDdb4jL0Bv-ETK-xP8G9=OYDM9DQ@mail.gmail.com>
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
Subject: Re: [PATCH] nand: denali: remove undefined GFP_DMA flag
To: ejo@pengutronix.de
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Nov 14, 2018 at 7:15 AM Enrico Jorns <ejo@pengutronix.de> wrote:
>
> This was a remnant from porting kernel code to barebox.
> While being uncritical so far, this will now cause a compiler error
> since kzalloc is not a define but a static inline function.
>
> As the kzalloc() 'mode' argument was ignored before and still will be,
> it is safe to remove the parameter.
>
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
>  drivers/mtd/nand/nand_denali.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
> index 8b09b3722f..ef3395864c 100644
> --- a/drivers/mtd/nand/nand_denali.c
> +++ b/drivers/mtd/nand/nand_denali.c
> @@ -1387,7 +1387,7 @@ int denali_init(struct denali_nand_info *denali)
>         }
>
>         /* allocate a temporary buffer for nand_scan_ident() */
> -       denali->buf.buf = kzalloc(PAGE_SIZE, GFP_DMA | GFP_KERNEL);
> +       denali->buf.buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
>         if (!denali->buf.buf)
>                 return -ENOMEM;

Just as a suggestion, maybe just replace this call with xzalloc,
getting rid of meaningless GFP_KERNEL as well, and dropping the OOM
check below?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
