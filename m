Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [77.233.226.4] (helo=public.doredevelopment.dk)
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OZjuW-0000vD-RF
	for barebox@lists.infradead.org; Fri, 16 Jul 2010 12:21:01 +0000
From: Esben Haabendal <eha@dev.doredevelopment.dk>
In-Reply-To: <20100716072702.GJ14113@pengutronix.de>
References: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
	<20100708091925.GF25143@jasper.tkos.co.il>
	<20100716072702.GJ14113@pengutronix.de>
Date: Fri, 16 Jul 2010 14:13:39 +0200
Message-ID: <1279282419.4732.4.camel@eha.doredevelopment.dk>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: UBI support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 2010-07-16 at 09:27 +0200, Sascha Hauer wrote:

> > 
> > I've tested this on our i.MX25 board. Here's what I get:
> > 
> > barebox:/ ubiattach /dev/nand0.rootfs
> > UBI: attaching mtd0 to ubi0
> > UBI: physical eraseblock size:   131072 bytes (128 KiB)
> > UBI: logical eraseblock size:    129024 bytes
> > UBI: smallest flash I/O unit:    2048
> > UBI: sub-page size:              512
> > UBI: VID header offset:          512 (aligned 512)
> > UBI: data offset:                2048
> > UBI: empty MTD device detected
> > UBI: create volume table (copy #1)
> > UBI error: ubi_scan_get_free_peb: no eraseblocks found
> > failed to attach: error 28
> 
> I just tested it on an i.MX35 board which should have the same Nand
> Controller as the i.MX25. I have never seen Nand devices with a subpage
> size smaller than the I/O unit size (sub-page size: 512), so I would
> start looking there.
> I don't know how this subpage size is handled. It may well be that this
> is a bug in the Nand driver and not UBI.
> You could also go through 'git log drivers/mtd/ubi' in the kernel to see
> if there's something relevant. Unfortunately I don't know from which
> kernel version the U-Boot UBI code was derived from.

FWIW, I am working on a device here with a similar NAND device.
To get it working properly, you must not enable
CONFIG_MTD_NAND_VERIFY_WRITE (as it is known to be broken for sub-page
size != I/O unit size).  I haven't looked at barebox nand or ubi driver,
so I have no idea if something similar to this could be present there.

/Esben


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
