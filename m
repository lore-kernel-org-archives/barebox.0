Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8VCr-0003Gh-Ur
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 11:52:44 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 56323DC0805
 for <barebox@lists.infradead.org>; Mon,  3 Sep 2012 13:57:58 +0200 (CEST)
Date: Mon, 3 Sep 2012 13:52:59 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120903115259.GB19931@game.jcrosoft.org>
References: <201209031232.56813.jbe@pengutronix.de>
 <20120903105534.GA19931@game.jcrosoft.org>
 <20120903113021.GI26594@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120903113021.GI26594@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On 13:30 Mon 03 Sep     , Sascha Hauer wrote:
> On Mon, Sep 03, 2012 at 12:55:34PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 12:32 Mon 03 Sep     , Juergen Beisert wrote:
> > > Hi all,
> > > 
> > > currently I'm working on the difficult process to make an i.MX35 SoC boot from 
> > > an externally connected NAND device.
> > > 
> > > Nothing special with it, only the NAND flash controller in the i.MX35 (also in 
> > > i.MX25, i.MX27 and i.MX31) is braindamaged broken. This controller loses the 
> > > factory bad block markers when used without a workaround and losing these 
> > > markers is a _really_ bad idea.
> > > 
> > > But to use the workaround on these SoCs it needs a complicated preparation of 
> > > the NAND. Doing it manually is very error prone. And this kind of preparation 
> > > has to be kept when the system should be updated and so on. Not easy to 
> > > explain and so much more chances for the user to brick the system while the 
> > > update process.
> > > 
> > > This makes me think about a dedicated command which is responsible to make the 
> > > target bootable and does all the (more or less complicated) steps to ensure 
> > > the next time it gets powered it's able to boot again.
> > > 
> > > There are more architectures which needs a complicated setup to be able to 
> > > boot it from some kind of externally connected devices like NAND or eMMCs for 
> > > example. Some needs special NAND checksums only for the bootloader, others 
> > > needs to keep the partition table even if the bootloader gets updated and so 
> > > on.
> > > 
> > > Would it be possible to share one command (or one group of commands) by all 
> > > architectures? And each architecture adds its special code to the command? 
> > > 
> > > What kind of setup procedures we must cover with such a command?
> > > 
> > > My examples:
> > > 
> > > - for the Freescale i.MX SoCs with the broken NFC we must write the bootloader
> > >   in a different way than all the remaining data into the NAND device
> > > - for the Samsung S36410 we must save the factory bad block markers first to
> > >   support booting from NAND as its internal ROM expects the checksums at a
> > >   strange offset in the OOB area
> > On some ST SoC it's the same I think we do not need any command we just need
> > to specify it as mtd level for a specific mtd part
> 
> A command has the advantage that for example we could also check for
> valid images before flashing them (does it have a correct barebox
> header?). This could be checked before actually erasing a sector.
> Also, flashing boot images is not limited to mtd devices, it could also
> be mmc, or for OMAP, not a device at all but a file inside a FAT on SD
> card.
for this part I agree but for the oob we must handle it at mtd level otherwise
the mtdcore will taint on bad ecc as example

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
