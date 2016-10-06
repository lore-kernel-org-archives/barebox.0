Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-16.arcor-online.net ([151.189.21.56])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bs4qu-00048I-GF
 for barebox@lists.infradead.org; Thu, 06 Oct 2016 09:20:34 +0000
Date: Thu, 6 Oct 2016 11:20:09 +0200 (CEST)
From: iw3gtf@arcor.de
Message-ID: <2074290715.1345124.1475745609454.JavaMail.ngmail@webmail11.arcor-online.net>
In-Reply-To: <1475741847.3468.20.camel@lws-tremmet.phytec.de>
References: <1475741847.3468.20.camel@lws-tremmet.phytec.de>
 <1382352141.1327180.1475673795806.JavaMail.ngmail@webmail09.arcor-online.net>
MIME-Version: 1.0
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
Subject: Aw: Re: why UBI static volumes are flagged as DEVFS_IS_CHARACTER_DEV
To: t.remmet@phytec.de
Cc: barebox@lists.infradead.org

 


----- Original Nachricht ----
Von:     Teresa Remmet <t.remmet@phytec.de>
An:      iw3gtf@arcor.de
Datum:   06.10.2016 10:17
Betreff: Re: why UBI static volumes are flagged as DEVFS_IS_CHARACTER_DEV

> Hello Giorgio,
> 
> Am Mittwoch, den 05.10.2016, 15:23 +0200 schrieb iw3gtf@arcor.de:
> > Hi,
> > 
> > I noticed that the commit id c087e0804f0290e9886899e8a3cccb07c4ce088b
> flagged static
> > UBI volumes as DEVFS_IS_CHARACTER_DEV.
> > 
> > A consequence of this flag is that commands like:
> > 
> > # cp /dev/nand0.ubi_volumes.ubi.my_static_vol file
> > 
> > will not work because the cp command will see a src file (the static UBI
> volume) with a size
> > of -1 (FILE_SIZE_STREAM) and keep on reading from the volume until a flood
> of
> > "UBI assert failed in ubi_eba_read_leb at 359" asserts comes out of the
> console.
> > 
> > I tried to comment out the flag assignment, just to see what happen:
> > 
> > int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
> > {
> > ...
> > 	cdev->size = vol->used_bytes;
> > 
> > //	if (vol->vol_type == UBI_STATIC_VOLUME)
> > //		cdev->flags = DEVFS_IS_CHARACTER_DEV;
> > 
> > 	cdev->dev = &vol->dev;
> > ...
> > 
> > and then the cp command worked than as expected.
> > 
> > Could someone shortly confirm that the DEVFS_IS_CHARACTER_DEV flag for
> static UBI volumes
> > is really needed (to avoid some other problems that my superficial test
> does not triggers) ?
> 
> the size of a static ubi volume device is equal to the image size you
> flashed. When you create a new static ubi volume the size is 0, as it is
> empty.
> We need the chardev flag to be able to update the static ubi volume or
> barebox will complain that there is not enough space.
> 
> Regards,
> Teresa
> 
Hi,

thanks for the answer, I knew there must be a reason for it.

Nonetheless it is a bit annoying not to be able to simply extract the content
of a static volume.

In my application the static volume contains a barebox bootloader image for an
imx25 cpu, I used to copy it to an mtd partition at the beginning of the nand flash
with the commands: erase /dev/nand0.barebox ; cp /dev/nand0.ubi_volumes... /dev/barebox
This does not work anymore now.

With a newer imx6 cpu I use the command barebox_update -y /dev/nand0.ubi_volumes...,
this works as expected.

Maybe I should write a new barebox_update command variant for the older cpu.

giorgio


Giorgio, iw3gtf@arcor.de

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
