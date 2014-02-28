Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJI8m-0001aA-Lk
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 07:45:53 +0000
Date: Fri, 28 Feb 2014 08:45:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140228074530.GU17250@pengutronix.de>
References: <1393533550-1865-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <20140228072548.GT17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140228072548.GT17250@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 00/10] new partitioning helper
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 28, 2014 at 08:25:48AM +0100, Sascha Hauer wrote:
> On Thu, Feb 27, 2014 at 09:39:00PM +0100, Uwe Kleine-K=F6nig wrote:
> > Hello,
> > =

> > this is v2 of the series introducing devfs_create_partitions. With the
> > new syntax creating partitions is easier to parse for humans, it has
> > support to create partitions without holes inbetween without the need to
> > explicitly calculate the offsets and the code generated for the callers
> > is smaller.
> > =

> > I compared the size of arch/arm/boards/a9m2410/a9m2410.o with and
> > without the series with the kernel's bloat-o-meter, with the following
> > result:
> > =

> > add/remove: 1/0 grow/shrink: 0/1 up/down: 84/-104 (-20)
> > function                                     old     new   delta
> > a9m2410_nand0_partitions                       -      84     +84
> > a9m2410_devices_init                         296     192    -104
> > =

> > (Well, the size advantage is a *bit* relativized by the growth of fs/de=
vfs-core.o:
> > =

> > add/remove: 3/0 grow/shrink: 0/1 up/down: 508/-124 (384)
> > function                                     old     new   delta
> > __devfs_add_partition.part                     -     376    +376
> > devfs_create_partitions                        -     128    +128
> > new                                            -       4      +4
> > devfs_add_partition                          296     172    -124
> > =

> > Don't know what "new" is above.)
> > =

> > Compared to (implicit) v1 of this series I dropped the compound
> > literals and used named static arrays instead as wished by Sebastian
> > Hesselbarth and Sascha Hauer.
> =

> Applied this series. I skipped the pca100 patch as this one has the
> partition layout in the devicetree now.

And I had a merge conflict in fs/devfs-core.c with:

commit 0c76b7e3779d1d38b8b70596b122bab076d9f26e
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Tue Jan 14 11:51:35 2014 +0100

    mtd: register mtd partitions as real mtd devices
    =

    So far mtd partitions were mtd devices, but these were not registered.
    This patch changes this. mtd partitions are now registered like real
    mtd devices. This makes them part of the device hierarchy.
    =

    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

I'm confident I did it right, but maybe you better have a look at the
result in -next.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
