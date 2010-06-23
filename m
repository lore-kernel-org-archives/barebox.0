Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1ORLUg-0001Xl-9f
	for barebox@lists.infradead.org; Wed, 23 Jun 2010 08:39:38 +0000
Received: by wyb36 with SMTP id 36so792911wyb.36
	for <barebox@lists.infradead.org>; Wed, 23 Jun 2010 01:39:35 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 23 Jun 2010 10:39:35 +0200
Message-ID: <AANLkTikXVF6EEgpWHoiVcBpdn17Kld8b7WMN7laRqcMC@mail.gmail.com>
From: Jose Luis Zabalza <jlz.3008@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: USB device not found
To: barebox@lists.infradead.org

Hello all.

I connect a usb device to my board but I can't see the device on /dev.
Is it usual?
I should see a /dev/usb0-20 device file?




jlxx:/ usb
USB: scanning bus for devices...
...
usb0-2: 1516:8628 FlashDisk
usb0-1: 0000:0000 EHCI Host Controller
2 USB Device(s) found

jlxx:/ devinfo
devices:
|----imx_serial0
|----cs0
|----ramfs0
|----devfs0
|----mem0 (defaultenv)
|----mem1 (mem)
|----cfi_flash0 (nor0, self, env, nor0.uboot, nor0.kernel, nor0.root)
|----mem2 (ram0)
|----fec_imx0
|----miiphy0 (phy0)
|----eth0
|----imxfb0
|----fb0 (fb0)
|----ehci0
|----usb0-20
|----usb0-10

drivers:
imx_serial
     ramfs
     devfs
   fec_imx
    miiphy
 cfi_flash
      ehci
     imxfb
       mem


jlxx:/ ls /dev
zero           defaultenv     mem            nor0           ram0
phy0           fb0            self           env            nor0.uboot
nor0.kernel    nor0.root


Thanks in avance




-- =

Jos=E9 Luis Zabalza
jlz.3008  a t  gmail.com
Linux Counter 172551

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
