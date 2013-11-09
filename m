Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VfT49-0002h5-JO
 for barebox@lists.infradead.org; Sun, 10 Nov 2013 11:20:33 +0000
Received: by mail-ee0-f45.google.com with SMTP id c4so358264eek.18
 for <barebox@lists.infradead.org>; Sun, 10 Nov 2013 03:20:07 -0800 (PST)
Message-ID: <1384035254.22589.19.camel@lolumad>
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Sat, 09 Nov 2013 23:14:14 +0100
In-Reply-To: <20131108084215.GU24559@pengutronix.de>
References: <1383662527-8538-1-git-send-email-lisovy@gmail.com>
 <1383662527-8538-4-git-send-email-lisovy@gmail.com>
 <20131108084215.GU24559@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 3/3] ARM: i.mx53: Support for Voipac board. Device
 definition is read from Devicetree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, pisa@cmp.felk.cvut.cz

Hello Sascha;

On Fri, 2013-11-08 at 09:42 +0100, Sascha Hauer wrote: 
> Hi Rostislav,
> 
> On Tue, Nov 05, 2013 at 03:42:07PM +0100, Rostislav Lisovy wrote:
> > Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>
> > 
> > diff --git a/arch/arm/boards/freescale-mx53-vmx53/env/config b/arch/arm/boards/freescale-mx53-vmx53/env/config
> > new file mode 100644
> > index 0000000..3d90172
> > --- /dev/null
> > +++ b/arch/arm/boards/freescale-mx53-vmx53/env/config
> 
> Why not use defenv-2?

Ok; I will use it;

> 
> > diff --git a/arch/arm/boards/freescale-mx53-vmx53/flash_header.c b/arch/arm/boards/freescale-mx53-vmx53/flash_header.c
> > new file mode 100644
> > index 0000000..a6864a6
> > --- /dev/null
> > +++ b/arch/arm/boards/freescale-mx53-vmx53/flash_header.c
> 
> I'm currently generating the flash images for new boards using the
> imx-image tool and also generate multi board images. This is a very
> flexible, though maybe hard to understand mechanism. Is this the reason
> you haven't used it or were you not aware of it?
> I would rather see this board taking part in this new mechanism. Are you
> willing to port this over? Otherwise I could try and convert this patch,
> but I would depend on you testing the result.

I was investigating how the imx53-loco support is done, however I was
not sure if the 'multiboard' is the preferred way.
I found your patchset
http://www.spinics.net/lists/u-boot-v2/msg15296.html shortly describing
the functionality of the multiboard barebox -- I still do not understand
the concept. The final binary has to hold just one particular
'flash_header', thus be able to boot just on one particular board. I do
understand the flexibility of the devicetree, however something like the
SDRAM configuration can not be chosen 'on the fly' by the PBL?
It will save me (and probably others) a lot of time if you could quickly
explain the functionality.

I do agree the flash-header-imx53-loco.imxcfg looks much cleaner. I will
try to write the flash_header for the Voipac board in the same way.

Regards;
Rostislav



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
