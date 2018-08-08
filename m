Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnGRX-0006Sy-6q
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 04:51:32 +0000
Received: from ravnborg.org (unknown [158.248.196.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 8FE612001E
 for <barebox@lists.infradead.org>; Wed,  8 Aug 2018 06:51:14 +0200 (CEST)
Date: Wed, 8 Aug 2018 06:51:12 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180808045112.GA16829@ravnborg.org>
References: <20180807211449.GA15748@ravnborg.org>
 <20180807211715.GB24765@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180807211715.GB24765@ravnborg.org>
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
Subject: Re: [PATCH v1 2/2] phylib: add support for reset-gpios
To: barebox@lists.infradead.org

Hi.

After sleeping on this I realizrd this patch is buggy.

> @@ -147,9 +189,6 @@ int mdiobus_register(struct mii_bus *bus)
>  		return -EINVAL;
>  	}
>  
> -	if (bus->reset)
> -		bus->reset(bus);
> -
>  	list_add_tail(&bus->list, &mii_bus_list);
>  
>  	pr_info("%s: probed\n", dev_name(&bus->dev));
> @@ -157,6 +196,10 @@ int mdiobus_register(struct mii_bus *bus)
>  	if (bus->dev.device_node)
>  		of_mdiobus_register(bus, bus->dev.device_node);

Within of_mdiobus_register() we call get_phy_device() which read from
the mdio bus. So the reset needs to be performed before we call
of_mdio_register.

So a little restructuring is required since we want to perform
both bus->reset() and mdiobus_reset() before we call get_phy_device().

I will fix this in v2.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
