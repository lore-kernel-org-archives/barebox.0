Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ssy6q-0008KO-Uz
 for barebox@lists.infradead.org; Sun, 22 Jul 2012 15:30:17 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1Ssy6e-0001B3-3D
 for barebox@lists.infradead.org; Sun, 22 Jul 2012 17:30:04 +0200
Received: from ppp-88-217-108-95.dynamic.mnet-online.de ([88.217.108.95])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Sun, 22 Jul 2012 17:30:04 +0200
Received: from bernhard by ppp-88-217-108-95.dynamic.mnet-online.de with local
 (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Sun, 22 Jul 2012 17:30:04 +0200
From: Bernhard Walle <bernhard@bwalle.de>
Date: Sun, 22 Jul 2012 17:29:44 +0200
Message-ID: <juh698$uj7$1@dough.gmane.org>
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
Subject: Booting kernel from FAT partition on beagle board
To: barebox@lists.infradead.org

Hi,

this may be a very stupid question, but I'm using Barebox for the first
time. My kernel is located on a SD card on the 1st FAT partition. I
tried following sequence:

------------------------------------------------------------
barebox@Texas Instrument's Beagle:/ bootargs="console=ttyO2,115200 \
	vram=12M omapfb.mode=dvi:1024x768MR-16@60 omapfb.debug=y \
	omapdss.def_disp=dvi root=/dev/mmcblk0p2 ro rootfstype=ext3 \
	rootwait earlyprintk=ttyO2,115200"
barebox@Texas Instrument's Beagle:/ mount /dev/disk0.0 fat /mnt
barebox@Texas Instrument's Beagle:/ bootm -c -v /mnt/uImage
------------------------------------------------------------

But that doesn't work:

------------------------------------------------------------
   Image Name:   Linux-3.5.0
   OS:           Linux
   Architecture: ARM
   Type:         Kernel Image
   Compression:  uncompressed
   Data Size:    3362776 Bytes =  3.2 MB
   Load Address: 80008000
   Entry Point:  80008000

Loading OS U-Boot uImage '/mnt/uImage'
OS image is at 0x80008000-0x8033cfd7
Passing control to ARM Linux uImage handler

Starting kernel at 0x80008000...
commandline: console=ttyO2,115200 vram=12M
omapfb.mode=dvi:1024x768MR-16@60 omapfb.debug=y omapdss.def_disp=dvi
root=/dev/mmcblk0p2 ro rootfstype=ext3 rootwait earlyprintk=ttyO2,115200
arch_number: 1546
------------------------------------------------------------

The same kernel boots fine using u-boot. I'm using Barebox 2012.07.0 and
u-boot 2012.07-rc1.

Did I do something wrong? Or is that just a bug?



Regards,
Bernhard



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
