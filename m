Delivery-date: Fri, 02 Jun 2023 07:35:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4xRo-006qwm-5N
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 07:35:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4xRl-0005Zr-Hk
	for lore@pengutronix.de; Fri, 02 Jun 2023 07:35:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eRp3vQ/Kofy+wx5lOCUx/7ZncuxWta8evEhdPViyaqo=; b=n/yrHnXB4FCMqOWcjZ7NuHGmwv
	6O4kyYymhoRB29JtfNIG+k5dgbg+dDkPgBHgCRbRv6PlcWnE/r/8MmRqphUMdEXesBMzrUsi4Im9T
	Z1fhQQAcy528sbNjdoJIlKYgTmkLGOdiOQukcqOs7KBfMWICzFHS9tJaR47kqUmQolYjex5ygHQ4e
	wpBlHI/XGKAcfsM4fR7fpDOdz6D9pCLiyQMadtPG4s9CF/xbzPTP/GzGkryeT8sc4mD7RJFQ2x80p
	s7yWKyqD9NWGb2y/cCG8HngHigf6/jz0E7DT+GMRIvhP0kW+UCfwwapbO74o0BTKkIhqvOrOVXCr0
	y0D2hPWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4xQZ-005n1H-06;
	Fri, 02 Jun 2023 05:34:19 +0000
Received: from vmse01.mailcluster.com.au ([2401:fc00:2:13f::6])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4xQV-005n0W-0p
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 05:34:17 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
	by vmse01.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q4xQ5-0000nG-DD; Fri, 02 Jun 2023 15:34:07 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cpdesign.com.au; s=default; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=eRp3vQ/Kofy+wx5lOCUx/7ZncuxWta8evEhdPViyaqo=; b=DaJr28h8eXtdsBHe4qa91o1l6R
	S6aTYXgtK8m0yG4u7fzdhYA+ycc/B2rwfZOjq/YA3uoSIshkroXDS8qd+4JTdZjHzaDyMF1u0x6yM
	ajwy2SKrhR5suxnatoIu2Goy8cMEZHVXNY0Fe8U39Zvd2GKz+Z5Bk2cbhaCCxJBFJJTs4rZV7W7GC
	RW3SIesayZuBBCYsSunExAcJVDk8GWFUrSzotsH2Ye7TuDZL4kMBoojtMqVUZUth4prwo/EO4Z5MP
	vXnvBjbGPmYecBP9YNr0f38zjpDsND8zlXWnaTN4ZSShkRUxQ6ArPP35xe9dn31RdeC35kp/EqFei
	cO/2YJsQ==;
Received: from [203.220.86.121] (port=34688 helo=dev8.localnet)
	by vmcp03.web-servers.com.au with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q4xQ1-00A6y8-1e;
	Fri, 02 Jun 2023 15:33:45 +1000
From: marc@cpdesign.com.au
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Fri, 02 Jun 2023 15:33:45 +1000
Message-ID: <2312343.ElGaqSPkdT@dev8>
In-Reply-To: <b4e717bf-8ea1-4f7d-cc46-bedb0e6465d5@pengutronix.de>
References: <10297393.nUPlyArG6x@dev8> <3742527.kQq0lBPeGt@dev8> <b4e717bf-8ea1-4f7d-cc46-bedb0e6465d5@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Authenticated-User: marc@cpdesign.com.au
X-Authenticator: dovecot_plain
X-Originating-IP: 116.90.56.28
X-SpamExperts-Domain: panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Username: 116.90.56.28
Authentication-Results: mailcluster.com.au; auth=pass smtp.auth=116.90.56.28@panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.00465168815331)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT+1RmdhxPQVy8aFYjH03oOaPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5yZU2N8k3Q0qA7WHMaxDs5gWVr09B1RW7AKtj6Cvra5SI69
 wOBlu/XmklnopGNvwQpfPUqptG+mrs97vJlVoSqj58fMnqZUTt7CyKlJUh+zhox6T+2JVqkPLex7
 zIQm9buDJYXE4Dl0gs/Km8rE1WFZfs1c4BfZ2iQ3yTEfvnsIN1UBeeMoZsbg7u0T7DjP+QXYXI0h
 RAVM639NGeV/TEsZsciqZpVn04F1OCvbY1SudC+KOWuwqQcfyIQvHR3jv3ERyb8Cm2IArdB6vQ11
 MirfpenM9P8hYP8ubDqMlfnjuPZsEhnzWgZmn4n0yUjDMDh++SB3n67eAPF/18rav9nB3IzVmGPS
 YcI3Px+Ei1WUTh/bvG8EEe0+nGAJVEMtr6R/0tARiKLbsBv4eBarRURN7KQ0nOFtCHz/YEb43puL
 SMj2Pca5u0y1bp/8+9s+RQZ06yAp9LXULcjVfI/N62frX0iUqFrXcSXq1PMB6qws/j/BNM8813zo
 gpOdGRAGcQuQCNfRafjftHk/NTAUUyanWEwQPAv2fxf3s0iIhEk0C+rrQg+JxSIY/KW9EUuBFM+u
 A7dIExCvbzpTr6RV14zsrnI+9+ZhXBaqHOMsrL0DPAEiRQv+PVjjwa+Z5RFCOMSb1mxnLuReKmu7
 ap3KroWsYbKZY5DoaY88HZkVLsVAJPjP0QXtmrrq/SWTCLeJFBzlpxn0K7NpdV4GmEuJZQ7vq+HL
 RqT0egq6ExGOkbbQCWXgvsThlHiRxQ8x62W/ETGmKfEBDcm2TSnZp6eX7ip8NidR5jp3O3YsvRXB
 wVDa6M7jLvQA5seLCY1EOp14lbCpMvCIr0c9GgL9uLHiM0G2gqboyOWjp6mo6Vk+FvtrEB66OQ0N
 ojUFkvjGWF6oUtY6A3u7p5+eYIgO0nLKURVM647lNwN4qOsSZg+fYhVZGz1pPRG41LZf/aOrGYWY
 HXy1hvVGevPML5nY3lNAo2Kh3jR5NeVaJQBh0uawl0Cg8kehf8vCMQpzFzVwLoa087xxWJJTOzlN
 GfuAbJXswvrbZytMiuboUpozMoJzVR7TERhLhzr4yzs1nVEez/LlbXYZ6IA+WZ05cGOfUPeeYymS
 EwU6PH4jyQgY1hOwunZk5A==
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_223415_461539_D45CEF81 
X-CRM114-Status: GOOD (  51.06  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Troubles booting kernel with new imx8 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

Thank you for all this, there is a solid lot of info for me to go through.
I really appreciate it. 

I'll look at the optee /tf-a situation and start there i think.

Cheers
Marc

On Wednesday, 31 May 2023 3:50:50 PM AEST you wrote:
> Hello Marc,
> 
> On 27.05.23 07:35, marc@cpdesign.com.au wrote:
> > Hi,
> > 
> > Thanks for responses, some more info:
> > - imx8mp based system, 1Gb LPDDR, uses same PMIC as other boards (PCA9450)
> > - barebox master
> > - u-boot is NXP fork
> > - kernel is NXP fork, 5.15.31
> 
> Keep in mind that, as far as I am aware, most testing, if not all,
> of the barebox i.MX8MP support was against the mainline kernel. Certainly
> all projects at our side don't use NXP's fork.
> 
> >>> I'm trying to get barebox going for a new imx8mp based board. I can
> >>> successfully power on and get to a barebox prompt etc and fiddle with
> >>> gpios, files on sd, memtest etc, but when booting to kernel it will
> >>> hang.
> >>> Note though that the board boots ok with u-boot (using exact same kernel
> >>> image).
> >> 
> >> Do you have an example crash dump? Does the kernel crash reproducibly or
> >> randomly?
> > 
> > It always hangs at the same point in the kernel boot sequence (see
> > "startup- log-barebox.txt"). You can also see "startup-log-u-boot.txt"
> > for the output of a complete boot.
> 
> My go-to for hanging boot is
> 
>   no_console_suspend pm_debug_messages pd_ignore_unused clk_ignore_unused
> 
> Maybe add maxcpus=1 and see if you get some useful indication what happens
> just before hang?
> 
> > If i change some kernel config options the boot progresses further, and
> > when CONFIG_ARM_IMX_CPUFREQ_DT=n and CONFIG_IMX_SDMA=n then it will get
> > to systemd starting.
> 
> Maybe one of these drivers calls in TF-A? Do you use same TF-A/ATF in both
> configurations?
> 
> >>> I'm trying to figure out what is different between booting via uboot and
> >>> barebox, I'm new to imx8 so have been going down a few rabbit holes...
> 
> FWIW, here's a FOSDEM talk on how barebox boots the i.MX8M:
> https://archive.fosdem.org/2021/schedule/event/from_reset_vector_to_kernel/
> 
> >>> Disabling various drivers (eg imx-cpufreq-dt) in the kernel will get
> >>> past
> >>> the hang, but result in a crash later on in the boot sequence. Disabling
> >>> that may get further but will result in a crash somewhere else.
> >>> My instinct is that its something to do with sdma, but a lot of this is
> >>> still a black box to me.
> >> 
> >> SDMA is only used in few devices like UART, I2C, SPI and sound. Apart
> >> from
> >> sound all devices should work without SDMA, so you could disable the
> >> driver.
> > 
> > I was getting (after disabling some things in kernel) crash traces in
> > sdma_transfer_init etc, which is what made me suspect it. (see
> > startup-log-
> > barebox-after-kernel-change1.txt)
> > Disabling the driver does indeed avoid this crash.
> 
> Hmm, strange.
> 
> >> PMIC comes to my mind. Does it need some configuration?
> > 
> > The PMIC has the same register/value writes as in the u-boot version.
> 
> Are you sure there are no writes in main U-Boot apart from what SPL sets up?
> >> Is the amount of memory detected correctly by barebox?
> > 
> > Barebox detects 1Gb, correct
> > 
> > I did a compare of the startup logs (The cuts are to remove the
> > timestamps)
> > ```kompare <(diff <(cut -c 15- startup-log-u-boot.txt) <(cut -c 15-
> > startup- log-barebox.txt))```
> > 
> > I noticed some differences in the 'reserved mem' at the start and the
> > 'NUMA' early memory node ranges.
> > 
> > When booting from u-boot I get:
> >     [    0.000000] Reserved memory: created CMA memory pool at
> > 
> > 0x0000000060000000, size 512 MiB
> > 
> >     [    0.000000] OF: reserved mem: initialized node linux,cma,
> >     compatible id
> > 
> > shared-dma-pool
> > 
> > But when booting from barebox:
> >      [    0.000000] OF: reserved mem: failed to allocate memory for node
> > 
> > 'linux,cma'
> > 
> >     [    0.000000] Reserved memory: created DMA memory pool at
> > 
> > 0x0000000055400000, size 1 MiB
> > 
> > 
> > For the early node ranges:
> > from u-boot:
> > 
> > [    0.000000] NUMA: NODE_DATA [mem 0x5fdba800-0x5fdbcfff]
> > [    0.000000] Zone ranges:
> > [    0.000000]   DMA      [mem 0x0000000040000000-0x000000007fffffff]
> > [    0.000000]   DMA32    empty
> > [    0.000000]   Normal   empty
> > [    0.000000] Movable zone start for each node
> > [    0.000000] Early memory node ranges
> > [    0.000000]   node   0: [mem 0x0000000040000000-0x0000000054ffffff]
> > [    0.000000]   node   0: [mem 0x0000000055000000-0x000000005500ffff]
> > [    0.000000]   node   0: [mem 0x0000000055010000-0x00000000550fefff]
> > [    0.000000]   node   0: [mem 0x00000000550ff000-0x00000000550fffff]
> > [    0.000000]   node   0: [mem 0x0000000055100000-0x00000000553fffff]
> > [    0.000000]   node   0: [mem 0x0000000055400000-0x00000000554fffff]
> > [    0.000000]   node   0: [mem 0x0000000055500000-0x0000000055ffffff]
> > [    0.000000]   node   0: [mem 0x0000000058000000-0x000000007fffffff]
> > 
> > 
> > and from barebox:
> > 
> > [    0.000000] NUMA: NODE_DATA [mem 0x7fdaa800-0x7fdacfff]
> > [    0.000000] Zone ranges:
> > [    0.000000]   DMA      [mem 0x0000000040000000-0x000000007fffffff]
> > [    0.000000]   DMA32    empty
> > [    0.000000]   Normal   empty
> > [    0.000000] Movable zone start for each node
> > [    0.000000] Early memory node ranges
> > [    0.000000]   node   0: [mem 0x0000000040000000-0x0000000054ffffff]
> > [    0.000000]   node   0: [mem 0x0000000055000000-0x000000005500ffff]
> > [    0.000000]   node   0: [mem 0x0000000055010000-0x00000000550fefff]
> > [    0.000000]   node   0: [mem 0x00000000550ff000-0x00000000550fffff]
> > [    0.000000]   node   0: [mem 0x0000000055100000-0x00000000553fffff]
> > [    0.000000]   node   0: [mem 0x0000000055400000-0x00000000554fffff]
> > [    0.000000]   node   0: [mem 0x0000000055500000-0x000000007fffffff]
> > 
> > Notably there is an range in the u-boot ranges which creates a gap from
> > 0x56000000 to 0x57ffffff (32Mb).
> 
> That's probably OP-TEE. That would be in line with startup-log-u-boot
> saying:
> 
>   [    1.636240] optee: revision 3.19 (00919403)
> 
> Whether that's a problem depends on where OP-TEE comes from. On i.MX8MQ,
> OP-TEE was built into TF-A. On i.MX8MM, it was usually outside. If it's
> built into TF-A in your i.MX8MP setup, this would explain your problems.
> 
> > I'm wondering how this difference comes about when both bootloaders are
> > booting the same devicetree and kernel image?
> 
> The devicetrees are not the same, because of bootloader fixups:
> 
>   - U-Boot inserts OP-TEE nodes for you. barebox can too, but you don't have
> that configured (not sure if you need it)
> 
>   - NXP U-Boot messes with power domains, e.g. disable specific VPU nodes
> _by name_ for stripped down versions of i.MX8MP. barebox also does
> disabling, but on the upstream device tree nodes.
> 
> If you want an accurate comparison of the device trees, look in
> /proc/devicetree and compare. dtc can make a dts out of the directory. If
> it's too flaky with barebox, add some -v to boot/bootm (I think -vv should
> suffice) and barebox will print the fixed up device tree to console before
> bootup.
> 
> 
> What seems likely is that OP-TEE is built into the TF-A and you fail
> to account for that. If so, try building TF-A yourself without OP-TEE and
> see if it's better. The barebox docs for i.MX8MP-EVK have instructions.
> 
> If it is better and you want OP-TEE, have OP-TEE external to TF-A.
> This is better anyway, because TF-A+OP-TEE+barebox PBL may get too big in
> SRAM in future.
> 
> Let me know how it goes.
> 
> Cheers,
> Ahmad
> 
> > Cheers
> > Marc






