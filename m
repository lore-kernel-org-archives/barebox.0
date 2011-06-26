Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f41.google.com ([74.125.82.41])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QapOX-0005jV-79
	for barebox@lists.infradead.org; Sun, 26 Jun 2011 13:29:03 +0000
Received: by wwi14 with SMTP id 14so1474360wwi.0
	for <barebox@lists.infradead.org>; Sun, 26 Jun 2011 06:28:55 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 26 Jun 2011 17:28:54 +0400
Message-ID: <BANLkTiny4P64rwkOYxvpqNtZkRy5Ys+1-w@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: See MIPS barebox run: step-by-step instruction
To: barebox@lists.infradead.org

Hi!


I have made small instruction to run mips barebox under qemu:

0. Change dir to barebox sources

   $ cd barebox.mips.git

1. Apply patches (already posted to barebox@lists.infradead.org)
    0001-include-linux-stat.h-make-MIPS-arch-possible.patch
    0002-Add-MIPS-arch-support-to-barebox.patch

2. Configure & build barebox.bin

   $ cp arch/mips/configs/generic_defconfig .config
   $ make oldconfig ARCH=mips
   $ make ARCH=mips CROSS_COMPILE=<your mips cross-compiler prefix>

3. Get qemu. My qemu:

   $ qemu-system-mips --version
   QEMU emulator version 0.14.0 (Debian 0.14.0+dfsg-5.1), Copyright
(c) 2003-2008 Fabrice Bellard

4. Run barebox under qemu:

   $ qemu-system-mips -M malta -m 128 -bios ./barebox.bin -nodefaults
-serial stdio -nographic

or

   $ qemu-system-mips64 -M malta -m 128 -bios ./barebox.bin
-nodefaults -serial stdio -nographic

4. Have fun!

Here is my barebox log.

barebox 2011.06.0-00012-gcc4a295 (Jun 26 2011 - 16:40:30)

Board: qemu malta
registered netconsole as cs1
Malloc space: 0xa0800000 -> 0xa0900000 (size  1 MB)
Open /dev/env0 No such file or directory
running /env/bin/init...
not found
uboot:/ devinfo
devices:
|----serial_ns165500
|----cs0
|----ramfs0
|----devfs0
|----mem0 (mem)
|----cs1

drivers:
serial_ns16550
     ramfs
     devfs
       mem
    cramfs
uboot:/

----
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
