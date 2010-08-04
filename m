Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgeRh-0001Do-4g
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 13:55:50 +0000
Date: Wed, 4 Aug 2010 15:51:05 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100804135105.GC12545@game.jcrosoft.org>
References: <20100804014227.GA16337@game.jcrosoft.org>
	<1280886239-19133-1-git-send-email-plagnioj@jcrosoft.com>
	<1280886239-19133-2-git-send-email-plagnioj@jcrosoft.com>
	<1280886239-19133-3-git-send-email-plagnioj@jcrosoft.com>
	<20100804064600.GQ14113@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100804064600.GQ14113@pengutronix.de>
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
Subject: Re: [PATCH 3/6] amba: add pl011
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Andrea GALLO <andrea.gallo@stericsson.com>

On 08:46 Wed 04 Aug     , Sascha Hauer wrote:
> On Wed, Aug 04, 2010 at 03:43:56AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > +++ b/drivers/serial/amba-pl011.c
> > @@ -0,0 +1,192 @@
> > +/*
> > + * (C) Copyright 2000
> > + * Rob Taylor, Flying Pig Systems. robt@flyingpig.com.
> > + *
> > + * (C) Copyright 2004
> > + * ARM Ltd.
> > + * Philippe Robin, <philippe.robin@arm.com>
> > + *
> > + * See file CREDITS for list of people who contributed to this
> > + * project.
> > + *
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + * You should have received a copy of the GNU General Public License
> > + * along with this program; if not, write to the Free Software
> > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > + * MA 02111-1307 USA
> > + */
> > +
> > +/* Simple U-Boot driver for the PrimeCell PL010/PL011 UARTs */
> 
> We already have a driver for the pl010 in the tree, so I would expect
> arguments like 'this one is much more flexible, drop the old one', or
> 'the pl011 is totally different' (which doesn't seem to be the case).
Yes this new driver is flexible and multi instance
yes I'm working a new path to add the PL010 on it too
and one of the issue of the current one is that you can not calculate the
baudrate based on the uart base clock on contrary on the new one who use the
clk framework. So yes I plan to add the PL010 on it too but after I've put the
clock framework on the sock that use it and drop the old one

Best Regards,
J.
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
