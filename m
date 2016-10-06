Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bs3sM-00005E-OT
 for barebox@lists.infradead.org; Thu, 06 Oct 2016 08:18:00 +0000
Message-ID: <1475741847.3468.20.camel@lws-tremmet.phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Thu, 06 Oct 2016 10:17:27 +0200
In-Reply-To: <1382352141.1327180.1475673795806.JavaMail.ngmail@webmail09.arcor-online.net>
References: <1382352141.1327180.1475673795806.JavaMail.ngmail@webmail09.arcor-online.net>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: why UBI static volumes are flagged as DEVFS_IS_CHARACTER_DEV
To: iw3gtf@arcor.de
Cc: barebox@lists.infradead.org

Hello Giorgio,

Am Mittwoch, den 05.10.2016, 15:23 +0200 schrieb iw3gtf@arcor.de:
> Hi,
> 
> I noticed that the commit id c087e0804f0290e9886899e8a3cccb07c4ce088b flagged static
> UBI volumes as DEVFS_IS_CHARACTER_DEV.
> 
> A consequence of this flag is that commands like:
> 
> # cp /dev/nand0.ubi_volumes.ubi.my_static_vol file
> 
> will not work because the cp command will see a src file (the static UBI volume) with a size
> of -1 (FILE_SIZE_STREAM) and keep on reading from the volume until a flood of
> "UBI assert failed in ubi_eba_read_leb at 359" asserts comes out of the console.
> 
> I tried to comment out the flag assignment, just to see what happen:
> 
> int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
> {
> ...
> 	cdev->size = vol->used_bytes;
> 
> //	if (vol->vol_type == UBI_STATIC_VOLUME)
> //		cdev->flags = DEVFS_IS_CHARACTER_DEV;
> 
> 	cdev->dev = &vol->dev;
> ...
> 
> and then the cp command worked than as expected.
> 
> Could someone shortly confirm that the DEVFS_IS_CHARACTER_DEV flag for static UBI volumes
> is really needed (to avoid some other problems that my superficial test does not triggers) ?

the size of a static ubi volume device is equal to the image size you
flashed. When you create a new static ubi volume the size is 0, as it is
empty.
We need the chardev flag to be able to update the static ubi volume or
barebox will complain that there is not enough space.

Regards,
Teresa

> 
> giorgio
> 
> 
> Giorgio, iw3gtf@arcor.de
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
