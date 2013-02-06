Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo4.mail-out.ovh.net ([46.105.40.29]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U34r6-0001FE-8t
 for barebox@lists.infradead.org; Wed, 06 Feb 2013 13:16:05 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 6437010506A0
 for <barebox@lists.infradead.org>; Wed,  6 Feb 2013 14:26:06 +0100 (CET)
Date: Wed, 6 Feb 2013 14:14:43 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130206131443.GE19322@game.jcrosoft.org>
References: <20130205175927.GD19322@game.jcrosoft.org>
 <1360087380-5700-1-git-send-email-plagnioj@jcrosoft.com>
 <1360087380-5700-3-git-send-email-plagnioj@jcrosoft.com>
 <20130206100548.GA18648@x61s.8.8.8.8>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130206100548.GA18648@x61s.8.8.8.8>
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
Subject: Re: [PATCH 3/3] sama5d3: detect boot mode
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On 11:05 Wed 06 Feb     , Alexander Aring wrote:
> Hi,
> 
> On Tue, Feb 05, 2013 at 07:03:00PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > and dynamised where we are stored
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/boards/sama5d3xek/init.c |   24 ++++++++++++++++--------
> >  1 file changed, 16 insertions(+), 8 deletions(-)
> > 
> > diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
> > index 110a83f..165aaac 100644
> > --- a/arch/arm/boards/sama5d3xek/init.c
> > +++ b/arch/arm/boards/sama5d3xek/init.c
> > @@ -36,6 +36,7 @@
> >  #include <mach/at91_pmc.h>
> >  #include <mach/at91_rstc.h>
> >  #include <mach/at91sam9x5_matrix.h>
> > +#include <mach/bootmode.h>
> >  #include <input/qt1070.h>
> >  #include <readkey.h>
> >  #include <poller.h>
> > @@ -381,14 +382,21 @@ static int at91sama5d3xek_devices_init(void)
> >  
> >  	armlinux_set_bootparams((void *)(SAMA5_DDRCS + 0x100));
> >  
> > -	devfs_add_partition("nand0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
> > -	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
> > -	devfs_add_partition("nand0", SZ_256K, SZ_256K + SZ_128K, DEVFS_PARTITION_FIXED, "self_raw");
> > -	dev_add_bb_dev("self_raw", "self0");
> > -	devfs_add_partition("nand0", SZ_512K + SZ_256K, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw");
> > -	dev_add_bb_dev("env_raw", "env0");
> > -	devfs_add_partition("nand0", SZ_1M, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw1");
> > -	dev_add_bb_dev("env_raw1", "env1");
> > +	if (at91_boot_media_at25() && IS_ENABLED(CONFIG_DRIVER_SPI_ATMEL)) {
> 
> I don't know, but is it better to use (at91_boot_media_at25() && at91_boot_from_spi())
> instead of checking if SPI driver is enabled at compile time?

simple I want one binary whtat work when we boot from mmc/spi/nand

so all the drivers are enabled

Best Regards,
J.
> 
> Regards
> Alex
> 
> > +		devfs_add_partition("m25p0", 0x00000, SZ_64K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
> > +		devfs_add_partition("m25p0", SZ_64K, SZ_256K + SZ_128K, DEVFS_PARTITION_FIXED, "self_raw");
> > +		devfs_add_partition("m25p0", SZ_64K + SZ_256K + SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw");
> > +		devfs_add_partition("m25p0", SZ_64K + SZ_512K + SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw1");
> > +	} else {
> > +		devfs_add_partition("nand0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
> > +		dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
> > +		devfs_add_partition("nand0", SZ_256K, SZ_256K + SZ_128K, DEVFS_PARTITION_FIXED, "self_raw");
> > +		dev_add_bb_dev("self_raw", "self0");
> > +		devfs_add_partition("nand0", SZ_512K + SZ_256K, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw");
> > +		dev_add_bb_dev("env_raw", "env0");
> > +		devfs_add_partition("nand0", SZ_1M, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw1");
> > +		dev_add_bb_dev("env_raw1", "env1");
> > +	}
> >  
> >  	return 0;
> >  }
> > -- 
> > 1.7.10.4
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
