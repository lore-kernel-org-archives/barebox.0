Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-x242.google.com ([2607:f8b0:400d:c0d::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEhxi-0004Cs-Oa
 for barebox@lists.infradead.org; Wed, 07 Dec 2016 19:33:10 +0000
Received: by mail-qt0-x242.google.com with SMTP id m48so45988946qta.2
 for <barebox@lists.infradead.org>; Wed, 07 Dec 2016 11:32:45 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161207085105.GC2371@lws-christ>
References: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
 <1480949684-18520-3-git-send-email-andrew.smirnov@gmail.com>
 <20161205151431.GC14158@lws-christ>
 <CAHQ1cqErON12d4KTdYg614U5i9j8X=_-kD8+g9JtfFgak9MXBA@mail.gmail.com>
 <20161207085105.GC2371@lws-christ>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 7 Dec 2016 11:32:44 -0800
Message-ID: <CAHQ1cqEyCQu48UXHRBEJUtmV7zjdf8aEHbsGuL4HvnBogDJTGw@mail.gmail.com>
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
Subject: Re: [PATCH 02/16] i.MX: ocotp: Add provisions for storing multiple
 MAC addresses
To: Stefan Lengfeld <s.lengfeld@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Dec 7, 2016 at 12:51 AM, Stefan Lengfeld <s.lengfeld@phytec.de> wrote:
> Hi Andrey,
>
>> I did see that patch go through, however since the title of it is
>> "arm: imx6: ocotp: Added support for the i.MX6UL" I didn't look into
>> it any further.
>
> In the light of the Vybrid also supports two MAC addresses your patch title
>
>     i.MX: ocotp: Add provisions for storing multiple MAC addresses
>
> is better, since it is more generic.
>
>> > Your approach uses an extra device attribute  'mac_idx' to select the meaning
>> > of the device attribute 'mac_addr': Whether it points to the MAC0 or MAC1.
>> >
>> > I find it less error prone and confusing to use two seperate device attributes
>> > 'mac_addr' and 'mac_addr1' for MAC0 and MAC1. So you don't have to check the
>> > value of 'mac_idx before reading or writing the MAC addresses.
>>
>> Can't say that I necessarily agree with you assessment. There's no
>> need to check 'mac_idx' if it is written every time as a part of MAC
>> address assignment operation. The reason I chose the approach that I
>> did was mainly because it allowed to both have backwards compatibility
>> with the old naming scheme and avoid having variable naming
>> inconsistency (as you see in your example where one variable has a
>> numerical suffix and the other doesn't) which I was concerned would be
>> make scripting it more clunky than necessary.
>
> hmm, I find it more convenient use
>
>     bootloader$ ocotp0.mac_addr=22:33:44:55:66:77
>     bootloader$ ocotp0.mac_addr1=22:33:44:AA:AA:AA
>
> than
>
>     bootloader$ ocotp0.mac_idx=0
>     bootloader$ ocotp0.mac_addr=22:33:44:55:66:77
>     bootloader$ ocotp0.mac_idx=1
>     bootloader$ ocotp0.mac_addr=22:33:44:AA:AA:AA
>
> The same goes for reading the MAC addresses. The first one is more obvious,
> because the meaning of the variable "mac_addr" does not depend on another
> variable "mac_idx".

Well you original point was about being error prone and confusing, not
convenience of use. ;-) My "scheme' involves way more typing, so it is
most certainly would be less convenient.

>
> Maybe we can settle on a different approach to avoid the inconsistent variable
> names "mac_addr" and "mac_addr1":
>
>         if (IS_ENABLED(CONFIG_NET)) {
>                 if (!data->scnd_mac_addr) {
>                         /* one MAC */
>                         dev_add_param_mac(&(priv->dev), "mac_addr", imx_ocotp_set_mac0,
>                                imx_ocotp_get_mac0, priv->ethaddr[0], priv);
>
>                 } else {
>                         /* two MACs: Vybrid and UltraLite */
>                         dev_add_param_mac(&(priv->dev), "mac_addr0", imx_ocotp_set_mac0,
>                                imx_ocotp_get_mac0, priv->ethaddr[0], priv);
>                         dev_add_param_mac(&(priv->dev), "mac_addr1", imx_ocotp_set_mac1,
>                                 imx_ocotp_get_mac1, priv->ethaddr[1], priv);
>                 }
>         }
>
> All existing boards still uses "mac_addr" for there single MAC address and new
> boards Vybrid and UltraLite use "mac_addr0" and "mac_addr1". In the wild there
> will be two different sets of - for example - factory MAC burning scripts
> anyway.  One to handle a single MAC address and another to handle two MAC
> addresses.
>
> What do you think?

Sounds reasonable. I didn't go this route originally because I wanted
to be backwards compatible, but thinking more on it I don't know if it
(backwards compatibility) matters too much.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
