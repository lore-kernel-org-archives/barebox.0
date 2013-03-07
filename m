Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDYvF-0005b5-Gp
 for barebox@lists.infradead.org; Thu, 07 Mar 2013 11:23:43 +0000
Received: from mail190.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 7391DDC1072
 for <barebox@lists.infradead.org>; Thu,  7 Mar 2013 12:34:43 +0100 (CET)
Date: Thu, 7 Mar 2013 12:19:16 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130307111916.GJ4401@game.jcrosoft.org>
References: <1360336929.3798.11.camel@lws-weitzel>
 <20130211100432.GZ1906@pengutronix.de>
 <OFC6CD83ED.4FD2D09A-ONC1257B25.0047F4F9-C1257B25.00480A80@phytec.de>
 <5135F36E.2090401@phytec.de> <20130307081859.GT1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130307081859.GT1906@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Antwort: Re: v2013.02.0 phyCORE-OMAP4 MLO to big
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:18 Thu 07 Mar     , Sascha Hauer wrote:
> Hi J=FCrgen,
> =

> On Tue, Mar 05, 2013 at 02:30:22PM +0100, J=FCrgen wrote:
> > On 11.02.2013 Sascha Hauer wrote:
> > >On Fri, Feb 08, 2013 at 04:22:09PM +0100, Jan Weitzel wrote:
> > >>Hi,
> > >>with the release v2013.02.0 the MLO gets so bit, that it eats the boot
> > >>information in the SRAM.
> > >>
> > >>nm --size-sort
> > >>
> > >>...
> > >>00000630 D nand_flash_ids
> > >>000008c0 t mci_probe
> > >>00000c00 b gpio_desc
> > >>00001400 b files
> > >>
> > >>If I remove  GPIOLIB from MLO it work again. Maybe setting MAX_FILES
> > >>down or find a dynamic way for the big arrays is a better solution.
> > >>Any Ideas?
> > >Could you link the MLO to SDRAM instead?
> > Hi Sascha, we have tried as you suggested and it doesn't work
> > without changes...
> > =

> > We found two things:
> > =

> > 1.) There is early code which is not relocatable.
> > =

> > We solved this by adding -fPIC to the CPPFLAGS.
> > But I think, this is also solved with your patch
> > http://lists.infradead.org/pipermail/barebox/2013-March/013366.html
> =

> This won't help you directly. What you could do with this is:
> - generate a compressed image using PBL support
> - The PBL is loaded to SRAM by the ROM, relocated to the current
>   address in SRAM
> - extracts the binary to SDRAM
> - continues executing in SDRAM.
this is what we do for the bootstrap on at91

so the pbl setup the sdram and decompress it in sdram and jump in it

also try the patch I send to switch the xloader to the generic bootstrap
this decrease the size of the binary
> =

> Thinking about it it should work.
> =

> The other thing you could do is making the bss segment smaller.
> =

> For ARM we initialize the malloc space before the initcalls are
> starting which means that malloc can be used in every initcall.
> This in turn means that we can allocate the files array and the
> gpio_desc array dynamically.
> You would have to move the malloc initialization from initcalls
> to early init for the other architectures though to make this
> work.
> =

> Sascha
> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
