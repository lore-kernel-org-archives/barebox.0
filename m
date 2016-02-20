Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aXAlR-0003wv-MT
 for barebox@lists.infradead.org; Sat, 20 Feb 2016 16:52:14 +0000
Date: Sat, 20 Feb 2016 17:51:46 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20160220165146.GA19914@ravnborg.org>
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
> +	[KEY_3] =		'3',
> +	[KEY_4] =		'4',
> +	[KEY_5] =		'5',
> +	[KEY_6] =		'6',
> +	[KEY_7] =		'7',
> +	[KEY_8] =		'8',
> +	[KEY_9] =		'9',
> +	[KEY_0] =		'0',
> +	[KEY_MINUS] =		'-',
> +	[KEY_EQUAL] =		'=',
> +	[KEY_BACKSPACE] =	8,
> +	[KEY_TAB] =		'\t',
> +	[KEY_Q] =		'q',
> +	[KEY_W] =		'w',
> +	[KEY_E] =		'e',
> +	[KEY_R] =		'r',
> +	[KEY_T] =		't',
> +	[KEY_Y] =		'y',
> +	[KEY_U] =		'u',
> +	[KEY_I] =		'i',
> +	[KEY_O] =		'o',
> +	[KEY_P] =		'p',
> +	[KEY_LEFTBRACE] =	'[',
> +	[KEY_RIGHTBRACE] =	']',
> +	[KEY_ENTER] =		'\n',
> +	[KEY_A] =		'a',
> +	[KEY_S] =		's',
> +	[KEY_D] =		'd',
> +	[KEY_F] =		'f',
> +	[KEY_G] =		'g',
> +	[KEY_H] =		'h',
> +	[KEY_J] =		'j',
> +	[KEY_K] =		'k',
> +	[KEY_L] =		'l',
> +	[KEY_SEMICOLON] =	';',
> +	[KEY_APOSTROPHE] =	'`',
> +	[KEY_GRAVE] =		'^',
> +	[KEY_BACKSLASH] =	'\\',
> +	[KEY_Z] =		'z',
> +	[KEY_X] =		'x',
> +	[KEY_C] =		3,
Reading readkey.h it loks like the following definition
would be more descriptive:

#define [KEY_C] =               CTL_CH('c'),

The result is in the end the same.

This patch alrady use other definitions from the same
file (BB_*). So CTL_CH() is availabale.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
