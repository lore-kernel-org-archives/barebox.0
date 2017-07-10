Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x243.google.com ([2607:f8b0:400c:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUgoe-0005lr-4Q
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 22:06:06 +0000
Received: by mail-vk0-x243.google.com with SMTP id y70so7132049vky.3
 for <barebox@lists.infradead.org>; Mon, 10 Jul 2017 15:05:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170708223531.GA2280@ravnborg.org>
References: <20170316150448.11773-1-andrew.smirnov@gmail.com>
 <20170316150448.11773-12-andrew.smirnov@gmail.com>
 <20170708223531.GA2280@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 10 Jul 2017 17:05:41 -0500
Message-ID: <CAHQ1cqGmxd+NK6QxQ5sw=KRH_ptK5ufQypeceb_5=hMBHdX1Bw@mail.gmail.com>
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
Subject: Re: [PATCH v2 11/11] net: macb: Add DT support
To: Sam Ravnborg <sam@ravnborg.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Sat, Jul 8, 2017 at 5:35 PM, Sam Ravnborg <sam@ravnborg.org> wrote:
> Hi Andrey.
>
> Looks like somethign was missing here, see below.
>
> On Thu, Mar 16, 2017 at 08:04:48AM -0700, Andrey Smirnov wrote:
>> Acked-by: Sam Ravnborg <sam@ravnborg.org>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  drivers/net/macb.c | 56 ++++++++++++++++++++++++++++++++++++++++--------------
>>  1 file changed, 42 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
>> index 5f2e5e5..36e49c3 100644
>> --- a/drivers/net/macb.c
>> +++ b/drivers/net/macb.c
>> @@ -48,6 +48,7 @@
>>  #include <linux/clk.h>
>>  #include <linux/err.h>
>>  #include <linux/phy.h>
>> +#include <of_net.h>
>>
>>  #include "macb.h"
>>
>> @@ -615,14 +616,8 @@ static int macb_probe(struct device_d *dev)
>>       struct resource *iores;
>>       struct eth_device *edev;
>>       struct macb_device *macb;
>> +     const char *pclk_name;
>>       u32 ncfgr;
>> -     struct macb_platform_data *pdata;
>> -
>> -     if (!dev->platform_data) {
>> -             dev_err(dev, "macb: no platform_data\n");
>> -             return -ENODEV;
>> -     }
>> -     pdata = dev->platform_data;
>>
>>       edev = xzalloc(sizeof(struct eth_device) + sizeof(struct macb_device));
>>       edev->priv = (struct macb_device *)(edev + 1);
>> @@ -633,22 +628,49 @@ static int macb_probe(struct device_d *dev)
>>       edev->open = macb_open;
>>       edev->send = macb_send;
>>       edev->halt = macb_halt;
>> -     edev->get_ethaddr = pdata->get_ethaddr ? pdata->get_ethaddr : macb_get_ethaddr;
>> +     edev->get_ethaddr = macb_get_ethaddr;
>>       edev->set_ethaddr = macb_set_ethaddr;
>>       edev->parent = dev;
>>
>>       macb->miibus.read = macb_phy_read;
>>       macb->miibus.write = macb_phy_write;
>> -     macb->phy_addr = pdata->phy_addr;
>>       macb->miibus.priv = macb;
>>       macb->miibus.parent = dev;
>>
>> -     if (pdata->phy_interface == PHY_INTERFACE_MODE_NA)
>> -             macb->interface = PHY_INTERFACE_MODE_MII;
>> -     else
>> -             macb->interface = pdata->phy_interface;
>> +     if (dev->platform_data) {
>> +             struct macb_platform_data *pdata = dev->platform_data;
>> +
>> +             if (pdata->phy_interface == PHY_INTERFACE_MODE_NA)
>> +                     macb->interface = PHY_INTERFACE_MODE_MII;
>> +             else
>> +                     macb->interface = pdata->phy_interface;
>> +
>> +             if (pdata->get_ethaddr)
>> +                     edev->get_ethaddr = pdata->get_ethaddr;
>> +
>> +             macb->phy_addr = pdata->phy_addr;
>> +             macb->phy_flags = pdata->phy_flags;
>> +             pclk_name = "macb_clk";
>> +     } else if (dev->device_node) {
>> +             int ret;
>> +             struct device_node *mdiobus;
>>
>> -     macb->phy_flags = pdata->phy_flags;
>> +             ret = of_get_phy_mode(dev->device_node);
>> +             if (ret < 0)
>> +                     macb->interface = PHY_INTERFACE_MODE_MII;
>> +             else
>> +                     macb->interface = ret;
>> +
>> +             mdiobus = of_get_child_by_name(dev->device_node, "mdio");
>> +             if (mdiobus)
>> +                     macb->miibus.dev.device_node = mdiobus;
>> +
>> +             macb->phy_addr = -1;
>> +             pclk_name = NULL;
>> +     } else {
>> +             dev_err(dev, "macb: no platform_data\n");
>> +             return -ENODEV;
>> +     }
>>
>>       iores = dev_request_mem_resource(dev, 0);
>>       if (IS_ERR(iores))
>
> I fail to get any clock for macb - and need this patch to at least
> silence any warnings fro missing clock.
> I have not tested the network interface yet - too many other issues.
>
> Looks like this was the origianl intention as pclk_name was introduced
> but never used.
>
> I know the patch I reply to is already committed, but
> this was where the bug was introduced (if I am right).
> Will follow-up with a proper patch should you ack this.
>

I think you are correct this does look like I introduced a bug.

>         Sam
>
> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index 739a3dfbe..7721bcb56 100644
> --- a/drivers/net/macb.c
> +++ b/drivers/net/macb.c
> @@ -666,7 +666,7 @@ static int macb_probe(struct device_d *dev)
>                         macb->miibus.dev.device_node = mdiobus;
>
>                 macb->phy_addr = -1;
> -               pclk_name = NULL;
> +               pclk_name = "pclk";

I was setting "pclk_name" to NULL so that I'd get the first clock
specified in "clocks" property without having to rely on "clock-names"
being present. But since I think all of the users have "clock-names"
set, it is probably a moot point, and it doesn't matter that much if
we set it to NULL or "pclk"

>         } else {
>                 dev_err(dev, "macb: no platform_data\n");
>                 return -ENODEV;
> @@ -681,7 +681,7 @@ static int macb_probe(struct device_d *dev)
>          * Do some basic initialization so that we at least can talk
>          * to the PHY
>          */
> -       macb->pclk = clk_get(dev, "macb_clk");
> +       macb->pclk = clk_get(dev, pclk_name);

Yeah, I definitely forgot to do that. Sorry about that.

Acked-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Thanks!
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
