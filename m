Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QrlFu-0001NN-4w
	for barebox@lists.infradead.org; Fri, 12 Aug 2011 06:30:09 +0000
Date: Fri, 12 Aug 2011 08:29:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110812062958.GH31404@pengutronix.de>
References: <CAK8HZOJ2zTL3RrpdZbu9nQ35tQ7HaSvCZdVaxE6=EPJxbz5G5A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8HZOJ2zTL3RrpdZbu9nQ35tQ7HaSvCZdVaxE6=EPJxbz5G5A@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: usb mass storage not detecting
To: Nataraj S Narayan <natarajsn@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 12, 2011 at 05:48:13AM +0000, Nataraj S Narayan wrote:
> Hi
> 
> on commit 8949efd0e186ea5ab4ff9c0864dc5e85758ea94f
> 
> 
> barebox@Atmel at91sam9263-ek:/ usb
> USB: scanning bus for devices...
> 0 USB Device(s) found
> 
> but i do have a usb mass storage device attached, u-boot does detect it.

barebox does not support USB on any atmel device at the moment.
You have to port the ohci driver to barebox first. The USB stuff
is derived from U-Boot, so you can start by bashing onto the U-Boot
driver untill it works.
BTW the only USB devices barebox currently supports are network
adapters. Someone told me he has patches for storage adapters
but I haven't seen the patches yet.

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
