Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-px0-f200.google.com ([209.85.216.200])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NdUb7-000804-W1
	for barebox@lists.infradead.org; Fri, 05 Feb 2010 20:16:18 +0000
Received: by pxi38 with SMTP id 38so4434435pxi.28
	for <barebox@lists.infradead.org>; Fri, 05 Feb 2010 12:16:12 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20100205182045.GB18291@pengutronix.de>
References: <4B6C4678.9060007@tylerlabs.com>
	<20100205174959.GA18291@pengutronix.de>
	<4B6C5C5E.2020208@tylerlabs.com>
	<20100205182045.GB18291@pengutronix.de>
Date: Sat, 6 Feb 2010 01:46:11 +0530
Message-ID: <57969b5c1002051216h5810370cs14ca9295680f78a4@mail.gmail.com>
From: Anand Gadiyar <gadiyar@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox for leopardboard
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>>
>> The USB worries me, since I am just familiar enough with it to know how
>> complex it can be. Time will tell
>
> What kind of controller does this SoC have, EHCI, OHCI?
>

I'm not familiar with this SoC, but a couple of quick searches on google
led me to the USB controller's reference guide. It looks like MUSB with
CPPI DMA, similar to what is in other Davinci chips. If so, there's a kernel
driver for it in Linux (see drivers/usb/musb/) with support for the DMA
engine as well.

OMAP3 uses MUSB with its own "Inventra" DMA engine.

- Anand

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
