Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZmMkF-0002xP-KP
 for barebox@lists.infradead.org; Wed, 14 Oct 2015 14:09:32 +0000
Date: Wed, 14 Oct 2015 16:09:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151014140908.GS7858@pengutronix.de>
References: <1444817749-20766-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444817749-20766-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH 0/2] usb: core: return -EAGAIN on usb_* functions
 reentrance
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Peter,

On Wed, Oct 14, 2015 at 01:15:47PM +0300, Peter Mamonov wrote:
> The second patch of this patch set adds reentrance detection to 
> the the following functions: usb_submit_int_msg, usb_control_msg and
> usb_bulk_msg. These functions will return -EAGAIN if reentered. 
> Other public usb_* functions call one of these three functions.
> This patch enables one to use regular *delay() functions
> throughout the ehci-hcd.c.
> 
> The first patch adds check for -EAGAIN return value to the usb keyboard
> driver. The driver will skip keyboard poll upon getting this error value
> from either usb_submit_int_msg() or usb_get_report() functions.
> 
> Peter Mamonov (2):
> 	input: usb_kbd: skip poll on -EAGAIN error
> 	usb: core: return -EAGAIN on usb_* functions reentrance

Applied on -next. I believe we no longer need mdelay_non_interruptible
in the ehci-hcd driver, right? Also we don't have to detect re-entrancy
in the ehci driver anymore. I have applied some patches removing that
to -next. Could you check the result?

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
