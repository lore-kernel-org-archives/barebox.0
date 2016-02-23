Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aY7od-0001iB-80
 for barebox@lists.infradead.org; Tue, 23 Feb 2016 07:55:27 +0000
Date: Tue, 23 Feb 2016 08:55:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160223075505.GX3939@pengutronix.de>
References: <1455978465-28919-1-git-send-email-pmamonov@gmail.com>
 <1455978465-28919-2-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455978465-28919-2-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH 2/2] input: usb keyboard: fix CTRL+C
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Feb 20, 2016 at 05:27:45PM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/input/input.c    |  4 ++-
>  drivers/input/keymap.c   | 82 ++++++++++++++++++++++++++++++++++++++++++++++++
>  include/input/keyboard.h |  1 +
>  3 files changed, 86 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/input/input.c b/drivers/input/input.c
> index ad7400f..1c6891c 100644
> --- a/drivers/input/input.c
> +++ b/drivers/input/input.c
> @@ -164,7 +164,9 @@ static void input_console_notify(struct input_notifier *in,
>  	if (ic->modstate[4] || ic->modstate[5])
>  		modstate |= 1 << 2;
>  
> -	if (modstate & (1 << 0))
> +	if (modstate & (1 << 1))
> +		ascii = keycode_bb_ctrl_keys[ev->code];
> +	else if (modstate & (1 << 0))
>  		ascii = keycode_bb_shift_keys[ev->code];
>  	else
>  		ascii = keycode_bb_keys[ev->code];
> diff --git a/drivers/input/keymap.c b/drivers/input/keymap.c
> index 79ca461..90f1818 100644
> --- a/drivers/input/keymap.c
> +++ b/drivers/input/keymap.c
> @@ -167,3 +167,85 @@ uint8_t keycode_bb_shift_keys[NR_KEYS] = {
>  	[KEY_KPEQUAL] =		'=',
>  	[KEY_KPCOMMA] =		',',
>  };
> +
> +uint8_t keycode_bb_ctrl_keys[NR_KEYS] = {
> +	[KEY_RESERVED] =	0xff,
> +	[KEY_ESC] =		0x1b,
> +	[KEY_1] =		'1',
> +	[KEY_2] =		'2',

Do we really want to copy the keymap without modifier here thus
effectively ignoring the ctrl key? I would assume the ctrl keymap
is almost empty with only ctrl-c supported. Then we would add support
for whatever ctrl char we might need aswell.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
