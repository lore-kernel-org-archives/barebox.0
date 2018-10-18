Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailgate.pixel-group.de ([145.253.133.146])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD9uB-0005cG-ID
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 15:08:24 +0000
From: Kai Che <Kai.Che@mixed-mode.de>
Date: Thu, 18 Oct 2018 15:07:54 +0000
Message-ID: <1539875276114.50760@mixed-mode.de>
References: <1539777724792.91226@mixed-mode.de>,
 <20181017122700.yl5xavieafvjrhav@pengutronix.de>
In-Reply-To: <20181017122700.yl5xavieafvjrhav@pengutronix.de>
Content-Language: de-DE
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
Subject: Issues compiling barebox on raspberry pi
To: "r.hieber@pengutronix.de" <r.hieber@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello,

I'm trying to compile barebox on the raspberry pi 3 model B and after booting the pi with the barebox-raspberry-pi-3.img I get the following error:

barebox 2018.04.0-g9b6b12471 #2 Thu Oct 18 14:33:09 CEST 2018

Board: RaspberryPi 3 Model B
bcm2835_mci 3f300000.sdhci: registered as 3f300000.sdhci
bcm2835-gpio 3f200000.gpio: probed gpiochip-1 with base 0
malloc space: 0x0fefe700 -> 0x1fdfcdff (size 255 MiB)
mci0: detected SD card version 2.0
mci0: registered disk0
environment load /boot/barebox.env: No such file or directory
Maybe you have to create the partition.
running /env/bin/init...

Hit any key to stop autoboot:    0
booting 'net'
ifup: No such file or directory
running automount command 'ifup -a && mount -t tftp $global.net.server /mnt/tftp' failed
ifup: No such file or directory
running automount command 'ifup -a && mount -t tftp $global.net.server /mnt/tftp' failed
ip_route_get: No such file or directory
ifup: No such file or directory
running automount command 'ifup -a && mount -t tftp $global.net.server /mnt/tftp' failed
ifup: No such file or directory
running automount command 'ifup -a && mount -t tftp $global.net.server /mnt/tftp' failed
ifup: No such file or directory
running automount command 'ifup -a && mount -t tftp $global.net.server /mnt/tftp' failed
ifup: No such file or directory
running automount command 'ifup -a && mount -t tftp $global.net.server /mnt/tftp' failed
ifup: No such file or directory
running automount command 'ifup -a && mount -t tftp $global.net.server /mnt/tftp' failed
open: No such file or directory
could not open /mnt/tftp/none-linux-rpi: No such file or directory
ERROR: Booting 'net' failed: No such file or directory
booting 'net' failed: No such file or directory
boot: No such file or directory
barebox@RaspberryPi 3 Model B:/

The pi doesn't accept any keyboard input and is "stuck" at this stage.

How and where can I get the barebox.env file?

Thanks very much and best regards,

Kai Che

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
