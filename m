Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x236.google.com ([2a00:1450:4010:c07::236])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dyGnJ-0003zJ-IB
 for barebox@lists.infradead.org; Sat, 30 Sep 2017 12:23:00 +0000
Received: by mail-lf0-x236.google.com with SMTP id a18so1889240lfl.13
 for <barebox@lists.infradead.org>; Sat, 30 Sep 2017 05:22:35 -0700 (PDT)
Date: Sat, 30 Sep 2017 15:34:30 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20170930153430.531d45897831b9f1e08bc4c7@gmail.com>
In-Reply-To: <9b1d2334-72a1-7aee-a1d5-3df034c29fef@rempel-privat.de>
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
 <20170928231249.4158-11-antonynpavlov@gmail.com>
 <9b1d2334-72a1-7aee-a1d5-3df034c29fef@rempel-privat.de>
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
Subject: Re: [RFC v4 10/10] Documentation: add RISC-V docs
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Fri, 29 Sep 2017 14:35:37 +0200
Oleksij Rempel <linux@rempel-privat.de> wrote:

> Am 29.09.2017 um 01:12 schrieb Antony Pavlov:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  Documentation/boards/riscv.rst | 110 +++++++++++++++++++++++++++++++++=
++++++++
> >  1 file changed, 110 insertions(+)
> > =

> > diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/risc=
v.rst
> > new file mode 100644
> > index 000000000..912f16786
> > --- /dev/null
> > +++ b/Documentation/boards/riscv.rst
> > @@ -0,0 +1,110 @@
> > +RISC-V
> > +=3D=3D=3D=3D=3D=3D
> > +
> > +At the moment only qemu emulator is supported (see https://github.com/=
riscv/riscv-isa-sim
> > +for details).
> > +
> > +Running RISC-V barebox on qemu
> > +------------------------------
> > +
> > +Obtain RISC-V GCC/Newlib Toolchain,
> > +see https://github.com/riscv/riscv-tools/blob/master/README.md
> > +for details. The ``build.sh`` script from ``riscv-tools`` should
> > +create toolchain.
> > +
> > +Next compile qemu emulator::
> > +
> > +  $ git clone -b 20170824.erizo https://github.com/miet-riscv-workgrou=
p/riscv-qemu
> > +  $ cd riscv-qemu
> > +  $ cap=3D"no" ./configure \
> > +    --extra-cflags=3D"-Wno-maybe-uninitialized" \
> > +    --audio-drv-list=3D"" \
> > +    --disable-attr \
> > +    --disable-blobs \
> > +    --disable-bluez \
> > +    --disable-brlapi \
> > +    --disable-curl \
> > +    --disable-curses \
> > +    --disable-docs \
> > +    --disable-kvm \
> > +    --disable-spice \
> > +    --disable-sdl \
> > +    --disable-vde \
> > +    --disable-vnc-sasl \
> > +    --disable-werror \
> > +    --enable-trace-backend=3Dsimple \
> > +    --disable-stack-protector \
> > +    --target-list=3Driscv32-softmmu,riscv64-softmmu
> > +  $ make
> > +
> > +
> > +Next compile barebox::
> > +
> > +  $ make erizo_generic_defconfig ARCH=3Driscv
> > +  ...
> > +  $ make ARCH=3Driscv CROSS_COMPILE=3D<path to your riscv toolchain>/r=
iscv32-unknown-elf-
> > +
> > +Run barebox::
> > +
> > +  $ <path to riscv-qemu source>/riscv32-softmmu/qemu-system-riscv32 \
> > +      -nographic -M erizo -bios <path to barebox sources >/barebox.bin=
 \
> > +      -serial stdio -monitor none -trace file=3D/dev/null
> > +
> > +  nmon> q
> > +  =

> > +  copy loop done
> > +  restarting...
> > +  =

> > +  nmon> q
> > +  Switch to console [cs0]
> > +  =

> > +  =

> > +  barebox 2017.08.0-00102-g212af75153 #1 Mon Sep 4 20:54:31 MSK 2017
> > +  =

> > +  =

> > +  Board: generic Erizo SoC board
> > +  m25p80 m25p128@00: unrecognized JEDEC id bytes: 00,  0,  0
> > +  m25p80 m25p128@00: probe failed: error 2
> > +  malloc space: 0x80100000 -> 0x801fffff (size 1 MiB)
> > +  running /env/bin/init...
> > +  /env/bin/init not found
> > +  barebox:/
> > +
> > +
> > +Running RISC-V barebox on DE0-Nano FPGA board
> > +---------------------------------------------
> > +
> > +See https://github.com/open-design/riscv-soc-cores/ for instructions
> > +on DE0-Nano bitstream generation and loading.
> > +
> > +Connect to board's UART with your favorite serial communication softwa=
re
> > +(e.g. minicom) and check 'nmon> ' prompt (nmon runs from onchip ROM).
> > +
> > +Next close your communication software and use ./scripts/nmon-loader
> > +to load barebox image into board's DRAM, e.g.
> > +
> > +  # ./scripts/nmon-loader barebox.erizo.nmon /dev/ttyUSB1 115200
> > +
> > +Wait several munutes for 'nmon> ' prompt.
> > +
> > +Next, start barebox from DRAM:
> > +
> > +  nmon> g 80000000
> > +
> > +You should see one more 'nmon> ' prompt (this nmon runs from DRAM).
> > +Exit nmon with 'q' command:
> > +
> > +  nmon> q
> > +  Switch to console [cs0]
> > +  =

> > +  =

> > +  barebox 2017.08.0-00102-g212af75153 #1 Mon Sep 4 20:54:31 MSK 2017
> > +  =

> > +  =

> > +  Board: generic Erizo SoC board
> > +  m25p80 m25p128@00: unrecognized JEDEC id bytes: 00,  0,  0
> > +  m25p80 m25p128@00: probe failed: error 2
> =

> hmmm... not working example?


At the moment I run risc-v barebox on several FPGA boards.
SPI flash chip is absent on some boards.
This log was produced by SPI-flash-chip-less board.

Also SPI flash chip emulation is absent for Erizo qemu board.


> > +  malloc space: 0x80100000 -> 0x801fffff (size 1 MiB)
> > +  running /env/bin/init...
> > +  /env/bin/init not found
> > +  barebox:/ =

> =

> some parts are missing in defconfig. Barebox shell can display hostname
> and so on ;)
> -- =

> Regards,
> Oleksij
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
