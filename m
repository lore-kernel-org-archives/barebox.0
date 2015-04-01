Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YdQXH-0005g2-T1
 for barebox@lists.infradead.org; Wed, 01 Apr 2015 21:50:56 +0000
Received: by lbbug6 with SMTP id ug6so46447530lbb.3
 for <barebox@lists.infradead.org>; Wed, 01 Apr 2015 14:50:33 -0700 (PDT)
Date: Thu, 2 Apr 2015 00:54:57 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150402005457.b05ee70d5a92c4a403ea13a1@gmail.com>
Mime-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox qemu-malta pci problem
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

Hi!

It looks like qemu-malta barebox pci support is broken since

  commit b8a1bb1dd215770670108fe5b0de0e5e137bf8fd
  Author: Lucas Stach <dev@lynxeye.de>
  Date:   Sat Oct 4 19:40:12 2014 +0200

      pci: defer device registration until after bridge setup
    =

      Otherwise the drivers for a device may probe before the
      devices parent bridge is fully configured, which leads
      to errors when accessing the BARs.

How to reproduce the problem:

 $ cd barebox.git
 $ export ARCH=3Dmips
 $ export CROSS_COMPILE=3D<your favorite mips cross-compiler prefix>

 # first let's see working state

 $ git checkout b8a1bb1dd215770670108fe5b0de0e5e137bf8fd^
 $ make qemu-malta_defconfig && make clean && make
 $ qemu-system-mips -nodefaults -M malta -m 256       -nographic -serial st=
dio -monitor null       -bios barebox-flash-image -net nic,model=3Drtl8139

 ...
 =

 barebox:/ devinfo

 ...

 `-- i2c
 `-- pci
   `-- pci0
   `-- pci1
   `-- pci2
   `-- pci3
   `-- pci4
      `-- eth0
         `-- miibus0
 `-- fs

 <stop qemu emulation (ctrl-c)>

 # devinfo shows eth0 device on pci4. good.
 # now let's see broken state

 $ git checkout b8a1bb1dd215770670108fe5b0de0e5e137bf8fd
 $ make qemu-malta_defconfig && make clean && make
 $ qemu-system-mips -nodefaults -M malta -m 256       -nographic -serial st=
dio -monitor null       -bios barebox-flash-image -net nic,model=3Drtl8139

 ...
 =

 barebox:/ devinfo

 ...

 `-- i2c
 `-- pci
 `-- fs

 # As you can see there is no pci devices on pci bus.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
