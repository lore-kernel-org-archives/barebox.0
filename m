Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5YkM-000149-7X
	for barebox@lists.infradead.org; Tue, 12 Oct 2010 06:54:03 +0000
Date: Tue, 12 Oct 2010 08:51:50 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101012065150.GI7412@game.jcrosoft.org>
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
	<201010111459.35914.jbe@pengutronix.de>
	<20101011135454.GZ28242@pengutronix.de>
	<201010111622.15352.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201010111622.15352.jbe@pengutronix.de>
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

> > > > >
> > > > > Are you sure you want/need additional partitions on a disk without a
> > > > > persistant partition table?
> > > >
> > > > No ;)
> > > >
> > > > It is not completely clear to me how we handle this best. On i.MX51 I
> > > > have some problems with the partition table. When booting from SD card
> > > > we just dump barebox.bin to the raw card. The partition table is then
> > > > part of barebox.bin. Unfortunately we do not know (or at least we don't
> > > > want to specifiy) the size of the card during compile time.
> > > >
> > > > How should a bootable SD card should be partitioned anyway? We could
> > > > add partitions for barebox/env/kernel/root like usual, but this does
> > > > not look very standard for SD cards (and we even need extended
> > > > partitions if we want to add a data partition). We could also add just
> > > > a single partition for root and maintain the rest outside of any
> > > > partition.
> > >
> > > If you want your kernel to work with this card you will need a partition
> > > table. Its more like a hard disk, not like a flash memory of NAND or NOR
> > > type. So, IMHO you will need a full blown partition table when you want
> > > use the SD card outside barebox.
> >
> > Yes I know. Do we need a fdisk command for barebox?
> 
> IMHO not for barebox. Because to setup a full system on an SD card you would 
> also need tools to create a filesystem on these partitions. That's not the 
> job of a bootloader. We just have to handle partition tables in a correct 
> manner.
I think we can support fdisk but we do not need to create fs we can just dump
it from tftp & co

and the env can be see as a fs

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
