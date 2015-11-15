Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22f.google.com ([2a00:1450:4010:c07::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zxsey-0002F5-2q
 for barebox@lists.infradead.org; Sun, 15 Nov 2015 08:27:42 +0000
Received: by lfaz4 with SMTP id z4so8666532lfa.0
 for <barebox@lists.infradead.org>; Sun, 15 Nov 2015 00:27:16 -0800 (PST)
Date: Sun, 15 Nov 2015 11:50:49 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20151115115049.ce397ba71f0d859b5363dbce@gmail.com>
In-Reply-To: <1447549279-11694-1-git-send-email-u74147@gmail.com>
References: <1447549279-11694-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] lib: readline support ctrl-l to clear screen
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, 15 Nov 2015 09:01:19 +0800
Du Huanpeng <u74147@gmail.com> wrote:

You have submited at lease two patches with '[PATCH] lib: readline support =
ctrl-l to clear screen' subject.
The patches differ from each other. This causes causes a great deal of conf=
usion.

Please add a version tag when resending patches, see this for details:
   http://wiki.qemu.org/Contribute/SubmitAPatch#When_resending_patches_add_=
a_version_tag

> maybe it is easier to press ctrl-l to clear the screen than type
> 'clear' command.
> =

> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  lib/readline.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> =

> diff --git a/lib/readline.c b/lib/readline.c
> index 14dd311..170effb 100644
> --- a/lib/readline.c
> +++ b/lib/readline.c
> @@ -262,6 +262,15 @@ int readline(const char *prompt, char *buf, int len)
>  				eol_num--;
>  			}
>  			break;
> +		case CTL_CH('l'):
> +			printf(ANSI_CLEAR_SCREEN);
> +			buf[eol_num] =3D 0;
> +			printf("%s%s", prompt, buf);
> +			wlen =3D eol_num - num;
> +			while (wlen--) {
> +				getcmd_putch(CTL_BACKSPACE);
> +			}
> +			break;
>  		case BB_KEY_ERASE_TO_EOL:
>  			ERASE_TO_EOL();
>  			break;
> -- =

> 1.9.1
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
