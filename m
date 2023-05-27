Delivery-date: Sat, 27 May 2023 07:38:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2md7-00FyvL-5f
	for lore@lore.pengutronix.de; Sat, 27 May 2023 07:38:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2md0-00049x-7k
	for lore@pengutronix.de; Sat, 27 May 2023 07:38:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QHFQcF4unrjG+t+cmWFw5FELW7edVaShBZhQuABWN5o=; b=lMteHjJTzoFpkxgGeArj02lJSQ
	TVuQZWjzJqJniTmbNIYfaXGlQSEqQwZduNmyJUuNUskXH36lNERYakCMeiy1mba4n9p7GsMEkjUAO
	CyRHrbmX3eigE/hNvV+begy/gK2Y5wv3DazrfZNNaMGRlNQhSYUzmJbVFs4qrxRtBOZ/Mvu3X/MzX
	l2nKqi73gU9/M5xjGVntJtcK7YPO57sM25iLvu4BukI9QwWIyTwdZOmFxLAlPow/z4d4ieW7+Wn9n
	RCzECcff4NxuQG4GIeALBXV+s7loLERZtimhkUh3sMYItoEZoJjkbhitsCNZFqvnkpFVOfFZngVCH
	/idW/PYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2map-004weA-34;
	Sat, 27 May 2023 05:35:57 +0000
Received: from vmse03.mailcluster.com.au ([2401:fc00:0:14::11])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2mae-004wbZ-2Q
	for barebox@lists.infradead.org;
	Sat, 27 May 2023 05:35:54 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
	by vmse03.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q2maI-0003jA-NN; Sat, 27 May 2023 15:35:32 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cpdesign.com.au; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=QHFQcF4unrjG+t+cmWFw5FELW7edVaShBZhQuABWN5o=; b=OpkXHD8VMQtYK1AmZy0+0MJ4BF
	2sDVI77E9UV/3QeQCweS4WY0fWdt+oOWD0tgj0bp0YZkY9owa7mL8fRrDuzXddUID5JJNzAzNNP0s
	TK2c1RBKqLTt3Hv4WZnbwxZd320PZsQ05gblYY7NoRiaVoHheKyTi7A/bvUbi6k9cfU9zzSx3+vym
	lHuiJriH+eYaRhcKgZg4yTl1KcxryAOraLhcpX5nQUZjFyMt+2zQWGk6H0V1sXpJErDpk8Gx9TV6y
	HqXCQOaO3mHOGlyJfHPi0l92OFbOYMkZZ2/0lPix7P7awMa/RsapAGRF26OtpAEF4OKQnAcoQmRLD
	oXHEL1LA==;
Received: from [61.68.58.122] (port=47978 helo=dev8.localnet)
	by vmcp03.web-servers.com.au with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q2maE-003xCe-0J;
	Sat, 27 May 2023 15:35:18 +1000
From: marc@cpdesign.com.au
To: marc@cpdesign.com.au, Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Sat, 27 May 2023 15:35:17 +1000
Message-ID: <3742527.kQq0lBPeGt@dev8>
In-Reply-To: <20230526113025.GT17518@pengutronix.de>
References: <10297393.nUPlyArG6x@dev8> <20230526113025.GT17518@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart3502212.iIbC2pHGDl"
Content-Transfer-Encoding: 7Bit
X-Authenticated-User: marc@cpdesign.com.au
X-Authenticator: dovecot_plain
X-Originating-IP: 116.90.56.28
X-SpamExperts-Domain: panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Username: 116.90.56.28
Authentication-Results: mailcluster.com.au; auth=pass smtp.auth=116.90.56.28@panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.07)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT8If2YiSeNHWJstTkdjQoAmPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5yQ5OBBfnbnKj20r+iK6rLw28vWQUsEtH559mNWcVqVdwYp
 5Zdq7VkIEqbEtCJeZyQ9Uwgb4ML3M5heYblSd5g3+paN0HV7QkKUmxjruYE2o+oSFEnLJ3qbZezm
 EhJ0DP916RgnrpWQC5Q9lQL6QHBHmYUtyoTYprJpCzREcptUL/Tg3XWabFrVhRao3feAgkypLfTU
 dZ+oNk+/lpbdzInB3zELnx/y7UeFfJNGrjEAG73vRKJzDf6dAdRhDPQmMnFYTBA8C/Z/F/ezSIiE
 STQL1Ka375mwjsGv8f6o3oxIMgZXTaHOP7oKW7n27myvseKRqlQE9b1hXhIRJ1bJW0V1UYfuzJ1m
 8O31zlHQ8Dw4NmzfO6ib3rryOBZGk86Mee0V0y2gRCOTX5pD+KY0/gGR7jWk+nQEeP30kvoXzMw1
 1b7903ETfxGdTzqYB3i+SeoCyMce+z0cRT/ZsBEFeJDE31/E3ahF5MMcDI7KdpjQKfiL+ZUHg7Te
 t0Foz0RWkOZm6rn+OTPG9HTQTkiIfXXjFsCJuVlVkChAavMv6VkLdtjlDHh8k6TTdHl8m1/8O/+B
 J3GMOLWW0/7Cm295vYiNXarWw0msIpiP72PJvaYvJUHli2RgsxeMt3UA0IHtyppRs5bEwTxljJkC
 cyrOiPtlzHsW3H+Vg1nLLk0TZvBkGLTjj4LomZkzN10sxLwP3Bt8iq7yK/AjK9Y1YqsLHr7y4Q+z
 8HkVHYPFDbqschOAY9rsciUDqPHTHOI2xaqp48dgC82uU08NxGNR3KHi/bccb/4ttomyEYNLNyBh
 NoBYNkzxPvX0BWpn7O7IBc7h4mYvOD+AJicbSXhISoB8hymuIsdwgtcrE8v5QGo9v59NVYfDOz/m
 /MfQgKj/R3Gi0y7d7yiYPi9DekXKba8/u/jEr1sQza9mle7ev8IXG78l8y54wU6rlnRRXVzT5oAr
 FOFbO43WCfpmojR/PeIXkLQCU3BjNUijoq4dbyFUJDtfvqGIlf3sj/kTlgYaNrsCKUdBpJTlKy6J
 u9rqcos7mbYP+f7o4ox8Zekjq9VSBeBGGqHYPB/ymXCm2fHak/TN8wuFkCW77QREQlWXRVjQapNS
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Troubles booting kernel with new imx8 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a multi-part message in MIME format.

--nextPart3502212.iIbC2pHGDl
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

Thanks for responses, some more info:
- imx8mp based system, 1Gb LPDDR, uses same PMIC as other boards (PCA9450)
- barebox master
- u-boot is NXP fork
- kernel is NXP fork, 5.15.31

> > I'm trying to get barebox going for a new imx8mp based board. I can
> > successfully power on and get to a barebox prompt etc and fiddle with
> > gpios, files on sd, memtest etc, but when booting to kernel it will hang.
> > Note though that the board boots ok with u-boot (using exact same kernel
> > image).
> Do you have an example crash dump? Does the kernel crash reproducibly or
> randomly?

It always hangs at the same point in the kernel boot sequence (see "startup-
log-barebox.txt"). You can also see "startup-log-u-boot.txt" for the output of 
a complete boot.

If i change some kernel config options the boot progresses further, and when 
CONFIG_ARM_IMX_CPUFREQ_DT=n and CONFIG_IMX_SDMA=n then it will get to systemd 
starting.

> 
> 
> > I'm trying to figure out what is different between booting via uboot and
> > barebox, I'm new to imx8 so have been going down a few rabbit holes...
> > 
> > Disabling various drivers (eg imx-cpufreq-dt) in the kernel will get past
> > the hang, but result in a crash later on in the boot sequence. Disabling
> > that may get further but will result in a crash somewhere else.
> > My instinct is that its something to do with sdma, but a lot of this is
> > still a black box to me.
> 
> SDMA is only used in few devices like UART, I2C, SPI and sound. Apart from
> sound all devices should work without SDMA, so you could disable the
> driver.

I was getting (after disabling some things in kernel) crash traces in 
sdma_transfer_init etc, which is what made me suspect it. (see startup-log-
barebox-after-kernel-change1.txt)
Disabling the driver does indeed avoid this crash.

> PMIC comes to my mind. Does it need some configuration?

The PMIC has the same register/value writes as in the u-boot version.

> Is the amount of memory detected correctly by barebox?

Barebox detects 1Gb, correct

I did a compare of the startup logs (The cuts are to remove the timestamps)
```kompare <(diff <(cut -c 15- startup-log-u-boot.txt) <(cut -c 15- startup-
log-barebox.txt))```

I noticed some differences in the 'reserved mem' at the start and the 'NUMA' 
early memory node ranges.

When booting from u-boot I get:
    [    0.000000] Reserved memory: created CMA memory pool at 
0x0000000060000000, size 512 MiB
    [    0.000000] OF: reserved mem: initialized node linux,cma, compatible id 
shared-dma-pool

But when booting from barebox:
     [    0.000000] OF: reserved mem: failed to allocate memory for node 
'linux,cma'
    [    0.000000] Reserved memory: created DMA memory pool at 
0x0000000055400000, size 1 MiB


For the early node ranges:
from u-boot:

[    0.000000] NUMA: NODE_DATA [mem 0x5fdba800-0x5fdbcfff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000040000000-0x000000007fffffff]
[    0.000000]   DMA32    empty
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000040000000-0x0000000054ffffff]
[    0.000000]   node   0: [mem 0x0000000055000000-0x000000005500ffff]
[    0.000000]   node   0: [mem 0x0000000055010000-0x00000000550fefff]
[    0.000000]   node   0: [mem 0x00000000550ff000-0x00000000550fffff]
[    0.000000]   node   0: [mem 0x0000000055100000-0x00000000553fffff]
[    0.000000]   node   0: [mem 0x0000000055400000-0x00000000554fffff]
[    0.000000]   node   0: [mem 0x0000000055500000-0x0000000055ffffff]
[    0.000000]   node   0: [mem 0x0000000058000000-0x000000007fffffff]


and from barebox:

[    0.000000] NUMA: NODE_DATA [mem 0x7fdaa800-0x7fdacfff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000040000000-0x000000007fffffff]
[    0.000000]   DMA32    empty
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000040000000-0x0000000054ffffff]
[    0.000000]   node   0: [mem 0x0000000055000000-0x000000005500ffff]
[    0.000000]   node   0: [mem 0x0000000055010000-0x00000000550fefff]
[    0.000000]   node   0: [mem 0x00000000550ff000-0x00000000550fffff]
[    0.000000]   node   0: [mem 0x0000000055100000-0x00000000553fffff]
[    0.000000]   node   0: [mem 0x0000000055400000-0x00000000554fffff]
[    0.000000]   node   0: [mem 0x0000000055500000-0x000000007fffffff]

Notably there is an range in the u-boot ranges which creates a gap from 
0x56000000 to 0x57ffffff (32Mb).

I'm wondering how this difference comes about when both bootloaders are 
booting the same devicetree and kernel image?

Cheers
Marc




--nextPart3502212.iIbC2pHGDl
Content-Disposition: attachment; filename="startup-log-barebox-after-kernel-change1.txt"
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; name="startup-log-barebox-after-kernel-change1.txt"

# After changing to CONFIG_ARM_IMX_CPUFREQ_DT=3Dn and recompiling kernel

>NOTICE:  BL31: v2.6(release):lf-5.15.32-2.0.0-0-gc6a19b1a3
NOTICE:  BL31: Built : 01:15:47, Feb 26 2023
>deep-probe: supported due to innovag,imx8mp-dtx
detected i.MX8MP revision 1.1
i.MX8MP unique ID: 538faea70002aaff
Switch to console [serial1]


barebox 2023.05.0-00156-g1de55c8ee950-dirty #33 Sat May 27 13:44:29 AEST 20=
23


Board: innovAg DTX
deep-probe: supported due to innovag,imx8mp-dtx
detected i.MX8MP revision 1.1
i.MX8MP unique ID: 538faea70002aaff
netconsole: registered as netconsole-1
imx-esdhc 30b40000.mmc@30b40000.of: Failed to get 'vmmc' regulator (ignored=
).
imx-esdhc 30b40000.mmc@30b40000.of: registered as mmc0
imx-esdhc 30b50000.mmc@30b50000.of: registered as mmc1
imx-esdhc 30b60000.mmc@30b60000.of: Failed to get 'vmmc' regulator (ignored=
).
imx-esdhc 30b60000.mmc@30b60000.of: registered as mmc2
malloc space: 0x5fefe780 -> 0x7fdfceff (size 511 MiB)
mmc1: detected SD card version 2.0
mmc1: registered mmc1

Hit m for menu or any to stop autoboot:    1
barebox@innovAg DTX:/ boot sd
Booting entry 'sd'
mounted /dev/mmc1.0 on /mnt/mmc1.0

Loading ARM aarch64 Linux image '/mnt/mmc1.0/Image'
Loading devicetree from '/mnt/mmc1.0/imx8mp-dtx.dtb'
commandline: console=3Dttymxc1,115200n8  root=3D/dev/mmcblk1p2 rootwait rw
Loaded kernel to 0x40000000, devicetree at 0x41f00000
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.15.32-00031-g5c988675671d (marc@dev8) (aarch=
64-poky-linux-gcc (GCC) 11.3.0, GNU ld (GNU Binutils) 2.38.202207083
[    0.000000] Machine model: innovAg DTX
[    0.000000] OF: reserved mem: failed to allocate memory for node 'linux,=
cma'
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000554000=
00, size 1 MiB
[    0.000000] OF: reserved mem: initialized node vdevbuffer@55400000, comp=
atible id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000810000=
00, size 256 MiB
[    0.000000] OF: reserved mem: initialized node audio@0x81000000, compati=
ble id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000910000=
00, size 1 MiB
[    0.000000] OF: reserved mem: initialized node mic_rpmsg@91000000, compa=
tible id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000943000=
00, size 1 MiB
[    0.000000] OF: reserved mem: initialized node vdev0buffer@94300000, com=
patible id shared-dma-pool
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem 0x0000000040000000-0x000000007ff=
fffff]
[    0.000000] NUMA: NODE_DATA [mem 0x7fdab800-0x7fdadfff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000040000000-0x000000007fffffff]
[    0.000000]   DMA32    empty
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000040000000-0x0000000054ffffff]
[    0.000000]   node   0: [mem 0x0000000055000000-0x000000005500ffff]
[    0.000000]   node   0: [mem 0x0000000055010000-0x00000000550fefff]
[    0.000000]   node   0: [mem 0x00000000550ff000-0x00000000550fffff]
[    0.000000]   node   0: [mem 0x0000000055100000-0x00000000553fffff]
[    0.000000]   node   0: [mem 0x0000000055400000-0x00000000554fffff]
[    0.000000]   node   0: [mem 0x0000000055500000-0x000000007fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000040000000-0x000000007ffff=
fff]
[    0.000000] cma: Reserved 32 MiB at 0x000000007c000000
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: SMC Calling Convention v1.2
[    0.000000] percpu: Embedded 19 pages/cpu s40664 r8192 d28968 u77824
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] CPU features: detected: ARM erratum 845719
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 258048
[    0.000000] Policy zone: DMA
[    0.000000] Kernel command line: console=3Dttymxc1,115200n8  root=3D/dev=
/mmcblk1p2 rootwait rw
[    0.000000] Dentry cache hash table entries: 131072 (order: 8, 1048576 b=
ytes, linear)
[    0.000000] Inode-cache hash table entries: 65536 (order: 7, 524288 byte=
s, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 962200K/1048576K available (18432K kernel code, 1886=
K rwdata, 7392K rodata, 3392K init, 508K bss, 53608K reserved, 3276)
[    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, N=
odes=3D1
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu:     RCU event tracing is enabled.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=3D256 to nr_cpu_i=
ds=3D4.
[    0.000000]  Trampoline variant of Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 2=
5 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_ids=
=3D4
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 160 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] Root IRQ handler: gic_handle_irq
[    0.000000] GICv3: 16 PPIs implemented
[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000388800=
00
[    0.000000] ITS: No ITS available, not enabling LPIs
[    0.000000] random: get_random_bytes called from start_kernel+0x474/0x65=
8 with crng_init=3D0
[    0.000000] arch_timer: cp15 timer(s) running at 8.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cy=
cles: 0x1d854df40, max_idle_ns: 440795202120 ns
[    0.000000] sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every =
2199023255500ns
[    0.000410] Console: colour dummy device 80x25
[    0.000470] Calibrating delay loop (skipped), value calculated using tim=
er frequency.. 16.00 BogoMIPS (lpj=3D32000)
[    0.000483] pid_max: default: 32768 minimum: 301
[    0.000539] LSM: Security Framework initializing
[    0.000590] Mount-cache hash table entries: 2048 (order: 2, 16384 bytes,=
 linear)
[    0.000603] Mountpoint-cache hash table entries: 2048 (order: 2, 16384 b=
ytes, linear)
[    0.001732] rcu: Hierarchical SRCU implementation.
[    0.003635] smp: Bringing up secondary CPUs ...
[    0.004046] Detected VIPT I-cache on CPU1
[    0.004071] GICv3: CPU1: found redistributor 1 region 0:0x00000000388a00=
00
[    0.004106] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.004524] Detected VIPT I-cache on CPU2
[    0.004543] GICv3: CPU2: found redistributor 2 region 0:0x00000000388c00=
00
[    0.004563] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.004927] Detected VIPT I-cache on CPU3
[    0.004946] GICv3: CPU3: found redistributor 3 region 0:0x00000000388e00=
00
[    0.004966] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.005018] smp: Brought up 1 node, 4 CPUs
[    0.005044] SMP: Total of 4 processors activated.
[    0.005052] CPU features: detected: 32-bit EL0 Support
[    0.005056] CPU features: detected: 32-bit EL1 Support
[    0.005064] CPU features: detected: CRC32 instructions
[    0.012126] CPU: All CPU(s) started at EL2
[    0.012151] alternatives: patching kernel code
[    0.013203] devtmpfs: initialized
[    0.020961] KASLR disabled due to lack of seed
[    0.021096] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffffff=
f, max_idle_ns: 7645041785100000 ns
[    0.021113] futex hash table entries: 1024 (order: 4, 65536 bytes, linea=
r)
[    0.022418] pinctrl core: initialized pinctrl subsystem
[    0.023229] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.028010] DMA: preallocated 128 KiB GFP_KERNEL pool for atomic allocat=
ions
[    0.028376] DMA: preallocated 128 KiB GFP_KERNEL|GFP_DMA pool for atomic=
 allocations
[    0.028706] DMA: preallocated 128 KiB GFP_KERNEL|GFP_DMA32 pool for atom=
ic allocations
[    0.028792] audit: initializing netlink subsys (disabled)
[    0.028979] audit: type=3D2000 audit(0.028:1): state=3Dinitialized audit=
_enabled=3D0 res=3D1
[    0.029514] thermal_sys: Registered thermal governor 'step_wise'
[    0.029519] thermal_sys: Registered thermal governor 'power_allocator'
[    0.029791] cpuidle: using governor menu
[    0.029969] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.030050] ASID allocator initialised with 65536 entries
[    0.031077] Serial: AMBA PL011 UART driver
[    0.031135] imx mu driver is registered.
[    0.031156] imx rpmsg driver is registered.
[    0.040071] imx8mp-pinctrl 30330000.pinctrl: initialized IMX pinctrl dri=
ver
[    0.047833] platform 32c00000.bus:ldb@32ec005c: Fixing up cyclic depende=
ncy with 32e90000.lcd-controller
[    0.056545] platform lvds0_panel: Fixing up cyclic dependency with 32c00=
000.bus:ldb@32ec005c
[    0.070980] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.070997] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.071004] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.071012] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.072014] cryptd: max_cpu_qlen set to 1000
[    0.075269] iommu: Default domain type: Translated
[    0.075283] iommu: DMA domain TLB invalidation policy: strict mode
[    0.075428] vgaarb: loaded
[    0.075686] SCSI subsystem initialized
[    0.075970] usbcore: registered new interface driver usbfs
[    0.076006] usbcore: registered new interface driver hub
[    0.076034] usbcore: registered new device driver usb
[    0.076888] mc: Linux media interface: v0.10
[    0.076911] videodev: Linux video capture interface: v2.00
[    0.076983] pps_core: LinuxPPS API ver. 1 registered
[    0.076989] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo =
Giometti <giometti@linux.it>
[    0.077005] PTP clock support registered
[    0.077158] EDAC MC: Ver: 3.0.0
[    0.078118] FPGA manager framework
[    0.078190] Advanced Linux Sound Architecture Driver Initialized.
[    0.078661] Bluetooth: Core ver 2.22
[    0.078687] NET: Registered PF_BLUETOOTH protocol family
[    0.078693] Bluetooth: HCI device and connection manager initialized
[    0.078704] Bluetooth: HCI socket layer initialized
[    0.078713] Bluetooth: L2CAP socket layer initialized
[    0.078728] Bluetooth: SCO socket layer initialized
[    0.079280] clocksource: Switched to clocksource arch_sys_counter
[    0.079404] VFS: Disk quotas dquot_6.6.0
[    0.079443] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 byte=
s)
[    0.085166] NET: Registered PF_INET protocol family
[    0.085260] IP idents hash table entries: 16384 (order: 5, 131072 bytes,=
 linear)
[    0.085832] tcp_listen_portaddr_hash hash table entries: 512 (order: 1, =
8192 bytes, linear)
[    0.085880] TCP established hash table entries: 8192 (order: 4, 65536 by=
tes, linear)
[    0.085943] TCP bind hash table entries: 8192 (order: 5, 131072 bytes, l=
inear)
[    0.086053] TCP: Hash tables configured (established 8192 bind 8192)
[    0.086121] UDP hash table entries: 512 (order: 2, 16384 bytes, linear)
[    0.086149] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes, lin=
ear)
[    0.086243] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    0.086548] RPC: Registered named UNIX socket transport module.
[    0.086555] RPC: Registered udp transport module.
[    0.086562] RPC: Registered tcp transport module.
[    0.086568] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.087241] PCI: CLS 0 bytes, default 64
[    0.087824] hw perfevents: enabled with armv8_cortex_a53 PMU driver, 7 c=
ounters available
[    0.088418] kvm [1]: IPA Size Limit: 40 bits
[    0.089935] kvm [1]: GICv3: no GICV resource entry
[    0.089942] kvm [1]: disabling GICv2 emulation
[    0.089954] kvm [1]: GIC system register CPU interface enabled
[    0.090025] kvm [1]: vgic interrupt IRQ9
[    0.090124] kvm [1]: Hyp mode initialized successfully
[    0.092994] Initialise system trusted keyrings
[    0.093101] workingset: timestamp_bits=3D42 max_order=3D18 bucket_order=
=3D0
[    0.098685] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.099213] NFS: Registering the id_resolver key type
[    0.099235] Key type id_resolver registered
[    0.099241] Key type id_legacy registered
[    0.099323] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.099331] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Regist=
ering...
[    0.099349] jffs2: version 2.2. (NAND) =EF=BF=BD=C2=A9 2001-2006 Red Hat=
, Inc.
[    0.099654] 9p: Installing v9fs 9p2000 file system support
[    0.134920] Key type asymmetric registered
[    0.134929] Asymmetric key parser 'x509' registered
[    0.134984] Block layer SCSI generic (bsg) driver version 0.4 loaded (ma=
jor 243)
[    0.134993] io scheduler mq-deadline registered
[    0.135000] io scheduler kyber registered
[    0.149175] imx-sdma 30bd0000.dma-controller: Direct firmware load for i=
mx/sdma/sdma-imx7d.bin failed with error -2
[    0.149196] imx-sdma 30bd0000.dma-controller: Falling back to sysfs fall=
back for: imx/sdma/sdma-imx7d.bin
[    0.150629] mxs-dma 33000000.dma-apbh: initialized
[    0.152150] SoC: i.MX8MP revision 1.1
[    0.152444] Bus freq driver module loaded
[    0.157806] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    0.159838] 30860000.serial: ttymxc0 at MMIO 0x30860000 (irq =3D 32, bas=
e_baud =3D 5000000) is a IMX
[    0.159956] serial serial0: tty port ttymxc0 registered
[    0.160329] 30890000.serial: ttymxc1 at MMIO 0x30890000 (irq =3D 33, bas=
e_baud =3D 1500000) is a IMX
[    1.264529] printk: console [ttymxc1] enabled
[    1.281897] loop: module loaded
[    1.286303] megasas: 07.717.02.00-rc1
[    1.291382] imx ahci driver is registered.
[    1.300420] tun: Universal TUN/TAP device driver, 1.6
[    1.306241] thunder_xcv, ver 1.0
[    1.309508] thunder_bgx, ver 1.0
[    1.312773] nicpf, ver 1.0
[    1.317450] hclge is initializing
[    1.320792] hns3: Hisilicon Ethernet Network Driver for Hip08 Family - v=
ersion
[    1.328027] hns3: Copyright (c) 2017 Huawei Corporation.
[    1.333386] e1000: Intel(R) PRO/1000 Network Driver
[    1.338269] e1000: Copyright (c) 1999-2006 Intel Corporation.
[    1.344056] e1000e: Intel(R) PRO/1000 Network Driver
[    1.349024] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    1.354978] igb: Intel(R) Gigabit Ethernet Network Driver
[    1.360382] igb: Copyright (c) 2007-2014 Intel Corporation.
[    1.365987] igbvf: Intel(R) Gigabit Virtual Function Network Driver
[    1.372258] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[    1.378342] sky2: driver version 1.30
[    1.382538] usbcore: registered new interface driver r8152
[    1.388243] VFIO - User Level meta-driver version: 0.3
[    1.398211] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.404782] ehci-pci: EHCI PCI platform driver
[    1.409269] ehci-platform: EHCI generic platform driver
[    1.414696] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.420888] ohci-pci: OHCI PCI platform driver
[    1.425368] ohci-platform: OHCI generic platform driver
[    1.431303] usbcore: registered new interface driver uas
[    1.436664] usbcore: registered new interface driver usb-storage
[    1.442740] usbcore: registered new interface driver usbserial_generic
[    1.449295] usbserial: USB Serial support registered for generic
[    1.455335] usbcore: registered new interface driver ftdi_sio
[    1.461103] usbserial: USB Serial support registered for FTDI USB Serial=
 Device
[    1.468441] usbcore: registered new interface driver usb_serial_simple
[    1.474990] usbserial: USB Serial support registered for carelink
[    1.481104] usbserial: USB Serial support registered for zio
[    1.486787] usbserial: USB Serial support registered for funsoft
[    1.492813] usbserial: USB Serial support registered for flashloader
[    1.499186] usbserial: USB Serial support registered for google
[    1.505126] usbserial: USB Serial support registered for libtransistor
[    1.511673] usbserial: USB Serial support registered for vivopay
[    1.517702] usbserial: USB Serial support registered for moto_modem
[    1.523988] usbserial: USB Serial support registered for motorola_tetra
[    1.530622] usbserial: USB Serial support registered for novatel_gps
[    1.536996] usbserial: USB Serial support registered for hp4x
[    1.542765] usbserial: USB Serial support registered for suunto
[    1.548707] usbserial: USB Serial support registered for siemens_mpi
[    1.555099] usbcore: registered new interface driver usb_ehset_test
[    1.564927] snvs_rtc 30370000.snvs:snvs-rtc-lp: registered as rtc1
[    1.571249] i2c_dev: i2c /dev entries driver
[    1.579324] Bluetooth: HCI UART driver ver 2.3
[    1.583791] Bluetooth: HCI UART protocol H4 registered
[    1.588940] Bluetooth: HCI UART protocol BCSP registered
[    1.594284] Bluetooth: HCI UART protocol LL registered
[    1.599429] Bluetooth: HCI UART protocol ATH3K registered
[    1.604847] Bluetooth: HCI UART protocol Three-wire (H5) registered
[    1.611209] Bluetooth: HCI UART protocol Broadcom registered
[    1.616894] Bluetooth: HCI UART protocol QCA registered
[    1.622309] EDAC MC: ECC not enabled
[    1.627090] sdhci: Secure Digital Host Controller Interface driver
[    1.633288] sdhci: Copyright(c) Pierre Ossman
[    1.638234] Synopsys Designware Multimedia Card Interface Driver
[    1.644855] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.652441] ledtrig-cpu: registered to indicate activity on CPUs
[    1.659079] SMCCC: SOC_ID: ARCH_SOC_ID not implemented, skipping ....
[    1.665967] usbcore: registered new interface driver usbhid
[    1.671548] usbhid: USB HID core driver
[    1.678735]  cs_system_cfg: CoreSight Configuration manager initialised
[    1.689368] Galcore version 6.4.3.p4.398061
[    1.724641] [drm] Initialized vivante 1.0.0 20170808 for 40000000.mix_gp=
u_ml on minor 0
[    1.734238] hantrodec 0 : module inserted. Major =3D 511
[    1.739841] hantrodec 1 : module inserted. Major =3D 511
[    1.746353] hantroenc: HW at base <0000000038320000> with ID <0x80006200>
[    1.753278] hx280enc: module inserted. Major <510>
[    1.762340] NET: Registered PF_LLC protocol family
[    1.767616] NET: Registered PF_INET6 protocol family
[    1.774508] Segment Routing with IPv6
[    1.778213] In-situ OAM (IOAM) with IPv6
[    1.782179] NET: Registered PF_PACKET protocol family
[    1.787954] Bluetooth: RFCOMM TTY layer initialized
[    1.792846] Bluetooth: RFCOMM socket layer initialized
[    1.798023] Bluetooth: RFCOMM ver 1.11
[    1.801792] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    1.807111] Bluetooth: BNEP filters: protocol multicast
[    1.812356] Bluetooth: BNEP socket layer initialized
[    1.817332] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    1.823279] Bluetooth: HIDP socket layer initialized
[    1.828996] 8021q: 802.1Q VLAN Support v1.8
[    1.833207] lib80211: common routines for IEEE802.11 drivers
[    1.838988] 9pnet: Installing 9P2000 support
[    1.843298] tsn generic netlink module v1 init...
[    1.848075] Key type dns_resolver registered
[    1.853221] Loading compiled-in X.509 certificates
[    1.957538] nxp-pca9450 0-0025: pca9450bc probed.
[    1.962537] i2c i2c-0: IMX I2C adapter registered
[    1.969482] i2c i2c-1: IMX I2C adapter registered
[    1.975530] i2c i2c-3: IMX I2C adapter registered
[    1.980843] imx8mq-usb-phy 381f0040.usb-phy: supply vbus not found, usin=
g dummy regulator
[    1.989342] imx8mq-usb-phy 382f0040.usb-phy: supply vbus not found, usin=
g dummy regulator
[    1.998248] pwm-backlight lvds_backlight: supply power not found, using =
dummy regulator
[    2.025141] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.038884] xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
[    2.044411] xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned b=
us number 1
[    2.052407] xhci-hcd xhci-hcd.1.auto: hcc params 0x0220fe6d hci version =
0x110 quirks 0x0000002001010010
[    2.061843] xhci-hcd xhci-hcd.1.auto: irq 59, io mem 0x38200000
[    2.068648] hub 1-0:1.0: USB hub found
[    2.072437] hub 1-0:1.0: 1 port detected
[    2.076621] xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
[    2.082128] xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned b=
us number 2
[    2.089808] xhci-hcd xhci-hcd.1.auto: Host supports USB 3.0 SuperSpeed
[    2.096382] usb usb2: We don't know the algorithms for LPM for this host=
, disabling LPM.
[    2.104894] hub 2-0:1.0: USB hub found
[    2.108679] hub 2-0:1.0: 1 port detected
[    2.113495] poweroff-gpio gpio-poweroff: gpio_poweroff_probe: over-ridin=
g already registered pm_power_off
[    2.123646] hci_uart_bcm serial0-0: supply vbat not found, using dummy r=
egulator
[    2.126026] sdhci-esdhc-imx 30b40000.mmc: allocated mmc-pwrseq
[    2.128027] remoteproc remoteproc0: imx-rproc is available
[    2.128544] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
[    2.130377] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.131216] hci_uart_bcm serial0-0: supply vddio not found, using dummy =
regulator
[    2.137014] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.168335] mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc] using =
ADMA
[    2.173725] input: keys as /devices/platform/keys/input/input0
[    2.173966] mmc2: SDHCI controller on 30b60000.mmc [30b60000.mmc] using =
ADMA
[    2.175687] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.177938] mmc0: SDHCI controller on 30b40000.mmc [30b40000.mmc] using =
ADMA
[    2.180599] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.184860] cfg80211: Loading compiled-in X.509 certificates for regulat=
ory database
[    2.185346] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.192343] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.200259] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    2.243996] platform regulatory.0: Direct firmware load for regulatory.d=
b failed with error -2
[    2.252718] platform regulatory.0: Falling back to sysfs fallback for: r=
egulatory.db
[    2.269480] ALSA device list:
[    2.269518] imx-uart 30860000.serial: We cannot prepare for the RX slave=
 dma!
[    2.272476]   No soundcards found.
[    2.283803] random: fast init done
[    2.293147] mmc2: new HS400 Enhanced strobe MMC card at address 0001
[    2.300026] mmcblk2: mmc2:0001 8GTF4R 7.28 GiB
[    2.306130] mmcblk2boot0: mmc2:0001 8GTF4R 4.00 MiB
[    2.312107] mmcblk2boot1: mmc2:0001 8GTF4R 4.00 MiB
[    2.318038] mmcblk2rpmb: mmc2:0001 8GTF4R 512 KiB, chardev (234:0)
[    2.325591] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.359389] mmc1: host does not support reading read-only switch, assumi=
ng write-enable
[    2.371382] mmc1: new ultra high speed DDR50 SDHC card at address 5048
[    2.375872] mmc0: new ultra high speed SDR104 SDIO card at address 0001
[    2.378374] mmcblk1: mmc1:5048 SD08G 7.42 GiB
[    2.391330]  mmcblk1: p1 p2 p3
[    2.396026] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.400299] Unable to handle kernel NULL pointer dereference at virtual =
address 0000000000000000
[    2.412740] Mem abort info:
[    2.415531]   ESR =3D 0x96000044
[    2.418586]   EC =3D 0x25: DABT (current EL), IL =3D 32 bits
[    2.423897]   SET =3D 0, FnV =3D 0
[    2.426952]   EA =3D 0, S1PTW =3D 0
[    2.430090]   FSC =3D 0x04: level 0 translation fault
[    2.434969] Data abort info:
[    2.437848]   ISV =3D 0, ISS =3D 0x00000044
[    2.441682]   CM =3D 0, WnR =3D 1
[    2.444651] [0000000000000000] user address but active_mm is swapper
[    2.451004] Internal error: Oops: 96000044 [#1] PREEMPT SMP
[    2.456577] Modules linked in:
[    2.459634] CPU: 2 PID: 176 Comm: kworker/2:2 Not tainted 5.15.32-00031-=
g5c988675671d #27
[    2.467814] Hardware name: innovAg DTX (DT)
[    2.471997] Workqueue: events hci_uart_write_work
[    2.476712] pstate: 800000c5 (Nzcv daIF -PAN -UAO -TCO -DIT -SSBS BTYPE=
=3D--)
[    2.483678] pc : sdma_transfer_init+0x128/0x330
[    2.488213] lr : sdma_transfer_init+0xdc/0x330
[    2.492661] sp : ffff80000da73ba0
[    2.495973] x29: ffff80000da73ba0 x28: 000000000000000a x27: ffff0000029=
cc6b0
[    2.503119] x26: ffff800009f0d200 x25: 0000000000000000 x24: 00000000000=
000c0
[    2.510262] x23: ffff0000036ce900 x22: 0000000000000002 x21: 00000000000=
002ed
[    2.517404] x20: ffff0000029c8080 x19: ffff0000029c84a8 x18: fffffffffff=
fffff
[    2.524547] x17: 00000000738b500b x16: 000000000000018e x15: 00000534306=
dcb54
[    2.531693] x14: 00000000000000a0 x13: 0000000000000001 x12: 00000000000=
00000
[    2.538833] x11: 0000000000000000 x10: 00000000ffffffff x9 : 00000000000=
00000
[    2.545975] x8 : ffff800009f0d280 x7 : 0000000000000000 x6 : 00000000000=
0003f
[    2.553117] x5 : 0000000000000040 x4 : 0000000000000000 x3 : 00000000000=
00004
[    2.560260] x2 : 0000000000000040 x1 : 0000000000000000 x0 : 00000000018=
30020
[    2.567404] Call trace:
[    2.569851]  sdma_transfer_init+0x128/0x330
[    2.574039]  sdma_prep_slave_sg+0x80/0x330
[    2.578141]  imx_uart_dma_tx+0xdc/0x260
[    2.581981]  imx_uart_start_tx+0x110/0x200
[    2.586081]  __uart_start.isra.0+0x3c/0x50
[    2.590182]  uart_write+0x100/0x870
[    2.593675]  ttyport_write_buf+0x7c/0x90
[    2.597601]  serdev_device_write_buf+0x28/0x40
[    2.602049]  hci_uart_write_work+0x60/0x150
[    2.606236]  process_one_work+0x1d0/0x354
[    2.610252]  worker_thread+0x13c/0x470
[    2.614007]  kthread+0x154/0x160
[    2.617238]  ret_from_fork+0x10/0x20
[    2.620822] Code: b9002740 52800400 531b6ac2 72a03060 (b9000320)
[    2.626918] ---[ end trace d0e5bd608e3078a8 ]---
[    2.631537] note: kworker/2:2[176] exited with preempt_count 2
[    3.587315] Hot alarm is canceled. GPU3D clock will return to 64/64
[    4.419290] Bluetooth: hci0: command 0xfc18 tx timeout
[   24.099273] rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
[   24.105370] rcu:     3-...0: (6 ticks this GP) idle=3D703/1/0x4000000000=
000004 softirq=3D52/54 fqs=3D17
[   24.114076]  (detected by 2, t=3D5416 jiffies, g=3D-1051, q=3D2)
[   24.119564] Task dump for CPU 3:
[   24.122791] task:swapper/3       state:R  running task     stack:    0 p=
id:    0 ppid:     1 flags:0x0000000a
[   24.132713] Call trace:
[   24.135157]  __switch_to+0x108/0x160
[   24.138740]  cpuidle_enter_state+0x134/0x2f4
[   24.143014]  cpuidle_enter+0x3c/0x54
[   24.146594]  do_idle+0x214/0x29c
[   24.149823]  cpu_startup_entry+0x28/0x80
[   24.153749]  secondary_start_kernel+0x14c/0x170
[   24.158282]  __secondary_switched+0x94/0x98
[   24.162473] rcu: rcu_preempt kthread timer wakeup didn't happen for 503 =
jiffies! g-1051 f0x0 RCU_GP_WAIT_FQS(5) ->state=3D0x402
[   24.173778] rcu:     Possible timer handling issue on cpu=3D2 timer-soft=
irq=3D34
[   24.180567] rcu: rcu_preempt kthread starved for 504 jiffies! g-1051 f0x=
0 RCU_GP_WAIT_FQS(5) ->state=3D0x402 ->cpu=3D2
[   24.190919] rcu:     Unless rcu_preempt kthread gets sufficient CPU time=
, OOM is now expected behavior.
[   24.200047] rcu: RCU grace-period kthread stack dump:
[   24.205099] task:rcu_preempt     state:I stack:    0 pid:   11 ppid:    =
 2 flags:0x00000008
[   24.213454] Call trace:
[   24.215898]  __switch_to+0x108/0x160
[   24.219476]  __schedule+0x2b8/0x710
[   24.222969]  schedule+0x74/0x110
[   24.226202]  schedule_timeout+0x80/0xf0
[   24.230042]  rcu_gp_fqs_loop+0x118/0x2e0
[   24.233966]  rcu_gp_kthread+0x104/0x11c
[   24.237805]  kthread+0x154/0x160
[   24.241037]  ret_from_fork+0x10/0x20
[   24.244614] rcu: Stack dump where RCU GP kthread last ran:
[   24.250097] Task dump for CPU 2:
[   24.253326] task:swapper/2       state:R  running task     stack:    0 p=
id:    0 ppid:     1 flags:0x00000008
[   24.263245] Call trace:
[   24.265692]  dump_backtrace+0x0/0x1d0
[   24.269358]  show_stack+0x1c/0x70
[   24.272678]  sched_show_task+0x150/0x174
[   24.276604]  dump_cpu_task+0x48/0x58
[   24.280184]  rcu_check_gp_kthread_starvation+0x120/0x140
[   24.285501]  rcu_sched_clock_irq+0xc34/0xd10
[   24.289775]  update_process_times+0xa0/0xf0
[   24.293962]  tick_sched_handle+0x34/0x60
[   24.297891]  tick_sched_timer+0x50/0xb0
[   24.301731]  __hrtimer_run_queues+0x138/0x1e0
[   24.306090]  hrtimer_interrupt+0xec/0x250
[   24.310105]  arch_timer_handler_phys+0x38/0x50
[   24.314554]  handle_percpu_devid_irq+0x88/0x134
[   24.319088]  handle_domain_irq+0x64/0x94
[   24.323016]  gic_handle_irq+0xbc/0x140
[   24.326769]  call_on_irq_stack+0x2c/0x60
[   24.330695]  do_interrupt_handler+0x54/0x60
[   24.334881]  el1_interrupt+0x30/0x80
[   24.338462]  el1h_64_irq_handler+0x1c/0x2c
[   24.342563]  el1h_64_irq+0x78/0x7c
[   24.345967]  cpuidle_enter_state+0x134/0x2f4
[   24.350237]  cpuidle_enter+0x3c/0x54
[   24.353815]  do_idle+0x214/0x29c
[   24.357043]  cpu_startup_entry+0x28/0x80
[   24.360970]  secondary_start_kernel+0x14c/0x170
[   24.365504]  __secondary_switched+0x94/0x98

--nextPart3502212.iIbC2pHGDl
Content-Disposition: attachment; filename="startup-log-barebox-after-kernel-change2.txt"
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; name="startup-log-barebox-after-kernel-change2.txt"

# After changing to CONFIG_ARM_IMX_CPUFREQ_DT=3Dn and CONFIG_IMX_SDMA=3Dn


NOTICE:  BL31: v2.6(release):lf-5.15.32-2.0.0-0-gc6a19b1a3
NOTICE:  BL31: Built : 01:15:47, Feb 26 2023
>deep-probe: supported due to innovag,imx8mp-dtx
detected i.MX8MP revision 1.1
i.MX8MP unique ID: 538faea70002aaff
Switch to console [serial1]


barebox 2023.05.0-00156-g1de55c8ee950-dirty #33 Sat May 27 13:44:29 AEST 20=
23


Board: innovAg DTX
deep-probe: supported due to innovag,imx8mp-dtx
detected i.MX8MP revision 1.1
i.MX8MP unique ID: 538faea70002aaff
netconsole: registered as netconsole-1
imx-esdhc 30b40000.mmc@30b40000.of: Failed to get 'vmmc' regulator (ignored=
).
imx-esdhc 30b40000.mmc@30b40000.of: registered as mmc0
imx-esdhc 30b50000.mmc@30b50000.of: registered as mmc1
imx-esdhc 30b60000.mmc@30b60000.of: Failed to get 'vmmc' regulator (ignored=
).
imx-esdhc 30b60000.mmc@30b60000.of: registered as mmc2
malloc space: 0x5fefe780 -> 0x7fdfceff (size 511 MiB)
mmc1: detected SD card version 2.0
mmc1: registered mmc1

Hit m for menu or any to stop autoboot:    2
barebox@innovAg DTX:/ boot sd
Booting entry 'sd'
mounted /dev/mmc1.0 on /mnt/mmc1.0

Loading ARM aarch64 Linux image '/mnt/mmc1.0/Image'
Loading devicetree from '/mnt/mmc1.0/imx8mp-dtx.dtb'
commandline: console=3Dttymxc1,115200n8  root=3D/dev/mmcblk1p2 rootwait rw
Loaded kernel to 0x40000000, devicetree at 0x41ef0000
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.15.32-00031-g5c988675671d (marc@dev8) (aarch=
64-poky-linux-gcc (GCC) 11.3.0, GNU ld (GNU Binutils) 2.38.202207083
[    0.000000] Machine model: innovAg DTX
[    0.000000] OF: reserved mem: failed to allocate memory for node 'linux,=
cma'
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000554000=
00, size 1 MiB
[    0.000000] OF: reserved mem: initialized node vdevbuffer@55400000, comp=
atible id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000810000=
00, size 256 MiB
[    0.000000] OF: reserved mem: initialized node audio@0x81000000, compati=
ble id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000910000=
00, size 1 MiB
[    0.000000] OF: reserved mem: initialized node mic_rpmsg@91000000, compa=
tible id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000943000=
00, size 1 MiB
[    0.000000] OF: reserved mem: initialized node vdev0buffer@94300000, com=
patible id shared-dma-pool
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem 0x0000000040000000-0x000000007ff=
fffff]
[    0.000000] NUMA: NODE_DATA [mem 0x7fdab800-0x7fdadfff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000040000000-0x000000007fffffff]
[    0.000000]   DMA32    empty
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000040000000-0x0000000054ffffff]
[    0.000000]   node   0: [mem 0x0000000055000000-0x000000005500ffff]
[    0.000000]   node   0: [mem 0x0000000055010000-0x00000000550fefff]
[    0.000000]   node   0: [mem 0x00000000550ff000-0x00000000550fffff]
[    0.000000]   node   0: [mem 0x0000000055100000-0x00000000553fffff]
[    0.000000]   node   0: [mem 0x0000000055400000-0x00000000554fffff]
[    0.000000]   node   0: [mem 0x0000000055500000-0x000000007fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000040000000-0x000000007ffff=
fff]
[    0.000000] cma: Reserved 32 MiB at 0x000000007c000000
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: SMC Calling Convention v1.2
[    0.000000] percpu: Embedded 19 pages/cpu s40664 r8192 d28968 u77824
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] CPU features: detected: ARM erratum 845719
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 258048
[    0.000000] Policy zone: DMA
[    0.000000] Kernel command line: console=3Dttymxc1,115200n8  root=3D/dev=
/mmcblk1p2 rootwait rw
[    0.000000] Dentry cache hash table entries: 131072 (order: 8, 1048576 b=
ytes, linear)
[    0.000000] Inode-cache hash table entries: 65536 (order: 7, 524288 byte=
s, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 962264K/1048576K available (18432K kernel code, 1884=
K rwdata, 7384K rodata, 3328K init, 508K bss, 53544K reserved, 3276)
[    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, N=
odes=3D1
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu:     RCU event tracing is enabled.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=3D256 to nr_cpu_i=
ds=3D4.
[    0.000000]  Trampoline variant of Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 2=
5 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_ids=
=3D4
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 160 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] Root IRQ handler: gic_handle_irq
[    0.000000] GICv3: 16 PPIs implemented
[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000388800=
00
[    0.000000] ITS: No ITS available, not enabling LPIs
[    0.000000] random: get_random_bytes called from start_kernel+0x474/0x65=
8 with crng_init=3D0
[    0.000000] arch_timer: cp15 timer(s) running at 8.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cy=
cles: 0x1d854df40, max_idle_ns: 440795202120 ns
[    0.000000] sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every =
2199023255500ns
[    0.000412] Console: colour dummy device 80x25
[    0.000474] Calibrating delay loop (skipped), value calculated using tim=
er frequency.. 16.00 BogoMIPS (lpj=3D32000)
[    0.000487] pid_max: default: 32768 minimum: 301
[    0.000542] LSM: Security Framework initializing
[    0.000593] Mount-cache hash table entries: 2048 (order: 2, 16384 bytes,=
 linear)
[    0.000605] Mountpoint-cache hash table entries: 2048 (order: 2, 16384 b=
ytes, linear)
[    0.001736] rcu: Hierarchical SRCU implementation.
[    0.003670] smp: Bringing up secondary CPUs ...
[    0.004083] Detected VIPT I-cache on CPU1
[    0.004108] GICv3: CPU1: found redistributor 1 region 0:0x00000000388a00=
00
[    0.004143] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.004543] Detected VIPT I-cache on CPU2
[    0.004561] GICv3: CPU2: found redistributor 2 region 0:0x00000000388c00=
00
[    0.004580] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.004942] Detected VIPT I-cache on CPU3
[    0.004959] GICv3: CPU3: found redistributor 3 region 0:0x00000000388e00=
00
[    0.004977] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.005032] smp: Brought up 1 node, 4 CPUs
[    0.005058] SMP: Total of 4 processors activated.
[    0.005065] CPU features: detected: 32-bit EL0 Support
[    0.005069] CPU features: detected: 32-bit EL1 Support
[    0.005077] CPU features: detected: CRC32 instructions
[    0.012141] CPU: All CPU(s) started at EL2
[    0.012166] alternatives: patching kernel code
[    0.013223] devtmpfs: initialized
[    0.021027] KASLR disabled due to lack of seed
[    0.021164] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffffff=
f, max_idle_ns: 7645041785100000 ns
[    0.021182] futex hash table entries: 1024 (order: 4, 65536 bytes, linea=
r)
[    0.022498] pinctrl core: initialized pinctrl subsystem
[    0.023315] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.028107] DMA: preallocated 128 KiB GFP_KERNEL pool for atomic allocat=
ions
[    0.028474] DMA: preallocated 128 KiB GFP_KERNEL|GFP_DMA pool for atomic=
 allocations
[    0.028807] DMA: preallocated 128 KiB GFP_KERNEL|GFP_DMA32 pool for atom=
ic allocations
[    0.028894] audit: initializing netlink subsys (disabled)
[    0.029095] audit: type=3D2000 audit(0.028:1): state=3Dinitialized audit=
_enabled=3D0 res=3D1
[    0.029619] thermal_sys: Registered thermal governor 'step_wise'
[    0.029624] thermal_sys: Registered thermal governor 'power_allocator'
[    0.029895] cpuidle: using governor menu
[    0.030079] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.030159] ASID allocator initialised with 65536 entries
[    0.031175] Serial: AMBA PL011 UART driver
[    0.031234] imx mu driver is registered.
[    0.031252] imx rpmsg driver is registered.
[    0.040157] imx8mp-pinctrl 30330000.pinctrl: initialized IMX pinctrl dri=
ver
[    0.047911] platform 32c00000.bus:ldb@32ec005c: Fixing up cyclic depende=
ncy with 32e90000.lcd-controller
[    0.056616] platform lvds0_panel: Fixing up cyclic dependency with 32c00=
000.bus:ldb@32ec005c
[    0.071109] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.071126] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.071133] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.071140] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.072140] cryptd: max_cpu_qlen set to 1000
[    0.075355] iommu: Default domain type: Translated
[    0.075368] iommu: DMA domain TLB invalidation policy: strict mode
[    0.075516] vgaarb: loaded
[    0.075773] SCSI subsystem initialized
[    0.076043] usbcore: registered new interface driver usbfs
[    0.076081] usbcore: registered new interface driver hub
[    0.076110] usbcore: registered new device driver usb
[    0.076933] mc: Linux media interface: v0.10
[    0.076956] videodev: Linux video capture interface: v2.00
[    0.077030] pps_core: LinuxPPS API ver. 1 registered
[    0.077037] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo =
Giometti <giometti@linux.it>
[    0.077050] PTP clock support registered
[    0.077201] EDAC MC: Ver: 3.0.0
[    0.078158] FPGA manager framework
[    0.078234] Advanced Linux Sound Architecture Driver Initialized.
[    0.078708] Bluetooth: Core ver 2.22
[    0.078733] NET: Registered PF_BLUETOOTH protocol family
[    0.078741] Bluetooth: HCI device and connection manager initialized
[    0.078752] Bluetooth: HCI socket layer initialized
[    0.078759] Bluetooth: L2CAP socket layer initialized
[    0.078773] Bluetooth: SCO socket layer initialized
[    0.079328] clocksource: Switched to clocksource arch_sys_counter
[    0.079456] VFS: Disk quotas dquot_6.6.0
[    0.079497] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 byte=
s)
[    0.085022] NET: Registered PF_INET protocol family
[    0.085113] IP idents hash table entries: 16384 (order: 5, 131072 bytes,=
 linear)
[    0.085689] tcp_listen_portaddr_hash hash table entries: 512 (order: 1, =
8192 bytes, linear)
[    0.085713] TCP established hash table entries: 8192 (order: 4, 65536 by=
tes, linear)
[    0.085801] TCP bind hash table entries: 8192 (order: 5, 131072 bytes, l=
inear)
[    0.085910] TCP: Hash tables configured (established 8192 bind 8192)
[    0.085978] UDP hash table entries: 512 (order: 2, 16384 bytes, linear)
[    0.086007] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes, lin=
ear)
[    0.086103] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    0.086404] RPC: Registered named UNIX socket transport module.
[    0.086412] RPC: Registered udp transport module.
[    0.086417] RPC: Registered tcp transport module.
[    0.086423] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.087082] PCI: CLS 0 bytes, default 64
[    0.087731] hw perfevents: enabled with armv8_cortex_a53 PMU driver, 7 c=
ounters available
[    0.088326] kvm [1]: IPA Size Limit: 40 bits
[    0.089849] kvm [1]: GICv3: no GICV resource entry
[    0.089856] kvm [1]: disabling GICv2 emulation
[    0.089869] kvm [1]: GIC system register CPU interface enabled
[    0.089942] kvm [1]: vgic interrupt IRQ9
[    0.090037] kvm [1]: Hyp mode initialized successfully
[    0.092892] Initialise system trusted keyrings
[    0.093000] workingset: timestamp_bits=3D42 max_order=3D18 bucket_order=
=3D0
[    0.098552] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.099078] NFS: Registering the id_resolver key type
[    0.099099] Key type id_resolver registered
[    0.099105] Key type id_legacy registered
[    0.099173] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.099180] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Regist=
ering...
[    0.099198] jffs2: version 2.2. (NAND) =EF=BF=BD=C2=A9 2001-2006 Red Hat=
, Inc.
[    0.099525] 9p: Installing v9fs 9p2000 file system support
[    0.134633] Key type asymmetric registered
[    0.134643] Asymmetric key parser 'x509' registered
[    0.134695] Block layer SCSI generic (bsg) driver version 0.4 loaded (ma=
jor 243)
[    0.134705] io scheduler mq-deadline registered
[    0.134712] io scheduler kyber registered
[    0.147378] mxs-dma 33000000.dma-apbh: initialized
[    0.148888] SoC: i.MX8MP revision 1.1
[    0.149178] Bus freq driver module loaded
[    0.154604] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    0.156574] 30860000.serial: ttymxc0 at MMIO 0x30860000 (irq =3D 32, bas=
e_baud =3D 5000000) is a IMX
[    0.156689] serial serial0: tty port ttymxc0 registered
[    0.157088] 30890000.serial: ttymxc1 at MMIO 0x30890000 (irq =3D 33, bas=
e_baud =3D 1500000) is a IMX
[    1.241305] printk: console [ttymxc1] enabled
[    1.258667] loop: module loaded
[    1.263071] megasas: 07.717.02.00-rc1
[    1.268141] imx ahci driver is registered.
[    1.277208] tun: Universal TUN/TAP device driver, 1.6
[    1.283049] thunder_xcv, ver 1.0
[    1.286319] thunder_bgx, ver 1.0
[    1.289582] nicpf, ver 1.0
[    1.294252] hclge is initializing
[    1.297589] hns3: Hisilicon Ethernet Network Driver for Hip08 Family - v=
ersion
[    1.304819] hns3: Copyright (c) 2017 Huawei Corporation.
[    1.310175] e1000: Intel(R) PRO/1000 Network Driver
[    1.315060] e1000: Copyright (c) 1999-2006 Intel Corporation.
[    1.320847] e1000e: Intel(R) PRO/1000 Network Driver
[    1.325816] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    1.331774] igb: Intel(R) Gigabit Ethernet Network Driver
[    1.337177] igb: Copyright (c) 2007-2014 Intel Corporation.
[    1.342779] igbvf: Intel(R) Gigabit Virtual Function Network Driver
[    1.349050] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[    1.355143] sky2: driver version 1.30
[    1.359371] usbcore: registered new interface driver r8152
[    1.365075] VFIO - User Level meta-driver version: 0.3
[    1.374988] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.381558] ehci-pci: EHCI PCI platform driver
[    1.386045] ehci-platform: EHCI generic platform driver
[    1.391486] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.397691] ohci-pci: OHCI PCI platform driver
[    1.402176] ohci-platform: OHCI generic platform driver
[    1.408125] usbcore: registered new interface driver uas
[    1.413486] usbcore: registered new interface driver usb-storage
[    1.419573] usbcore: registered new interface driver usbserial_generic
[    1.426123] usbserial: USB Serial support registered for generic
[    1.432157] usbcore: registered new interface driver ftdi_sio
[    1.437926] usbserial: USB Serial support registered for FTDI USB Serial=
 Device
[    1.445265] usbcore: registered new interface driver usb_serial_simple
[    1.451813] usbserial: USB Serial support registered for carelink
[    1.457926] usbserial: USB Serial support registered for zio
[    1.463610] usbserial: USB Serial support registered for funsoft
[    1.469638] usbserial: USB Serial support registered for flashloader
[    1.476014] usbserial: USB Serial support registered for google
[    1.481956] usbserial: USB Serial support registered for libtransistor
[    1.488503] usbserial: USB Serial support registered for vivopay
[    1.494531] usbserial: USB Serial support registered for moto_modem
[    1.500817] usbserial: USB Serial support registered for motorola_tetra
[    1.507449] usbserial: USB Serial support registered for novatel_gps
[    1.513822] usbserial: USB Serial support registered for hp4x
[    1.519597] usbserial: USB Serial support registered for suunto
[    1.525536] usbserial: USB Serial support registered for siemens_mpi
[    1.531922] usbcore: registered new interface driver usb_ehset_test
[    1.541750] snvs_rtc 30370000.snvs:snvs-rtc-lp: registered as rtc1
[    1.548073] i2c_dev: i2c /dev entries driver
[    1.556105] Bluetooth: HCI UART driver ver 2.3
[    1.560571] Bluetooth: HCI UART protocol H4 registered
[    1.565717] Bluetooth: HCI UART protocol BCSP registered
[    1.571062] Bluetooth: HCI UART protocol LL registered
[    1.576208] Bluetooth: HCI UART protocol ATH3K registered
[    1.581637] Bluetooth: HCI UART protocol Three-wire (H5) registered
[    1.587998] Bluetooth: HCI UART protocol Broadcom registered
[    1.593685] Bluetooth: HCI UART protocol QCA registered
[    1.599097] EDAC MC: ECC not enabled
[    1.603883] sdhci: Secure Digital Host Controller Interface driver
[    1.610077] sdhci: Copyright(c) Pierre Ossman
[    1.615027] Synopsys Designware Multimedia Card Interface Driver
[    1.621644] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.629176] ledtrig-cpu: registered to indicate activity on CPUs
[    1.635822] SMCCC: SOC_ID: ARCH_SOC_ID not implemented, skipping ....
[    1.642714] usbcore: registered new interface driver usbhid
[    1.648302] usbhid: USB HID core driver
[    1.655524]  cs_system_cfg: CoreSight Configuration manager initialised
[    1.666161] Galcore version 6.4.3.p4.398061
[    1.701385] [drm] Initialized vivante 1.0.0 20170808 for 40000000.mix_gp=
u_ml on minor 0
[    1.711014] hantrodec 0 : module inserted. Major =3D 511
[    1.716608] hantrodec 1 : module inserted. Major =3D 511
[    1.723099] hantroenc: HW at base <0000000038320000> with ID <0x80006200>
[    1.730026] hx280enc: module inserted. Major <510>
[    1.739036] NET: Registered PF_LLC protocol family
[    1.744329] NET: Registered PF_INET6 protocol family
[    1.750915] Segment Routing with IPv6
[    1.754615] In-situ OAM (IOAM) with IPv6
[    1.758584] NET: Registered PF_PACKET protocol family
[    1.764354] Bluetooth: RFCOMM TTY layer initialized
[    1.769248] Bluetooth: RFCOMM socket layer initialized
[    1.774428] Bluetooth: RFCOMM ver 1.11
[    1.778201] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    1.783521] Bluetooth: BNEP filters: protocol multicast
[    1.788766] Bluetooth: BNEP socket layer initialized
[    1.793743] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    1.799677] Bluetooth: HIDP socket layer initialized
[    1.805372] 8021q: 802.1Q VLAN Support v1.8
[    1.809580] lib80211: common routines for IEEE802.11 drivers
[    1.815368] 9pnet: Installing 9P2000 support
[    1.819668] tsn generic netlink module v1 init...
[    1.824449] Key type dns_resolver registered
[    1.829590] Loading compiled-in X.509 certificates
[    1.932673] nxp-pca9450 0-0025: pca9450bc probed.
[    1.937668] i2c i2c-0: IMX I2C adapter registered
[    1.944291] i2c i2c-1: IMX I2C adapter registered
[    1.949998] i2c i2c-3: IMX I2C adapter registered
[    1.955332] imx8mq-usb-phy 381f0040.usb-phy: supply vbus not found, usin=
g dummy regulator
[    1.963931] imx8mq-usb-phy 382f0040.usb-phy: supply vbus not found, usin=
g dummy regulator
[    1.972872] pwm-backlight lvds_backlight: supply power not found, using =
dummy regulator
[    2.000100] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.012663] xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
[    2.018199] xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned b=
us number 1
[    2.026250] xhci-hcd xhci-hcd.1.auto: hcc params 0x0220fe6d hci version =
0x110 quirks 0x0000002001010010
[    2.035685] xhci-hcd xhci-hcd.1.auto: irq 59, io mem 0x38200000
[    2.042499] hub 1-0:1.0: USB hub found
[    2.046289] hub 1-0:1.0: 1 port detected
[    2.050448] xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
[    2.055949] xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned b=
us number 2
[    2.063619] xhci-hcd xhci-hcd.1.auto: Host supports USB 3.0 SuperSpeed
[    2.070196] usb usb2: We don't know the algorithms for LPM for this host=
, disabling LPM.
[    2.078710] hub 2-0:1.0: USB hub found
[    2.082493] hub 2-0:1.0: 1 port detected
[    2.087294] poweroff-gpio gpio-poweroff: gpio_poweroff_probe: over-ridin=
g already registered pm_power_off
[    2.097425] hci_uart_bcm serial0-0: supply vbat not found, using dummy r=
egulator
[    2.099819] sdhci-esdhc-imx 30b40000.mmc: allocated mmc-pwrseq
[    2.104977] hci_uart_bcm serial0-0: supply vddio not found, using dummy =
regulator
[    2.108118] remoteproc remoteproc0: imx-rproc is available
[    2.108661] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
[    2.110514] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.112906] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.145286] mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc] using =
ADMA
[    2.147074] input: keys as /devices/platform/keys/input/input0
[    2.150387] mmc0: SDHCI controller on 30b40000.mmc [30b40000.mmc] using =
ADMA
[    2.151796] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.152372] mmc2: SDHCI controller on 30b60000.mmc [30b60000.mmc] using =
ADMA
[    2.154094] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.159163] cfg80211: Loading compiled-in X.509 certificates for regulat=
ory database
[    2.159910] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.166656] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.174596] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    2.206730] random: fast init done
[    2.211890] platform regulatory.0: Direct firmware load for regulatory.d=
b failed with error -2
[    2.230362] platform regulatory.0: Falling back to sysfs fallback for: r=
egulatory.db
[    2.236537] mmc2: new HS400 Enhanced strobe MMC card at address 0001
[    2.241198] mmc1: host does not support reading read-only switch, assumi=
ng write-enable
[    2.244959] mmcblk2: mmc2:0001 8GTF4R 7.28 GiB
[    2.249343] ALSA device list:
[    2.249348]   No soundcards found.
[    2.256757] mmc1: new ultra high speed DDR50 SDHC card at address 5048
[    2.258599] mmcblk2boot0: mmc2:0001 8GTF4R 4.00 MiB
[    2.260692] mmcblk1: mmc1:5048 SD08G 7.42 GiB
[    2.264437] mmcblk2boot1: mmc2:0001 8GTF4R 4.00 MiB
[    2.276420]  mmcblk1: p1 p2 p3
[    2.280913] mmcblk2rpmb: mmc2:0001 8GTF4R 512 KiB, chardev (234:0)
[    2.281621] mmc0: new ultra high speed SDR104 SDIO card at address 0001
[    2.290346] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.310706] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.371885] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.495217] Bluetooth: hci0: BCM: chip id 107
[    2.501322] Bluetooth: hci0: BCM: features 0x2f
[    2.508701] Bluetooth: hci0: BCM4345C0
[    2.512469] Bluetooth: hci0: BCM4345C0 (003.001.025) build 0000
[    2.528337] EXT4-fs (mmcblk1p2): recovery complete
[    2.533153] EXT4-fs (mmcblk1p2): mounted filesystem with ordered data mo=
de. Opts: (null). Quota mode: none.
[    2.542948] VFS: Mounted root (ext4 filesystem) on device 179:66.
[    2.552218] devtmpfs: mounted
[    2.555931] Freeing unused kernel memory: 3328K
[    2.560550] Run /sbin/init as init process
[    3.069005] systemd[1]: System time before build time, advancing clock.
[    3.113512] systemd[1]: systemd 250.5+ running in system mode (+PAM -AUD=
IT -SELINUX -APPARMOR +IMA -SMACK +SECCOMP -GCRYPT -GNUTLS -OPENSSL)
[    3.145302] systemd[1]: Detected architecture arm64.

--nextPart3502212.iIbC2pHGDl
Content-Disposition: attachment; filename="startup-log-barebox.txt"
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; name="startup-log-barebox.txt"

>NOTICE:  BL31: v2.6(release):lf-5.15.71-2.2.0-0-g3c1583ba0
NOTICE:  BL31: Built : 11:00:38, Nov 21 2022
>deep-probe: supported due to innovag,imx8mp-dtx
detected i.MX8MP revision 1.1
i.MX8MP unique ID: 538faea70002aaff
Switch to console [serial1]


barebox 2023.05.0-00156-g1de55c8ee950-dirty #34 Sat May 27 14:45:55 AEST 20=
23


Board: innovAg DTX
deep-probe: supported due to innovag,imx8mp-dtx
detected i.MX8MP revision 1.1
i.MX8MP unique ID: 538faea70002aaff
netconsole: registered as netconsole-1
imx-esdhc 30b40000.mmc@30b40000.of: Failed to get 'vmmc' regulator (ignored=
).
imx-esdhc 30b40000.mmc@30b40000.of: registered as mmc0
imx-esdhc 30b50000.mmc@30b50000.of: registered as mmc1
imx-esdhc 30b60000.mmc@30b60000.of: Failed to get 'vmmc' regulator (ignored=
).
imx-esdhc 30b60000.mmc@30b60000.of: registered as mmc2
malloc space: 0x5fefe780 -> 0x7fdfceff (size 511 MiB)
mmc1: detected SD card version 2.0
mmc1: registered mmc1

Hit m for menu or any to stop autoboot:    2
barebox@innovAg DTX:/ boot sd
Booting entry 'sd'
mounted /dev/mmc1.0 on /mnt/mmc1.0

Loading ARM aarch64 Linux image '/mnt/mmc1.0/Image'
Loading devicetree from '/mnt/mmc1.0/imx8mp-dtx.dtb'
commandline: console=3Dttymxc1,115200n8  root=3D/dev/mmcblk1p2 rootwait rw
Loaded kernel to 0x40000000, devicetree at 0x41c20000
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.15.32+g5c988675671d (oe-user@oe-host) (aarch=
64-poky-linux-gcc (GCC) 11.3.0, GNU l3
[    0.000000] Machine model: innovAg DTX
[    0.000000] OF: reserved mem: failed to allocate memory for node 'linux,=
cma'
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000554000=
00, size 1 MiB
[    0.000000] OF: reserved mem: initialized node vdevbuffer@55400000, comp=
atible id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000810000=
00, size 256 MiB
[    0.000000] OF: reserved mem: initialized node audio@0x81000000, compati=
ble id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000910000=
00, size 1 MiB
[    0.000000] OF: reserved mem: initialized node mic_rpmsg@91000000, compa=
tible id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000943000=
00, size 1 MiB
[    0.000000] OF: reserved mem: initialized node vdev0buffer@94300000, com=
patible id shared-dma-pool
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem 0x0000000040000000-0x000000007ff=
fffff]
[    0.000000] NUMA: NODE_DATA [mem 0x7fdaa800-0x7fdacfff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000040000000-0x000000007fffffff]
[    0.000000]   DMA32    empty
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000040000000-0x0000000054ffffff]
[    0.000000]   node   0: [mem 0x0000000055000000-0x000000005500ffff]
[    0.000000]   node   0: [mem 0x0000000055010000-0x00000000550fefff]
[    0.000000]   node   0: [mem 0x00000000550ff000-0x00000000550fffff]
[    0.000000]   node   0: [mem 0x0000000055100000-0x00000000553fffff]
[    0.000000]   node   0: [mem 0x0000000055400000-0x00000000554fffff]
[    0.000000]   node   0: [mem 0x0000000055500000-0x000000007fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000040000000-0x000000007ffff=
fff]
[    0.000000] cma: Reserved 32 MiB at 0x000000007c000000
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: SMC Calling Convention v1.2
[    0.000000] percpu: Embedded 19 pages/cpu s40088 r8192 d29544 u77824
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] CPU features: detected: ARM erratum 845719
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 258048
[    0.000000] Policy zone: DMA
[    0.000000] Kernel command line: console=3Dttymxc1,115200n8  root=3D/dev=
/mmcblk1p2 rootwait rw
[    0.000000] Dentry cache hash table entries: 131072 (order: 8, 1048576 b=
ytes, linear)
[    0.000000] Inode-cache hash table entries: 65536 (order: 7, 524288 byte=
s, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 965140K/1048576K available (16576K kernel code, 1748=
K rwdata, 6656K rodata, 3136K init, 4)
[    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, N=
odes=3D1
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu:     RCU event tracing is enabled.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=3D256 to nr_cpu_i=
ds=3D4.
[    0.000000]  Trampoline variant of Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 2=
5 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_ids=
=3D4
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 160 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] Root IRQ handler: gic_handle_irq
[    0.000000] GICv3: 16 PPIs implemented
[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000388800=
00
[    0.000000] ITS: No ITS available, not enabling LPIs
[    0.000000] random: get_random_bytes called from start_kernel+0x474/0x65=
8 with crng_init=3D0
[    0.000000] arch_timer: cp15 timer(s) running at 8.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cy=
cles: 0x1d854df40, max_idle_ns: 44079s
[    0.000000] sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every =
2199023255500ns
[    0.000410] Console: colour dummy device 80x25
[    0.000473] Calibrating delay loop (skipped), value calculated using tim=
er frequency.. 16.00 BogoMIPS (lpj=3D32)
[    0.000486] pid_max: default: 32768 minimum: 301
[    0.000539] LSM: Security Framework initializing
[    0.000589] Mount-cache hash table entries: 2048 (order: 2, 16384 bytes,=
 linear)
[    0.000601] Mountpoint-cache hash table entries: 2048 (order: 2, 16384 b=
ytes, linear)
[    0.001744] rcu: Hierarchical SRCU implementation.
[    0.003500] smp: Bringing up secondary CPUs ...
[    0.003875] Detected VIPT I-cache on CPU1
[    0.003902] GICv3: CPU1: found redistributor 1 region 0:0x00000000388a00=
00
[    0.003938] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.004342] Detected VIPT I-cache on CPU2
[    0.004360] GICv3: CPU2: found redistributor 2 region 0:0x00000000388c00=
00
[    0.004381] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.004746] Detected VIPT I-cache on CPU3
[    0.004765] GICv3: CPU3: found redistributor 3 region 0:0x00000000388e00=
00
[    0.004783] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.004837] smp: Brought up 1 node, 4 CPUs
[    0.004862] SMP: Total of 4 processors activated.
[    0.004869] CPU features: detected: 32-bit EL0 Support
[    0.004875] CPU features: detected: 32-bit EL1 Support
[    0.004882] CPU features: detected: CRC32 instructions
[    0.011496] CPU: All CPU(s) started at EL2
[    0.011522] alternatives: patching kernel code
[    0.012560] devtmpfs: initialized
[    0.020357] KASLR disabled due to lack of seed
[    0.020493] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffffff=
f, max_idle_ns: 7645041785100000 ns
[    0.020512] futex hash table entries: 1024 (order: 4, 65536 bytes, linea=
r)
[    0.021810] pinctrl core: initialized pinctrl subsystem
[    0.022647] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.027384] DMA: preallocated 128 KiB GFP_KERNEL pool for atomic allocat=
ions
[    0.027741] DMA: preallocated 128 KiB GFP_KERNEL|GFP_DMA pool for atomic=
 allocations
[    0.028102] DMA: preallocated 128 KiB GFP_KERNEL|GFP_DMA32 pool for atom=
ic allocations
[    0.028191] audit: initializing netlink subsys (disabled)
[    0.028419] audit: type=3D2000 audit(0.028:1): state=3Dinitialized audit=
_enabled=3D0 res=3D1
[    0.028882] thermal_sys: Registered thermal governor 'step_wise'
[    0.028887] thermal_sys: Registered thermal governor 'power_allocator'
[    0.029163] cpuidle: using governor menu
[    0.029373] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.029454] ASID allocator initialised with 65536 entries
[    0.030461] Serial: AMBA PL011 UART driver
[    0.030521] imx mu driver is registered.
[    0.030540] imx rpmsg driver is registered.
[    0.039295] imx8mp-pinctrl 30330000.pinctrl: initialized IMX pinctrl dri=
ver
[    0.046917] platform 32c00000.bus:ldb@32ec005c: Fixing up cyclic depende=
ncy with 32e90000.lcd-controller
[    0.055415] platform lvds0_panel: Fixing up cyclic dependency with 32c00=
000.bus:ldb@32ec005c
[    0.068778] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.068796] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.068804] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.068811] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.069803] cryptd: max_cpu_qlen set to 1000
[    0.072886] iommu: Default domain type: Translated=20
[    0.072900] iommu: DMA domain TLB invalidation policy: strict mode=20
[    0.073043] vgaarb: loaded
[    0.073294] SCSI subsystem initialized
[    0.073558] usbcore: registered new interface driver usbfs
[    0.073595] usbcore: registered new interface driver hub
[    0.073623] usbcore: registered new device driver usb
[    0.074300] mc: Linux media interface: v0.10
[    0.074325] videodev: Linux video capture interface: v2.00
[    0.074405] pps_core: LinuxPPS API ver. 1 registered
[    0.074411] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo =
Giometti <giometti@linux.it>
[    0.074428] PTP clock support registered
[    0.074579] EDAC MC: Ver: 3.0.0
[    0.075443] FPGA manager framework
[    0.075834] Bluetooth: Core ver 2.22
[    0.075858] NET: Registered PF_BLUETOOTH protocol family
[    0.075865] Bluetooth: HCI device and connection manager initialized
[    0.075875] Bluetooth: HCI socket layer initialized
[    0.075884] Bluetooth: L2CAP socket layer initialized
[    0.075899] Bluetooth: SCO socket layer initialized
[    0.076606] clocksource: Switched to clocksource arch_sys_counter
[    0.076731] VFS: Disk quotas dquot_6.6.0
[    0.076771] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 byte=
s)
[    0.082290] NET: Registered PF_INET protocol family
[    0.082382] IP idents hash table entries: 16384 (order: 5, 131072 bytes,=
 linear)
[    0.082957] tcp_listen_portaddr_hash hash table entries: 512 (order: 1, =
8192 bytes, linear)
[    0.083005] TCP established hash table entries: 8192 (order: 4, 65536 by=
tes, linear)
[    0.083070] TCP bind hash table entries: 8192 (order: 5, 131072 bytes, l=
inear)
[    0.083177] TCP: Hash tables configured (established 8192 bind 8192)
[    0.083246] UDP hash table entries: 512 (order: 2, 16384 bytes, linear)
[    0.083274] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes, lin=
ear)
[    0.083367] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    0.083667] RPC: Registered named UNIX socket transport module.
[    0.083674] RPC: Registered udp transport module.
[    0.083681] RPC: Registered tcp transport module.
[    0.083687] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.084334] PCI: CLS 0 bytes, default 64
[    0.084889] hw perfevents: enabled with armv8_cortex_a53 PMU driver, 7 c=
ounters available
[    0.085494] kvm [1]: IPA Size Limit: 40 bits
[    0.086883] kvm [1]: GICv3: no GICV resource entry
[    0.086890] kvm [1]: disabling GICv2 emulation
[    0.086904] kvm [1]: GIC system register CPU interface enabled
[    0.086975] kvm [1]: vgic interrupt IRQ9
[    0.087067] kvm [1]: Hyp mode initialized successfully
[    0.089887] Initialise system trusted keyrings
[    0.089999] workingset: timestamp_bits=3D42 max_order=3D18 bucket_order=
=3D0
[    0.095600] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.096143] NFS: Registering the id_resolver key type
[    0.096164] Key type id_resolver registered
[    0.096172] Key type id_legacy registered
[    0.096239] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.096246] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Regist=
ering...
[    0.096265] jffs2: version 2.2. (NAND) =EF=BF=BD=C2=A9 2001-2006 Red Hat=
, Inc.
[    0.096565] 9p: Installing v9fs 9p2000 file system support
[    0.133217] Key type asymmetric registered
[    0.133226] Asymmetric key parser 'x509' registered
[    0.133274] Block layer SCSI generic (bsg) driver version 0.4 loaded (ma=
jor 241)
[    0.133283] io scheduler mq-deadline registered
[    0.133289] io scheduler kyber registered
[    0.143878] mxs-dma 33000000.dma-apbh: initialized
[    0.144907] SoC: i.MX8MP revision 1.1
[    0.145298] Bus freq driver module loaded
[    0.150719] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    0.152716] 30860000.serial: ttymxc0 at MMIO 0x30860000 (irq =3D 32, bas=
e_baud =3D 5000000) is a IMX
[    0.152835] serial serial0: tty port ttymxc0 registered
[    0.153227] 30890000.serial: ttymxc1 at MMIO 0x30890000 (irq =3D 33, bas=
e_baud =3D 1500000) is a IMX
[    1.231111] printk: console [ttymxc1] enabled
[    1.248187] loop: module loaded
[    1.252535] megasas: 07.717.02.00-rc1
[    1.257474] imx ahci driver is registered.
[    1.264026] tun: Universal TUN/TAP device driver, 1.6
[    1.269227] thunder_xcv, ver 1.0
[    1.272501] thunder_bgx, ver 1.0
[    1.276694] e1000: Intel(R) PRO/1000 Network Driver
[    1.281582] e1000: Copyright (c) 1999-2006 Intel Corporation.
[    1.287365] e1000e: Intel(R) PRO/1000 Network Driver
[    1.292334] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    1.298291] igb: Intel(R) Gigabit Ethernet Network Driver
[    1.303697] igb: Copyright (c) 2007-2014 Intel Corporation.
[    1.309306] igbvf: Intel(R) Gigabit Virtual Function Network Driver
[    1.315580] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[    1.321559] usbcore: registered new interface driver r8152
[    1.327079] usbcore: registered new interface driver qmi_wwan
[    1.333020] VFIO - User Level meta-driver version: 0.3
[    1.342630] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.349204] ehci-pci: EHCI PCI platform driver
[    1.353717] ehci-platform: EHCI generic platform driver
[    1.359134] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.365334] ohci-pci: OHCI PCI platform driver
[    1.369818] ohci-platform: OHCI generic platform driver
[    1.375617] usbcore: registered new interface driver cdc_wdm
[    1.381400] usbcore: registered new interface driver uas
[    1.386755] usbcore: registered new interface driver usb-storage
[    1.392831] usbcore: registered new interface driver usbserial_generic
[    1.399382] usbserial: USB Serial support registered for generic
[    1.405418] usbcore: registered new interface driver ftdi_sio
[    1.411186] usbserial: USB Serial support registered for FTDI USB Serial=
 Device
[    1.418530] usbcore: registered new interface driver usb_serial_simple
[    1.425077] usbserial: USB Serial support registered for carelink
[    1.431188] usbserial: USB Serial support registered for zio
[    1.436867] usbserial: USB Serial support registered for funsoft
[    1.442893] usbserial: USB Serial support registered for flashloader
[    1.449266] usbserial: USB Serial support registered for google
[    1.455204] usbserial: USB Serial support registered for libtransistor
[    1.461754] usbserial: USB Serial support registered for vivopay
[    1.467782] usbserial: USB Serial support registered for moto_modem
[    1.474072] usbserial: USB Serial support registered for motorola_tetra
[    1.480705] usbserial: USB Serial support registered for novatel_gps
[    1.487080] usbserial: USB Serial support registered for hp4x
[    1.492846] usbserial: USB Serial support registered for suunto
[    1.498785] usbserial: USB Serial support registered for siemens_mpi
[    1.505171] usbcore: registered new interface driver usb_ehset_test
[    1.514734] snvs_rtc 30370000.snvs:snvs-rtc-lp: registered as rtc1
[    1.521051] i2c_dev: i2c /dev entries driver
[    1.528814] EDAC MC: ECC not enabled
[    1.533546] sdhci: Secure Digital Host Controller Interface driver
[    1.539747] sdhci: Copyright(c) Pierre Ossman
[    1.544712] Synopsys Designware Multimedia Card Interface Driver
[    1.551317] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.558791] ledtrig-cpu: registered to indicate activity on CPUs
[    1.565421] SMCCC: SOC_ID: ARCH_SOC_ID not implemented, skipping ....
[    1.572304] usbcore: registered new interface driver usbhid
[    1.577888] usbhid: USB HID core driver
[    1.584293] SPI driver bmp280 has no spi_device_id for bosch,bmp085
[    1.591489]  cs_system_cfg: CoreSight Configuration manager initialised
[    1.602035] Galcore version 6.4.3.p4.398061
[    1.636901] [drm] Initialized vivante 1.0.0 20170808 for 40000000.mix_gp=
u_ml on minor 0
[    1.646507] hantrodec 0 : module inserted. Major =3D 509
[    1.652097] hantrodec 1 : module inserted. Major =3D 509
[    1.658590] hantroenc: HW at base <0000000038320000> with ID <0x80006200>
[    1.665514] hx280enc: module inserted. Major <508>
[    1.673204] NET: Registered PF_LLC protocol family
[    1.678481] NET: Registered PF_INET6 protocol family
[    1.685964] Segment Routing with IPv6
[    1.689666] In-situ OAM (IOAM) with IPv6
[    1.693635] NET: Registered PF_PACKET protocol family
[    1.699720] Bluetooth: RFCOMM TTY layer initialized
[    1.704617] Bluetooth: RFCOMM socket layer initialized
[    1.709776] Bluetooth: RFCOMM ver 1.11
[    1.713541] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    1.718860] Bluetooth: BNEP filters: protocol multicast
[    1.724099] Bluetooth: BNEP socket layer initialized
[    1.729071] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    1.734999] Bluetooth: HIDP socket layer initialized
[    1.741040] 8021q: 802.1Q VLAN Support v1.8
[    1.745334] 9pnet: Installing 9P2000 support
[    1.749637] tsn generic netlink module v1 init...
[    1.754416] Key type dns_resolver registered
[    1.759542] Loading compiled-in X.509 certificates
[    1.864303] nxp-pca9450 0-0025: pca9450bc probed.
[    1.869280] i2c i2c-0: IMX I2C adapter registered
[    1.875748] bmp280 1-0076: supply vddd not found, using dummy regulator
[    1.882468] bmp280 1-0076: supply vdda not found, using dummy regulator
[    1.910056] i2c i2c-1: IMX I2C adapter registered
[    1.915823] i2c i2c-3: IMX I2C adapter registered
[    1.921129] imx8mq-usb-phy 381f0040.usb-phy: supply vbus not found, usin=
g dummy regulator
[    1.929613] imx8mq-usb-phy 382f0040.usb-phy: supply vbus not found, usin=
g dummy regulator
[    1.938519] pwm-backlight lvds_backlight: supply power not found, using =
dummy regulator
[    1.949204] random: fast init done
[    1.968501] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    1.980761] xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
[    1.986285] xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned b=
us number 1
[    1.994280] xhci-hcd xhci-hcd.1.auto: hcc params 0x0220fe6d hci version =
0x110 quirks 0x0000002001010010
[    2.003724] xhci-hcd xhci-hcd.1.auto: irq 59, io mem 0x38200000
[    2.010564] hub 1-0:1.0: USB hub found
[    2.014365] hub 1-0:1.0: 1 port detected
[    2.018532] xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
[    2.024038] xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned b=
us number 2
[    2.031713] xhci-hcd xhci-hcd.1.auto: Host supports USB 3.0 SuperSpeed
[    2.038290] usb usb2: We don't know the algorithms for LPM for this host=
, disabling LPM.
[    2.047099] hub 2-0:1.0: USB hub found
[    2.050879] hub 2-0:1.0: 1 port detected
[    2.056531] pwm-beeper beeper: supply amp not found, using dummy regulat=
or
[    2.063607] input: pwm-beeper as /devices/platform/beeper/input/input0
[    2.071343] poweroff-gpio gpio-poweroff: gpio_poweroff_probe: over-ridin=
g already registered pm_power_off
[    2.081120] imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 5 mkt segment=
 0 supported-hw 0x20 0x1
[    2.090704] Hot alarm is canceled. GPU3D clock will return to 64/64

--nextPart3502212.iIbC2pHGDl
Content-Disposition: attachment; filename="startup-log-u-boot.txt"
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; name="startup-log-u-boot.txt"

U-Boot SPL 2022.04-lf_v2022.04+g4c4d4a6e37 (Apr 18 2023 - 23:34:36 +0000)
Training for 3GByte Micron
DDRINFO: start DRAM init
DDRINFO: DRAM rate 3000MTS
Training FAILED
Re-training for 1GByte Samsung memory
DDRINFO: start DRAM init
DDRINFO: DRAM rate 4000MTS
DDRINFO:ddrphy calibration done
DDRINFO: ddrmix config done
SEC0:  RNG instantiated
Normal Boot
Trying to boot from BOOTROM
image offset 0x8000, pagesize 0x200, ivt offset 0x0
NOTICE:  BL31: v2.6(release):lf-5.15.71-2.2.0-0-g3c1583ba0
NOTICE:  BL31: Built : 11:00:38, Nov 21 2022


U-Boot 2022.04-lf_v2022.04+g4c4d4a6e37 (Apr 18 2023 - 23:34:36 +0000)

CPU:   i.MX8MP[8] rev1.1 1800 MHz (running at 1200 MHz)
CPU:   Commercial temperature grade (0C to 95C) at 23C
Reset cause: POR
Model: innovAg DTX (i.MX8MPlus)
DRAM:  992 MiB
 board startup.
Core:  77 devices, 24 uclasses, devicetree: separate
MMC:   FSL_SDHC: 1, FSL_SDHC: 2
Loading Environment from MMC... *** Warning - bad CRC, using default enviro=
nment

[*]-Video Link 0fail to find output device
probe video device failed, ret -19

        [0] lcd-controller@32e80000, video
fail to find output device
probe video device failed, ret -19
In:    serial
Out:   serial
Err:   serial
SEC0:  RNG instantiated

 BuildInfo:
  - ATF 3c1583b

switch to partitions #0, OK
mmc1 is current device
flash target is MMC:1
Net:
Warning: ethernet@30bf0000 (eth1) using random MAC address - a6:57:1f:42:59=
:70
eth1: ethernet@30bf0000 [PRIME]
=46astboot: Normal
Normal Boot
Hit any key to stop autoboot:  0
switch to partitions #0, OK
mmc1 is current device
Scanning mmc 1:1...
=46ound /extlinux/extlinux.conf
Retrieving file: /extlinux/extlinux.conf
1:      NXP i.MX Release Distro
Retrieving file: /extlinux/../Image
append:  root=3D/dev/mmcblk1p2 rootwait rw rootwait rw console=3Dttymxc1,11=
5200
Retrieving file: /extlinux/../imx8mp-dtx.dtb
## Flattened Device Tree blob at 43000000
   Booting using the fdt blob at 0x43000000
   Using Device Tree in place at 0000000043000000, end 000000004301230b
fail to find output device
probe video device failed, ret -19


Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.15.32+g5c988675671d (oe-user@oe-host) (aarch=
64-poky-linux-gcc (GCC) 11.3.0, GNU l3
[    0.000000] Machine model: innovAg DTX
[    0.000000] Reserved memory: created CMA memory pool at 0x00000000600000=
00, size 512 MiB
[    0.000000] OF: reserved mem: initialized node linux,cma, compatible id =
shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000554000=
00, size 1 MiB
[    0.000000] OF: reserved mem: initialized node vdevbuffer@55400000, comp=
atible id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000810000=
00, size 256 MiB
[    0.000000] OF: reserved mem: initialized node audio@0x81000000, compati=
ble id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000910000=
00, size 1 MiB
[    0.000000] OF: reserved mem: initialized node mic_rpmsg@91000000, compa=
tible id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000943000=
00, size 1 MiB
[    0.000000] OF: reserved mem: initialized node vdev0buffer@94300000, com=
patible id shared-dma-pool
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem 0x0000000040000000-0x000000007ff=
fffff]
[    0.000000] NUMA: NODE_DATA [mem 0x5fdba800-0x5fdbcfff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000040000000-0x000000007fffffff]
[    0.000000]   DMA32    empty
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000040000000-0x0000000054ffffff]
[    0.000000]   node   0: [mem 0x0000000055000000-0x000000005500ffff]
[    0.000000]   node   0: [mem 0x0000000055010000-0x00000000550fefff]
[    0.000000]   node   0: [mem 0x00000000550ff000-0x00000000550fffff]
[    0.000000]   node   0: [mem 0x0000000055100000-0x00000000553fffff]
[    0.000000]   node   0: [mem 0x0000000055400000-0x00000000554fffff]
[    0.000000]   node   0: [mem 0x0000000055500000-0x0000000055ffffff]
[    0.000000]   node   0: [mem 0x0000000058000000-0x000000007fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000040000000-0x000000007ffff=
fff]
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: Trusted OS migration not required
[    0.000000] psci: SMC Calling Convention v1.2
[    0.000000] percpu: Embedded 19 pages/cpu s40088 r8192 d29544 u77824
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] CPU features: detected: ARM erratum 845719
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 249856
[    0.000000] Policy zone: DMA
[    0.000000] Kernel command line:  root=3D/dev/mmcblk1p2 rootwait rw root=
wait rw console=3Dttymxc1,115200
[    0.000000] Dentry cache hash table entries: 131072 (order: 8, 1048576 b=
ytes, linear)
[    0.000000] Inode-cache hash table entries: 65536 (order: 7, 524288 byte=
s, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 441016K/1015808K available (16576K kernel code, 1748=
K rwdata, 6656K rodata, 3136K init, 4)
[    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, N=
odes=3D1
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu:     RCU event tracing is enabled.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=3D256 to nr_cpu_i=
ds=3D4.
[    0.000000]  Trampoline variant of Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 2=
5 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_ids=
=3D4
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 160 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] Root IRQ handler: gic_handle_irq
[    0.000000] GICv3: 16 PPIs implemented
[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000388800=
00
[    0.000000] ITS: No ITS available, not enabling LPIs
[    0.000000] random: get_random_bytes called from start_kernel+0x474/0x65=
8 with crng_init=3D0
[    0.000000] arch_timer: cp15 timer(s) running at 8.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cy=
cles: 0x1d854df40, max_idle_ns: 44079s
[    0.000000] sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every =
2199023255500ns
[    0.000404] Console: colour dummy device 80x25
[    0.000463] Calibrating delay loop (skipped), value calculated using tim=
er frequency.. 16.00 BogoMIPS (lpj=3D32)
[    0.000476] pid_max: default: 32768 minimum: 301
[    0.000529] LSM: Security Framework initializing
[    0.000578] Mount-cache hash table entries: 2048 (order: 2, 16384 bytes,=
 linear)
[    0.000591] Mountpoint-cache hash table entries: 2048 (order: 2, 16384 b=
ytes, linear)
[    0.001744] rcu: Hierarchical SRCU implementation.
[    0.003456] smp: Bringing up secondary CPUs ...
[    0.003848] Detected VIPT I-cache on CPU1
[    0.003873] GICv3: CPU1: found redistributor 1 region 0:0x00000000388a00=
00
[    0.003911] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.004346] Detected VIPT I-cache on CPU2
[    0.004366] GICv3: CPU2: found redistributor 2 region 0:0x00000000388c00=
00
[    0.004387] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.004772] Detected VIPT I-cache on CPU3
[    0.004788] GICv3: CPU3: found redistributor 3 region 0:0x00000000388e00=
00
[    0.004808] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.004864] smp: Brought up 1 node, 4 CPUs
[    0.004886] SMP: Total of 4 processors activated.
[    0.004894] CPU features: detected: 32-bit EL0 Support
[    0.004899] CPU features: detected: 32-bit EL1 Support
[    0.004907] CPU features: detected: CRC32 instructions
[    0.011657] CPU: All CPU(s) started at EL2
[    0.011683] alternatives: patching kernel code
[    0.012559] devtmpfs: initialized
[    0.020372] KASLR disabled due to lack of seed
[    0.020519] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffffff=
f, max_idle_ns: 7645041785100000 ns
[    0.020536] futex hash table entries: 1024 (order: 4, 65536 bytes, linea=
r)
[    0.040748] pinctrl core: initialized pinctrl subsystem
[    0.041600] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.046449] DMA: preallocated 128 KiB GFP_KERNEL pool for atomic allocat=
ions
[    0.046786] DMA: preallocated 128 KiB GFP_KERNEL|GFP_DMA pool for atomic=
 allocations
[    0.047110] DMA: preallocated 128 KiB GFP_KERNEL|GFP_DMA32 pool for atom=
ic allocations
[    0.047193] audit: initializing netlink subsys (disabled)
[    0.047418] audit: type=3D2000 audit(0.044:1): state=3Dinitialized audit=
_enabled=3D0 res=3D1
[    0.047889] thermal_sys: Registered thermal governor 'step_wise'
[    0.047894] thermal_sys: Registered thermal governor 'power_allocator'
[    0.048195] cpuidle: using governor menu
[    0.048425] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.048508] ASID allocator initialised with 65536 entries
[    0.049475] Serial: AMBA PL011 UART driver
[    0.049533] imx mu driver is registered.
[    0.049552] imx rpmsg driver is registered.
[    0.058215] imx8mp-pinctrl 30330000.pinctrl: initialized IMX pinctrl dri=
ver
[    0.065753] platform 32c00000.bus:ldb@32ec005c: Fixing up cyclic depende=
ncy with 32e90000.lcd-controller
[    0.074246] platform lvds0_panel: Fixing up cyclic dependency with 32c00=
000.bus:ldb@32ec005c
[    0.087559] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.087578] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.087586] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.087593] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.088597] cryptd: max_cpu_qlen set to 1000
[    0.091636] iommu: Default domain type: Translated
[    0.091651] iommu: DMA domain TLB invalidation policy: strict mode
[    0.091802] vgaarb: loaded
[    0.092051] SCSI subsystem initialized
[    0.092361] usbcore: registered new interface driver usbfs
[    0.092398] usbcore: registered new interface driver hub
[    0.092424] usbcore: registered new device driver usb
[    0.093119] mc: Linux media interface: v0.10
[    0.093144] videodev: Linux video capture interface: v2.00
[    0.093212] pps_core: LinuxPPS API ver. 1 registered
[    0.093219] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo =
Giometti <giometti@linux.it>
[    0.093234] PTP clock support registered
[    0.093379] EDAC MC: Ver: 3.0.0
[    0.094233] FPGA manager framework
[    0.094641] Bluetooth: Core ver 2.22
[    0.094666] NET: Registered PF_BLUETOOTH protocol family
[    0.094674] Bluetooth: HCI device and connection manager initialized
[    0.094688] Bluetooth: HCI socket layer initialized
[    0.094697] Bluetooth: L2CAP socket layer initialized
[    0.094711] Bluetooth: SCO socket layer initialized
[    0.095388] clocksource: Switched to clocksource arch_sys_counter
[    0.095525] VFS: Disk quotas dquot_6.6.0
[    0.095563] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 byte=
s)
[    0.101168] NET: Registered PF_INET protocol family
[    0.101265] IP idents hash table entries: 16384 (order: 5, 131072 bytes,=
 linear)
[    0.101842] tcp_listen_portaddr_hash hash table entries: 512 (order: 1, =
8192 bytes, linear)
[    0.101866] TCP established hash table entries: 8192 (order: 4, 65536 by=
tes, linear)
[    0.101950] TCP bind hash table entries: 8192 (order: 5, 131072 bytes, l=
inear)
[    0.102063] TCP: Hash tables configured (established 8192 bind 8192)
[    0.102134] UDP hash table entries: 512 (order: 2, 16384 bytes, linear)
[    0.102162] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes, lin=
ear)
[    0.102258] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    0.102566] RPC: Registered named UNIX socket transport module.
[    0.102573] RPC: Registered udp transport module.
[    0.102580] RPC: Registered tcp transport module.
[    0.102584] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.103236] PCI: CLS 0 bytes, default 64
[    0.103837] hw perfevents: enabled with armv8_cortex_a53 PMU driver, 7 c=
ounters available
[    0.104432] kvm [1]: IPA Size Limit: 40 bits
[    0.105827] kvm [1]: GICv3: no GICV resource entry
[    0.105834] kvm [1]: disabling GICv2 emulation
[    0.105847] kvm [1]: GIC system register CPU interface enabled
[    0.105918] kvm [1]: vgic interrupt IRQ9
[    0.106014] kvm [1]: Hyp mode initialized successfully
[    0.108851] Initialise system trusted keyrings
[    0.108960] workingset: timestamp_bits=3D42 max_order=3D18 bucket_order=
=3D0
[    0.114693] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.115234] NFS: Registering the id_resolver key type
[    0.115256] Key type id_resolver registered
[    0.115263] Key type id_legacy registered
[    0.115331] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.115339] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Regist=
ering...
[    0.115358] jffs2: version 2.2. (NAND) =EF=BF=BD=C2=A9 2001-2006 Red Hat=
, Inc.
[    0.115705] 9p: Installing v9fs 9p2000 file system support
[    0.152762] Key type asymmetric registered
[    0.152772] Asymmetric key parser 'x509' registered
[    0.152824] Block layer SCSI generic (bsg) driver version 0.4 loaded (ma=
jor 241)
[    0.152834] io scheduler mq-deadline registered
[    0.152840] io scheduler kyber registered
[    0.164487] mxs-dma 33000000.dma-apbh: initialized
[    0.165462] SoC: i.MX8MP revision 1.1
[    0.165845] Bus freq driver module loaded
[    0.171289] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    0.173295] 30860000.serial: ttymxc0 at MMIO 0x30860000 (irq =3D 32, bas=
e_baud =3D 5000000) is a IMX
[    0.173415] serial serial0: tty port ttymxc0 registered
[    0.173814] 30890000.serial: ttymxc1 at MMIO 0x30890000 (irq =3D 33, bas=
e_baud =3D 1500000) is a IMX
[    1.262918] printk: console [ttymxc1] enabled
[    1.280394] loop: module loaded
[    1.284768] megasas: 07.717.02.00-rc1
[    1.289641] imx ahci driver is registered.
[    1.296159] tun: Universal TUN/TAP device driver, 1.6
[    1.301366] thunder_xcv, ver 1.0
[    1.304642] thunder_bgx, ver 1.0
[    1.308798] e1000: Intel(R) PRO/1000 Network Driver
[    1.313685] e1000: Copyright (c) 1999-2006 Intel Corporation.
[    1.319464] e1000e: Intel(R) PRO/1000 Network Driver
[    1.324433] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    1.330391] igb: Intel(R) Gigabit Ethernet Network Driver
[    1.335800] igb: Copyright (c) 2007-2014 Intel Corporation.
[    1.341402] igbvf: Intel(R) Gigabit Virtual Function Network Driver
[    1.347674] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[    1.353655] usbcore: registered new interface driver r8152
[    1.359174] usbcore: registered new interface driver qmi_wwan
[    1.365117] VFIO - User Level meta-driver version: 0.3
[    1.374694] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.381269] ehci-pci: EHCI PCI platform driver
[    1.385820] ehci-platform: EHCI generic platform driver
[    1.391257] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.397461] ohci-pci: OHCI PCI platform driver
[    1.401945] ohci-platform: OHCI generic platform driver
[    1.407765] usbcore: registered new interface driver cdc_wdm
[    1.413550] usbcore: registered new interface driver uas
[    1.418907] usbcore: registered new interface driver usb-storage
[    1.424979] usbcore: registered new interface driver usbserial_generic
[    1.431529] usbserial: USB Serial support registered for generic
[    1.437567] usbcore: registered new interface driver ftdi_sio
[    1.443333] usbserial: USB Serial support registered for FTDI USB Serial=
 Device
[    1.450679] usbcore: registered new interface driver usb_serial_simple
[    1.457226] usbserial: USB Serial support registered for carelink
[    1.463339] usbserial: USB Serial support registered for zio
[    1.469018] usbserial: USB Serial support registered for funsoft
[    1.475045] usbserial: USB Serial support registered for flashloader
[    1.481418] usbserial: USB Serial support registered for google
[    1.487355] usbserial: USB Serial support registered for libtransistor
[    1.493902] usbserial: USB Serial support registered for vivopay
[    1.499929] usbserial: USB Serial support registered for moto_modem
[    1.506219] usbserial: USB Serial support registered for motorola_tetra
[    1.512854] usbserial: USB Serial support registered for novatel_gps
[    1.519228] usbserial: USB Serial support registered for hp4x
[    1.524997] usbserial: USB Serial support registered for suunto
[    1.530937] usbserial: USB Serial support registered for siemens_mpi
[    1.537320] usbcore: registered new interface driver usb_ehset_test
[    1.546906] snvs_rtc 30370000.snvs:snvs-rtc-lp: registered as rtc1
[    1.553223] i2c_dev: i2c /dev entries driver
[    1.561028] EDAC MC: ECC not enabled
[    1.565779] sdhci: Secure Digital Host Controller Interface driver
[    1.571994] sdhci: Copyright(c) Pierre Ossman
[    1.576935] Synopsys Designware Multimedia Card Interface Driver
[    1.583544] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.591018] ledtrig-cpu: registered to indicate activity on CPUs
[    1.597654] SMCCC: SOC_ID: ARCH_SOC_ID not implemented, skipping ....
[    1.604546] usbcore: registered new interface driver usbhid
[    1.610130] usbhid: USB HID core driver
[    1.616573] SPI driver bmp280 has no spi_device_id for bosch,bmp085
[    1.623776]  cs_system_cfg: CoreSight Configuration manager initialised
[    1.631775] optee: probing for conduit method.
[    1.636240] optee: revision 3.19 (00919403)
[    1.637111] optee: dynamic shared memory is enabled
[    1.646518] optee: initialized driver
[    1.652921] Galcore version 6.4.3.p4.398061
[    1.760507] [drm] Initialized vivante 1.0.0 20170808 for 40000000.mix_gp=
u_ml on minor 0
[    1.770114] hantrodec 0 : module inserted. Major =3D 509
[    1.775719] hantrodec 1 : module inserted. Major =3D 509
[    1.782229] hantroenc: HW at base <0000000038320000> with ID <0x80006200>
[    1.789147] hx280enc: module inserted. Major <508>
[    1.796558] NET: Registered PF_LLC protocol family
[    1.801839] NET: Registered PF_INET6 protocol family
[    1.809050] Segment Routing with IPv6
[    1.812748] In-situ OAM (IOAM) with IPv6
[    1.816719] NET: Registered PF_PACKET protocol family
[    1.822813] Bluetooth: RFCOMM TTY layer initialized
[    1.827706] Bluetooth: RFCOMM socket layer initialized
[    1.832871] Bluetooth: RFCOMM ver 1.11
[    1.836632] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    1.841951] Bluetooth: BNEP filters: protocol multicast
[    1.847185] Bluetooth: BNEP socket layer initialized
[    1.852154] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    1.858082] Bluetooth: HIDP socket layer initialized
[    1.864123] 8021q: 802.1Q VLAN Support v1.8
[    1.868424] 9pnet: Installing 9P2000 support
[    1.872726] tsn generic netlink module v1 init...
[    1.877499] Key type dns_resolver registered
[    1.882661] Loading compiled-in X.509 certificates
[    1.986089] nxp-pca9450 0-0025: pca9450bc probed.
[    1.991074] i2c i2c-0: IMX I2C adapter registered
[    1.997283] bmp280 1-0076: supply vddd not found, using dummy regulator
[    2.004019] bmp280 1-0076: supply vdda not found, using dummy regulator
[    2.032921] i2c i2c-1: IMX I2C adapter registered
[    2.038708] i2c i2c-3: IMX I2C adapter registered
[    2.044033] imx8mq-usb-phy 381f0040.usb-phy: supply vbus not found, usin=
g dummy regulator
[    2.052536] imx8mq-usb-phy 382f0040.usb-phy: supply vbus not found, usin=
g dummy regulator
[    2.061436] pwm-backlight lvds_backlight: supply power not found, using =
dummy regulator
[    2.070866] random: fast init done
[    2.091410] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.103424] xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
[    2.108947] xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned b=
us number 1
[    2.116947] xhci-hcd xhci-hcd.1.auto: hcc params 0x0220fe6d hci version =
0x110 quirks 0x0000002001010010
[    2.126388] xhci-hcd xhci-hcd.1.auto: irq 59, io mem 0x38200000
[    2.133221] hub 1-0:1.0: USB hub found
[    2.137017] hub 1-0:1.0: 1 port detected
[    2.141185] xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
[    2.146695] xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned b=
us number 2
[    2.154371] xhci-hcd xhci-hcd.1.auto: Host supports USB 3.0 SuperSpeed
[    2.160952] usb usb2: We don't know the algorithms for LPM for this host=
, disabling LPM.
[    2.169799] hub 2-0:1.0: USB hub found
[    2.173580] hub 2-0:1.0: 1 port detected
[    2.179248] pwm-beeper beeper: supply amp not found, using dummy regulat=
or
[    2.186322] input: pwm-beeper as /devices/platform/beeper/input/input0
[    2.194081] poweroff-gpio gpio-poweroff: gpio_poweroff_probe: over-ridin=
g already registered pm_power_off
[    2.203860] imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 5 mkt segment=
 0 supported-hw 0x20 0x1
[    2.213406] Hot alarm is canceled. GPU3D clock will return to 64/64
[    2.222090] sdhci-esdhc-imx 30b40000.mmc: allocated mmc-pwrseq
[    2.222571] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
[    2.228305] remoteproc remoteproc0: imx-rproc is available
[    2.240786] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.250061] remoteproc remoteproc1: imx-dsp-rproc is available
[    2.257038] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.263462] mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc] using =
ADMA
[    2.266570] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.267423] mmc2: SDHCI controller on 30b60000.mmc [30b60000.mmc] using =
ADMA
[    2.269337] mmc0: SDHCI controller on 30b40000.mmc [30b40000.mmc] using =
ADMA
[    2.295730] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.305274] input: keys as /devices/platform/keys/input/input1
[    2.311816] cfg80211: Loading compiled-in X.509 certificates for regulat=
ory database
[    2.312586] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.320747] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    2.334130] platform regulatory.0: Direct firmware load for regulatory.d=
b failed with error -2
[    2.342759] platform regulatory.0: Falling back to sysfs fallback for: r=
egulatory.db
[    2.366782] Waiting for root device /dev/mmcblk1p2...
[    2.385634] mmc2: new HS400 Enhanced strobe MMC card at address 0001
[    2.392475] mmcblk2: mmc2:0001 8GTF4R 7.28 GiB
[    2.398132] mmcblk2boot0: mmc2:0001 8GTF4R 4.00 MiB
[    2.398242] mmc0: new ultra high speed SDR104 SDIO card at address 0001
[    2.403780] mmcblk2boot1: mmc2:0001 8GTF4R 4.00 MiB
[    2.415292] mmcblk2rpmb: mmc2:0001 8GTF4R 512 KiB, chardev (510:0)
[    2.422600] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.478262] mmc1: host does not support reading read-only switch, assumi=
ng write-enable
[    2.507156] mmc1: new ultra high speed SDR104 SDHC card at address 59b4
[    2.514120] mmcblk1: mmc1:59b4       14.5 GiB
[    2.519785]  mmcblk1: p1 p2 p3
[    2.524195] imx-drm display-subsystem: bound imx-lcdifv3-crtc.0 (ops lcd=
ifv3_crtc_ops)
[    2.594186] EXT4-fs (mmcblk1p2): mounted filesystem with ordered data mo=
de. Opts: (null). Quota mode: none.
[    2.604045] VFS: Mounted root (ext4 filesystem) on device 179:98.
[    2.611325] devtmpfs: mounted
[    2.614949] Freeing unused kernel memory: 3136K
[    2.619567] Run /sbin/init as init process
[    2.814455] systemd[1]: System time before build time, advancing clock.
[    2.834354] systemd[1]: systemd 250.5+ running in system mode (+PAM -AUD=
IT -SELINUX -APPARMOR +IMA -SMACK +SE)
[    2.866200] systemd[1]: Detected architecture arm64.

--nextPart3502212.iIbC2pHGDl--





