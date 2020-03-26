Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx009.vodafonemail.xion.oxcs.net ([153.92.174.87])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHPeM-00076r-Ma
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 10:22:12 +0000
Received: from vsmx001.vodafonemail.xion.oxcs.net (unknown [192.168.75.191])
 by mta-5-out.mta.xion.oxcs.net (Postfix) with ESMTP id EF260159DD88
 for <barebox@lists.infradead.org>; Thu, 26 Mar 2020 10:22:00 +0000 (UTC)
Received: from [192.168.178.23] (unknown [95.156.200.64])
 by mta-5-out.mta.xion.oxcs.net (Postfix) with ESMTPA id 4978F159DD8B
 for <barebox@lists.infradead.org>; Thu, 26 Mar 2020 10:21:58 +0000 (UTC)
From: Giorgio <giorgio.nicole@arcor.de>
Message-ID: <c013449a-b775-b805-df78-48a908d506fb@arcor.de>
Date: Thu, 26 Mar 2020 11:21:53 +0100
MIME-Version: 1.0
Content-Language: en-US
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
Subject: imx7d dual core boot
To: barebox@lists.infradead.org

Hi,

I'm having problems booting a linux kernel image on an imx7d.

What I want is to boot in nonsecure mode and that the kernel enables the
second core with the PSCI.

What I see is that barebox crashes within the call to __mmu_cache_on()
in the file arch/arm/cpu/sm.c:

int armv7_secure_monitor_install(void)
{
...
	if (mmuon) {
		/*
		 * If the MMU was already turned on in secure mode, enable it in
		 * non-secure mode aswell
		 */
		__mmu_cache_on();
	}
...


As a workaround, if I comment the call to __mmu_cache_on(), the system
boots properly with 2 cores:

Loading ARM Linux zImage '/mnt/boot/kernel.img'
Loading devicetree from '/mnt/boot/devtree.dtb'
commandline: console=ttymxc5,115200n8 ip=::::gdm:eth0:off root=PARTUUID=37199a57-ec72-41f9-ab27-445329d1bd77 rootwait
Starting kernel in nonsecure mode
[    0.000000] 000: Booting Linux on physical CPU 0x0
[    0.000000] 000: Linux version 5.4.24-rt15-dirty (giorgio@BVblfs) (gcc version 9.2.1 20200110 (OSELAS.Toolchain 9.2.1)) #1 SMP PREEMPT_RT Fri Mar 13 17:25:51 CET 2020
[    0.000000] 000: CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=10c5387d
[    0.000000] 000: CPU: div instructions available: patching division code
[    0.000000] 000: CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
t[    0.000000] 000: Memory policy: Data cache writealloc
[    0.000000] 000: cma: Reserved 64 MiB at 0xfa000000
[    0.000000] 000: psci: probing for conduit method from DT.
[    0.000000] 000: psci: PSCIv1.0 detected in firmware.
[    0.000000] 000: psci: Using standard PSCI v0.2 function IDs
[    0.000000] 000: psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] 000: psci: SMC Calling Convention v1.0
[    0.000000] 000: percpu: Embedded 9 pages/cpu s15008 r0 d21856 u36864
[    0.000000] 000: Built 1 zonelists, mobility grouping on.  Total pages: 522751
[    0.000000] 000: Kernel command line: console=ttymxc5,115200n8 ip=::::gdm:eth0:off root=PARTUUID=37199a57-ec72-41f9-ab27-445329d1bd77 rootwait
[    0.000000] 000: Dentry cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.000000] 000: Inode-cache hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    0.000000] 000: mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] 000: Memory: 1997464K/2097148K available (9216K kernel code, 430K rwdata, 3100K rodata, 1024K init, 733K bss, 34148K reserved, 65536K cma-reserved, 1244448K highmem)
[    0.000000] 000: SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
[    0.000000] 000: rcu: Preemptible hierarchical RCU implementation.
[    0.000000] 000: rcu: 	RCU priority boosting: priority 1 delay 500 ms.
[    0.000000] 000: rcu: 	RCU_SOFTIRQ processing moved to rcuc kthreads.
[    0.000000] 000: 	No expedited grace period (rcu_normal_after_boot).
[    0.000000] 000: 	Tasks RCU enabled.
[    0.000000] 000: rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
[    0.000000] 000: NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
[    0.000000] 000: rcu: 	Offload RCU callbacks from CPUs: (none).
[    0.000000] 000: arch_timer: cp15 timer(s) running at 8.00MHz (virt).
[    0.000000] 000: clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
[    0.000001] 000: sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every 2199023255500ns
[    0.000013] 000: Switching to timer-based delay loop, resolution 125ns
[    0.000426] 000: Switching to timer-based delay loop, resolution 41ns
[    0.000438] 000: sched_clock: 32 bits at 24MHz, resolution 41ns, wraps every 89478484971ns
[    0.000450] 000: clocksource: mxc_timer1: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79635851949 ns
[    0.001597] 000: Console: colour dummy device 80x30
[    0.001642] 000: Calibrating delay loop (skipped), value calculated using timer frequency.. 48.00 BogoMIPS (lpj=240000)
[    0.001650] 000: pid_max: default: 32768 minimum: 301
[    0.001788] 000: Mount-cache hash table entries: 2048 (order: 1, 8192 bytes, linear)
[    0.001807] 000: Mountpoint-cache hash table entries: 2048 (order: 1, 8192 bytes, linear)
[    0.002631] 000: CPU: Testing write buffer coherency: ok
[    0.059991] 000: Setting up static identity map for 0x80100000 - 0x80100060
[    0.079972] 000: rcu: Hierarchical SRCU implementation.
[    0.160105] 000: smp: Bringing up secondary CPUs ...
[    0.280687] 000: smp: Brought up 1 node, 2 CPUs
[    0.280697] 000: SMP: Total of 2 processors activated (96.00 BogoMIPS).
[    0.280705] 000: CPU: All CPU(s) started in SVC mode.
[    0.281170] 000: devtmpfs: initialized
[    0.290961] 000: random: get_random_u32 called from bucket_table_alloc+0x58/0x14c with crng_init=0


giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
