Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22a.google.com ([2607:f8b0:4002:c07::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WhdQP-00024u-0O
 for barebox@lists.infradead.org; Tue, 06 May 2014 11:20:41 +0000
Received: by mail-yk0-f170.google.com with SMTP id 10so2248036ykt.29
 for <barebox@lists.infradead.org>; Tue, 06 May 2014 04:20:18 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 6 May 2014 13:20:18 +0200
Message-ID: <CAOpc7mG8aTfoqMyZ4+GQfs08JW-xHLApe=V8sp5FZgY650anMQ@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Image loading via USB broken?
To: barebox@lists.infradead.org

Hi list,

on my Sabre Lite board I cannot execute an image that I sent to it via
the USB downloader.

$ cd barebox-next
$ git describe
v2014.04.0-263-g8ffbc0d
$ export CROSS_COMPILE=~/d/mkarm/gcc-linaro-arm-linux-gnueabihf-4.7-2013.03-20130313_linux/bin/arm-linux-gnueabihf-
$ export ARCH=arm
$ make freescale-mx6-sabrelite_defconfig
#
# configuration written to .config
#
$ make xconfig
(here I add ARCH_IMX_USBLOADER)
$ make
$ scripts/imx/imx-image -c
arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
-f barebox.bin -o barebox.imx
$ sudo scripts/imx/imx-usb-loader -v -c barebox.imx
found i.MX6q USB device [15a2:0054]
main dcd length 310
sub dcd length 30c
loading binary file(barebox.imx) to 20000000, skip=0x0, fsize=240912 type=170...
binary file successfully loaded
verifying file...
file successfully verified
jumping to 0x20000400

However, I don't get any output on the serial port.

Now, I do the same with u-boot, I get a serial prompt from u-boot on
the Sabre Lite. The same happens on my own hardware: works with
u-boot, but not with barebox. I'd rather use barebox than u-boot, but
I'm puzzled as of now.


One difference, however, is that I use "imx_usb" from
https://github.com/boundarydevices/imx_usb_loader to download to
download the u-boot.imx image. Not sure if that is relevant, or
actually, I think it is not relevant, because imx-usb-loader
downloaded and verified the barebox image successfully.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
