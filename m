Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTXUx-0004TX-TK
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 11:29:48 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 24 Nov 2011 12:28:51 +0100
References: <1321435467-19148-1-git-send-email-jbe@pengutronix.de>
 <1321435467-19148-13-git-send-email-jbe@pengutronix.de>
 <20111117204604.GU27267@pengutronix.de>
In-Reply-To: <20111117204604.GU27267@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201111241228.51594.jbe@pengutronix.de>
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
Subject: Re: [PATCH 12/13] ATA Disk Support: Add support for native ATA type
 drives
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> On Wed, Nov 16, 2011 at 10:24:26AM +0100, Juergen Beisert wrote:
> > Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> > ---
> >  drivers/ata/Kconfig          |   12 +
> >  drivers/ata/Makefile         |    1 +
> >  drivers/ata/disk_ata_drive.c |  631
> > ++++++++++++++++++++++++++++++++++++++++++ include/ata_drive.h          |
> >  194 +++++++++++++
> >  4 files changed, 838 insertions(+), 0 deletions(-)
> >  create mode 100644 drivers/ata/disk_ata_drive.c
> >  create mode 100644 include/ata_drive.h
> >
> > diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
> > index 86b5673..0a15863 100644
> > --- a/drivers/ata/Kconfig
> > +++ b/drivers/ata/Kconfig
> > @@ -24,6 +24,18 @@ config DISK_BIOS
> >  	  media to work on. Disadvantage is: Due to its 16 bit nature it is
> >  	  slow.
> >
> > +config DISK_ATA
> > +	bool "ATA type drives"
> > +	select DISK_DRIVE
> > +	help
> > +	  Support for native ATA/IDE drives
> > +
> > +config DISK_LE_ATTACHED
> > +	bool "little endianess attachment"
> > +	depends on DISK_ATA
> > +	help
> > +	  How the drive's data port (16 bit) is connected to the CPU: LE or BE
>
> No. We have platform data for this stuff.

The platform data will imply a runtime decision. While this approach is a 
compile time decision.

I will change it.

> [...]
> > +
> > +	if (timeout) {
> > +		pr_debug("%s: Finished with %u us remaining\n", __func__, timeout);
>
> This seems *very* noisy.
>
> > +		return 0;
> > +	}
> > +
> > +	pr_debug("%s: Waiting timed out!\n", __func__);
>
> We have a pr_debug here and additionally in each function calling this.
> I think having it here is enough.

Ups. My mistake. Leftover from debugging.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
