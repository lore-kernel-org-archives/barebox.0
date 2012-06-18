Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sgbfx-0000bp-7H
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 13:07:25 +0000
Received: from [192.168.0.42] (col31-4-88-188-83-94.fbx.proxad.net
 [88.188.83.94])
 by mail.free-electrons.com (Postfix) with ESMTPSA id 5D60B17D
 for <barebox@lists.infradead.org>; Mon, 18 Jun 2012 15:07:00 +0200 (CEST)
Message-ID: <4FDF27F8.7010105@free-electrons.com>
Date: Mon, 18 Jun 2012 15:07:04 +0200
From: Maxime Ripard <maxime.ripard@free-electrons.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: How to start barebox on Freescale iMX28 EVK
To: barebox@lists.infradead.org

Hi everyone,

I'm trying barebox on the imx28 evk evaluation board from freescale, and
I can't get barebox to boot yet.

I think I might have a problem with the bootlets used, but I'm not sure.

So, to compile barebox, I did:
ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- make imx28evk_defconfig
ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabi- make

Using codebench 2011.09 toolchain.

Then, I used U-boot IVT bootlet from freescale bootlet tarball as a base
for the one I created [1].

After that, I created the bootstream using
elftosb -z -f imx28 -c  ./barebox_ivt.bd -o imx28_ivt_barebox.sb

Finally, I pushed on a properly formatted SD Card (with a 0x53 partition
flag on the first partition) using Freescale mk_hdr script[2] to
generate the proper headers:

./mk_hdr.sh `sudo fdisk -lu /dev/sdb | awk '$5==53 {print $2}'` 1  >
temp.bin

sudo dd if=temp.bin of=/dev/sdb1 ibs=512 conv=sync
sudo dd if=imx28_ivt_barebox.sb of=/dev/sdb1 ibs=512 obs=512 seek=1
conv=sync

When I finally plug the card in and boot the card, the two first
bootlets are properly executed, and then, it hangs, displaying nothing
but what is looking like an address: 0x8050100f

When flashing it in the exact same way with freescale's precompiled
u-boot bootstream, it works fine though, so my guess is that it is more
a problem regarding the barebox binary/the bootstream than the sd card
generation process...

Do you have an idea on what could be wrong with what I'm doing ?

Thanks,
Maxime

[1] http://code.bulix.org/eavngs-81672
[2] http://code.bulix.org/vzqsiy-81673

-- 
Maxime Ripard, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
