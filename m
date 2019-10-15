Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKL97-0006ar-9N
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 11:37:47 +0000
Received: from [2001:67c:670:100:6a05:caff:fe2d:a9b1]
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1iKL93-00006y-V5
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 13:37:41 +0200
References: <1000448243.171040.1571138983215@mail.vodafone.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <e7508f1c-0f8f-0e2b-6694-4740cc598868@pengutronix.de>
Date: Tue, 15 Oct 2019 13:37:41 +0200
MIME-Version: 1.0
In-Reply-To: <1000448243.171040.1571138983215@mail.vodafone.de>
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
Subject: Re: imx7d enable second core
To: barebox@lists.infradead.org

On 10/15/19 1:29 PM, Giorgio Dal Molin wrote:
> Hi,
> 
> can anyone please confirm that a recent barebox version (v2019.10 or v2019.09)
> is able to boot a linux kernel so that it can enable the second cpu core ?

If you #define DEBUG in arch/arm/cpu/psci.c, a smc command is enabled that can
be used to test ARM_PSCI_0_2_CPU_ON. This might aid you in your debug effort.

Cheers
Ahmad

> It actually used to work in the past but now I only get one core running:
> 
> Loading ARM Linux zImage '/mnt/boot/kernel.img'
> Loading devicetree from '/mnt/boot/devtree.dtb'
> commandline: console=ttymxc0,115200n8 ip=11.0.0.4::11.0.0.2:255.0.0.0:armgdm:eth0: root=PARTUUID=abd2f9f6-88e5-4657-a5fb-aeb2cc6fde7e rootwait video=HDMI-A-1:1024x768M@60 console=tty1
> Starting kernel in nonsecure mode
> [    0.000000] 000: Booting Linux on physical CPU 0x0
> [    0.000000] 000: Linux version 5.2.19-rt11-00268-g0308d71d8410-dirty (giorgio@BVblfs) (gcc version 9.2.1 20190813 (OSELAS.Toolchain 9.2.1)) #1 SMP PREEMPT RT Thu Oct 10 07:50:01 CEST 2019
> [    0.000000] 000: CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=10c5387d
> [    0.000000] 000: CPU: div instructions available: patching division code
> [    0.000000] 000: CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
> [    0.000000] 000: OF: fdt: Machine model: Freescale i.MX7 SabreSD Board
> [    0.000000] 000: Memory policy: Data cache writealloc
> [    0.000000] 000: cma: Reserved 64 MiB at 0xac000000
> [    0.000000] 000: percpu: Embedded 10 pages/cpu s19296 r0 d21664 u40960
> [    0.000000] 000: Built 1 zonelists, mobility grouping on.  Total pages: 260608
> [    0.000000] 000: Kernel command line: console=ttymxc0,115200n8 ip=11.0.0.4::11.0.0.2:255.0.0.0:armgdm:eth0: root=PARTUUID=abd2f9f6-88e5-4657-a5fb-aeb2cc6fde7e rootwait video=HDMI-A-1:1024x768M@60 console=tty1
> [    0.000000] 000: Dentry cache hash table entries: 131072 (order: 8, 1048576 bytes)
> [    0.000000] 000: Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
> [    0.000000] 000: Memory: 958252K/1048576K available (9216K kernel code, 403K rwdata, 2308K rodata, 1024K init, 719K bss, 24788K reserved, 65536K cma-reserved, 261700K highmem)
> [    0.000000] 000: SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
> [    0.000000] 000: rcu: Preemptible hierarchical RCU implementation.
> [    0.000000] 000: rcu:        RCU priority boosting: priority 1 delay 500 ms.
> [    0.000000] 000: rcu:        RCU_SOFTIRQ processing moved to rcuc kthreads.
> [    0.000000] 000:     No expedited grace period (rcu_normal_after_boot).
> [    0.000000] 000:     Tasks RCU enabled.
> [    0.000000] 000: rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
> [    0.000000] 000: NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> [    0.000000] 000: rcu:        Offload RCU callbacks from CPUs: (none).
> [    0.000000] 000: arch_timer: cp15 timer(s) running at 8.00MHz (virt).
> [    0.000000] 000: clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
> [    0.000001] 000: sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every 2199023255500ns
> [    0.000012] 000: Switching to timer-based delay loop, resolution 125ns
> [    0.000433] 000: Switching to timer-based delay loop, resolution 41ns
> [    0.000445] 000: sched_clock: 32 bits at 24MHz, resolution 41ns, wraps every 89478484971ns
> [    0.000456] 000: clocksource: mxc_timer1: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79635851949 ns
> [    0.001625] 000: Console: colour dummy device 80x30
> [    0.001638] 000: printk: console [tty1] enabled
> [    0.001673] 000: Calibrating delay loop (skipped), value calculated using timer frequency.. 48.00 BogoMIPS (lpj=240000)
> [    0.001680] 000: pid_max: default: 32768 minimum: 301
> [    0.001816] 000: Mount-cache hash table entries: 2048 (order: 1, 8192 bytes)
> [    0.001833] 000: Mountpoint-cache hash table entries: 2048 (order: 1, 8192 bytes)
> [    0.002543] 000: CPU: Testing write buffer coherency: ok
> [    0.002896] 000: CPU0: update cpu_capacity 1024
> [    0.002908] 000: CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
> [    0.060000] 000: Setting up static identity map for 0x80100000 - 0x8010003c
> [    0.079971] 000: rcu: Hierarchical SRCU implementation.
> [    0.160105] 000: smp: Bringing up secondary CPUs ...
> [    0.280352] 000: smp: Brought up 1 node, 1 CPU
> [    0.280362] 000: SMP: Total of 1 processors activated (48.00 BogoMIPS).
> [    0.280370] 000: CPU: All CPU(s) started in SVC mode.
> [    0.281280] 000: devtmpfs: initialized
> 
> giorgio
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
