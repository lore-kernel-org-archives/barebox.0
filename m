Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RIO0C-0004ru-MR
	for barebox@lists.infradead.org; Mon, 24 Oct 2011 17:07:57 +0000
Date: Mon, 24 Oct 2011 19:07:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111024170753.GN23421@pengutronix.de>
References: <1319289593-15251-1-git-send-email-fvanderwerf@gmail.com>
	<20111022202035.GK23421@pengutronix.de>
	<CAJeSw6Be=2jNOw1SSz1xB-7bXL9RyrUuLz+yWcZvxfNap6RkwQ@mail.gmail.com>
	<CAA4bVAGRrH4bwozuWfV9Ck4c=vPfRE4oOPLzWFU2u8--8avkLw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAGRrH4bwozuWfV9Ck4c=vPfRE4oOPLzWFU2u8--8avkLw@mail.gmail.com>
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
Subject: Re: [PATCH] usb: fix unaligned access
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 24, 2011 at 07:14:04PM +0400, Antony Pavlov wrote:
> On 23 October 2011 13:29, Fabian van der Werf <fvanderwerf@gmail.com> wrote:
> >>
> >> Looks like a valid patch, I wonder that this never was a problem before.
> >> ARM should break here aswell I think. What architecture are you using?
> >>
> >
> > I am working with a pandaboard (arm cortex a9). The pandaboard has a
> > usb ethernet controller, so I need usb to boot over tftp. I guess that
> > most arm configurations don't need usb for booting, and in that case
> > you won't run into this problem.
> 
> I have DUB-E100 USB Ethernet (ID 2001:3c05) connected to Toshiba AC100
> (NVidia Tegra2 --- Cortex A9); tftp works fine without usb unaligned
> access patch.

Works for me aswell, though the access definitely is unaligned.

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
