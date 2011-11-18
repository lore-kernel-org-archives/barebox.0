Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RRKAm-00017e-Uz
 for barebox@lists.infradead.org; Fri, 18 Nov 2011 08:51:49 +0000
Date: Fri, 18 Nov 2011 09:51:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111118085128.GX27267@pengutronix.de>
References: <1321435467-19148-1-git-send-email-jbe@pengutronix.de>
 <1321435467-19148-9-git-send-email-jbe@pengutronix.de>
 <20111117161706.GN27267@pengutronix.de>
 <201111180926.05353.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201111180926.05353.jbe@pengutronix.de>
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
Subject: Re: [PATCH 08/13] DISK: Add common partition handling for disk like
 media
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 18, 2011 at 09:26:05AM +0100, Juergen Beisert wrote:
> Sascha Hauer wrote:
> > On Wed, Nov 16, 2011 at 10:24:22AM +0100, Juergen Beisert wrote:
> > > This covers disk like media like SD card, CF cards, regular hard disks
> > > and also USB mass storage devices. Most common used partition table is
> > > still of DOS type. This implementation is prepared to support more
> > > partition types in the future.
> > >
> > > Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> > > ---
> > >  common/Kconfig      |   18 ++++
> > >  common/Makefile     |    2 +
> > >  common/partitions.c |  229
> > > +++++++++++++++++++++++++++++++++++++++++++++++++++ include/disks.h     |
> > >    2 +
> > >  4 files changed, 251 insertions(+), 0 deletions(-)
> > >  create mode 100644 common/partitions.c
> > >
> > > diff --git a/common/Kconfig b/common/Kconfig
> > > index 8e96920..1318e7d 100644
> > > --- a/common/Kconfig
> > > +++ b/common/Kconfig
> > > @@ -406,6 +406,24 @@ config PARTITION
> >
> >  +
> >
> > > +/**
> > > + * Try to collect partition information on the given block device
> > > + * @param blk Block device to examine
> > > + * @return 0 most of the time, negative value else
> > > + *
> > > + * It is not a failure if no partition information is found
> > > + */
> > > +int parse_partition_table(struct block_device *blk)
> > > +{
> > > +	int i;
> > > +	int rc = 0;
> > > +
> > > +#ifdef CONFIG_PARTITION_DISK_DOS
> > > +	if (pdesc.used_entries == 0)
> > > +		try_dos_partition(blk);
> > > +#endif
> > > +
> > > +	if (pdesc.used_entries != 0) {
> >
> > So every block device that comes in uses the same global variable. We
> > should support multiple block devices.
> 
> Arrgggh. So many tests and this one has slipped in. A memset to 0 at the end 
> of this function should do the job, shouldn't it?
> 
> > Also it should be possible to unregister the partitions on a block
> > device.
> 
> You mean for the case someone removes an SD card or an USB memory stick? Who 
> would call such a function?

The usb command rescans the USB bus and will unregister all devices
which disappeared. I don't know if this actually works for USB sticks
(it would mean that also the fs has to be unmounted), but at least it
should work one day...

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
