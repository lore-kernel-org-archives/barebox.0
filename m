Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vx0-f177.google.com ([209.85.220.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEhmX-000669-6F
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 13:58:53 +0000
Received: by vcbf13 with SMTP id f13so2190589vcb.36
 for <barebox@lists.infradead.org>; Mon, 02 Apr 2012 06:58:49 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 2 Apr 2012 15:58:49 +0200
Message-ID: <CAFEF1dF7M15xAgvYLdkVowavpXnvThkzXwtXe0fe4TEEYMFokQ@mail.gmail.com>
From: Jakob Malm <jakob.malm@gmail.com>
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
Subject: Boot linux from cramfs on USB
To: barebox@lists.infradead.org

Hi,

How would I boot a linux system in a cramfs image on USB? I don't seem
to be able to mount such an image:

barebox:/ usb
USB: scanning bus for devices...
Bus 001 Device 002: ID 0dd8:1728 Flash Drive
Using index 1 for the new disk
Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
2 USB Device(s) found
barebox:/ mkdir /usb
barebox:/ mount /dev/disk1.0 fat /usb
barebox:/ mkdir /cramfs
barebox:/ mount /usb/rootfs.cramfs cramfs /cramfs
mount: Invalid argument

Is it not possible to mount a cramfs image file?

This is on a Freescale MX-23 EVK board.

Thanks,
Jakob Malm

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
