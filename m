Delivery-date: Tue, 24 Jun 2025 11:05:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTzaq-00AYMp-0P
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 11:05:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTzap-0007q5-JT
	for lore@pengutronix.de; Tue, 24 Jun 2025 11:05:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7l1gIfoPxvXfnD4UXQ+gPoyBJ2t+n7+CEWhAbTFuzrA=; b=IXJRwkBC6o/QIN7G0RjFegwmSV
	l7muhGHPfzHiPgfwBcpWMdPYto34aEyFSrhtn5mJn6vIRT1uoi9KroU/FEsvFDLH49RIPFFl+VPRN
	5PzZIlytUE8NqNJ+7WFkn9S+GQhJCYv5oa7pN1E1wQ8/iF+rilv15ZbBrCPB1InXxlqJh+st3ciTq
	Eo7Em2EtG8RG9Q/dG2KUROr/t4Ofw+ottPc9fccEiBn8ZmeiiorFFT7nkzzLp0PKVobRNXaS4w5dJ
	yUUzCjEXW1Y/IyOfWV4au27d9CFySo7sAZe5TKeQsQX4/DtJhPnnwSAYyuMYGFJ9a+c8A1fVGKgiM
	pQSv9WiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTzaM-000000057RL-0xF4;
	Tue, 24 Jun 2025 09:04:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTzUz-000000056Y6-2MfW
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 08:59:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uTzUy-0001NW-Aj; Tue, 24 Jun 2025 10:59:24 +0200
Message-ID: <3f0dfef5-b380-4bdc-9cd7-86ddd7cbf83a@pengutronix.de>
Date: Tue, 24 Jun 2025 10:59:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250624081712.4054548-1-a.fatoum@pengutronix.de>
 <aFpiFmyiNN6IL5UI@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aFpiFmyiNN6IL5UI@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_015925_613032_AEE03D23 
X-CRM114-Status: GOOD (  14.39  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! test: Add pytest suite for NVMEM framework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/24/25 10:30, Oleksij Rempel wrote:
> On Tue, Jun 24, 2025 at 10:17:12AM +0200, Ahmad Fatoum wrote:
>> If CONFIG_DEBUG_PROBES is enabled, barebox will print an info log
>> whenever a device is probed. This breaks one test case in the newly
>> introduced nvmem tests, because running the nvmem command results in two
>> lines instead of one:
>>
>>       probe-> rmem1
>>   rmem1
>>
>> A better solution might be disabling stderr, but for now, let's just
>> have the test check all lines that appeared after running the command.
>>
>> This fixes CI breakage in next.
>>
>> Cc: Oleksij Rempel <o.rempel@pengutronix.de>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> LGTM
> 
> May be better to keep it as separate patch, not as fixup? Since It provides
> important information.

Fine with me either way. If Sascha prefers a separate patch I would
suggest as commit message title:

  test: nvmem: fix test failure with CONFIG_DEBUG_PROBES

Cheers,
Ahmad

> 
> Best Regards,
> Oleksij

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



