Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gU6VG-0002ED-KQ
 for barebox@lists.infradead.org; Tue, 04 Dec 2018 08:56:28 +0000
References: <20181203183840.21801-1-linux@rempel-privat.de>
 <bfe7408f5a7978e67c284e47caeb8829d931c7a6.camel@lynxeye.de>
 <20181204082909.c4rkejoae6ev6gdp@pengutronix.de>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <d900be31-cfc9-d5e4-595e-1759929fb212@pengutronix.de>
Date: Tue, 4 Dec 2018 09:56:12 +0100
MIME-Version: 1.0
In-Reply-To: <20181204082909.c4rkejoae6ev6gdp@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1] drivers: net: convert drivers to spdx
To: Roland Hieber <r.hieber@pengutronix.de>, Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>



On 04.12.18 09:29, Roland Hieber wrote:
> On Mon, Dec 03, 2018 at 08:14:29PM +0100, Lucas Stach wrote:
>> Am Montag, den 03.12.2018, 19:38 +0100 schrieb Oleksij Rempel:
>>>   /*
>>>    *  Atheros AR71xx built-in ethernet mac driver
>>>    *
>>> @@ -5,10 +6,6 @@
>>>    *  Copyright (C) 2008 Imre Kaloz <kaloz@openwrt.org>
>>>    *
>>>    *  Based on Atheros' AG7100 driver
>>> - *
>>> - *  This program is free software; you can redistribute it and/or modify it
>>> - *  under the terms of the GNU General Public License version 2 as published
>>> - *  by the Free Software Foundation.
>>>    */
>>
>> [snip]
>>
>> And while I know that the Linux kernel still wants the GPL-2.0+ tag,
>> I'm really not sure if we should use the deprecated tag in Barebox, or
>> if it would better to go straight to the GPL-2.0-or-later tag.
> 
> GPL-2.0-or-later is canon since version 2.0 of the SPDX standard [0]. I
> don't see any reason to stick with an outdated standard if we're just
> starting with it.
> 
>   - Roland
> 
> [0]: https://spdx.org/licenses/, section "Deprecated Licenses"
> 

According to the link, we should use:
GPL-2.0-only and GPL-2.0-or-later
instead of:
GPL-2.0 and GPL-2.0+

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
