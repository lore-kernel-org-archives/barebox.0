Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RqMsB-0003cB-R3
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 10:48:09 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2A135FFCCE9
 for <barebox@lists.infradead.org>; Thu, 26 Jan 2012 11:49:55 +0100 (CET)
Date: Thu, 26 Jan 2012 11:45:19 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120126104519.GV25622@game.jcrosoft.org>
References: <1327525133.19793.23.camel@hp-dhlii>
 <20120125220848.GC5446@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="/2994txjAzEdQwm5"
Content-Disposition: inline
In-Reply-To: <20120125220848.GC5446@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: i.MX53 QSB
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--/2994txjAzEdQwm5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

HI,

	I found a script

Best Regards,
J.
On 23:08 Wed 25 Jan     , Sascha Hauer wrote:
> Hi David,
> 
> On Wed, Jan 25, 2012 at 03:58:53PM -0500, David Lynch Jr. wrote:
> > I can build a barebox.bin for the i.MX53 QSB. 
> > 
> > If I am booting from the SD card how do I get it onto the card
> > 
> > dd if=barebox.bin of=/dev/sdc bs=512 seek=2 ??
> 
> cat barebox.bin > /dev/sdc
> 
> Of course this means that you will overwrite the partition table of the
> SD card. I'm still loooking for a good way to make this behaviour more
> convenient.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

--/2994txjAzEdQwm5
Content-Type: application/x-sh
Content-Disposition: attachment; filename="generate_sd.sh"
Content-Transfer-Encoding: quoted-printable

#! /bin/sh=0A=0A#######################################=0A# Check input par=
ameters=0A#######################################=0A=0ASDCARD_DEV=3D$1=0A=
=0A# Simplify the device to its minimal expression=0ASDCARD_DEV=3D"$(dirnam=
e $SDCARD_DEV)/$(basename $SDCARD_DEV)"=0A=0Aif [ -z $SDCARD_DEV ]; then=0A=
	echo "\ERROR: Must set the destination device\n"=0A	echo "Syntax:  $0 [dev=
ice]"=0A	echo "Example: $0 /dev/sdg\n"=0A	exit 1=0Afi=0A=0A# Make sure we a=
re not trying to write to the primary partition=0Aif [ $SDCARD_DEV =3D "/de=
v/sda" ]; then=0A	echo "\nERROR: Forbidden to write to /dev/sda\n"=0A	echo =
"Syntax:  $0 [device]"=0A	echo "Example: $0 /dev/sdg\n"=0A	exit 1=0Afi=0A=
=0A# Check that we are writing to a block device=0Aif [ ! -b $SDCARD_DEV ];=
 then=0A	echo "\nERROR: $SDCARD_DEV is not a block device\n"=0A	exit 1=0Afi=
=0A=0A=0A#######################################=0A# Copy the bootloader=0A=
#######################################=0A=0ABOOTLOADER_IMG=3Dbarebox.bin=
=0A=0Aecho "Copying barebox..."=0Asudo dd if=3D$BOOTLOADER_IMG of=3D$SDCARD=
_DEV bs=3D512 || exit 1=0Async=0A=0A=0A####################################=
###=0A# Copy the kernel=0A#######################################=0A=0AKERN=
EL_IMG=3DuImage.sec=0A=0Aecho "Copying kernel..."=0Asudo dd if=3D$KERNEL_IM=
G of=3D$SDCARD_DEV bs=3D512 seek=3D1024 || exit 1=0Async=0A=0A=0A##########=
#############################=0A# Create Partition Table=0A################=
#######################=0A=0A# Unmount everyone=0Asudo umount ${SDCARD_DEV}=
*=0A=0A# Check if the device name is mmcblkX=0Aif echo "${SDCARD_DEV}" | gr=
ep -q mmcblk; then=0A	PART_NAME=3D${SDCARD_DEV}p1=0Aelse=0A	PART_NAME=3D${S=
DCARD_DEV}1=0Afi=0A=0ASIZE=3D`sudo fdisk -l ${SDCARD_DEV} | grep Disk | awk=
 '{print $5}'`=0ACYLINDERS=3D`echo $SIZE/8225280 | bc`=0A=0Aif [ $CYLINDERS=
 -eq 0 ]; then=0A	echo "\nERROR: 0 cylinders\n"=0A	exit 1=0Afi=0A=0Aecho "D=
ISK SIZE - $SIZE bytes"=0Aecho "CYLINDERS - $CYLINDERS"=0A=0A# Create a sin=
gle ext3 partition while leaving space for U-Boot and kernel=0A{=0Aecho 4,,=
,*=0A} | sudo sfdisk -H 255 -S 63 -C $CYLINDERS ${SDCARD_DEV}=0A=0Aecho "Co=
pying rootfs..."=0Add if=3Drootfs.squashfs of=3D${SDCARD_DEV}1=0A=0Async &&=
 sync=0A=0A
--/2994txjAzEdQwm5
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--/2994txjAzEdQwm5--
