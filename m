Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwKdx-0000Mm-8A
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 06:46:38 +0000
Received: by mail-lj1-x22d.google.com with SMTP id w1so13536342ljh.5
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 22:46:36 -0800 (PST)
Date: Tue, 28 Jan 2020 09:46:29 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20200128094629.4fb7c2bcad814990c7997eb2@gmail.com>
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
Subject: MIPS: relocation issue
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>, Oleksij Rempel <o.rempel@pengutronix.de>

Hi!

Since 28ed10d6a6 ("MIPS: relocation: add relocation support")
iomem output on memory regions is invalid,
all the code that rely on registered sdram memory regions
after relocation can fail. E.g. the memtest commands fails
on barebox.

How to reproduce the problem ov v2020.01.0:

$ wget https://www.barebox.org/download/barebox-2020.01.0.tar.bz2
...
$ tar fx barebox-2020.01.0.tar.bz2
$ cd barebox-2020.01.0
$ export ARCH=3Dmips
$ export CROSS_COMPILE=3Dmips-linux-gnu-
$ make qemu-malta_defconfig
$ sed -i "s/^.*CONFIG_CMD_MEMTEST.*/CONFIG_CMD_MEMTEST=3Dy/" .config
$ make
$ qemu-system-mips -nodefaults -M malta -m 256 -nographic -serial stdio -mo=
nitor null -bios barebox-flash-image
...
barebox@qemu malta:/ memtest
Start iteration 1 of 1.
Testing memory space: 0xa0865000 -> 0xafffffff:
Starting data line test.
Check for address bits stuck high.
Check for address bits stuck low or shorted.
Starting moving inversions test of RAM:
Fill with address, compare, fill with inverted address, compare again
	[##########################################                       ]
FAILURE (read/write): expected 0x03cca9f2, actual 0xa08126c4 at address 0xa=
fb8f7c4.

Ooops, TLB miss on load or ifetch!

$ 0   : 00000000 00000000 fffffffb a085c900
$ 4   : a0407e90 0000000a b80003f8 00000001
$ 8   : a0858f28 00000000 00000053 00000008
$12   : 00000000 00000000 0000005c 00000001
$16   : 03ccab3c 03ccab3d a0825c48 00000000
$20   : 00000000 00000001 a0853518 a085352c
$24   : 00000018 a08124b8                  =

$28   : 00000000 8fb8fcf8 a0860000 03ccab3e
Hi    : 0000000a
Lo    : 00000000
epc   : 03ccab3e
ra    : 03ccab3e
Status: 00000002
Cause : 00000408
Config: 80008482

### ERROR ### Please RESET the board ###


memtest for qemu-malta can be repaired by disabling relocation, e.g.

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index c1cd2d9dd5..95b6596dde 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -34,7 +34,7 @@ EXPORT(_start)
        move    a0, s0
        move    a1, s1
        move    a2, s2
-       la      v0, relocate_code
+       la      v0, main_entry
        jal     v0
         nop


Additional testing on real hardware has to be done.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
