Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RqjGU-00048r-63
 for barebox@lists.infradead.org; Fri, 27 Jan 2012 10:42:44 +0000
Date: Fri, 27 Jan 2012 11:42:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120127104228.GZ5446@pengutronix.de>
References: <CAAfyv35AujbBzsbYfEXx7fXm7NmdEg922Fc+Y3kSNqj4QtcJUw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAfyv35AujbBzsbYfEXx7fXm7NmdEg922Fc+Y3kSNqj4QtcJUw@mail.gmail.com>
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
Subject: Re: Pandaboard kernel 3.2.1 loaded from barebox
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jan 27, 2012 at 08:35:02AM +0100, Belisko Marek wrote:
> Hi,
> 
> I'm trying execute (stable 3.2.1 kernel) zImage for pandaboard but
> after command bootz boot/zImage it just stuck:
> barebox@Texas Instrument's Panda:/ bootz boot/zImage
> loaded zImage from boot/zImage with size 3314936
> commandline: console=ttyO2,115200
> arch_number: 2791
> Uncompressing Linux... done, booting the kernel.
> 
> Same with loadm uImage.
> I have DEBUG_LL enabled in kernel but no message so far after that.
> 
> Maybe this is not barebox bug just want to be sure ;).
> It's different platform but it's not related?
> http://lists.infradead.org/pipermail/barebox/2012-January/005923.html
> 
> version: barebox 2012.01.

Same here. enable earlyprintk in the kernel and pass earlyprintk on the
commandline, then you'll get the following. I don't know what's
happening here. It could be that the kernel makes some assumptions how
some hardware is initialized.

Sascha


barebox@Texas Instrument's Panda:/ boot
warning: No MAC address set. Using random address 82:CD:38:1E:06:1B
phy0: Link is up - 100/Full
T DHCP client bound to address 192.168.24.21
TFTP from server 192.168.23.2 ('sha-zImage-panda' -> '/image')
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        ##############################################################
booting kernel from /image
commandline: console=ttyO2,115200 earlyprintk ip=dhcp root=/dev/nfs nfsroot=:/home/sha/nfsroot/panda,v3,tcp noinitrd
arch_number: 2791
Uncompressing Linux... done, booting the kernel.
[    0.000000] Booting Linux on physical CPU 0
[    0.000000] Linux version 3.2.0 (sha@dude) (gcc version 4.5.2 (OSELAS.Toolchain-2011.03.1) ) #4 SMP Fri Jan 27 11:37:13 CET 2012
[    0.000000] CPU: ARMv7 Processor [411fc092] revision 2 (ARMv7), cr=10c53c7d
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
[    0.000000] Machine: OMAP4 Panda board
[    0.000000] bootconsole [earlycon0] enabled
[    0.000000] Truncating RAM at 80000000-bfffffff to -afffffff (vmalloc region overlap).
[    0.000000] Memory policy: ECC disabled, Data cache writealloc
[    0.000000] OMAP4430 ES2.1
[    0.000000] powerdomain: waited too long for powerdomain dss_pwrdm to complete transition
[    0.000000] PERCPU: Embedded 8 pages/cpu @c11f6000 s10112 r8192 d14464 u32768
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 195072
[    0.000000] Kernel command line: console=ttyO2,115200 earlyprintk ip=dhcp root=/dev/nfs nfsroot=:/home/sha/nfsroot/panda,v3,tcp noinitrd
[    0.000000] PID hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
[    0.000000] Memory: 768MB = 768MB total
[    0.000000] Memory: 767192k/767192k available, 19240k reserved, 0K highmem
[    0.000000] Virtual kernel memory layout:
[    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
[    0.000000]     fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
[    0.000000]     vmalloc : 0xf0800000 - 0xf8000000   ( 120 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xf0000000   ( 768 MB)
[    0.000000]     modules : 0xbf000000 - 0xc0000000   (  16 MB)
[    0.000000]       .text : 0xc0008000 - 0xc05c0288   (5857 kB)
[    0.000000]       .init : 0xc05c1000 - 0xc060d780   ( 306 kB)
[    0.000000]       .data : 0xc060e000 - 0xc0694950   ( 539 kB)
[    0.000000]        .bss : 0xc0694974 - 0xc0be8f00   (5458 kB)
[    0.000000] Hierarchical RCU implementation.
[    0.000000] NR_IRQS:410
[    0.000000] omap_hwmod: dpll_mpu_m2_ck: missing clockdomain for dpll_mpu_m2_ck.
[    0.000000] OMAP clockevent source: GPTIMER1 at 32768 Hz
[    0.000000] sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms
[    0.000000] Console: colour dummy device 80x30
[    0.000000] Lock dependency validator: Copyright (c) 2006 Red Hat, Inc., Ingo Molnar
[    0.000000] ... MAX_LOCKDEP_SUBCLASSES:  8
[    0.000000] ... MAX_LOCK_DEPTH:          48
[    0.000000] ... MAX_LOCKDEP_KEYS:        8191
[    0.000000] ... CLASSHASH_SIZE:          4096
[    0.000000] ... MAX_LOCKDEP_ENTRIES:     16384
[    0.000000] ... MAX_LOCKDEP_CHAINS:      32768
[    0.000000] ... CHAINHASH_SIZE:          16384
[    0.000000]  memory used by lock dependency info: 3695 kB
[    0.000000]  per task-struct memory footprint: 1152 bytes
[    0.056945] Calibrating delay loop... 1194.24 BogoMIPS (lpj=4665344)
[    0.129821] pid_max: default: 32768 minimum: 301
[    0.135437] Security Framework initialized
[    0.140014] Mount-cache hash table entries: 512
[    0.149475] CPU: Testing write buffer coherency: ok
[    0.155670] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
[    0.161712] Calibrating local timer... 292.71MHz.
[    0.206359] L310 cache controller enabled
[    0.210571] l2x0: 16 ways, CACHE_ID 0x410000c4, AUX_CTRL 0x7e470000, Cache size: 1048576 B
[    0.222778] CPU1: Booted secondary processor
[    0.252075] CPU1: thread -1, cpu 1, socket 0, mpidr 80000001
[    0.252105] CPU1: Unknown IPI message 0x1
[    0.252288] Brought up 2 CPUs
[    0.252319] SMP: Total of 2 processors activated (2359.07 BogoMIPS).
[    0.288604] omap_hwmod: l3_div_ck: missing clockdomain for l3_div_ck.
[    0.298919] omap_hwmod: dmm: _wait_target_disable failed
[    0.307128] omap_hwmod: emif_fw: _wait_target_disable failed
[    0.315704] omap_hwmod: l3_main_1: _wait_target_disable failed
[    0.324462] omap_hwmod: l3_main_2: _wait_target_disable failed
[    0.333251] omap_hwmod: l4_abe: _wait_target_disable failed
[    0.341735] omap_hwmod: l4_cfg: _wait_target_disable failed
[    0.350219] omap_hwmod: l4_per: _wait_target_disable failed
[    0.359222] omap_hwmod: l4_wkup: _wait_target_disable failed
[    0.367858] omap_hwmod: dma_system: _wait_target_disable failed
[    0.376800] omap_hwmod: dss_core: _wait_target_disable failed
[    0.385467] omap_hwmod: dss_dispc: _wait_target_disable failed
[    0.394226] omap_hwmod: dss_dsi1: _wait_target_disable failed
[    0.402893] omap_hwmod: dss_dsi2: _wait_target_disable failed
[    0.411560] omap_hwmod: dss_hdmi: _wait_target_disable failed
[    0.420257] omap_hwmod: dss_rfbi: _wait_target_disable failed
[    0.428924] omap_hwmod: dss_venc: _wait_target_disable failed
[    0.438873] omap_hwmod: mailbox: _wait_target_disable failed
[    0.447570] omap_hwmod: mcpdm: cannot be enabled (3)
[    0.455688] omap_hwmod: spinlock: _wait_target_disable failed
[    0.467590] print_constraints: dummy: 
[    0.472930] NET: Registered protocol family 16
[    0.478363] GPMC revision 6.0
[    0.481597] ------------[ cut here ]------------
[    0.486419] Kernel BUG at c05ca108 [verbose debug info unavailable]
[    0.492950] Internal error: Oops - undefined instruction: 0 [#1] SMP
[    0.499572] Modules linked in:
[    0.502807] CPU: 0    Not tainted  (3.2.0 #4)
[    0.507385] PC is at gpmc_init+0x1dc/0x2dc
[    0.511688] LR is at gpmc_init+0x1d4/0x2dc
[    0.515960] pc : [<c05ca108>]    lr : [<c05ca100>]    psr: a0000013
[    0.515991] sp : ef833f60  ip : 00000000  fp : 00ffffff
[    0.527954] r10: c0695000  r9 : c0695000  r8 : 00000000
[    0.533416] r7 : 00000078  r6 : fffffff0  r5 : c0694fdc  r4 : 00000000
[    0.540191] r3 : ef831380  r2 : 00000000  r1 : 00000450  r0 : c062a634
[    0.546997] Flags: NzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment kernel
[    0.554595] Control: 10c53c7d  Table: 8000404a  DAC: 00000017
[    0.560577] Process swapper/0 (pid: 1, stack limit = 0xef8322f8)
[    0.566833] Stack: (0xef833f60 to 0xef834000)
[    0.571411] 3f60: 00000000 00000000 c0695000 00000034 6d5f336c c0609f6c c0694980 ef832000
[    0.579925] 3f80: 00000000 00000000 00000000 c05c9f2c 00000000 c0008770 c009b038 c0617880
[    0.588409] 3fa0: 0000009f c05c9f2c 0000009f 00000013 00000000 35319174 00000039 00000000
[    0.596923] 3fc0: c066a85c c0609f6c c060a414 c0014354 00000013 00000000 00000000 00000000
[    0.605407] 3fe0: 00000000 c05c1870 ef831380 00000000 c05c17e4 c0014354 00000000 fffffff7
[    0.613922] [<c05ca108>] (gpmc_init+0x1dc/0x2dc) from [<c0008770>] (do_one_initcall+0x34/0x180)
[    0.622955] [<c0008770>] (do_one_initcall+0x34/0x180) from [<c05c1870>] (kernel_init+0x8c/0x138)
[    0.632110] [<c05c1870>] (kernel_init+0x8c/0x138) from [<c0014354>] (kernel_thread_exit+0x0/0x8)
[    0.641235] Code: e59f00e0 ebf93996 e3560000 aa000000 (e7f001f2) 
[    0.647644] ---[ end trace 1b75b31a2719ed1c ]---
[    0.652496] Kernel panic - not syncing: Attempted to kill init!
[    0.658691] CPU1: stopping
[    0.661590] [<c001a49c>] (unwind_backtrace+0x0/0xf4) from [<c00186ac>] (handle_IPI+0x11c/0x148)
[    0.670623] [<c00186ac>] (handle_IPI+0x11c/0x148) from [<c041899c>] (__irq_svc+0x3c/0xe0)
[    0.679138] [<c041899c>] (__irq_svc+0x3c/0xe0) from [<c00143c0>] (default_idle+0x30/0x38)
[    0.687652] [<c00143c0>] (default_idle+0x30/0x38) from [<c00145e8>] (cpu_idle+0xc0/0x104)
[    0.696136] [<c00145e8>] (cpu_idle+0xc0/0x104) from [<80411534>] (0x80411534)

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
