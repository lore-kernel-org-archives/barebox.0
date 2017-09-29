Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxubK-0000pW-IJ
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 12:41:08 +0000
Received: from [192.168.1.241] ([31.18.251.132]) by mail.gmx.com (mrgmx101
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0M4CB5-1d72qa1I6F-00rn0x for
 <barebox@lists.infradead.org>; Fri, 29 Sep 2017 14:35:43 +0200
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
 <20170928231249.4158-11-antonynpavlov@gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <9b1d2334-72a1-7aee-a1d5-3df034c29fef@rempel-privat.de>
Date: Fri, 29 Sep 2017 14:35:37 +0200
MIME-Version: 1.0
In-Reply-To: <20170928231249.4158-11-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5684701155762758643=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC v4 10/10] Documentation: add RISC-V docs
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5684701155762758643==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="B45oWLIJANcC0fe5TObhqvfcwacTVtWDQ"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--B45oWLIJANcC0fe5TObhqvfcwacTVtWDQ
Content-Type: multipart/mixed; boundary="Nc0nge3QBNwh5CK8mg4RAkUUwXsI0MWQ4";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: barebox@lists.infradead.org
Message-ID: <9b1d2334-72a1-7aee-a1d5-3df034c29fef@rempel-privat.de>
Subject: Re: [RFC v4 10/10] Documentation: add RISC-V docs
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
 <20170928231249.4158-11-antonynpavlov@gmail.com>
In-Reply-To: <20170928231249.4158-11-antonynpavlov@gmail.com>

--Nc0nge3QBNwh5CK8mg4RAkUUwXsI0MWQ4
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Am 29.09.2017 um 01:12 schrieb Antony Pavlov:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  Documentation/boards/riscv.rst | 110 +++++++++++++++++++++++++++++++++=
++++++++
>  1 file changed, 110 insertions(+)
>=20
> diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/risc=
v.rst
> new file mode 100644
> index 000000000..912f16786
> --- /dev/null
> +++ b/Documentation/boards/riscv.rst
> @@ -0,0 +1,110 @@
> +RISC-V
> +=3D=3D=3D=3D=3D=3D
> +
> +At the moment only qemu emulator is supported (see https://github.com/=
riscv/riscv-isa-sim
> +for details).
> +
> +Running RISC-V barebox on qemu
> +------------------------------
> +
> +Obtain RISC-V GCC/Newlib Toolchain,
> +see https://github.com/riscv/riscv-tools/blob/master/README.md
> +for details. The ``build.sh`` script from ``riscv-tools`` should
> +create toolchain.
> +
> +Next compile qemu emulator::
> +
> +  $ git clone -b 20170824.erizo https://github.com/miet-riscv-workgrou=
p/riscv-qemu
> +  $ cd riscv-qemu
> +  $ cap=3D"no" ./configure \
> +    --extra-cflags=3D"-Wno-maybe-uninitialized" \
> +    --audio-drv-list=3D"" \
> +    --disable-attr \
> +    --disable-blobs \
> +    --disable-bluez \
> +    --disable-brlapi \
> +    --disable-curl \
> +    --disable-curses \
> +    --disable-docs \
> +    --disable-kvm \
> +    --disable-spice \
> +    --disable-sdl \
> +    --disable-vde \
> +    --disable-vnc-sasl \
> +    --disable-werror \
> +    --enable-trace-backend=3Dsimple \
> +    --disable-stack-protector \
> +    --target-list=3Driscv32-softmmu,riscv64-softmmu
> +  $ make
> +
> +
> +Next compile barebox::
> +
> +  $ make erizo_generic_defconfig ARCH=3Driscv
> +  ...
> +  $ make ARCH=3Driscv CROSS_COMPILE=3D<path to your riscv toolchain>/r=
iscv32-unknown-elf-
> +
> +Run barebox::
> +
> +  $ <path to riscv-qemu source>/riscv32-softmmu/qemu-system-riscv32 \
> +      -nographic -M erizo -bios <path to barebox sources >/barebox.bin=
 \
> +      -serial stdio -monitor none -trace file=3D/dev/null
> +
> +  nmon> q
> + =20
> +  copy loop done
> +  restarting...
> + =20
> +  nmon> q
> +  Switch to console [cs0]
> + =20
> + =20
> +  barebox 2017.08.0-00102-g212af75153 #1 Mon Sep 4 20:54:31 MSK 2017
> + =20
> + =20
> +  Board: generic Erizo SoC board
> +  m25p80 m25p128@00: unrecognized JEDEC id bytes: 00,  0,  0
> +  m25p80 m25p128@00: probe failed: error 2
> +  malloc space: 0x80100000 -> 0x801fffff (size 1 MiB)
> +  running /env/bin/init...
> +  /env/bin/init not found
> +  barebox:/
> +
> +
> +Running RISC-V barebox on DE0-Nano FPGA board
> +---------------------------------------------
> +
> +See https://github.com/open-design/riscv-soc-cores/ for instructions
> +on DE0-Nano bitstream generation and loading.
> +
> +Connect to board's UART with your favorite serial communication softwa=
re
> +(e.g. minicom) and check 'nmon> ' prompt (nmon runs from onchip ROM).
> +
> +Next close your communication software and use ./scripts/nmon-loader
> +to load barebox image into board's DRAM, e.g.
> +
> +  # ./scripts/nmon-loader barebox.erizo.nmon /dev/ttyUSB1 115200
> +
> +Wait several munutes for 'nmon> ' prompt.
> +
> +Next, start barebox from DRAM:
> +
> +  nmon> g 80000000
> +
> +You should see one more 'nmon> ' prompt (this nmon runs from DRAM).
> +Exit nmon with 'q' command:
> +
> +  nmon> q
> +  Switch to console [cs0]
> + =20
> + =20
> +  barebox 2017.08.0-00102-g212af75153 #1 Mon Sep 4 20:54:31 MSK 2017
> + =20
> + =20
> +  Board: generic Erizo SoC board
> +  m25p80 m25p128@00: unrecognized JEDEC id bytes: 00,  0,  0
> +  m25p80 m25p128@00: probe failed: error 2

hmmm... not working example?

> +  malloc space: 0x80100000 -> 0x801fffff (size 1 MiB)
> +  running /env/bin/init...
> +  /env/bin/init not found
> +  barebox:/=20

some parts are missing in defconfig. Barebox shell can display hostname
and so on ;)
--=20
Regards,
Oleksij


--Nc0nge3QBNwh5CK8mg4RAkUUwXsI0MWQ4--

--B45oWLIJANcC0fe5TObhqvfcwacTVtWDQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF4EAREIAAYFAlnOPhkACgkQHwImuRkmbWlf+QD8CGDuqZ3xsL3hkRZUAHCY+QyI
qIabdTlvljHQY4OGx9AA/3lp5AOhaxkUp7SXmxTzyAbo9r+wUNPb/pff80+MX+U3
=THqb
-----END PGP SIGNATURE-----

--B45oWLIJANcC0fe5TObhqvfcwacTVtWDQ--


--===============5684701155762758643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5684701155762758643==--
