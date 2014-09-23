Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XWK96-0000sU-TX
 for barebox@lists.infradead.org; Tue, 23 Sep 2014 07:04:21 +0000
Received: by mail-lb0-f172.google.com with SMTP id p9so7592644lbv.3
 for <barebox@lists.infradead.org>; Tue, 23 Sep 2014 00:03:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJfOKBzn+6WKzQtBN62Z8Uxb1U=wnadzJ-BPeQ5v5tEchdJmTg@mail.gmail.com>
References: <CAJfOKBzn+6WKzQtBN62Z8Uxb1U=wnadzJ-BPeQ5v5tEchdJmTg@mail.gmail.com>
Date: Tue, 23 Sep 2014 09:03:58 +0200
Message-ID: <CAJfOKBySWnQN+RNuZfET12sudUiWhTSV4bVL3xwYTkv-69YwXQ@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Subject: Re: Subject: [PATCH] cfi: print size in human readable format
To: barebox <barebox@lists.infradead.org>

Not sure the patch format is ok. It sent it from my webmail (I'm not
able to use git send-email here).

Franck.

2014-09-23 9:02 GMT+02:00 Franck Jullien <franck.jullien@gmail.com>:
> From: Franck Jullien <franck.jullien@gmail.com>
>
> The CFI size is now printed in a human readable format.
> It also adds "0x" prefix to the printed address.
>
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  drivers/mtd/nor/cfi_flash.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
> index a494063..0fa41bf 100644
> --- a/drivers/mtd/nor/cfi_flash.c
> +++ b/drivers/mtd/nor/cfi_flash.c
> @@ -1000,8 +1000,8 @@ static int cfi_probe (struct device_d *dev)
>                 return -ENODEV;
>         }
>
> -       dev_info(dev, "found cfi flash at %p, size %ld\n",
> -                       info->base, info->size);
> +       dev_info(dev, "found cfi flash at 0x%p, size %s\n",
> +                       info->base, size_human_readable(info->size));
>
>         dev->info = cfi_info;
>
> --
> 2.1.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
