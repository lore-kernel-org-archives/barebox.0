Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aG0fj-0004H6-An
 for barebox@lists.infradead.org; Mon, 04 Jan 2016 08:39:23 +0000
Date: Mon, 4 Jan 2016 09:38:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160104083859.GB13058@pengutronix.de>
References: <1450550044-14674-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1450550044-14674-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 0/7] bcm283x: add support for raspberry pi 2
To: Alexander Aring <alex.aring@gmail.com>
Cc: dthompson@nexusisp.com, barebox@lists.infradead.org, carlo.caione@gmail.com

On Sat, Dec 19, 2015 at 07:33:57PM +0100, Alexander Aring wrote:
> This patch series contains at first small cleanups which I detected by
> supporting/testing raspberry pi 2 and initial support for rpi2.
> 
> It introduced the mach-bcm283x which contains bcm2835 and bcm2836, because
> these are mostly the same. I didn't rename everything from bcm2835 to
> bcm283x, what I changed are the Kconfig entries only.
> 
> The complete mach-bcm283x doesn't support devicetree handling which may
> be the next step. Also there is still no support for dwc2 usb.

Applied, thanks.

Device tree support would indeed be very appreciated ;)

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
