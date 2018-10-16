Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCIBh-00057T-P5
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 05:46:39 +0000
Date: Tue, 16 Oct 2018 07:46:17 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181016054617.GA13000@ravnborg.org>
References: <20181015022125.24020-1-andrew.smirnov@gmail.com>
 <20181015022125.24020-21-andrew.smirnov@gmail.com>
 <20181015211909.GB17344@ravnborg.org>
 <CAHQ1cqEEa7n51PYqiESd12Lfy=4KB6cy9drEcMDUN7B+TZUFuQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqEEa7n51PYqiESd12Lfy=4KB6cy9drEcMDUN7B+TZUFuQ@mail.gmail.com>
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
Subject: Re: [PATCH v3 20/22] net: phy: Add basic driver for MV88E6XXX
 switches from Marvell
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Andrey.

> > > +
> > > +     chip->miibus.read = mv88e6xxx_mdio_read;
> > > +     chip->miibus.write = mv88e6xxx_mdio_write;
> >
> > The function pointers are hardcoded here.
> > But we have them in chip->info->ops - where we can
> > have chip specific variants.
> > I assume it would be more correct to copy them from the ops structure?
> >
> 
> I am not sure I see why that would be. Mv88e6xxx_mdio_read() and
> mv88e6xxx_mdio_write() are both wrappers around
> chip->info->ops->phy_read/phy_write that also have code to handle the
> case when either phy_read/phy_write are not specified.
I should stop reading patches late.
I read the above as function pointers to the functions used to read the
phy, and not the general mdio_read/write functions.
So as you points outs this is fine.

Sorry for the noise.

I also browsed through the other patches in this set, and everything else looked good.
But then some parts I was not familiar with.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
