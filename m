Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZCGl-0004FS-Ij
 for barebox@lists.infradead.Org; Fri, 26 Feb 2016 06:52:56 +0000
Date: Fri, 26 Feb 2016 07:52:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160226065233.GM3939@pengutronix.de>
References: <1456310925-1057-1-git-send-email-pmamonov@gmail.com>
 <1456394718-12182-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1456394718-12182-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH v3] input: usb keyboard: fix CTRL+ combinations
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>, Trent Piepho <tpiepho@kymetacorp.com>

On Thu, Feb 25, 2016 at 01:05:18PM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
> ---
>  drivers/input/input.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/input/input.c b/drivers/input/input.c
> index ad7400f..31a9c22 100644
> --- a/drivers/input/input.c
> +++ b/drivers/input/input.c
> @@ -18,6 +18,7 @@
>  #include <linux/bitmap.h>
>  #include <input/keyboard.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <readkey.h>
>  
>  static LIST_HEAD(input_consumers);
>  
> @@ -164,7 +165,10 @@ static void input_console_notify(struct input_notifier *in,
>  	if (ic->modstate[4] || ic->modstate[5])
>  		modstate |= 1 << 2;
>  
> -	if (modstate & (1 << 0))
> +	if (modstate & (1 << 1)) {
> +		ascii = keycode_bb_keys[ev->code];
> +		ascii = ascii >= 'a' ? CTL_CH(ascii) : 0;
> +	} else if (modstate & (1 << 0))
>  		ascii = keycode_bb_shift_keys[ev->code];
>  	else
>  		ascii = keycode_bb_keys[ev->code];
> -- 
> 2.1.4
> 
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
