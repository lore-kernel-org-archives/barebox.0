Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22b.google.com ([2a00:1450:4010:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYZvL-0006rb-M5
 for barebox@lists.infradead.org; Wed, 24 Feb 2016 13:57:14 +0000
Received: by mail-lf0-x22b.google.com with SMTP id m1so12295970lfg.0
 for <barebox@lists.infradead.org>; Wed, 24 Feb 2016 05:55:55 -0800 (PST)
Date: Wed, 24 Feb 2016 17:21:48 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160224172148.fd09cf0757b3b52348103638@gmail.com>
In-Reply-To: <1456310925-1057-1-git-send-email-pmamonov@gmail.com>
References: <1455978465-28919-2-git-send-email-pmamonov@gmail.com>
 <1456310925-1057-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH v2] input: usb keyboard: fix CTRL+C
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>

On Wed, 24 Feb 2016 13:48:45 +0300
Peter Mamonov <pmamonov@gmail.com> wrote:

> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  drivers/input/input.c    | 4 +++-
>  drivers/input/keymap.c   | 4 ++++
>  include/input/keyboard.h | 1 +
>  3 files changed, 8 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/input/input.c b/drivers/input/input.c
> index ad7400f..1c6891c 100644
> --- a/drivers/input/input.c
> +++ b/drivers/input/input.c
> @@ -164,7 +164,9 @@ static void input_console_notify(struct input_notifie=
r *in,
>  	if (ic->modstate[4] || ic->modstate[5])
>  		modstate |=3D 1 << 2;
>  =

> -	if (modstate & (1 << 0))
> +	if (modstate & (1 << 1))
> +		ascii =3D keycode_bb_ctrl_keys[ev->code];
> +	else if (modstate & (1 << 0))
>  		ascii =3D keycode_bb_shift_keys[ev->code];
>  	else
>  		ascii =3D keycode_bb_keys[ev->code];
> diff --git a/drivers/input/keymap.c b/drivers/input/keymap.c
> index 79ca461..7e443d1 100644
> --- a/drivers/input/keymap.c
> +++ b/drivers/input/keymap.c
> @@ -167,3 +167,7 @@ uint8_t keycode_bb_shift_keys[NR_KEYS] =3D {
>  	[KEY_KPEQUAL] =3D		'=3D',
>  	[KEY_KPCOMMA] =3D		',',
>  };
> +
> +uint8_t keycode_bb_ctrl_keys[NR_KEYS] =3D {
> +	[KEY_C] =3D		CTL_CH('c'),
> +};


It looks like we still have empty array with NR_KEYS bytes in it.

Can we just drop it and satisfy with short "special case" C-code for contro=
l modifier handling?


> diff --git a/include/input/keyboard.h b/include/input/keyboard.h
> index d1f5bf5..8ccdf31 100644
> --- a/include/input/keyboard.h
> +++ b/include/input/keyboard.h
> @@ -7,5 +7,6 @@
>  =

>  extern uint8_t keycode_bb_keys[NR_KEYS];
>  extern uint8_t keycode_bb_shift_keys[NR_KEYS];
> +extern uint8_t keycode_bb_ctrl_keys[NR_KEYS];
>  =

>  #endif
> -- =

> 2.1.4
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
