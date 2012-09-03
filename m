Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8UrM-0000ht-Fd
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 11:30:29 +0000
Date: Mon, 3 Sep 2012 13:30:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120903113021.GI26594@pengutronix.de>
References: <201209031232.56813.jbe@pengutronix.de>
 <20120903105534.GA19931@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120903105534.GA19931@game.jcrosoft.org>
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
Subject: Re: [RFC] Dedicated command to make a target bootable with Barebox
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On Mon, Sep 03, 2012 at 12:55:34PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 12:32 Mon 03 Sep     , Juergen Beisert wrote:
> > Hi all,
> > 
> > currently I'm working on the difficult process to make an i.MX35 SoC boot from 
> > an externally connected NAND device.
> > 
> > Nothing special with it, only the NAND flash controller in the i.MX35 (also in 
> > i.MX25, i.MX27 and i.MX31) is braindamaged broken. This controller loses the 
> > factory bad block markers when used without a workaround and losing these 
> > markers is a _really_ bad idea.
> > 
> > But to use the workaround on these SoCs it needs a complicated preparation of 
> > the NAND. Doing it manually is very error prone. And this kind of preparation 
> > has to be kept when the system should be updated and so on. Not easy to 
> > explain and so much more chances for the user to brick the system while the 
> > update process.
> > 
> > This makes me think about a dedicated command which is responsible to make the 
> > target bootable and does all the (more or less complicated) steps to ensure 
> > the next time it gets powered it's able to boot again.
> > 
> > There are more architectures which needs a complicated setup to be able to 
> > boot it from some kind of externally connected devices like NAND or eMMCs for 
> > example. Some needs special NAND checksums only for the bootloader, others 
> > needs to keep the partition table even if the bootloader gets updated and so 
> > on.
> > 
> > Would it be possible to share one command (or one group of commands) by all 
> > architectures? And each architecture adds its special code to the command? 
> > 
> > What kind of setup procedures we must cover with such a command?
> > 
> > My examples:
> > 
> > - for the Freescale i.MX SoCs with the broken NFC we must write the bootloader
> >   in a different way than all the remaining data into the NAND device
> > - for the Samsung S36410 we must save the factory bad block markers first to
> >   support booting from NAND as its internal ROM expects the checksums at a
> >   strange offset in the OOB area
> On some ST SoC it's the same I think we do not need any command we just need
> to specify it as mtd level for a specific mtd part

A command has the advantage that for example we could also check for
valid images before flashing them (does it have a correct barebox
header?). This could be checked before actually erasing a sector.
Also, flashing boot images is not limited to mtd devices, it could also
be mmc, or for OMAP, not a device at all but a file inside a FAT on SD
card.

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
