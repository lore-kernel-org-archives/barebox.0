Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zw465-0007Qd-GV
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 08:16:10 +0000
Date: Tue, 10 Nov 2015 09:15:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151110081547.GF8526@pengutronix.de>
References: <1447065171-31571-1-git-send-email-pmamonov@gmail.com>
 <1447094995.4553.50.camel@rtred1test09.kymeta.local>
 <20151110080423.GE8526@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151110080423.GE8526@pengutronix.de>
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
Subject: Re: [PATCH] common: filetype: do not redetect MBR-type devices as a
 FAT-type
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Peter Mamonov <pmamonov@gmail.com>

On Tue, Nov 10, 2015 at 09:04:23AM +0100, Sascha Hauer wrote:
> On Mon, Nov 09, 2015 at 06:49:53PM +0000, Trent Piepho wrote:
> > On Mon, 2015-11-09 at 13:32 +0300, Peter Mamonov wrote:
> > > Deleted pieces of code detect MBR-containig device as a FAT-type device,
> > > if it's first partition contains a FAT filesystem. This behaviour enabled one
> > > to mount the FAT FS which is either directly on the device (disk0) or on
> > > the first partition (disk0.0) using the same command:
> > >     mount /dev/disk0 /fat
> > > However, the desired behaviour can be reached with a:
> > >     mount /dev/disk0 /fat || mount /dev/disk0.0 /fat || echo "Mounting failed"
> > 
> > The in flash env for omap is found by mounting a FAT filesystem and
> > reading an env file from it.  The code that does this uses the disk as
> > the device, rather than the partition.  Which I thought was odd and
> > wondered why/if that worked correctly....
> > 
> > Anyway, this change would break that code.  I suspect than instead of
> > coding the disk0 || disk0.0 method it could just mount disk0.0.  Because
> > the code does this (edited):
> > 
> > partname = asprintf("/dev/%s.0", diskdev);
> > ret = stat(partname, &s);
> > if (ret) {
> >   pr_err("Failed to load environment: no device '%s'\n", diskdev);
> >   return 0;
> > }
> > ret = mount(diskdev, "fat", "/boot", NULL);
> 
> This is really odd. The code first tests if the partition exists and
> tries to mount the whole disk afterwards. git blame points to:
> 
> commit be322768f04603df371c9c1f08b9621690dd74c6
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Sat Aug 24 12:48:50 2013 +0200
> 
>     ARM: omap: Allow to set mmc devname used for booting
> 
> I think what we should do here is in the following patch. With this
> Trents patch can be applied as-is. Thanks for noting, Peter.

Sorry, I mixed you two up. I mean: With this Peters patch can be
applied as-is. Thanks for noting, Trent.

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
