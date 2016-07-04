Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK4Cm-000250-Da
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 13:46:34 +0000
Received: by mail-lf0-x244.google.com with SMTP id a2so17188022lfe.3
 for <barebox@lists.infradead.org>; Mon, 04 Jul 2016 06:46:11 -0700 (PDT)
Date: Mon, 4 Jul 2016 16:48:10 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160704164810.ad22e9243d6bd0541a637888@gmail.com>
In-Reply-To: <1466358813-31528-1-git-send-email-shc_work@mail.ru>
References: <1466358813-31528-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] input: Compile keymap only if necessary
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, 19 Jun 2016 20:53:33 +0300
Alexander Shiyan <shc_work@mail.ru> wrote:

> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/input/Makefile   | 3 +--
>  include/input/keyboard.h | 4 ++++
>  2 files changed, 5 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/input/Makefile b/drivers/input/Makefile
> index 7d2c194..e694a98 100644
> --- a/drivers/input/Makefile
> +++ b/drivers/input/Makefile
> @@ -1,8 +1,7 @@
> -obj-$(CONFIG_INPUT) +=3D input.o
> +obj-$(CONFIG_INPUT) +=3D input.o keymap.o
>  obj-$(CONFIG_INPUT_MATRIXKMAP) +=3D matrix-keymap.o
>  obj-$(CONFIG_KEYBOARD_USB) +=3D usb_kbd.o
>  obj-$(CONFIG_KEYBOARD_GPIO) +=3D gpio_keys.o
>  obj-$(CONFIG_KEYBOARD_TWL6030) +=3D twl6030_pwrbtn.o
>  obj-$(CONFIG_KEYBOARD_IMX_KEYPAD) +=3D imx_keypad.o
>  obj-$(CONFIG_KEYBOARD_QT1070) +=3D qt1070.o
> -obj-y +=3D keymap.o
> diff --git a/include/input/keyboard.h b/include/input/keyboard.h
> index d1f5bf5..e205a51 100644
> --- a/include/input/keyboard.h
> +++ b/include/input/keyboard.h
> @@ -1,6 +1,8 @@
>  #ifndef __INPUT_KEYBOARD_H
>  #define __INPUT_KEYBOARD_H
>  =

> +#ifdef CONFIG_INPUT
> +

Do we really need this?

>  #include <linux/types.h>
>  =

>  #define NR_KEYS	256
> @@ -9,3 +11,5 @@ extern uint8_t keycode_bb_keys[NR_KEYS];
>  extern uint8_t keycode_bb_shift_keys[NR_KEYS];
>  =

>  #endif
> +
> +#endif
> -- =

> 2.4.9
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
