Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5Hpc-0001sT-SM
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 12:50:21 +0000
Date: Mon, 11 Oct 2010 14:50:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101011125018.GV28242@pengutronix.de>
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
	<1286796505-16049-14-git-send-email-s.hauer@pengutronix.de>
	<201010111426.13066.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201010111426.13066.jbe@pengutronix.de>
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
Subject: Re: [PATCH 13/17] defaultenv: handle disk partitions
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 11, 2010 at 02:26:12PM +0200, Juergen Beisert wrote:
> Sascha Hauer wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  defaultenv/bin/init |    4 ++++
> >  1 files changed, 4 insertions(+), 0 deletions(-)
> >
> > diff --git a/defaultenv/bin/init b/defaultenv/bin/init
> > index a55e8e6..526e3db 100644
> > --- a/defaultenv/bin/init
> > +++ b/defaultenv/bin/init
> > @@ -8,6 +8,10 @@ if [ -e /dev/nor0 ]; then
> >  	addpart /dev/nor0 $nor_parts
> >  fi
> >
> > +if [ -e /dev/disk0 ]; then
> > +	addpart /dev/disk0 $disk_parts
> > +fi
> > +
> 
> Are you sure you want/need additional partitions on a disk without a 
> persistant partition table?

No ;)

It is not completely clear to me how we handle this best. On i.MX51 I
have some problems with the partition table. When booting from SD card
we just dump barebox.bin to the raw card. The partition table is then
part of barebox.bin. Unfortunately we do not know (or at least we don't
want to specifiy) the size of the card during compile time.

How should a bootable SD card should be partitioned anyway? We could add
partitions for barebox/env/kernel/root like usual, but this does not
look very standard for SD cards (and we even need extended partitions
if we want to add a data partition). We could also add just a single
partition for root and maintain the rest outside of any partition.

I haven't really thought this to an end.

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
