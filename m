Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCqfC-0004s3-Sn
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 13:44:59 +0000
Date: Thu, 31 Jul 2014 10:43:39 -0300
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Message-ID: <20140731134339.GA2865@arch.cereza>
References: <1406666701-15356-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <1406666701-15356-6-git-send-email-ezequiel.garcia@free-electrons.com>
 <20140731054237.GP23235@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140731054237.GP23235@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/6] net: Add driver for Armada 370/XP 10/100/1000 Mbps
 network controller
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Willy Tarreau <w@1wt.eu>

On 31 Jul 07:42 AM, Sascha Hauer wrote:
> On Tue, Jul 29, 2014 at 05:45:00PM -0300, Ezequiel Garcia wrote:
> > +
> > +static int mvneta_probe(struct device_d *dev)
> > +{
> > +	struct mvneta_port *priv;
> > +	int ret;
> > +
> > +	priv =3D xzalloc(sizeof(*priv));
> > +
> > +	priv->reg =3D dev_get_mem_region(dev, 0);
> =

> Any special reason to use dev_get_mem_region() here? Normally you should
> use dev_request_mem_region() which allocates the resource for exclusive
> use. dev_get_mem_region() should only be used in very special cases.
> =


Yes, there's a reason for it. The ethernet unit on these SoCs have a regist=
er
for the MDIO. Since it's the same for Kirkwood, Armada 370/XP and Armada 37=
5,
the MDIO is handled by a different driver (mvmdio), so it can be shared amo=
ng
the ethernet drivers.

This comes with a little price, though: we can't request the region on eith=
er
mvmdio or the ethernet driver, for the former is within the latter.

> Please check the return value.
> =


Sure, I will.
-- =

Ezequiel Garc=EDa, Free Electrons
Embedded Linux, Kernel and Android Engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
