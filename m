Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEsnl-00042R-2c
 for barebox@lists.infradead.org; Mon, 20 Jun 2016 06:35:18 +0000
Date: Mon, 20 Jun 2016 08:34:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160620063455.GO9677@pengutronix.de>
References: <1466358813-31528-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466358813-31528-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] input: Compile keymap only if necessary
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Jun 19, 2016 at 08:53:33PM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/input/Makefile   | 3 +--
>  include/input/keyboard.h | 4 ++++
>  2 files changed, 5 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/input/Makefile b/drivers/input/Makefile
> index 7d2c194..e694a98 100644
> --- a/drivers/input/Makefile
> +++ b/drivers/input/Makefile
> @@ -1,8 +1,7 @@
> -obj-$(CONFIG_INPUT) += input.o
> +obj-$(CONFIG_INPUT) += input.o keymap.o
>  obj-$(CONFIG_INPUT_MATRIXKMAP) += matrix-keymap.o
>  obj-$(CONFIG_KEYBOARD_USB) += usb_kbd.o
>  obj-$(CONFIG_KEYBOARD_GPIO) += gpio_keys.o
>  obj-$(CONFIG_KEYBOARD_TWL6030) += twl6030_pwrbtn.o
>  obj-$(CONFIG_KEYBOARD_IMX_KEYPAD) += imx_keypad.o
>  obj-$(CONFIG_KEYBOARD_QT1070) += qt1070.o
> -obj-y += keymap.o
> diff --git a/include/input/keyboard.h b/include/input/keyboard.h
> index d1f5bf5..e205a51 100644
> --- a/include/input/keyboard.h
> +++ b/include/input/keyboard.h
> @@ -1,6 +1,8 @@
>  #ifndef __INPUT_KEYBOARD_H
>  #define __INPUT_KEYBOARD_H
>  
> +#ifdef CONFIG_INPUT
> +
>  #include <linux/types.h>
>  
>  #define NR_KEYS	256
> @@ -9,3 +11,5 @@ extern uint8_t keycode_bb_keys[NR_KEYS];
>  extern uint8_t keycode_bb_shift_keys[NR_KEYS];
>  
>  #endif
> +
> +#endif
> -- 
> 2.4.9
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
