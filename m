Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qr6vE-0004Pn-BM
	for barebox@lists.infradead.org; Wed, 10 Aug 2011 11:26:04 +0000
Received: by wwf10 with SMTP id 10so688550wwf.18
	for <barebox@lists.infradead.org>; Wed, 10 Aug 2011 04:26:03 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 10 Aug 2011 15:26:03 +0400
Message-ID: <CAA4bVAHiiKqQjbF3y95t8203oc+-nk3FF=3Aww1GjD+KcfBxNg@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: arch x86 is broken in -next
To: barebox <barebox@lists.infradead.org>

Hi!

I have tryed to build x86 barebox.

$ make ARCH=3Dx86 generic_defconfig
...
$ make ARCH=3Dx86 CROSS_COMPILE=3Di686-pc-linux-gnu-
...
  CC      drivers/ata/disk_drive.o
drivers/ata/disk_drive.c: In function 'disk_probe':
drivers/ata/disk_drive.c:193: error: 'struct device_d' has no member
named 'size'
drivers/ata/disk_drive.c:195: error: 'struct device_d' has no member
named 'size'
drivers/ata/disk_drive.c:197: error: 'struct device_d' has no member
named 'size'

after ATA disabling in .config I have got this:
...
 CC      arch/x86/boards/x86_generic/generic_pc.o
arch/x86/boards/x86_generic/generic_pc.c:36: error: unknown field
'size' specified in initializer
arch/x86/boards/x86_generic/generic_pc.c: In function 'devices_init':
arch/x86/boards/x86_generic/generic_pc.c:57: error: 'sdram_dev'
undeclared (first use in this function)

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
