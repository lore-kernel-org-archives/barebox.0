Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x231.google.com ([2a00:1450:400c:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WozWM-0006VE-F0
 for barebox@lists.infradead.org; Mon, 26 May 2014 18:21:14 +0000
Received: by mail-we0-f177.google.com with SMTP id x48so8471276wes.36
 for <barebox@lists.infradead.org>; Mon, 26 May 2014 11:20:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1401127952-10811-1-git-send-email-franck.jullien@gmail.com>
References: <1401127952-10811-1-git-send-email-franck.jullien@gmail.com>
Date: Mon, 26 May 2014 20:20:52 +0200
Message-ID: <CAJfOKBx0YcSYarHJsE0FKJ5R5WVecPL=oLO+YPXGXpvs4YAg7A@mail.gmail.com>
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
Subject: Re: [PATCH] cfi_flash: show progress while during erase
To: barebox <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>

Sascha,

Any reason why you removed the progress bar here in this commit:
2749fbac48374b5f5ced ?

Franck.

2014-05-26 20:12 GMT+02:00 Franck Jullien <franck.jullien@gmail.com>:
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  drivers/mtd/nor/cfi_flash.c |   12 ++++++++++--
>  1 files changed, 10 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
> index 3d3d231..f2f52e1 100644
> --- a/drivers/mtd/nor/cfi_flash.c
> +++ b/drivers/mtd/nor/cfi_flash.c
> @@ -470,7 +470,7 @@ flash_sect_t find_sector (struct flash_info *info, ulong addr)
>         return sector;
>  }
>
> -static int cfi_erase(struct flash_info *finfo, size_t count, loff_t offset)
> +static int cfi_erase(struct flash_info *finfo, size_t count, loff_t offset, int verbose)
>  {
>          unsigned long start, end;
>          int i, ret = 0;
> @@ -481,17 +481,25 @@ static int cfi_erase(struct flash_info *finfo, size_t count, loff_t offset)
>          end   = find_sector(finfo, (unsigned long)finfo->base + offset +
>                         count - 1);
>
> +       if (verbose)
> +               init_progression_bar(end - start);
> +
>          for (i = start; i <= end; i++) {
>                  ret = finfo->cfi_cmd_set->flash_erase_one(finfo, i);
>                  if (ret)
>                          goto out;
>
> +               if (verbose)
> +                       show_progress(i - start);
> +
>                 if (ctrlc()) {
>                         ret = -EINTR;
>                         goto out;
>                 }
>          }
>  out:
> +       if (verbose)
> +               putchar('\n');
>          return ret;
>  }
>
> @@ -933,7 +941,7 @@ static int cfi_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
>         struct flash_info *info = container_of(mtd, struct flash_info, mtd);
>         int ret;
>
> -       ret = cfi_erase(info, instr->len, instr->addr);
> +       ret = cfi_erase(info, instr->len, instr->addr, 1);
>
>         if (ret) {
>                 instr->state = MTD_ERASE_FAILED;
> --
> 1.7.1
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
