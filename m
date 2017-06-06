Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dI7KO-00046g-B9
 for barebox@lists.infradead.org; Tue, 06 Jun 2017 05:46:54 +0000
Date: Tue, 6 Jun 2017 07:46:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170606054630.nf5awnvvf4qapoxq@pengutronix.de>
References: <1494587239-33771-1-git-send-email-d.schultz@phytec.de>
 <1494587239-33771-3-git-send-email-d.schultz@phytec.de>
 <20170517063051.eh3fp2qth3ntm7uf@pengutronix.de>
 <4c2533fb-5070-b056-959c-a4fa2028d9d7@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c2533fb-5070-b056-959c-a4fa2028d9d7@phytec.de>
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
Subject: Re: [PATCH v3 3/4] arm: boards: phytec-som-am335x: Update boot scripts
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

Hi Daniel,

On Fri, Jun 02, 2017 at 10:07:34AM +0200, Daniel Schultz wrote:
> Hi,
> 
> Am 17.05.2017 um 08:30 schrieb Sascha Hauer:
> > On Fri, May 12, 2017 at 01:07:18PM +0200, Daniel Schultz wrote:
> > > Expand the boot scripts with EMMC and add a default file source for
> > > expansions.
> > > 
> > > Removed "rw" and "rootwait" bootargs from existing boot scripts.
> > > Added "rootflags='data=journal'" bootarg to SD card boot script.
> > > 
> > > Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> > > ---
> > >   .../defaultenv-physom-am335x/boot/emmc                  |  7 +++++++
> > >   .../phytec-som-am335x/defaultenv-physom-am335x/boot/mmc |  7 ++++---
> > >   .../defaultenv-physom-am335x/boot/nand                  |  4 +++-
> > >   .../phytec-som-am335x/defaultenv-physom-am335x/boot/net | 17 +++++++++++++++++
> > >   .../phytec-som-am335x/defaultenv-physom-am335x/boot/spi |  4 +++-
> > >   .../defaultenv-physom-am335x/init/bootsource            | 16 ++++++++++++----
> > >   6 files changed, 46 insertions(+), 9 deletions(-)
> > >   create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
> > >   create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/net
> > > 
> > > diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
> > > new file mode 100644
> > > index 0000000..6ad5f87
> > > --- /dev/null
> > > +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
> > > @@ -0,0 +1,7 @@
> > > +#!/bin/sh
> > > +
> > > +[ -e /env/config-expansions ] && /env/config-expansions
> > 
> > What do you have in these config-expansions or what do you expect to be
> > there?
> > 
> 
> These config-expanions files contain source commands for different
> expansions like HDMI, LCD, WiFi, ... and are written from Yocto. We don't
> want to bring these mainline, but without this line we have to overwrite
> each boot script file from Yocto.
> 
> Maybe this could be a good feature since we're not the only one with
> expansion configurations.

I am generally open to such expansions, I just want to understand what's
missing first.
In this case I'd like to understand why you can't add an init script to
/env/bin/init/ instead. If you want to extend the kernel commandline you
could also add a nv variable to /env/nv/linux.bootargs.yocto.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
