Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QwGIp-0003GP-Q8
	for barebox@lists.infradead.org; Wed, 24 Aug 2011 16:27:44 +0000
Date: Wed, 24 Aug 2011 18:27:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110824162740.GH31404@pengutronix.de>
References: <CAA4bVAEHnV+d8JMXqTKtNWKdvfmXaS=S8S=KQBPRTQhbt8EnJg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAEHnV+d8JMXqTKtNWKdvfmXaS=S8S=KQBPRTQhbt8EnJg@mail.gmail.com>
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
Subject: Re: add_usb_ehci_device() don't set resource size
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Wed, Aug 24, 2011 at 06:30:35PM +0400, Antony Pavlov wrote:
> Hi!
> 
> add_usb_ehci_device() don't set resource size, it only set start address:

Yeah, the resource size is barely handled in barebox. Even if they
exist, most if not all drivers do not check it.

> So on my Tegra board I have this:
> 
> toshiba ac100> / devinfo ehci0
> resources:
> num   : 0
> start : 0xc5000100
> size  : 0x00000000
>         ^^^^^^^^^^
> num   : 1
> start : 0xc5000140
> size  : 0x00000000
>         ^^^^^^^^^^

This does not look good, patches welcome.

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
