Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtshQ-0005Ya-CM
 for barebox@lists.infradead.org; Wed, 04 Nov 2015 07:41:41 +0000
Received: by lbjm5 with SMTP id m5so9372180lbj.3
 for <barebox@lists.infradead.org>; Tue, 03 Nov 2015 23:41:18 -0800 (PST)
Date: Wed, 4 Nov 2015 11:04:33 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20151104110433.696aef0a00e53bb950e97674@gmail.com>
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
Subject: memcpy strange behaviour
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Peter Mamonov <piton@cs.niisi.ras.ru>, barebox@lists.infradead.org

Hi!

Peter has reported on strange barebox memcpy command behaviour on his MIPS =
board:

  he copies a file to memory using memcpy and then copyies appropriate memo=
ry contents
  back to another file. Next he checks files md5sum and the sums are differ.

I have reproduced the problem on Qemu VersatilePB ARM board.

Here is an instruction.

Configure barebox:

$ cd barebox.git
$ export ARCH=3Darm
$ export CROSS_COMPILE=3D<your cross compiler prefix>
$ make versatilepb_defconfig
$ sed -i "s/^# CONFIG_CMD_MD5SUM.*$/CONFIG_CMD_MD5SUM=3Dy/" .config

Prepare testfile on host and compile:

$ dd if=3D/dev/zero bs=3D1 count=3D4414 | tr "\000" "\377" > defaultenv/def=
aultenv-2-base/testfile
$ make
...

Run barebox under qemu:

$ qemu-system-arm -M versatilepb -nographic -monitor null -kernel arch/arm/=
pbl/zbarebox -serial stdio
...
barebox# memcpy -s /env/testfile 0 0x01000000

barebox# memcpy -d _testfile 0x01000000 0 4414

barebox# md5sum /env/testfile _testfile
bf8278051ba8de868def083bcc209002  /env/testfile 0x00000000 ... 0xffffffffff=
ffffff
e295c2bfe32498e03531017443120e89  _testfile     0x00000000 ... 0xffffffffff=
ffffff

barebox# memcmp -s /env/testfile -d _testfile 0 0
files differ at offset 4408

barebox# md -s /env/testfile 4400
00001130: ffffffff ffffffff ffffffff ffffffff                ..............

barebox# md -s _testfile 4400
00001130: ffffffff ffffffff 00000000 ffff0000                ..............

barebox# md -b 0x01001130+0xe
01001130: ff ff ff ff ff ff ff ff 00 00 00 00 00 00          ..............

barebox# md -b -s /env/testfile 0x1130+0xe
00001130: ff ff ff ff ff ff ff ff ff ff ff ff ff ff          ..............

So you see that last 6 bytes have not been copied.

Please comment this report!

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
