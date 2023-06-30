Delivery-date: Fri, 30 Jun 2023 07:54:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qF75L-009HfX-AJ
	for lore@lore.pengutronix.de; Fri, 30 Jun 2023 07:54:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qF75I-0003od-Qb
	for lore@pengutronix.de; Fri, 30 Jun 2023 07:54:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9Pmn1hFloV2kWZAyVnAw+mZlOoBgw+YIasW0pC+XJls=; b=o11q8l3ArlzpVdUtBevcLi/L9V
	RWsUmvjH0f3aHkkIDt6QAJPHZr8B71UF8nJ/ckJK+iH5xH/UO1Lsia4GzbqrCpMvl6C0WVZokdtnj
	/ks6KZdrUMrBfqV5XMWGAp0wXEAsPepshGRMLt/29/srNVOu4FwbwpTq4qGDvzf+xHvp8Fa6gyhu0
	80ssCevRCcoGxvpkNooWWz2/wrZ5DI1vsRowTVduP+rS54poblcgik3kSXExEeMIVbRV/5TrLlHw3
	Tvv2dq/Jtf/PNHzw00J7XumD45tB5EKWMphvr1yJbKXcEvMyWtKTgi9/Bf/f8P1p7HUe8YPwS6EsB
	0dPSq3yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qF73j-002xvE-1M;
	Fri, 30 Jun 2023 05:52:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qF73g-002xuN-0t
	for barebox@lists.infradead.org;
	Fri, 30 Jun 2023 05:52:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qF73Z-0003kY-Vh; Fri, 30 Jun 2023 07:52:34 +0200
Message-ID: <0623c749-be9a-423a-d79d-e21a8513af88@pengutronix.de>
Date: Fri, 30 Jun 2023 07:52:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Lior Weintraub <liorw@pliops.com>, Ahmad Fatoum <ahmad@a3f.at>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <f4aae166-1cc4-6255-1fde-7a52c7872bd8@pengutronix.de>
 <381bd0cc-26b3-ad2e-1857-436932549934@pengutronix.de>
 <PR3P195MB055562ACCF6EBF0A490BBB4EC354A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <d4fddd30-74bc-dab3-a6e0-a83920d2763f@pengutronix.de>
 <PR3P195MB0555C35406A3BC621BA1038EC354A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <15f8d795-f486-1914-9eba-e5a315bf2083@pengutronix.de>
 <PR3P195MB055508CA0B6A5CE36DCCADD4C355A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <f2fa8b9e-ae3e-ac89-a7ab-4710aebcdb98@pengutronix.de>
 <PR3P195MB0555E76684395257F4C32426C355A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <PR3P195MB0555565681087967FFAA3CBEC35AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <7023e1e4-f383-49aa-e194-3c61be33c9fe@pengutronix.de>
 <PR3P195MB0555BA90F8CC6FDAAD775C50C35FA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <2dd1dcef-8c63-5360-365d-c4ac29dad38c@pengutronix.de>
 <PR3P195MB05559F58793017F19F9AD1F3C321A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <PR3P195MB05559F58793017F19F9AD1F3C321A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_225240_333210_3775361A 
X-CRM114-Status: GOOD (  27.45  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] Porting barebox to a new SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Lior,

On 25.06.23 22:33, Lior Weintraub wrote:
> Hello Ahmad,

[Sorry for the delay, we're at EOSS 2023 currently]
 
> I failed to reproduce this issue on virt because the addresses and peripherals on virt machine are different and it is difficult to change our code to match that.
> If you think this is critical I will make extra effort to make it work.
> AFAIU, this suggestion was made to debug the "conflict" issue.

It's not critical, but I'd have liked to understand this, so I can check
if it's perhaps a barebox bug.

> Currently the workaround I am using is just to set the size of the kernel partition to match the exact size of the "Image" file.
> 
> The other issue I am facing is that Kernel seems stuck on cpu_do_idle and there is no login prompt from the kernel.

Does it call into PSCI during idle?

> As you recall, I am running on a custom QEMU that tries to emulate our platform.
> I suspect that I did something wrong with the GICv3 and Timers connectivity.
> The code I used was based on examples I saw on sbsa-ref.c and virt.c.
> In addition, I declared the GICv3 and timers on our device tree.
> 
> I running QEMU with "-d int" so I am also getting trace of exceptions and interrupts.

Nice. Didn't know about this option.

[snip]

> Exception return from AArch64 EL3 to AArch64 EL1 PC 0xffffffc00802112c
> Taking exception 13 [Secure Monitor Call] on CPU 0
> ...from EL1 to EL3
> ...with ESR 0x17/0x5e000000
> ...with ELR 0xffffffc008021640
> ...to EL3 PC 0x10005400 PSTATE 0x3cd
> Exception return from AArch64 EL3 to AArch64 EL1 PC 0xffffffc008021640

Looks fine so far? Doesn't look like it's hanging in EL1.

[snip]

> Segment Routing with IPv6
> In-situ OAM (IOAM) with IPv6
> sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
> NET: Registered PF_PACKET protocol family
> NET: Registered PF_KEY protocol family
> NET: Registered PF_VSOCK protocol family
> registered taskstats version 1
> clk: Disabling unused clocks
> Freeing unused kernel memory: 1664K

Not sure. Normally, I'd try again with pd_ignore_unused clk_ignore_unused in the
kernel arguments, but I think you define no clocks or power domains yet in the DT?

You can try again with kernel command line option initcall_debug and see what the
initcall is that is getting stuck. If nothing helps, maybe attach a hardware debugger?

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



