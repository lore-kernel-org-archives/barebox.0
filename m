Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x236.google.com ([2607:f8b0:400d:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aLRGg-0002Wa-Oy
 for barebox@lists.infradead.org; Tue, 19 Jan 2016 08:03:59 +0000
Received: by mail-qg0-x236.google.com with SMTP id e32so486410228qgf.3
 for <barebox@lists.infradead.org>; Tue, 19 Jan 2016 00:03:37 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1453190117-27933-1-git-send-email-s.hauer@pengutronix.de>
References: <1453190117-27933-1-git-send-email-s.hauer@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Tue, 19 Jan 2016 09:03:17 +0100
Message-ID: <CAGm1_kvriwy-P1VHiq91cEmJHOpWR3VHu9q4SQWGU+PjRkJoTQ@mail.gmail.com>
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
Subject: Re: [PATCH] bootm: Add option to force booting signed images
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,

On Tue, Jan 19, 2016 at 8:55 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> With CONFIG_BOOTM_FORCE_SIGNED_IMAGES the bootm code will refuse to boot
> unsigned images. Since currently FIT is the only image type which
> supports signing this means we with this option we enforce using FIT

comma is missing after "supports signing", "we" after "means" must go away

> images. All additionally passed in device trees and initrds will be

a word is missing between "All" and "additionally"

> ignored so that only the ones from the FIT image can be used.

comma after "ignored"

Reviewed-by: Yegor Yefremov <yegorslists@googlemail.com>

Yegor

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/bootm.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/common/bootm.c b/common/bootm.c
> index d8acff8..3efc17e 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -68,8 +68,10 @@ enum bootm_verify bootm_get_verify_mode(void)
>  }
>
>  static const char * const bootm_verify_names[] = {
> +#ifndef CONFIG_BOOTM_FORCE_SIGNED_IMAGES
>         [BOOTM_VERIFY_NONE] = "none",
>         [BOOTM_VERIFY_HASH] = "hash",
> +#endif
>         [BOOTM_VERIFY_SIGNATURE] = "signature",
>  };
>
> @@ -526,6 +528,23 @@ int bootm_boot(struct bootm_data *bootm_data)
>                 goto err_out;
>         }
>
> +       if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES))
> +               data->verify = BOOTM_VERIFY_SIGNATURE;
> +
> +               /*
> +                * When we only allow booting signed images make sure everything
> +                * we boot is in the OS image and not given separately.
> +                */
> +               data->oftree = NULL;
> +               data->oftree_file = NULL;
> +               data->initrd_file = NULL;
> +               if (os_type != filetype_oftree) {
> +                       printf("Signed boot and image is no FIT image, aborting\n");
> +                       ret = -EINVAL;
> +                       goto err_out;
> +               }
> +       }
> +
>         if (IS_ENABLED(CONFIG_FITIMAGE) && os_type == filetype_oftree) {
>                 struct fit_handle *fit;
>
> --
> 2.7.0.rc3
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
