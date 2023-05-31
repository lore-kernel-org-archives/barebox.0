Delivery-date: Wed, 31 May 2023 07:52:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Eko-003pVZ-63
	for lore@lore.pengutronix.de; Wed, 31 May 2023 07:52:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Ekl-0002ID-C2
	for lore@pengutronix.de; Wed, 31 May 2023 07:52:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g44ai4HDxsL06NjWgawsNffTdAW489sET2afFMrskrU=; b=eJWDHwYWQQXIvtj2GtefQLmdh4
	YWc1Qjr+Irtmf6oeGXyqDT/uibz5BeZ2lWIIxerZK8ZFYP/ijREGWFGZC1WUr107WZK68acncdHSG
	vb+hizEpsm5jPDZoyCmCR/BLF4ISTtX/bF3KM6rRzNV8+tl5AozrzBb1R0Y1nhtfnwWUB7Q/zipLh
	95rrcW7A3hbTajKNbBEfjb85n8Wyf7aS0O7xRCO+oixV/bvfw7f2OGn80o/nSONOly65wfqBg3zSp
	rim+XKcyCoDb4oRVWH/lY0fOz1f++68/29A+bSOLqokMZC5EaYZth+n7/mNlPYdAX42wKohO0Hrdv
	xTPbZnog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Ejj-00GDWe-0t;
	Wed, 31 May 2023 05:51:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Ejd-00GDV3-3B
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 05:51:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q4EjV-0002AN-Tm; Wed, 31 May 2023 07:50:54 +0200
Message-ID: <b4e717bf-8ea1-4f7d-cc46-bedb0e6465d5@pengutronix.de>
Date: Wed, 31 May 2023 07:50:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: marc@cpdesign.com.au, Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <10297393.nUPlyArG6x@dev8> <20230526113025.GT17518@pengutronix.de>
 <3742527.kQq0lBPeGt@dev8>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <3742527.kQq0lBPeGt@dev8>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_225102_210209_88FEF588 
X-CRM114-Status: GOOD (  43.31  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Troubles booting kernel with new imx8 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marc,

On 27.05.23 07:35, marc@cpdesign.com.au wrote:
> Hi,
> 
> Thanks for responses, some more info:
> - imx8mp based system, 1Gb LPDDR, uses same PMIC as other boards (PCA9450)
> - barebox master
> - u-boot is NXP fork
> - kernel is NXP fork, 5.15.31

Keep in mind that, as far as I am aware, most testing, if not all,
of the barebox i.MX8MP support was against the mainline kernel. Certainly
all projects at our side don't use NXP's fork.

>>> I'm trying to get barebox going for a new imx8mp based board. I can
>>> successfully power on and get to a barebox prompt etc and fiddle with
>>> gpios, files on sd, memtest etc, but when booting to kernel it will hang.
>>> Note though that the board boots ok with u-boot (using exact same kernel
>>> image).
>> Do you have an example crash dump? Does the kernel crash reproducibly or
>> randomly?
> 
> It always hangs at the same point in the kernel boot sequence (see "startup-
> log-barebox.txt"). You can also see "startup-log-u-boot.txt" for the output of 
> a complete boot.

My go-to for hanging boot is

  no_console_suspend pm_debug_messages pd_ignore_unused clk_ignore_unused

Maybe add maxcpus=1 and see if you get some useful indication what happens
just before hang?

> If i change some kernel config options the boot progresses further, and when 
> CONFIG_ARM_IMX_CPUFREQ_DT=n and CONFIG_IMX_SDMA=n then it will get to systemd 
> starting.

Maybe one of these drivers calls in TF-A? Do you use same TF-A/ATF in both
configurations?

>>> I'm trying to figure out what is different between booting via uboot and
>>> barebox, I'm new to imx8 so have been going down a few rabbit holes...

FWIW, here's a FOSDEM talk on how barebox boots the i.MX8M:
https://archive.fosdem.org/2021/schedule/event/from_reset_vector_to_kernel/

>>> Disabling various drivers (eg imx-cpufreq-dt) in the kernel will get past
>>> the hang, but result in a crash later on in the boot sequence. Disabling
>>> that may get further but will result in a crash somewhere else.
>>> My instinct is that its something to do with sdma, but a lot of this is
>>> still a black box to me.
>>
>> SDMA is only used in few devices like UART, I2C, SPI and sound. Apart from
>> sound all devices should work without SDMA, so you could disable the
>> driver.
> 
> I was getting (after disabling some things in kernel) crash traces in 
> sdma_transfer_init etc, which is what made me suspect it. (see startup-log-
> barebox-after-kernel-change1.txt)
> Disabling the driver does indeed avoid this crash.

Hmm, strange.

> 
>> PMIC comes to my mind. Does it need some configuration?
> 
> The PMIC has the same register/value writes as in the u-boot version.

Are you sure there are no writes in main U-Boot apart from what SPL sets up?

>> Is the amount of memory detected correctly by barebox?
> 
> Barebox detects 1Gb, correct
> 
> I did a compare of the startup logs (The cuts are to remove the timestamps)
> ```kompare <(diff <(cut -c 15- startup-log-u-boot.txt) <(cut -c 15- startup-
> log-barebox.txt))```
> 
> I noticed some differences in the 'reserved mem' at the start and the 'NUMA' 
> early memory node ranges.
> 
> When booting from u-boot I get:
>     [    0.000000] Reserved memory: created CMA memory pool at 
> 0x0000000060000000, size 512 MiB
>     [    0.000000] OF: reserved mem: initialized node linux,cma, compatible id 
> shared-dma-pool
> 
> But when booting from barebox:
>      [    0.000000] OF: reserved mem: failed to allocate memory for node 
> 'linux,cma'
>     [    0.000000] Reserved memory: created DMA memory pool at 
> 0x0000000055400000, size 1 MiB
> 
> 
> For the early node ranges:
> from u-boot:
> 
> [    0.000000] NUMA: NODE_DATA [mem 0x5fdba800-0x5fdbcfff]
> [    0.000000] Zone ranges:
> [    0.000000]   DMA      [mem 0x0000000040000000-0x000000007fffffff]
> [    0.000000]   DMA32    empty
> [    0.000000]   Normal   empty
> [    0.000000] Movable zone start for each node
> [    0.000000] Early memory node ranges
> [    0.000000]   node   0: [mem 0x0000000040000000-0x0000000054ffffff]
> [    0.000000]   node   0: [mem 0x0000000055000000-0x000000005500ffff]
> [    0.000000]   node   0: [mem 0x0000000055010000-0x00000000550fefff]
> [    0.000000]   node   0: [mem 0x00000000550ff000-0x00000000550fffff]
> [    0.000000]   node   0: [mem 0x0000000055100000-0x00000000553fffff]
> [    0.000000]   node   0: [mem 0x0000000055400000-0x00000000554fffff]
> [    0.000000]   node   0: [mem 0x0000000055500000-0x0000000055ffffff]
> [    0.000000]   node   0: [mem 0x0000000058000000-0x000000007fffffff]
> 
> 
> and from barebox:
> 
> [    0.000000] NUMA: NODE_DATA [mem 0x7fdaa800-0x7fdacfff]
> [    0.000000] Zone ranges:
> [    0.000000]   DMA      [mem 0x0000000040000000-0x000000007fffffff]
> [    0.000000]   DMA32    empty
> [    0.000000]   Normal   empty
> [    0.000000] Movable zone start for each node
> [    0.000000] Early memory node ranges
> [    0.000000]   node   0: [mem 0x0000000040000000-0x0000000054ffffff]
> [    0.000000]   node   0: [mem 0x0000000055000000-0x000000005500ffff]
> [    0.000000]   node   0: [mem 0x0000000055010000-0x00000000550fefff]
> [    0.000000]   node   0: [mem 0x00000000550ff000-0x00000000550fffff]
> [    0.000000]   node   0: [mem 0x0000000055100000-0x00000000553fffff]
> [    0.000000]   node   0: [mem 0x0000000055400000-0x00000000554fffff]
> [    0.000000]   node   0: [mem 0x0000000055500000-0x000000007fffffff]
> 
> Notably there is an range in the u-boot ranges which creates a gap from 
> 0x56000000 to 0x57ffffff (32Mb).

That's probably OP-TEE. That would be in line with startup-log-u-boot saying:

  [    1.636240] optee: revision 3.19 (00919403)

Whether that's a problem depends on where OP-TEE comes from. On i.MX8MQ, OP-TEE
was built into TF-A. On i.MX8MM, it was usually outside. If it's built into
TF-A in your i.MX8MP setup, this would explain your problems.


> I'm wondering how this difference comes about when both bootloaders are 
> booting the same devicetree and kernel image?

The devicetrees are not the same, because of bootloader fixups:

  - U-Boot inserts OP-TEE nodes for you. barebox can too, but you don't have
    that configured (not sure if you need it)

  - NXP U-Boot messes with power domains, e.g. disable specific VPU nodes _by
    name_ for stripped down versions of i.MX8MP. barebox also does disabling,
    but on the upstream device tree nodes.

If you want an accurate comparison of the device trees, look in /proc/devicetree
and compare. dtc can make a dts out of the directory. If it's too flaky with
barebox, add some -v to boot/bootm (I think -vv should suffice) and barebox
will print the fixed up device tree to console before bootup.


What seems likely is that OP-TEE is built into the TF-A and you fail
to account for that. If so, try building TF-A yourself without OP-TEE and see
if it's better. The barebox docs for i.MX8MP-EVK have instructions.

If it is better and you want OP-TEE, have OP-TEE external to TF-A.
This is better anyway, because TF-A+OP-TEE+barebox PBL may get too big in
SRAM in future.

Let me know how it goes.

Cheers,
Ahmad


> 
> Cheers
> Marc
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



