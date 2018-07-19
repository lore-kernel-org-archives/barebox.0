Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx011.vodafonemail.xion.oxcs.net ([153.92.174.89])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fgBbT-0001Mo-Hr
 for barebox@lists.infradead.org; Thu, 19 Jul 2018 16:16:33 +0000
Date: Thu, 19 Jul 2018 18:16:12 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <1371312986.8334.1532016972572@mail.vodafone.de>
In-Reply-To: <CAHQ1cqFTDWPCtc=fRXDqG5hFUkKQUuvg68w24X7a7aHBun6BAg@mail.gmail.com>
References: <461871869.117927.1531898866247@mail.vodafone.de>
 <CAHQ1cqFHRFYzKnjhD4-2+=-5dC8AGQNYKyuPZbwp8yWUauXAfw@mail.gmail.com>
 <743326560.1811.1531984611843@mail.vodafone.de>
 <CAHQ1cqFTDWPCtc=fRXDqG5hFUkKQUuvg68w24X7a7aHBun6BAg@mail.gmail.com>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: imx7d enable second core
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Andrey,

> On July 19, 2018 at 6:02 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
> 
> 
> On Thu, Jul 19, 2018 at 12:16 AM Giorgio Dal Molin
> <giorgio.nicole@arcor.de> wrote:
> >
> > Hi Andrey,
> >
> > thank you for your answer,
> >
> > > On July 18, 2018 at 6:54 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
> > >
> > >
> > > On Wed, Jul 18, 2018 at 12:28 AM Giorgio Dal Molin
> > > <giorgio.nicole@arcor.de> wrote:
> > > >
> > > > Hi all,
> > > >
> > > > I'm currently working with the imx7d sabre board from NXP.
> > > >
> > > > I have now a running barebox bootloader and a booting kernel.
> > > >
> > > > My problem is now that, apparently, only one core is active:
> > > >
> > > > ...
> > > > commandline: console=ttymxc0,115200n8 ip=11.0.0.4::11.0.0.2:255.0.0.0::eth0: root=/dev/mmcblk0p2 rootdelay=1
> > > > Starting kernel in secure mode
> > >
> > > AFAIK, this means that you are booting in secure mode and secure
> > > monitor code, which also implements PSCI needed for SMP to work, will
> > > _not_ be installed by Barebox. One way to fix this would be to set:
> > >
> > >  global.bootm.secure_state=nonsecure
> > >
> > > before booting Linux. Doing that I get:
> > >
> > > # lscpu -e
> > > CPU SOCKET CORE ONLINE MAXMHZ   MINMHZ
> > > 0   0      0    yes    996.0000 792.0000
> > > 1   0      1    yes    996.0000 792.0000
> > > #
> > >
> > > on my SabreSD board.
> > >
> > > Thanks,
> > > Andrey Smirnov
> > >
> >
> > yesterday I experimented a bit more with board + barebox + kernel
> > and found the following procedure that (almost) works:
> >
> >  - enable the PSCI support in barebox and kernel;
> >  - #define DEBUG in '<barebox>/arch/arm/cpu/psci.c' to have the command 'smc';
> >  - boot up barebox on the board, call 'smc -n' and start the kernel:
> >
> 
> Is there any particular reason you used a command meant for debugging
> instead of "global.bootm.secure_state=nonsecure", which is available
> without needing to do any source modification?

No particular reason, I had a problem and tried something...

> 
> > ...
> > Hit any key to stop autoboot:    4
> > imx7: / tftp karm
> > eth0: No MAC address set. Using random address 1a:4e:1f:63:ea:77
> > eth0: 1000Mbps full duplex link detected
> > T       [#################################################################]
> > imx7: / tftp darm
> >         [#################################################################]
> > imx7: / smc -n
> > imx7: / boot
> >
> > Loading ARM Linux zImage 'karm'
> > Loading devicetree from 'darm'
> > commandline: console=ttymxc0,115200n8 ip=11.0.0.4::11.0.0.2:255.0.0.0::eth0: root=/dev/mmcblk0p2 rootdelay=1
> > Starting kernel in secure mode
> > [    0.000000] Booting Linux on physical CPU 0x0
> > [    0.000000] Linux version 4.17.8-dirty (giorgio@BV_blfs) (gcc version 8.1.0 (OSELAS.Toolchain-2018.02.0)) #2 SMP Thu Jul 19 08:13:42 CEST 2018
> > [    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=10c5387d
> > [    0.000000] CPU: div instructions available: patching division code
> > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
> > [    0.000000] OF: fdt: Machine model: Freescale i.MX7 SabreSD Board
> > [    0.000000] Memory policy: Data cache writealloc
> > [    0.000000] cma: Reserved 64 MiB at 0xba000000
> > [    0.000000] psci: probing for conduit method from DT.
> > [    0.000000] psci: psci_get_version: called.
> > [    0.000000] psci: PSCIv1.0 detected in firmware.
> > [    0.000000] psci: Using standard PSCI v0.2 function IDs
> > [    0.000000] psci: MIGRATE_INFO_TYPE not supported.
> > [    0.000000] psci: SMC Calling Convention v1.0
> > [    0.000000] percpu: Embedded 14 pages/cpu @(ptrval) s36392 r0 d20952 u57344
> > [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 260608
> > [    0.000000] Kernel command line: console=ttymxc0,115200n8 ip=11.0.0.4::11.0.0.2:255.0.0.0::eth0: root=/dev/mmcblk0p2 rootdelay=1 video=mxsfb0:dev=hdmi,1024x768M@60
> > [    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
> > [    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
> > [    0.000000] Memory: 950776K/1048576K available (10240K kernel code, 473K rwdata, 2216K rodata, 1024K init, 7790K bss, 32264K reserved, 65536K cma-reserved, 196196K highmem)
> > [    0.000000] Virtual kernel memory layout:
> > [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
> > [    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
> > [    0.000000]     vmalloc : 0xf0800000 - 0xff800000   ( 240 MB)
> > [    0.000000]     lowmem  : 0xc0000000 - 0xf0000000   ( 768 MB)
> > [    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
> > [    0.000000]       .text : 0x(ptrval) - 0x(ptrval)   (11232 kB)
> > [    0.000000]       .init : 0x(ptrval) - 0x(ptrval)   (1024 kB)
> > [    0.000000]       .data : 0x(ptrval) - 0x(ptrval)   ( 474 kB)
> > [    0.000000]        .bss : 0x(ptrval) - 0x(ptrval)   (7791 kB)
> > [    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
> > [    0.000000] Running RCU self tests
> > [    0.000000] Hierarchical RCU implementation.
> > [    0.000000]  RCU event tracing is enabled.
> > [    0.000000]  RCU lockdep checking is enabled.
> > [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> > [    0.000000]  Offload RCU callbacks from CPUs: (none).
> > [    0.000000] arch_timer: cp15 timer(s) running at 8.00MHz (virt).
> > [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
> > [    0.000008] sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every 2199023255500ns
> > [    0.000032] Switching to timer-based delay loop, resolution 125ns
> > [    0.000546] Switching to timer-based delay loop, resolution 41ns
> > [    0.000575] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps every 89478484971ns
> > [    0.000602] clocksource: mxc_timer1: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79635851949 ns
> > [    0.002000] Console: colour dummy device 80x30
> > [    0.002032] Lock dependency validator: Copyright (c) 2006 Red Hat, Inc., Ingo Molnar
> > [    0.002051] ... MAX_LOCKDEP_SUBCLASSES:  8
> > [    0.002069] ... MAX_LOCK_DEPTH:          48
> > [    0.002087] ... MAX_LOCKDEP_KEYS:        8191
> > [    0.002104] ... CLASSHASH_SIZE:          4096
> > [    0.002122] ... MAX_LOCKDEP_ENTRIES:     32768
> > [    0.002140] ... MAX_LOCKDEP_CHAINS:      65536
> > [    0.002158] ... CHAINHASH_SIZE:          32768
> > [    0.002176]  memory used by lock dependency info: 4655 kB
> > [    0.002194]  per task-struct memory footprint: 1536 bytes
> > [    0.002247] Calibrating delay loop (skipped), value calculated using timer frequency.. 48.00 BogoMIPS (lpj=240000)
> > [    0.002281] pid_max: default: 32768 minimum: 301
> > [    0.002609] Mount-cache hash table entries: 2048 (order: 1, 8192 bytes)
> > [    0.002641] Mountpoint-cache hash table entries: 2048 (order: 1, 8192 bytes)
> > [    0.004422] CPU: Testing write buffer coherency: ok
> > [    0.005337] CPU0: update cpu_capacity 1024
> > [    0.005364] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
> > [    0.006831] Setting up static identity map for 0x80100000 - 0x80100060
> > [    0.007259] Hierarchical SRCU implementation.
> > [    0.008927] smp: Bringing up secondary CPUs ...
> > [    0.010632] psci: psci_cpu_on: called. cpuid: 0x00000001
> > [    0.010993] CPU1: update cpu_capacity 1024
> > [    0.011005] CPU1: thread -1, cpu 1, socket 0, mpidr 80000001
> > [    0.011622] smp: Brought up 1 node, 2 CPUs
> > [    0.011663] SMP: Total of 2 processors activated (96.00 BogoMIPS).
> > [    0.011682] CPU: All CPU(s) started in SVC mode.
> > [    0.013716] devtmpfs: initialized
> > ...
> >
> >
> > this way the kernel smp is able to start up the second core.
> > The problem that remains with this setup is that the CAAM crypto
> > coprocessor in the imx7 does not work anymore:
> >
> > ...
> > [    5.265081] mmc1: SDHCI controller on 30b50000.usdhc [30b50000.usdhc] using ADMA
> > [    5.308453] mmc2: SDHCI controller on 30b60000.usdhc [30b60000.usdhc] using ADMA
> > [    5.320799] caam 30900000.caam: Entropy delay = 3200
> > [    5.352668] caam 30900000.caam: failed to acquire DECO 0
> > [    5.358008] caam 30900000.caam: failed to instantiate RNG
> > [    5.366479] usbcore: registered new interface driver usbhid
> > [    5.372081] usbhid: USB HID core driver
> > ...
> 
> I've never used CAAM, so I am not sure what's going on, but my
> educated guess would that this might have to do with TrustZone
> permissions.

I also think so, the cores problem is independent from the CAAM one,
it just happens that when I have 2 cores the CAAM doesn't work...

The CAAM is usefull for me because it accelerates the random number
generation for /dev/random and that's good when you use the ssh daemon,
in userspace.

> 
> >
> > This is probably due to the 'secure mode' in which the kernel is now booting
> > but I need a bit more background knowledge about the PSCI in general to really
> > understand what's going on here.
> 
> You kernel was booting in 'secure mode' before, now it actually boots
> in 'nonsecure', but because you installed the monitor through a
> backdoor that log line still prints 'secure'.
> 

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
