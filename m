Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RENAM-0005Ke-1p
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 15:25:52 +0000
Date: Thu, 13 Oct 2011 17:25:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111013152547.GT13898@pengutronix.de>
References: <CAGiJk9ePXFCwosqXUtU9yzGPmmZ5O6R_9gFtJXnJ9=DUnCpOxg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGiJk9ePXFCwosqXUtU9yzGPmmZ5O6R_9gFtJXnJ9=DUnCpOxg@mail.gmail.com>
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
Subject: Re: Booting Pandaboard from SD card
To: Samuel Stirtzel <s.stirtzel@googlemail.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 13, 2011 at 10:49:30AM +0200, Samuel Stirtzel wrote:
> Hi,
> currently I try to get a Pandaboard to boot out of Barebox, so far I
> got Barebox up and running.
> 
> 
> For testing purpose I'd like to boot from a SD card, optimal would be
> if I could set up the card like the description in the Omappedia
> tutorial [1].
> Is there a tutorial how to set up barebox to boot from SD cards?
> 
> 
> What I already tried:
> 
> In the configuration file from arch/arm/boards/panda/env is the
> description for a network boot configuration,
> I used this file to start out and wanted to boot from the barebox prompt.
> 
> Barebox is build from my toolchain and i copy the MLO file, the
> barebox.bin and the bareboxenv file to the boot partition of the card.
> For convenience I currently use a precompiled MLO that has been made
> for u-boot thus I just renamed the barebox.bin file to u-boot.bin.
> 
> On startup the following messages were displayed:
> -
> Texas Instruments X-Loader 1.5.1 (Sep  6 2011 - 13:37:48)
> Reading boot sector
> Loading u-boot.bin from mmc
> 
> 
> barebox 2011.10.0 (Oct 13 2011 - 09:45:17)
> 
> Board: Texas Instrument's Panda
> PandaBoard Revision: 003
> ehci@ehci0: USB EHCI 1.00
> Malloc space: 0x8d000000 -> 0x8f000000 (size 32 MB)
> Stack space : 0x8cff8000 -> 0x8d000000 (size 32 kB)
> running /env/bin/init...
> not found
> -
> For me it looks like i forgot to copy a file or something, any advice?

I just compiled the current master branch with panda_defconfig and this
does not happen on my board. Instead I get a null pointer exception in
the mmc driver. I just sent out a patch which fixes this.

Have you changed your config?

> 
> 
> Although booting the uImage with bootm looks ok it won't work, the
> following message was displayed:
> -
> Verifying Checksum ... OK
>    Image Name:   Angstrom/2.6.35.7/omap4430-panda
>    Image Type:   ARM Linux Kernel Image (uncompressed)
>    Data Size:    3688408 Bytes =  3.5 MB
>    Load Address: 80008000
>    Entry Point:  80008000
> OK
> 
> Starting kernel ...
> 
> commandline: <NULL>
> arch_number: 2791
> Uncompressing Linux... done, booting the kernel.

Does not work for me aswell, although with a current v3.1-rc9 kernel.
Here's what I get with earlyprintk:

Uncompressing Linux... done, booting the kernel.
[    0.000000] Linux version 3.1.0-rc9 (sha@dude) (gcc version 4.5.2 (OSELAS.Toolchain-2011.03.1) ) #100 SMP Thu Oct 13 17:15:10 CEST 2011
[    0.000000] CPU: ARMv7 Processor [411fc092] revision 2 (ARMv7), cr=10c53c7f
[    0.000000] CPU: VIPT nonaliasing data cache, VIPT aliasing instruction cache
[    0.000000] Machine: OMAP4 Panda board
[    0.000000] bootconsole [earlycon0] enabled
[    0.000000] Truncating RAM at 80000000-bfffffff to -afffffff (vmalloc region overlap).
[    0.000000] Memory policy: ECC disabled, Data cache writealloc
[    0.000000] OMAP4430 ES2.1
[    0.000000] SRAM: Mapped pa 0x40300000 to va 0xfe400000 size: 0xe000
[    0.000000] powerdomain: waited too long for powerdomain dss_pwrdm to complete transition
[    0.000000] PERCPU: Embedded 8 pages/cpu @c11d2000 s10112 r8192 d14464 u32768
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 195072
[    0.000000] Kernel command line: console=ttyO2,115200 earlyprintk ip=dhcp root=/dev/nfs nfsroot=:/path/to/nfs/root,v3,tcp noinitrd
[    0.000000] PID hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
[    0.000000] Memory: 768MB = 768MB total
[    0.000000] Memory: 767332k/767332k available, 19100k reserved, 0K highmem
[    0.000000] Virtual kernel memory layout:
[    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
[    0.000000]     fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
[    0.000000]     DMA     : 0xffc00000 - 0xffe00000   (   2 MB)
[    0.000000]     vmalloc : 0xf0800000 - 0xf8000000   ( 120 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xf0000000   ( 768 MB)
[    0.000000]     modules : 0xbf000000 - 0xc0000000   (  16 MB)
[    0.000000]       .text : 0xc0008000 - 0xc05a05ec   (5730 kB)
[    0.000000]       .init : 0xc05a1000 - 0xc05ea780   ( 294 kB)
[    0.000000]       .data : 0xc05ec000 - 0xc066f650   ( 526 kB)
[    0.000000]        .bss : 0xc066f674 - 0xc0bc46d4   (5461 kB)
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
[    0.135498] Security Framework initialized
[    0.140075] Mount-cache hash table entries: 512
[    0.149627] CPU: Testing write buffer coherency: ok
[    0.155822] Calibrating local timer... 292.80MHz.
[    0.206359] L310 cache controller enabled
[    0.210571] l2x0: 16 ways, CACHE_ID 0x410000c4, AUX_CTRL 0x7e470000, Cache size: 1048576 B
[    0.222747] CPU1: Booted secondary processor
[    0.222778] CPU1: Unknown IPI message 0x1
[    0.252319] Brought up 2 CPUs
[    0.264129] SMP: Total of 2 processors activated (2359.07 BogoMIPS).
[    0.282196] omap_hwmod: l3_div_ck: missing clockdomain for l3_div_ck.
[    0.292572] omap_hwmod: dmm: _wait_target_disable failed
[    0.300781] omap_hwmod: emif_fw: _wait_target_disable failed
[    0.309356] omap_hwmod: l3_main_1: _wait_target_disable failed
[    0.318115] omap_hwmod: l3_main_2: _wait_target_disable failed
[    0.326873] omap_hwmod: l4_abe: _wait_target_disable failed
[    0.335327] omap_hwmod: l4_cfg: _wait_target_disable failed
[    0.343811] omap_hwmod: l4_per: _wait_target_disable failed
[    0.352783] omap_hwmod: l4_wkup: _wait_target_disable failed
[    0.361358] omap_hwmod: dma_system: _wait_target_disable failed
[    0.370269] omap_hwmod: dss_core: _wait_target_disable failed
[    0.378936] omap_hwmod: dss_dispc: _wait_target_disable failed
[    0.387695] omap_hwmod: dss_dsi1: _wait_target_disable failed
[    0.396331] omap_hwmod: dss_dsi2: _wait_target_disable failed
[    0.405029] omap_hwmod: dss_hdmi: _wait_target_disable failed
[    0.413696] omap_hwmod: dss_rfbi: _wait_target_disable failed
[    0.422332] omap_hwmod: dss_venc: _wait_target_disable failed
[    0.432250] omap_hwmod: mailbox: _wait_target_disable failed
[    0.441192] omap_hwmod: spinlock: _wait_target_disable failed
[    0.452972] print_constraints: dummy: 
[    0.458374] NET: Registered protocol family 16
[    0.463745] GPMC revision 6.0
[   59.033691] INFO: rcu_sched_state detected stall on CPU 0 (t=7680 jiffies)

After this no more messages.

Haven't investigated further so far, but maybe the kernel expects some GPMC
registers to be set correctly.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
