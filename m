Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4OS5-0001ht-7D
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 08:41:51 +0000
Received: by mail-it0-x244.google.com with SMTP id n68so13730130itn.3
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2016 00:41:32 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161108072936.beuncvhpwxuhumkg@pengutronix.de>
References: <CAOTEMUR=FtB_Ox++XPvomyHXsk5Jcm7CG7aEM6WmN++t0211Aw@mail.gmail.com>
 <CAOTEMUQt95XDorid8sj9FHkpCpUJYnqNeRbBU+33aLYz2oM+gw@mail.gmail.com>
 <20161107074924.blkryleb2eb5bkhy@pengutronix.de>
 <CAOTEMUR=cw8C7K6SwUtUs1PjJB2f8OCBMsmPd1Pe_gwGWJpGfA@mail.gmail.com>
 <20161107094802.bhy2wowbri7q3sra@pengutronix.de>
 <CAOTEMURrS==8jFv=K4s_puQKxK+27fJ3PyMV05j5XWoyJPucPg@mail.gmail.com>
 <20161108072936.beuncvhpwxuhumkg@pengutronix.de>
From: Alex Vazquez <avazquez.dev@gmail.com>
Date: Wed, 9 Nov 2016 09:41:31 +0100
Message-ID: <CAOTEMUQW83VThdfdoSyQ4w4M-OAtnR4rRsX8NcpFhE3O0ciJWg@mail.gmail.com>
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
Subject: Re: Fwd: boot kernel with append device tree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha!
I have tested the patch with the version (2016.03.0) and now it works correctly.

Thanks!
Regards!

2016-11-08 8:29 GMT+01:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Mon, Nov 07, 2016 at 12:01:25PM +0100, Alex Vazquez wrote:
>> > Is CONFIG_OFTREE enabled in your build?
>> Yes.
>
> Ok, could you please try the following patch? Another possibility would
> be to disable CONFIG_OFTREE, but it would be good if you could test the
> patch anyway since the same bug is still present in current master.
>
> Sascha
>
> ----------------------------------8<--------------------------------
>
> From 500e5f87f9943958fa4662e29261a0abb4df24d9 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Tue, 8 Nov 2016 08:23:17 +0100
> Subject: [PATCH] ARM: Fix appended device tree when CONFIG_OFTREE is enabled
>
> When CONFIG_OFTREE is enabled the appended device tree is unflattened
> and put into data->of_root_node, but there it is never used again.
> To actually use the appended device tree put it into data->oftree
> instead.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/lib/bootm.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> index 28b4f4a..8977d08 100644
> --- a/arch/arm/lib/bootm.c
> +++ b/arch/arm/lib/bootm.c
> @@ -244,12 +244,21 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
>         }
>
>         if (IS_BUILTIN(CONFIG_OFTREE)) {
> -               data->of_root_node = of_unflatten_dtb(oftree);
> -               if (!data->of_root_node) {
> +               struct device_node *root;
> +
> +               root = of_unflatten_dtb(oftree);
> +               if (!root) {
>                         pr_err("unable to unflatten devicetree\n");
>                         ret = -EINVAL;
>                         goto err_free;
>                 }
> +               data->oftree = of_get_fixed_tree(root);
> +               if (!data->oftree) {
> +                       pr_err("Unable to get fixed tree\n");
> +                       ret = -EINVAL;
> +                       goto err_free;
> +               }
> +
>                 free(oftree);
>         } else {
>                 data->oftree = oftree;
> --
> 2.10.1
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
