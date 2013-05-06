Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo5.mail-out.ovh.net ([178.32.119.138]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZSCw-00043O-Ni
 for barebox@lists.infradead.org; Mon, 06 May 2013 20:40:27 +0000
Received: from mail414.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 9FB35FF956E
 for <barebox@lists.infradead.org>; Mon,  6 May 2013 22:40:04 +0200 (CEST)
Date: Mon, 6 May 2013 22:35:40 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130506203540.GC30509@game.jcrosoft.org>
References: <20130506155352.15f23d3a@skate>
 <20130506135435.GL13393@game.jcrosoft.org>
 <20130506160614.054b5e1a@skate>
 <20130506140439.GM13393@game.jcrosoft.org>
 <20130506161329.74d58c37@skate>
 <20130506141447.GO13393@game.jcrosoft.org>
 <20130506143113.GB22505@1wt.eu>
 <20130506193422.GA30509@game.jcrosoft.org>
 <20130506195359.GK22505@1wt.eu> <20130506222104.7ea22be0@skate>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130506222104.7ea22be0@skate>
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
Subject: Re: [PATCH 2/7] scripts: new kwbimage manipulation tool for
 Marvell SoC boot images
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Jason Cooper <jason@lakedaemon.net>

On 22:21 Mon 06 May     , Thomas Petazzoni wrote:
> Hello,
> 
> On Mon, 6 May 2013 21:53:59 +0200, Willy Tarreau wrote:
> 
> > > And it's does not require you to generate the image before flashing.
> > > And request the blob by XMODEM will NEVER work to update at runtime
> > > as can not discuss with the ROM code via XMODEM. So yes this will
> > > not work for self update
> > 
> > You seem to be assuming that the bootloader is already running fine
> > on the box, which is not the case that Thomas has addressed. In order
> > to *flash* the bootloader to the device, you need that DDR3 code to
> > be *executed*, and if you had read his cover mail carefully, you'd
> > have seen that this happens *during* the XMODEM upload sequence
> > (hence the changes to kwboot to protect the upload while this code
> > talks to the serial port). It's painful but that's how it works, and
> > once you get it after all it's rather flexible in the end.
> > 
> > So please don't use your update code as an argument as it's not the
> > interesting part here.
> 
> Just to expand on what Willy explains: the bootable image contains
> essentially 3 things:
> 
>  * A header describing the image
>  * A binary header that contains the binary blob responsible for
>    calculating the DDR3 timings
>  * The payload, which in our case is Barebox.
> 
> When the ROM code sees a bootable image on SPI/NAND, or receives it
> through Xmodem, it sets up the MMU, initializes the L2 cache as SRAM,
> and it copies the header of the image (including the binary header)
> into the SRAM. At this point, it *stops* getting data from Xmodem, and
> executes the binary blob to configure the DDR3. Then, it goes on to
> fetch the rest of the image (i.e the payload) and pushes that directly
> to the DRAM, at an address defined in the header of the image. So the
> DDR3 training code actually gets executed in the *middle* of the Xmodem
> transfer, and the Xmodem transfer cannot continue if the DDR3 timings
> have not been set up properly by the binary blob.
Same principle as on Atmel when you flash via XMODEM or USB Device

This does not means you need to generate any specific media file
> 
> So, when you have in front of your eyes a device with *nothing* on it,
> then you *must* have an image as prepared by kwbimage, that contains
> those three elements: the header, the binary blob, and the payload, and
> you must use the kwboot tool to push it through Xmodem to the SoC.
> 
> For self-update, there is no problem: the same kwbimage tool can
> generate either an image that boots from UART, SPI, NAND or SATA. So
> you can simply flash the generated image wherever you want on a SPI
> flash or NAND flash, reboot and that's it. The image needs to be
> slightly different depending on the boot media, but that's really
> because the Marvell ROM code insists in the image having a 'blockid',
> which identifies on which boot media the image is stored.

this is where it's wrong, you does not need such binary at all, barebox update
will handle this by himself and will never requiere one image per media

As barebox does not care wheren it boot from or where the dev is stored. we
choose is at runtime not at compile time

Barebox update will generate the correct image for the storagemedia at
runtime
> 
> Jean-Christophe, I think you should have a serious look at the boot
> process of Marvell SoC before aggressively telling everybody that they
> are wrong. It's not because you know how AT91 and i.MX are booting that
> you necessarily know the specificities of Marvell SoCs. Remember also
> that the Marvell Armada 370 and XP have a different booting process than
> Marvell Kirkwood (Marvell Kirkwood does not have this mechanism of
> binary blob).

I very well such mecanism ST and ST-Ericsson use similar way. But mandatory to
generate the barebox image for a storage media is a non sense. That's why we
work to have multi-arch. SO no this is in the oposite way of the whole work on
barebox done for months. It's regression
> 
> Best regards,
> 
> Thomas
> -- 
> Thomas Petazzoni, Free Electrons
> Kernel, drivers, real-time and embedded Linux
> development, consulting, training and support.
> http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
