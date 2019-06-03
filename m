Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsVd-0001Ck-6S
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 19:20:42 +0000
Received: by mail-it1-x141.google.com with SMTP id h11so28420870itf.5
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2019 12:20:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190603190535.15346-1-a.fatoum@pengutronix.de>
In-Reply-To: <20190603190535.15346-1-a.fatoum@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 3 Jun 2019 12:20:28 -0700
Message-ID: <CAHQ1cqGxnQSHQ9fuCikVMEGN5jOe7y7H4MXn6G3UhBov_TGq-w@mail.gmail.com>
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
Subject: Re: [PATCH] commands: don't use stale errno when calling fb_open
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jun 3, 2019 at 12:05 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> fb_open returns a pointer and doesn't populate errno, which will
> results in a stale errno being evaluated by perror() on failure.
> Fix this by populating errno manually at call sites.
>

Why not just convert the code to use strerror() instead? Seems a bit
more straightforward plus changing errno outside of our "POSIX/C"
layer seems a bit out of place. Not a big deal though.

Thanks,
Andrey Smirnov

> While at it, correct the typo in the prefix passed to perror().
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/fbtest.c | 5 +++--
>  commands/splash.c | 5 +++--
>  2 files changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/commands/fbtest.c b/commands/fbtest.c
> index e5dd8ba7fabf..2c589f77d3b8 100644
> --- a/commands/fbtest.c
> +++ b/commands/fbtest.c
> @@ -271,8 +271,9 @@ static int do_fbtest(int argc, char *argv[])
>
>         sc = fb_open(fbdev);
>         if (IS_ERR(sc)) {
> -               perror("fd_open");
> -               return PTR_ERR(sc);
> +               errno = PTR_ERR(sc);
> +               perror("fb_open");
> +               return errno;
>         }
>
>         if (!pattern_name) {
> diff --git a/commands/splash.c b/commands/splash.c
> index 2b70b296837e..75b3ee3fadaf 100644
> --- a/commands/splash.c
> +++ b/commands/splash.c
> @@ -54,8 +54,9 @@ static int do_splash(int argc, char *argv[])
>
>         sc = fb_open(fbdev);
>         if (IS_ERR(sc)) {
> -               perror("fd_open");
> -               return PTR_ERR(sc);
> +               errno = PTR_ERR(sc);
> +               perror("fb_open");
> +               return errno;
>         }
>
>         buf = gui_screen_render_buffer(sc);
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
