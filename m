Delivery-date: Wed, 15 Jun 2022 10:26:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1OMP-002rXW-Gi
	for lore@lore.pengutronix.de; Wed, 15 Jun 2022 10:26:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1OMP-0006Cx-1S
	for lore@pengutronix.de; Wed, 15 Jun 2022 10:26:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mdfq82Tx4+OArVp7Do0gXuGTrZ3lw3Yu4oZ92+5HP6M=; b=jNbH36t+unT2O0dHiXlBZ9txdY
	jjbuTv2utJ86zcrIJoQuOqfR2hgHFYy4Y9h1YAJahcFisLXnYryAQHToV/UOdQeLK5sUP1wDvnSMf
	KWRIsNHLbi7rHHw84RNbtXbiIRoW/y5JLo31GnYdxBo2HIJnLbGpAKPOEeHDDwhupg7Tp/XUxpjZI
	UG7O/3Z6hLJlSSUkD553JFPjWROrQfOlboxjmu8htdO8A+JMrYyoPWYXt2asOY3Lp/zeAbZAqcgUS
	JbAYVn/eSEuFSvF+cUsT7cvMOefH7W51/l97V8ShlfvJceG+3aF2Mei1UOVwn7mM7tzQuOIDA7Ub6
	Aq9tpiaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1OKq-00DEVT-FD; Wed, 15 Jun 2022 08:25:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1OKl-00DETn-2H
	for barebox@lists.infradead.org; Wed, 15 Jun 2022 08:25:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o1OKi-0005sh-6z; Wed, 15 Jun 2022 10:25:00 +0200
Message-ID: <e0733f0d-b6be-9e4c-1fec-24928c67fe14@pengutronix.de>
Date: Wed, 15 Jun 2022 10:24:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: =?UTF-8?Q?Daniel_Br=c3=a1t?= <danek.brat@gmail.com>,
 barebox@lists.infradead.org
References: <20220611182828.16271-1-danek.brat@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220611182828.16271-1-danek.brat@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_012503_326247_5BC98235 
X-CRM114-Status: GOOD (  27.46  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: DTS: make rpi3/4 use pl011 uart as primary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Daniel,

On 11.06.22 20:28, Daniel Brát wrote:
> When the videocore first-stage bootloader finds 'dtoverlay=disable-bt' in the
> 'config.txt', asides from applying said overlay, it also disables fixed
> clock for the vpu, which miniuart requires to calculate correct baudrate,
> rendering it non-functional. This can be fixed by adding 'core_freq=250'
> to the config, but since barebox has drivers for the pl011 full-fledged UART,
> lets just make barebox use it instead.

For me on the Raspberry Pi 4 64-bit, boot rpi is now silent
with this patch applied.

I have

  enable_uart=1
  uart_2ndstage=1
  arm_64bit=1
  [pi4]
  arm_boost=1

in my config.txt. Boot log below. Any ideas?

Booting entry 'rpi'
Adding "earlycon=pl011,0xfe201000,115200n8" to Kernel commandline

Loading GZIP compressed '/boot/kernel8.img'
Adding "earlycon=pl011,0xfe201000,115200n8" to Kernel commandline

Loading ARM aarch64 Linux image '/tmp/bootm-compressed-6504dc00'
Loading devicetree from '/vc.dtb'
commandline: earlycon=pl011,0xfe201000,115200n8   coherent_pool=1M 8250.nr_uarts=1 snd_bcm2835.enable_compat_alsa=0 snd_bcm2835.enable_hdmi=1  smsc95xx.macaddr=DC:A6:32:44:7E:4C vc_mem.mem_base=0x3ec00000 vc_mem.mem_size=0x40000000  console=ttyS0,115200 console=tty1 root=PARTUUID=286db7ac-02 rootfstype=ext4 fsck.repair=yes rootwait
Loaded kernel to 0x00200000, devicetree at 0x017f0000
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd083]
[    0.000000] Linux version 5.15.32-v8+ (dom@buildbot) (aarch64-linux-gnu-gcc-8 (Ubuntu/Linaro 8.4.0-3ubuntu1) 8.4.0, GNU ld (GNU Binutils for Ubuntu) 2.34) #1538 SMP PREEMPT Thu Mar 31 19:40:39 BST 2022
[    0.000000] random: fast init done
[    0.000000] Machine model: Raspberry Pi 4 Model B Rev 1.1
[    0.000000] earlycon: pl11 at MMIO 0x00000000fe201000 (options '115200n8')
[    0.000000] printk: bootconsole [pl11] enabled
[    0.000000] efi: UEFI not found.
[    0.000000] Reserved memory: created CMA memory pool at 0x000000000ac00000, size 320 MiB
[    0.000000] OF: reserved mem: initialized node linux,cma, compatible id shared-dma-pool
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000000000000-0x000000003b3fffff]
[    0.000000]   DMA32    empty
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x000000003b3fffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x000000003b3fffff]
[    0.000000] percpu: Embedded 28 pages/cpu s77144 r8192 d29352 u114688
[    0.000000] Detected PIPT I-cache on CPU0
[    0.000000] CPU features: detected: Spectre-v2
[    0.000000] CPU features: detected: Spectre-v4
[    0.000000] CPU features: detected: Spectre-BHB
[    0.000000] CPU features: detected: ARM errata 1165522, 1319367, or 1530923
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 238896
[    0.000000] Kernel command line: earlycon=pl011,0xfe201000,115200n8   coherent_pool=1M 8250.nr_uarts=1 snd_bcm2835.enable_compat_alsa=0 snd_bcm2835.enable_hdmi=1  smsc95xx.macaddr=DC:A6:32:44:7E:4C vc_mem.mem_base=0x3ec00000 vc_mem.mem_size=0x40000000  console=ttyS0,115200 console=tty1 root=PARTUUID=286db7ac-02 rootfstype=ext4 fsck.repair=yes rootwait
[    0.000000] Dentry cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.000000] Inode-cache hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 599928K/970752K available (11456K kernel code, 1962K rwdata, 4144K rodata, 3776K init, 964K bss, 43144K reserved, 327680K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] ftrace: allocating 37889 entries in 149 pages
[    0.000000] ftrace: allocated 149 pages with 4 groups
[    0.000000] trace event string verifier disabled
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu:     RCU event tracing is enabled.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=4.
[    0.000000]  Trampoline variant of Tasks RCU enabled.
[    0.000000]  Rude variant of Tasks RCU enabled.
[    0.000000]  Tracing variant of Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] Root IRQ handler: gic_handle_irq
[    0.000000] GIC: Using split EOI/Deactivate mode
[    0.000000] irq_brcmstb_l2: registered L2 intc (/soc/interrupt-controller@7ef00100, parent irq: 10)
[    0.000000] random: get_random_bytes called from start_kernel+0x510/0x6f8 with crng_init=1
[    0.000000] arch_timer: cp15 timer(s) running at 54.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0xc743ce346, max_idle_ns: 440795203123 ns
[    0.000001] sched_clock: 56 bits at 54MHz, resolution 18ns, wraps every 4398046511102ns
[    0.008323] Console: colour dummy device 80x25
[    0.012819] printk: console [tty1] enabled
[    0.016958] printk: bootconsole [pl11] disabled

> Signed-off-by: Daniel Brát <danek.brat@gmail.com>
> ---
>  arch/arm/dts/bcm2711-rpi-4.dts       |  8 +-------
>  arch/arm/dts/bcm2837-rpi-3.dts       |  2 ++
>  arch/arm/dts/rpi-use-pl011-uart.dtsi | 24 ++++++++++++++++++++++++
>  3 files changed, 27 insertions(+), 7 deletions(-)
>  create mode 100644 arch/arm/dts/rpi-use-pl011-uart.dtsi
> 
> diff --git a/arch/arm/dts/bcm2711-rpi-4.dts b/arch/arm/dts/bcm2711-rpi-4.dts
> index 3c0caa73f..e082ad868 100644
> --- a/arch/arm/dts/bcm2711-rpi-4.dts
> +++ b/arch/arm/dts/bcm2711-rpi-4.dts
> @@ -9,10 +9,4 @@
>  	status = "disabled";
>  };
>  
> -&uart1 {
> -	/* VPU core clock is reported at 200MHz, but needs to be 500Mhz
> -	 * for ns16550 driver to set correct baudrate. Until that's
> -	 * figured out, hardcode clock frequency to the expected value
> -	 */
> -	clock-frequency = <500000000>;
> -};
> +#include "rpi-use-pl011-uart.dtsi"
> diff --git a/arch/arm/dts/bcm2837-rpi-3.dts b/arch/arm/dts/bcm2837-rpi-3.dts
> index e82d518fa..6af9e9d7c 100644
> --- a/arch/arm/dts/bcm2837-rpi-3.dts
> +++ b/arch/arm/dts/bcm2837-rpi-3.dts
> @@ -7,3 +7,5 @@
>  &sdhci {
>  	status = "disabled";
>  };
> +
> +#include "rpi-use-pl011-uart.dtsi"
> diff --git a/arch/arm/dts/rpi-use-pl011-uart.dtsi b/arch/arm/dts/rpi-use-pl011-uart.dtsi
> new file mode 100644
> index 000000000..7c75b07f8
> --- /dev/null
> +++ b/arch/arm/dts/rpi-use-pl011-uart.dtsi
> @@ -0,0 +1,24 @@
> +/* https://www.raspberrypi.com/documentation/computers/configuration.html#primary-and-secondary-uart */
> +
> +/* Makes barebox use pl011 uart as primary */
> +
> +&uart1 {
> +        status = "disabled";
> +};
> +
> +&uart0 {
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&uart0_gpio14>;
> +        status = "okay";
> +};
> +
> +/delete-node/ &bt;
> +
> +&{/aliases} {
> +        serial0 = &uart0;
> +        serial1 = &uart1;
> +};
> +
> +&{/chosen} {
> +        stdout-path = "/serial0:115200n8";
> +};


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


