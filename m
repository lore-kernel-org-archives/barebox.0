Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwS7N-0001nd-U9
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 14:45:31 +0000
Received: by mail-lf1-x143.google.com with SMTP id b15so9290406lfc.4
 for <barebox@lists.infradead.org>; Tue, 28 Jan 2020 06:45:25 -0800 (PST)
Date: Tue, 28 Jan 2020 17:45:23 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20200128174523.a96ddb3231191ad2a0015f88@gmail.com>
In-Reply-To: <20200128142517.27979-1-u.kleine-koenig@pengutronix.de>
References: <20200128142517.27979-1-u.kleine-koenig@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Documentation/sandbox: Add hint how to end a sandboxed
 barebox
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 28 Jan 2020 15:25:17 +0100
Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> wrote:

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  Documentation/boards/sandbox.rst |  3 +++
>  commands/test.c                  | 33 ++++++++++++++++----------------

Have changes in the commands/test.c file any relation to commit message?


>  2 files changed, 20 insertions(+), 16 deletions(-)
> =

> diff --git a/Documentation/boards/sandbox.rst b/Documentation/boards/sand=
box.rst
> index 85a54e6b04d6..8b00093fb9f3 100644
> --- a/Documentation/boards/sandbox.rst
> +++ b/Documentation/boards/sandbox.rst
> @@ -57,3 +57,6 @@ Available sandbox invocation options include:
>    ``-y``, ``--yres <res>``
>  =

>      Specify SDL height.
> +
> +To terminate barebox and return to the calling shell, the poweroff comma=
nd is
> +suitable.
> diff --git a/commands/test.c b/commands/test.c
> index 86636de1c283..f7068f757904 100644
> --- a/commands/test.c
> +++ b/commands/test.c
> @@ -159,28 +159,29 @@ static int do_test(int argc, char *argv[])
>  					break;
>  				}
>  				expr =3D 0;
> -				if (opt =3D=3D OPT_EXISTS) {
> +				switch (opt) {
> +				case OPT_EXISTS:
>  					expr =3D 1;
>  					break;
> -				}
> -				if (opt =3D=3D OPT_FILE && S_ISREG(statbuf.st_mode)) {
> -					expr =3D 1;
> +
> +				case OPT_FILE:
> +					expr =3D S_ISREG(statbuf.st_mode);
>  					break;
> -				}
> -				if (opt =3D=3D OPT_DIRECTORY && S_ISDIR(statbuf.st_mode)) {
> -					expr =3D 1;
> +
> +				case OPT_DIRECTORY:
> +					expr =3D S_ISDIR(statbuf.st_mode);
>  					break;
> -				}
> -				if (opt =3D=3D OPT_SYMBOLIC_LINK && S_ISLNK(statbuf.st_mode)) {
> -					expr =3D 1;
> +
> +				case OPT_SYMBOLIC_LINK:
> +					expr =3D S_ISLNK(statbuf.st_mode);
>  					break;
> -				}
> -				if (opt =3D=3D OPT_BLOCK && S_ISBLK(statbuf.st_mode)) {
> -					expr =3D 1;
> +
> +				case OPT_BLOCK:
> +					expr =3D S_ISBLK(statbuf.st_mode);
>  					break;
> -				}
> -				if (opt =3D=3D OPT_CHAR && S_ISCHR(statbuf.st_mode)) {
> -					expr =3D 1;
> +
> +				case OPT_CHAR:
> +					expr =3D S_ISCHR(statbuf.st_mode);
>  					break;
>  				}
>  			}
> -- =

> 2.24.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
