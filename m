Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f177.google.com ([209.85.216.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNMUz-0007us-Cu
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 11:36:49 +0000
Received: by mail-qc0-f177.google.com with SMTP id u28so3559513qcs.36
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 04:36:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1350214478-3906-1-git-send-email-franck.jullien@gmail.com>
References: <1350214478-3906-1-git-send-email-franck.jullien@gmail.com>
Date: Sun, 14 Oct 2012 13:36:45 +0200
Message-ID: <CAJfOKBxu7pTTPLm8cc6w2ifdFbYquVE+h__USoAJk5Xk2S-Mtg@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] cosmetic: remove right alignment on driver list
To: barebox@lists.infradead.org

2012/10/14 Franck Jullien <franck.jullien@gmail.com>:
> From: franck <franck@franck-M1110M.(none)>

????

Forget this email, I'll resend this patch (I also forgot to add my signoff).

>
> In order to avoid misalignment, just remove the right alignment while printing the drivers list.
> ---
>  drivers/base/driver.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 64fe289..0879cd0 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -403,7 +403,7 @@ static int do_devinfo(int argc, char *argv[])
>
>                 printf("\ndrivers:\n");
>                 for_each_driver(drv)
> -                       printf("%10s\n",drv->name);
> +                       printf("%s\n",drv->name);
>         } else {
>                 dev = get_device_by_name(argv[1]);
>
> --
> 1.7.5.4
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
