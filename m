Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-11.arcor-online.net ([151.189.21.51])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brmAd-00054o-In
 for barebox@lists.infradead.org; Wed, 05 Oct 2016 13:23:40 +0000
Received: from mail-in-20-z2.arcor-online.net (mail-in-20-z2.arcor-online.net
 [151.189.8.85])
 by mx.arcor.de (Postfix) with ESMTP id 3spxLC66V8z4rry
 for <barebox@lists.infradead.org>; Wed,  5 Oct 2016 15:23:15 +0200 (CEST)
Received: from mail-in-10.arcor-online.net (mail-in-10.arcor-online.net
 [151.189.21.50])
 by mail-in-20-z2.arcor-online.net (Postfix) with ESMTP id CECE7840A4C
 for <barebox@lists.infradead.org>; Wed,  5 Oct 2016 15:23:15 +0200 (CEST)
Received: from webmail09.arcor-online.net (webmail09.arcor-online.net
 [151.189.8.45])
 by mail-in-10.arcor-online.net (Postfix) with ESMTP id 3spxLC5p80zXZDW
 for <barebox@lists.infradead.org>; Wed,  5 Oct 2016 15:23:15 +0200 (CEST)
Date: Wed, 5 Oct 2016 15:23:15 +0200 (CEST)
From: iw3gtf@arcor.de
Message-ID: <1382352141.1327180.1475673795806.JavaMail.ngmail@webmail09.arcor-online.net>
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
Subject: why UBI static volumes are flagged as DEVFS_IS_CHARACTER_DEV
To: barebox@lists.infradead.org

Hi,

I noticed that the commit id c087e0804f0290e9886899e8a3cccb07c4ce088b flagged static
UBI volumes as DEVFS_IS_CHARACTER_DEV.

A consequence of this flag is that commands like:

# cp /dev/nand0.ubi_volumes.ubi.my_static_vol file

will not work because the cp command will see a src file (the static UBI volume) with a size
of -1 (FILE_SIZE_STREAM) and keep on reading from the volume until a flood of
"UBI assert failed in ubi_eba_read_leb at 359" asserts comes out of the console.

I tried to comment out the flag assignment, just to see what happen:

int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
{
...
	cdev->size = vol->used_bytes;

//	if (vol->vol_type == UBI_STATIC_VOLUME)
//		cdev->flags = DEVFS_IS_CHARACTER_DEV;

	cdev->dev = &vol->dev;
...

and then the cp command worked than as expected.

Could someone shortly confirm that the DEVFS_IS_CHARACTER_DEV flag for static UBI volumes
is really needed (to avoid some other problems that my superficial test does not triggers) ?

giorgio


Giorgio, iw3gtf@arcor.de

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
