Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsCeD-0006JC-5B
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 19:49:05 +0000
Date: Tue, 21 Aug 2018 21:46:44 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180821194644.GA14835@ravnborg.org>
References: <20180820145215.GA22058@ravnborg.org>
 <20180820145612.17576-2-sam@ravnborg.org>
 <20180821075019.cl2r4w7zbyxilb26@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180821075019.cl2r4w7zbyxilb26@pengutronix.de>
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
Subject: Re: [PATCH v3 2/3] phylib: add support for reset-gpios
To: Sascha Hauer <s.hauer@pengutronix.de>, Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sasha.

To Andrey - please read comment on mdio support in macb driver.

> > +	/* register PHY's as child node to the ethernet node */
> > +	if (bus->parent->device_node)
> > +		of_mdiobus_register(bus, bus->parent->device_node);
> 
> I am not so convinced of this change. Here you assume that bus->parent
> is the ethernet node, but this doesn't necessarily have to be the case
> as some mdio controllers are standalone and not part of an ethernet
> device (see "virtual,mdio-gpio" to get examples).
> 
> So instead of introducing this change I would prefer if you let the code
> below trigger:
> 
> > +
> > +	/* register PHY's as child node to mdio node */
> >  	if (bus->dev.device_node)
> >  		of_mdiobus_register(bus, bus->dev.device_node);
> 
> This means you have to set bus->dev.device_node in your ethernet driver
> like some drivers already do:
> 
> drivers/net/macb.c:666:                 macb->miibus.dev.device_node = mdiobus;

I have analyzed on the current situation.

In barebox we have two drivers that set miibus.dev.device_node,
both in the case where they have found a child named "mdio".
-> fec-imx.c and macb.c
When reading dts/Bindings/net/fsl-fec.txt then this binding specify
an optional mdio child, so fec-imx.c is fine.
But macb.txt or the general bindigns do not mention
a mdio child.
And the Linux macb_main.c do not support a "mdio" node either.
So my best guess is that the "mdio" support in macb was accidently
ported over from fec-imx when adding DT support.

If we only consider the DT cases we will call mdio_register()
in the following cases:

1) Typical from an ethernet driver:
bus->dev.device_node is NULL
bus->parent->device_node is the ethernet node

2) fec-imx case:
bus->dev.device_node is the "mdio" node, that agin hold the PHY nodes
bus->parent->device_node is the ethernet node

3) mdio drivers:
bus->dev.device_node is the "mdio" node
bus->parent->device_node is equal to bus->dev.device_node


Considering the above I will do the following:
a) Remove "mdio" support from macb.c
b) Modify my patch to something like this:

	if (bus->dev.device_node)
		of_mdiobus_register(bus, bus->dev.device_node);
	else if (bus->parent->device_node)
		of_mdiobus_register(bus, bus->parent->device_node);

With the above I have covered point 1 to 3 above in a simple way.
And this looks a simple and straghtforward way to do it.

I also looked at how the kernel does thing.
In of_mdiobus_register it has:

	for_each_child() {
		if (of_node_is_phy(child))
			of_mdiobus_register_phy()
		else
			of_mdiobus_register_device()
	}

I so far failed to follow where the code will iterate over
the PHY nodes inside the mdio node (that trigger the
of_mdiobus_register_device() call).
So therefore I am reluctant to try to implment this,
and the suggested solution is also more in the line
with a simpler and straightforward approach preferred in barebox.

I no-one else objects and I do not get any better ideas I will
implement and test this tomorrow.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
