Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QihUi-0002Go-5Z
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 06:39:57 +0000
Date: Mon, 18 Jul 2011 08:39:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110718063950.GD20587@pengutronix.de>
References: <1309861164-11327-1-git-send-email-antonynpavlov@gmail.com>
	<20110715084218.GM6069@pengutronix.de>
	<CAA4bVAEYusniJ5DYrzgtEqr7kQ8zWOnybPwN2ZmZge8J3HYqfQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAEYusniJ5DYrzgtEqr7kQ8zWOnybPwN2ZmZge8J3HYqfQ@mail.gmail.com>
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
Subject: Re: [PATCH v1-very-draft 1/5] barebox draft pci support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 15, 2011 at 02:15:34PM +0400, Antony Pavlov wrote:
> On 15 July 2011 12:42, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > I finally found some time to look at this. Having pci support for
> > barebox would be great.
> >
> > It seems what missing in this patch is the integration into the
> > barebox device infrastructure. barebox already has an idea about
> > bus_type which is used for USB. a bus can have its own match
> > function to implement id based driver<->device matching. You would
> > need a struct device_d member in struct pci_device.
> >
> > As for the resource part Jean Christophe already started to convert
> > barebox from struct device_d->base to use real resources like
> > the Linux Kernel.
> 
> Absens of real resouces is painful.
> 
> If Jean Christophe started work on resources, where I can see it?

I think you just motivated him to repost his work ;)

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
