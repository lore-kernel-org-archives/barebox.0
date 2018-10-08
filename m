Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9Xex-0002To-6v
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 15:41:28 +0000
Received: by mail-wm1-x341.google.com with SMTP id 189-v6so8607210wmw.2
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2018 08:41:15 -0700 (PDT)
MIME-Version: 1.0
References: <20181008063542.18709-1-andrew.smirnov@gmail.com>
 <20181008063542.18709-14-andrew.smirnov@gmail.com>
 <20181008084451.clh4bf5btxoyq6di@pengutronix.de>
In-Reply-To: <20181008084451.clh4bf5btxoyq6di@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 8 Oct 2018 08:41:02 -0700
Message-ID: <CAHQ1cqENo0Kx7fozpvk5o1xY0OnEGyiVfxfi57=0x1dUD5y+fQ@mail.gmail.com>
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
Subject: Re: [PATCH 13/16] mdio_bus: Allow for non PHY-devices on MDIO buses
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Oct 8, 2018 at 1:44 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Sun, Oct 07, 2018 at 11:35:39PM -0700, Andrey Smirnov wrote:
> > Instead of just creating a simple PHY device for every child of MDIO
> > bus node, add code to check if any of them have "compatible" property
> > set as well as code to create a proper platform device for such cases.
> >
> > This change is useful for when MDIO bus and some of Ethernet ports are
> > connected to a switch or some other MDIO device that doesn't behave
> > like a generic PHY and can't be probed via its PHY ID.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  drivers/net/phy/mdio_bus.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
> > index d7d6d8940..589ed57d2 100644
> > --- a/drivers/net/phy/mdio_bus.c
> > +++ b/drivers/net/phy/mdio_bus.c
> > @@ -26,6 +26,7 @@
> >  #include <errno.h>
> >  #include <linux/phy.h>
> >  #include <linux/err.h>
> > +#include <of_device.h>
> >
> >  #define DEFAULT_GPIO_RESET_ASSERT       1000      /* us */
> >  #define DEFAULT_GPIO_RESET_DEASSERT     1000      /* us */
> > @@ -179,6 +180,16 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
> >
> >       /* Loop over the child nodes and register a phy_device for each one */
> >       for_each_available_child_of_node(np, child) {
> > +             if (of_get_property(child, "compatible", NULL)) {
> > +                     if (!of_platform_device_create(child, &mdio->dev)) {
> > +                             dev_err(&mdio->dev,
> > +                                     "Failed to create device for %s\n",
> > +                                     child->full_name);
> > +                     }
> > +
> > +                     continue;
> > +             }
>
> PHYs can have a compatible property aswell which is checked for here:
>
> > +
> >               if (!of_mdiobus_child_is_phy(child))
> >                       continue;
>
> So I believe you have to create a platform device only if it is not a
> PHY device.
>

Yeah, good point, missed this in my logic. Will fix in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
