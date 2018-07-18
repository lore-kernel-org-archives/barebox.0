Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ffhJn-0000q8-LX
 for barebox@lists.infradead.org; Wed, 18 Jul 2018 07:56:18 +0000
References: <461871869.117927.1531898866247@mail.vodafone.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <9b363e15-e38e-c237-8c33-4411a72ad60a@rempel-privat.de>
Date: Wed, 18 Jul 2018 09:56:00 +0200
MIME-Version: 1.0
In-Reply-To: <461871869.117927.1531898866247@mail.vodafone.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6373125661930449535=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: imx7d enable second core
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>, barebox@lists.infradead.org, l.stach@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6373125661930449535==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="OUQcfTMHt4TAhFHniqqe6cv3GWG2SznTd"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--OUQcfTMHt4TAhFHniqqe6cv3GWG2SznTd
Content-Type: multipart/mixed; boundary="eXbcqAgd7y2u88pagV4TvN7ogMZuvuWc9";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>, barebox@lists.infradead.org,
 l.stach@pengutronix.de
Message-ID: <9b363e15-e38e-c237-8c33-4411a72ad60a@rempel-privat.de>
Subject: Re: imx7d enable second core
References: <461871869.117927.1531898866247@mail.vodafone.de>
In-Reply-To: <461871869.117927.1531898866247@mail.vodafone.de>

--eXbcqAgd7y2u88pagV4TvN7ogMZuvuWc9
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Am 18.07.2018 um 09:27 schrieb Giorgio Dal Molin:
> Hi all,
>=20
> I'm currently working with the imx7d sabre board from NXP.
>=20
> I have now a running barebox bootloader and a booting kernel.
>=20
> My problem is now that, apparently, only one core is active:
>=20
> ...
> commandline: console=3Dttymxc0,115200n8 ip=3D11.0.0.4::11.0.0.2:255.0.0=
=2E0::eth0: root=3D/dev/mmcblk0p2 rootdelay=3D1
> Starting kernel in secure mode
> [    0.000000] Booting Linux on physical CPU 0x0
> [    0.000000] Linux version 4.17.7 (giorgio@BV_blfs) (gcc version 8.1.=
0 (OSELAS.Toolchain-2018.02.0)) #1 SMP Wed Jul 18 07:44:41 CEST 2018
> [    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=3D=
10c5387d
> [    0.000000] CPU: div instructions available: patching division code
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing i=
nstruction cache
> [    0.000000] OF: fdt: Machine model: Freescale i.MX7 SabreSD Board
> [    0.000000] Memory policy: Data cache writealloc
> [    0.000000] cma: Reserved 64 MiB at 0xba000000
> [    0.000000] percpu: Embedded 14 pages/cpu @(ptrval) s36392 r0 d20952=
 u57344
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 2=
60608
> [    0.000000] Kernel command line: console=3Dttymxc0,115200n8 ip=3D11.=
0.0.4::11.0.0.2:255.0.0.0::eth0: root=3D/dev/mmcblk0p2 rootdelay=3D1
> [    0.000000] Dentry cache hash table entries: 131072 (order: 7, 52428=
8 bytes)
> [    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 =
bytes)
> [    0.000000] Memory: 950804K/1048576K available (10240K kernel code, =
450K rwdata, 2188K rodata, 1024K init, 7788K bss, 32236K reserved, 65536K=
 cma-reserved, 196196K highmem)
> [    0.000000] Virtual kernel memory layout:
> [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
> [    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
> [    0.000000]     vmalloc : 0xf0800000 - 0xff800000   ( 240 MB)
> [    0.000000]     lowmem  : 0xc0000000 - 0xf0000000   ( 768 MB)
> [    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
> [    0.000000]       .text : 0x(ptrval) - 0x(ptrval)   (11232 kB)
> [    0.000000]       .init : 0x(ptrval) - 0x(ptrval)   (1024 kB)
> [    0.000000]       .data : 0x(ptrval) - 0x(ptrval)   ( 451 kB)
> [    0.000000]        .bss : 0x(ptrval) - 0x(ptrval)   (7789 kB)
> [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D=
2, Nodes=3D1
> [    0.000000] Running RCU self tests
> [    0.000000] Hierarchical RCU implementation.
> [    0.000000]  RCU event tracing is enabled.
> [    0.000000]  RCU lockdep checking is enabled.
> [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> [    0.000000]  Offload RCU callbacks from CPUs: (none).
> [    0.000000] arch_timer: cp15 timer(s) running at 8.00MHz (virt).
> [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff ma=
x_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
> [    0.000009] sched_clock: 56 bits at 8MHz, resolution 125ns, wraps ev=
ery 2199023255500ns
> [    0.000033] Switching to timer-based delay loop, resolution 125ns
> [    0.000545] Switching to timer-based delay loop, resolution 41ns
> [    0.000574] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps ev=
ery 89478484971ns
> [    0.000601] clocksource: mxc_timer1: mask: 0xffffffff max_cycles: 0x=
ffffffff, max_idle_ns: 79635851949 ns
> [    0.001981] Console: colour dummy device 80x30
> [    0.002013] Lock dependency validator: Copyright (c) 2006 Red Hat, I=
nc., Ingo Molnar
> [    0.002032] ... MAX_LOCKDEP_SUBCLASSES:  8
> [    0.002050] ... MAX_LOCK_DEPTH:          48
> [    0.002068] ... MAX_LOCKDEP_KEYS:        8191
> [    0.002086] ... CLASSHASH_SIZE:          4096
> [    0.002104] ... MAX_LOCKDEP_ENTRIES:     32768
> [    0.002122] ... MAX_LOCKDEP_CHAINS:      65536
> [    0.002140] ... CHAINHASH_SIZE:          32768
> [    0.002158]  memory used by lock dependency info: 4655 kB
> [    0.002176]  per task-struct memory footprint: 1536 bytes
> [    0.002230] Calibrating delay loop (skipped), value calculated using=
 timer frequency.. 48.00 BogoMIPS (lpj=3D240000)
> [    0.002264] pid_max: default: 32768 minimum: 301
> [    0.002590] Mount-cache hash table entries: 2048 (order: 1, 8192 byt=
es)
> [    0.002622] Mountpoint-cache hash table entries: 2048 (order: 1, 819=
2 bytes)
> [    0.004407] CPU: Testing write buffer coherency: ok
> [    0.005308] CPU0: update cpu_capacity 1024
> [    0.005335] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
> [    0.006792] Setting up static identity map for 0x80100000 - 0x801000=
60
> [    0.007218] Hierarchical SRCU implementation.
> [    0.008853] smp: Bringing up secondary CPUs ...
> [    0.010740] smp: Brought up 1 node, 1 CPU
> [    0.010766] SMP: Total of 1 processors activated (48.00 BogoMIPS).
> [    0.010786] CPU: All CPU(s) started in SVC mode.
> [    0.012748] devtmpfs: initialized
> ...
>=20
> I was expecting both cores to be enabled at least by the kernel.
>=20
> Does anyone had the same problem ?

Yea, I have same problem, but no time to investigate it.
@Lukas, do you know any thing about it?

--=20
Regards,
Oleksij


--eXbcqAgd7y2u88pagV4TvN7ogMZuvuWc9--

--OUQcfTMHt4TAhFHniqqe6cv3GWG2SznTd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQRXepfNdOKCSzfa+2sfAia5GSZtaQUCW07ykAAKCRAfAia5GSZt
aeD0AP9kblR5oP1UFlaHD+wylxq2e4WnMo9WJ4GwVjylOczUDAD/bG5Up0cNtikE
73qxCzVBDhb34eIkTcINyB5JF/WvMXU=
=zCtl
-----END PGP SIGNATURE-----

--OUQcfTMHt4TAhFHniqqe6cv3GWG2SznTd--


--===============6373125661930449535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6373125661930449535==--
