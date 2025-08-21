Delivery-date: Thu, 21 Aug 2025 21:14:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upAjZ-0033zR-3A
	for lore@lore.pengutronix.de;
	Thu, 21 Aug 2025 21:14:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upAjY-0007yi-Qu
	for lore@pengutronix.de; Thu, 21 Aug 2025 21:14:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sjpBD1qLcMbNc978x7OfHBtlbCGodz+MIfEjD5k7tCo=; b=utQGgkvguarrhRKdev7ovYBqWL
	/7cdxqM5gTsr+cMMeG5GSO2ZCINZ4Z03kBoKrw3pxMG8DBrvLK9RHlmOjUfDZV0q1CdT6Sbw0Vo20
	U6d248kfigVFIzjlkvJCHw8ZZNZJmDPxgr+Gr9Wy4WerTD330jhvfShJ7ruDd0L0fs4gr0VH9gXAF
	MiDiyvZStXY+i0SLp9f/2Ku7LzVqmQTCQBbTFuiuHKvTucmY0bZAoZ3G2e9iS5xX7zBnlqBImzpZx
	t48MSkyG7gsV77H10qnZ5XdQ8FdRsy5V383JxZom5U9u2oV0oZL9XsA4DVbhUp+eJS/q+Mc0/hefz
	2X0XbYnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upAj4-00000000GE2-157A;
	Thu, 21 Aug 2025 19:13:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up6BK-0000000HCcQ-2Cz4
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 14:22:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1up6BH-0001PW-HF; Thu, 21 Aug 2025 16:22:19 +0200
Message-ID: <6da8d437-9941-40b6-8ed8-9dff28074d26@pengutronix.de>
Date: Thu, 21 Aug 2025 16:22:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@barebox.org>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
 <20250820-security-policies-v1-15-76fde70fdbd8@pengutronix.de>
 <227a5210-f01f-48ce-9908-50ebc01931a8@pengutronix.de>
 <aKcqG3-GGxFvjqd2@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aKcqG3-GGxFvjqd2@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_072222_569653_C551559E 
X-CRM114-Status: GOOD (  18.20  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 15/24] boards: qemu-virt: add security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 8/21/25 16:15, Sascha Hauer wrote:
> On Thu, Aug 21, 2025 at 08:57:10AM +0200, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 8/20/25 15:17, Sascha Hauer wrote:
>>> From: Ahmad Fatoum <a.fatoum@barebox.org>
>>>
>>> To make it easier to experiment with security policies, add four example
>>> configurations, two via the build system and two "externally".
>>
>> The configs need a make security_olddefconfig due to the addition of the
>> new symbols in later commits.
> 
> Indeed.
> 
> One thing I just noticed is that the qemu-virt board is built for both
> 32bit and 64bit boards. The sconfig files are currently suitable for the
> 32bit variant, but enabling security policies in multi_v8_defconfig
> results in a
> 
> Security policy qemu-virt-lockdown.sconfig.tmp was not up to date.
> 
> This is not a problem since security policies are only enabled in
> virt32_secure_defconfig, but nevertheless that's something we might want
> to improve somehow.

You can get the same message too in multi_v7_defconfig if we start
configuring things differently to virt32_secure_defconfig..

There's potential for future improvement for sure, yes.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



