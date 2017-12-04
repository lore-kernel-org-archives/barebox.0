Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-x241.google.com ([2607:f8b0:400d:c0d::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eLsR2-0002Ag-NU
 for barebox@lists.infradead.org; Mon, 04 Dec 2017 15:13:34 +0000
Received: by mail-qt0-x241.google.com with SMTP id e2so21615619qti.0
 for <barebox@lists.infradead.org>; Mon, 04 Dec 2017 07:13:09 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20171201111210.3t2xzyrpfrzvkp72@pengutronix.de>
References: <20171129045506.17149-1-andrew.smirnov@gmail.com>
 <20171129045506.17149-3-andrew.smirnov@gmail.com>
 <20171201111210.3t2xzyrpfrzvkp72@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 4 Dec 2017 07:13:08 -0800
Message-ID: <CAHQ1cqHQbMoz4Ab66ENvO-440oPJbOAyi+qUsOEerRMa2U4Edw@mail.gmail.com>
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
Subject: Re: [PATCH 3/5] net: phy: Port MDIO bus miltiplexer framework from
 Linux kernel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Dec 1, 2017 at 3:12 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, Nov 28, 2017 at 08:55:04PM -0800, Andrey Smirnov wrote:
>> Port mdio-mux.c from Linux kernel to Barebox, to support adding
>> dirvers that rely on that infrastructure/API.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  drivers/net/phy/Kconfig    |   8 +++
>>  drivers/net/phy/Makefile   |   2 +
>>  drivers/net/phy/mdio-mux.c | 145 +++++++++++++++++++++++++++++++++++++++++++++
>>  include/linux/mdio-mux.h   |  30 ++++++++++
>>  4 files changed, 185 insertions(+)
>>  create mode 100644 drivers/net/phy/mdio-mux.c
>>  create mode 100644 include/linux/mdio-mux.h
>>
>> diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
>> index ea2e06265..f423d9ba3 100644
>> --- a/drivers/net/phy/Kconfig
>> +++ b/drivers/net/phy/Kconfig
>> @@ -66,6 +66,14 @@ config MDIO_GPIO
>>       ---help---
>>         Supports GPIO lib-based MDIO busses.
>>
>> +config MDIO_BUS_MUX
>> +             bool
>
> Indentation gone wrong here.
>

Missed that. Will fix in v2.

>> +     help
>> +       This module provides a driver framework for MDIO bus
>> +       multiplexers which connect one of several child MDIO busses
>> +       to a parent bus.  Switching between child busses is done by
>> +       device specific drivers.
>> +
>
> ...
>
>> +     for_each_available_child_of_node(mux_node, child_bus_node) {
>> +             int v;
>> +
>> +             r = of_property_read_u32(child_bus_node, "reg", &v);
>> +             if (r) {
>> +                     dev_err(dev,
>> +                             "Error: Failed to find reg for child %pOF\n",
>> +                             child_bus_node);
>> +                     continue;
>> +             }
>> +
>> +             /*
>> +               FIXME:
>> +              */
>
> What do you have to fix here?
>

That's a leftover from earlier version of the code that I forgot to
remove. Will do in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
