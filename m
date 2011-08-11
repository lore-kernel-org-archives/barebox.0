Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qrcj8-0006Zb-Qq
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 21:23:44 +0000
Received: by wyh11 with SMTP id 11so2139616wyh.36
	for <barebox@lists.infradead.org>; Thu, 11 Aug 2011 14:23:38 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 12 Aug 2011 01:23:36 +0400
Message-ID: <CAA4bVAE=a6qD9r_igo3JJFoJ4ojvN=KV9Ocvwd3cEN0pJZxfJw@mail.gmail.com>
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
Subject: scripts for testing barebox in qemu
To: barebox <barebox@lists.infradead.org>

Hi!

Some times ago I made the scripts for building mips cross-development
stuff: toolchain, patched qemu, firmware, linux and small rootfs.
I named the scripts 'clab'.

Today this scripts work not only for mips, but for arm, pc and
sparc32 too.

(Yes, yes, I know about the existing projects of such type.
I'm planning to migrate to buildroot in the future.)

Also clab has a script for running qemu in convenient way.

In this letter I want propose this scripts for very easy testing
of barebox on MIPS Malta (with initial PCI support) and
on ARM Versatile.

A small instruction:

1. clab will install toolchain and qemu to /opt/clab, so prepare it

sudo mkdir /opt/clab
sudo chown $USER /opt/clab

2. get and unpack clab

wget http://prizma.bmstu.ru/~antony/barebox/clab-0.34.tar.gz
tar vfx clab-0.34.tar.gz
cd clab-0.34

3. build toolchain, qemu, firmware, linux & rootfs

./mk_src_dir.sh
./build-all.sh

If you don't want build linux & rootfs you can disable
options --build_linux and --build-rootfs.

Clab will put all compiled stuff in the directory 'out'.

4. start barebox

./start-qemu.sh qemu-configs/versatile-linux-gnueabi/barebox-no-network-std=
io

./start-qemu.sh qemu-configs/malta-linux-gnu/barebox-no-network-stdio

Also you can run linux:

./start-qemu.sh qemu-configs/versatile-linux-gnueabi/stdio-no-network

./start-qemu.sh qemu-configs/malta-linux-gnu/stdio-no-network

5. starting barebox with network support need root
permissions to setup tap network interface.

So to try barebox with Realtek 8139 on PCI bus run this:

sudo ./start-qemu.sh qemu-configs/versatile-linux-gnueabi/barebox-stdio

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
