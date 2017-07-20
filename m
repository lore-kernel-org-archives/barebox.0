Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dYHda-0001ZW-2T
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 20:01:32 +0000
Received: from ravnborg.org (unknown [188.228.89.252])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 4E74A802B3
 for <barebox@lists.infradead.org>; Thu, 20 Jul 2017 22:01:05 +0200 (CEST)
Date: Thu, 20 Jul 2017 22:01:03 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170720200103.GA16205@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH 0/6] Add DT support for at91_udc and atmel_lcdfb
To: Barebox List <barebox@lists.infradead.org>

A few more patches on my journey to add DT support
for the at91sam9263ek board.

Review / feedback / testing would be appreciated!

The at91_udc driver has seen only limited testing.
Any hints how I can test this are appreciated.
I tried to connect the board to my linux box,
but nothing happened.
The USB gadget core adds a few devices for which
I did not manage to dig up any reasons:
$ devinfo shows:
udc0

And there is also a hidden usbgadget device that shows
the following info:
$ devinfo usbgadget
Parameters:
  manufacturer: barebox (type: string)
  product: 0x0000 (type: uint32)
  productname: Atmel at91sam9263ek (type: string)
  vendor: 0x0000 (type: uint32)



The atmel_lcdfb driver in the linux kernel
used device data to define if the device
had an intensity bit.
This is with this patchset encoded in the
lcd-wiring mode.
See further details in the "add DT support" patch.

Tested on the at91sam9263ek board.
(with DT support added - patches will be sent later).

atmel_lcdfb_core is shared between atmel_lcdfb and atmel_hlcdfb.
But only the compatible related to the first are included,
as I was not certain how this would work with the hlcdfb variants.
We can always add remaining compatible entires is someone steps
up and test it.

The work is done on top of master but I do not expect
any problems adding these to -next.

	Sam


Sam Ravnborg (6):
      at91_udc: add DT support
      atmel_lcdfb: move dmacon, lcdcon2 to local data
      atmel_lcdfb: move lcd_wiring_mode, have_intensity_bit to local data
      atmel_lcdfb: define power_control gpio in platform_data
      atmel_lcdfb: move pdata init to a separate function
      atmel_lcdfb: add DT support

 arch/arm/boards/at91sam9261ek/init.c  |  35 +----
 arch/arm/boards/at91sam9263ek/init.c  |  26 +---
 arch/arm/boards/at91sam9m10ihd/init.c |  26 +---
 arch/arm/boards/at91sam9n12ek/init.c  |  28 +---
 drivers/usb/gadget/at91_udc.c         |  56 ++++++--
 drivers/video/atmel_hlcdfb.c          |   5 +-
 drivers/video/atmel_lcdfb.c           |  19 ++-
 drivers/video/atmel_lcdfb.h           |   8 +-
 drivers/video/atmel_lcdfb_core.c      | 247 ++++++++++++++++++++++++++++++----
 include/video/atmel_lcdc.h            |   3 +-
 10 files changed, 295 insertions(+), 158 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
