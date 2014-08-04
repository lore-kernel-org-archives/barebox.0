Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XENE7-0004cq-Cm
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 18:43:20 +0000
Date: Mon, 4 Aug 2014 20:42:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140804184253.GG23235@pengutronix.de>
References: <1400674740-6467-1-git-send-email-s.hauer@pengutronix.de>
 <1400674740-6467-7-git-send-email-s.hauer@pengutronix.de>
 <20140802174415.GC29743@arch.cereza>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140802174415.GC29743@arch.cereza>
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
Subject: Re: [PATCH 06/10] net: orion-gbe: use transparent-to-driver of mdio
 functions
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org

On Sat, Aug 02, 2014 at 02:44:15PM -0300, Ezequiel Garcia wrote:
> Hello Sascha,
> 
> On 21 May 02:18 PM, Sascha Hauer wrote:
> [..]
> >  
> > +	sprintf(dev->name, "orion-gbe-port");
> > +	dev->id = port->portno;
> > +	dev->parent = parent;
> > +	dev->device_node = port->np;
> > +	ret = register_device(dev);
> > +	if (ret)
> > +		return ret;
> > +
> 
> Can you clarify why you added this device register? I didn't find the need
> to do so in the mvneta driver, but maybe I overlooked something.

This is only needed because the orion-gbe has multiple ports which have
individual subnodes in the device tree. Without registering a device on
these subnodes barebox won't find the phys for the ports.

This is not needed when you only have a single node for your ethernet
device.

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
