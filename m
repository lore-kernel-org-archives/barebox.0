Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZZwRJ-0002Ry-NJ
 for barebox@lists.infradead.org; Thu, 10 Sep 2015 07:38:38 +0000
Date: Thu, 10 Sep 2015 09:38:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150910073815.GQ18700@pengutronix.de>
References: <1441816612-5471-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1441816612-5471-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [RFC] WIP: add usb keyboard driver
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

Excellent! This makes the framebuffer console support complete :)

I have not much to say, the driver looks ok to me. I'll test it once I
find time. Some smally comments inline.

On Wed, Sep 09, 2015 at 07:36:52PM +0300, Peter Mamonov wrote:
> diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c

Please add some copyright header and don't forget to put references in
it where you got the code from.

> +	if (pressed == 1) {
> +		if (scancode == NUM_LOCK) {
> +			data->flags ^= USB_KBD_NUMLOCK;
> +			return 1;
> +		}
> +
> +		if (scancode == CAPS_LOCK) {
> +			data->flags ^= USB_KBD_CAPSLOCK;
> +			return 1;
> +		}
> +		if (scancode == SCROLL_LOCK) {
> +			data->flags ^= USB_KBD_SCROLLLOCK;
> +			return 1;
> +		}
> +	}
> +
> +	/* Report keycode if any */
> +	if (keycode) {
> +		pr_debug("%s: key pressed: '%c'\n", __FUNCTION__, keycode);

Please use __func__ rather than __FUNCTION__

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
