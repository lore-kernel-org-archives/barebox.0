Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x231.google.com ([2a00:1450:4010:c07::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ztwjs-0004sM-RB
 for barebox@lists.infradead.org; Wed, 04 Nov 2015 12:00:29 +0000
Received: by lfbf136 with SMTP id f136so37905894lfb.0
 for <barebox@lists.infradead.org>; Wed, 04 Nov 2015 04:00:05 -0800 (PST)
Date: Wed, 4 Nov 2015 15:23:21 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20151104152321.1f2d9e673c1b259c8373148c@gmail.com>
In-Reply-To: <1446635004-26896-1-git-send-email-ejo@pengutronix.de>
References: <1446567541-21731-1-git-send-email-ejo@pengutronix.de>
 <1446635004-26896-1-git-send-email-ejo@pengutronix.de>
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
Subject: Re: [PATCH v2] edit: Return error when save_file failed
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed,  4 Nov 2015 12:03:24 +0100
Enrico Jorns <ejo@pengutronix.de> wrote:

> When writing a file failed (e.g. due to a read-only file system), no
> error was reported by the 'edit' tool. To be valid (and to not confuse
> the poor user) at least '1' should be returned to indicate an error.
> =

> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
>  commands/edit.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> =

> diff --git a/commands/edit.c b/commands/edit.c
> index b28e2b9..3b653b7 100644
> --- a/commands/edit.c
> +++ b/commands/edit.c
> @@ -375,6 +375,7 @@ static int do_edit(int argc, char *argv[])
>  	int i;
>  	int linepos;
>  	int c;
> +	int ret =3D 0;

Can we use COMMAND_SUCCESS insted of 0?


>  =

>  	if (argc !=3D 2)
>  		return COMMAND_ERROR_USAGE;
> @@ -533,7 +534,7 @@ static int do_edit(int argc, char *argv[])
>  			}
>  			break;
>  		case 4:
> -			save_file(argv[1]);
> +			ret =3D save_file(argv[1]);

Actually save_file() returns open()'s error. We have to convert it to COMMA=
ND_ERROR, e.g.:

if (save_file(argv[1]) !=3D 0)
	ret =3D COMMAND_ERROR;

Also save_file() does not check write()'s error.

>  			goto out;
>  		case 3:
>  			goto out;
> @@ -546,7 +547,7 @@ out:
>  	free_buffer();
>  	printf("%c[2J%c[r", 27, 27);
>  	printf("\n");
> -	return 0;
> +	return ret;
>  }
>  =

>  static const char *edit_aliases[] =3D { "sedit", NULL};
> -- =

> 2.6.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
