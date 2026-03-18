Delivery-date: Wed, 18 Mar 2026 12:44:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2pK4-002AyD-2S
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 12:44:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2pK4-0002Kf-7C
	for lore@pengutronix.de; Wed, 18 Mar 2026 12:44:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wrEDe2nsezyZJ3ZK/t/w9u/CIb/h5SVzlbjtxH7eRtA=; b=hHQJc0izekfU2UMK6sE8Ohxb57
	+ThYjXWRYdVW549Ou4+Abz4DlCh85H737Q74kykVsW/nWexkYdooui4wS5b8DE30nW5rh2luGAi0u
	xR5VQEBJgHSpmgGKJugEOmGg2mYKkO2udF+9mzZKpT3CHkFMGfDewHKzqQ3IkyYVbkyECz1wK2BJ4
	6EBigOHmqsvJ/jcXGbMPyCLnmojl3HbKVj5MIfAjH+xVfZUp6rkyE1PTs1OsMMZUriXW9326rrPQX
	zJIanBe+QCSrwPtkN4SVNtVx/e+hQj1Prk7Af+9q0XmzS5eC00Npf1EFDD27Io3wtGPisn6aO8k4V
	SFnrYz2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2pJj-00000008KaP-2lWU;
	Wed, 18 Mar 2026 11:44:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2pJf-00000008KYz-3U4I
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 11:44:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2pJe-0002Dt-6Y; Wed, 18 Mar 2026 12:43:58 +0100
Message-ID: <278bceb7-5ecb-49be-b0fe-1f2ea484cf1a@pengutronix.de>
Date: Wed, 18 Mar 2026 12:43:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>, Fabian Pflug <f.pflug@pengutronix.de>
References: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
 <177382783033.2948380.7981698552782103802.b4-ty@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <177382783033.2948380.7981698552782103802.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_044400_989668_C91070E3 
X-CRM114-Status: GOOD (  13.34  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 0/5] Add helper for security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 3/18/26 10:57, Sascha Hauer wrote:
> 
> On Wed, 18 Mar 2026 10:21:58 +0100, Fabian Pflug wrote:
>> This series adds helper functions to the security policy framework to
>> do additional work based on the selected policy.
>> Like adding the policy name to the commandline and configuring pinmux
>> based on the selected policy.
>>
>>
> 
> Applied, thanks!
> 
> [1/5] of: add of_property_write_string_array()
>       https://git.pengutronix.de/cgit/barebox/commit/?id=a8ecb979939e (link may not be stable)
> [2/5] common: bootm: add policy to commandline
>       https://git.pengutronix.de/cgit/barebox/commit/?id=d89e470bf141 (link may not be stable)
> [3/5] security: policy: set active policy on boot
>       https://git.pengutronix.de/cgit/barebox/commit/?id=6723f82f4041 (link may not be stable)
> [4/5] security: configure pinctrl based on policy name
>       https://git.pengutronix.de/cgit/barebox/commit/?id=821e5618a05b (link may not be stable)
> [5/5] security: kernel_pinctrl: fixup pinctrl in kernel dts
>       https://git.pengutronix.de/cgit/barebox/commit/?id=c5ad4d3f6fcf (link may not be stable)


Please revert. The series needs rework and introduces a regression AFAICS.

Thanks,
Ahmad

> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


