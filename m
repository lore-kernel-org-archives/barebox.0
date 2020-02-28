Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7csA-00067w-BH
 for barebox@lists.infradead.org; Fri, 28 Feb 2020 10:27:59 +0000
Received: by mail-vs1-xe43.google.com with SMTP id c18so1605720vsq.7
 for <barebox@lists.infradead.org>; Fri, 28 Feb 2020 02:27:57 -0800 (PST)
MIME-Version: 1.0
References: <20200225165731.12419-2-a.fatoum@pengutronix.de>
 <20200226104806.9498-1-a.fatoum@pengutronix.de>
In-Reply-To: <20200226104806.9498-1-a.fatoum@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Fri, 28 Feb 2020 11:27:21 +0100
Message-ID: <CAGm1_kspuhkcK7sa4uOT0rUjgf-UG1Of13ukSkKXiF0KkEt=wg@mail.gmail.com>
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
Subject: Re: [PATCH] fixup! USB: MUSB: defer driver probes where necessary
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

Hi Ahmad,

On Wed, Feb 26, 2020 at 11:48 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> The NULL assignment is a left over from when it was a global variable.
> am_usbphy is local now and is just going out of scope, so need to NULL
> it.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/usb/musb/phy-am335x.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/usb/musb/phy-am335x.c b/drivers/usb/musb/phy-am335x.c
> index 7dda8caf2a3c..f2e870d7ee61 100644
> --- a/drivers/usb/musb/phy-am335x.c
> +++ b/drivers/usb/musb/phy-am335x.c
> @@ -60,7 +60,6 @@ err_release:
>         release_region(iores);
>  err_free:
>         free(am_usbphy);
> -       am_usbphy = NULL;
>
>         return ret;
>  };

Do you want me to test this fixup as well or are you going to post v2?

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
