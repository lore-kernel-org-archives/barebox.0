Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YpAjF-0003Ue-3f
 for barebox@lists.infradead.org; Mon, 04 May 2015 07:23:49 +0000
Date: Mon, 4 May 2015 09:23:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150504072326.GN6325@pengutronix.de>
References: <1430218309-23741-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430218309-23741-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] usb: increase USB_CNTL_TIMEOUT to match linux
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 28, 2015 at 12:51:49PM +0200, Steffen Trumtrar wrote:
> USB requests should be processed within a timeframe of 5s.
> The linux kernel also uses this timeout value for the control packets.
> 
> For the musb the increase in timeout helps successfully probing USB devices
> (at least on one test hardware), but on the other hand doesn't slow down the
> system, if there are no devices, i.e. the timeout never hits. That means,
> that the USB core correctly aborts instead of timing out.
> Why and how the 100ms was chosen in the first place, can not be deduced from
> the git history, just that it seems to work fine for most boards.
> 
> Change USB_CNTL_TIMEOUT to 5000ms and replace all occurences of
> 	`USB_CNTL_TIMEOUT * x`
> with just
> 	`USB_CNTL_TIMEOUT`,
> as the timeout is now large enough without it.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/usb/core/usb.c | 4 ++--
>  include/usb/usb.h      | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

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
