Delivery-date: Thu, 20 Aug 2026 10:06:56 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwxnc-0059q9-00
	for lore@lore.pengutronix.de;
	Thu, 20 Aug 2026 10:06:56 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 933F0201096
	for <lore@pengutronix.de>; Thu, 20 Aug 2026 10:06:56 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=dKCuckWo;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4/N3hcvObrGLI0mtxv8a71f1kEogXZvrPt3gxDls2As=; b=dKCuckWoa3uk3T6VP9J1T9AgDR
	q2n8oozS4SJilnFE++UpFJt1lr8XSY+2EULw3iT4K96lBohldzkEc4Ys7Xn0iY2xwCmyHPoQWPN9x
	lD7LEpRjw4mkQbf4jWPZH1f1AE3z7jq1UG39C6x9h1UgfpCm9axea3FcRY6VcPY+GqcbFpOckJE86
	Ovn+lfTpVhnKghYlvE9bD6HEPsZJb1BGHieRWM7mQ3poGyE93bPnCNG5kWBE/d1GvYpowGlUEIppo
	QiNa2hPJVj8k5CAe5t7cF/FUSIii9hb/2UOhtWd+ZIwpSRxos06k6MnJjfOHTcymMBfxbic0A+Yrr
	47B6tEBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwxnJ-0000000B7aH-3VvV;
	Thu, 20 Aug 2026 08:06:37 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwxnF-0000000B7ZZ-2LYn
	for barebox@lists.infradead.org;
	Thu, 20 Aug 2026 08:06:36 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: ske@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 38EE6200F4F;
	Thu, 20 Aug 2026 10:06:31 +0200 (CEST)
Message-ID: <e7d3fc75-e3c7-4772-8fd5-5c14bb0a5be8@pengutronix.de>
Date: Thu, 20 Aug 2026 10:06:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/8] ARM: layerscape: re-init pbl clocksource
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
 <20260817-feature-pbl-get-time-ns-v3-5-9874c1438855@pengutronix.de>
 <c6e810bb-66fa-4101-af55-3ada942ebe65@pengutronix.de>
Content-Language: en-US, de-DE
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <c6e810bb-66fa-4101-af55-3ada942ebe65@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_010633_760638_23129E2F 
X-CRM114-Status: GOOD (  22.19  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Sascha, On 8/20/26 08:59, Sascha Hauer wrote: > On 2026-08-17
    16:01, Stefan Kerkmann wrote: >> After setting the cntfrq the global PBL
   clocksource must be >> re-initialized to function correctly. >> >> Signed
   [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: dk6qf68kxjcrzdzj3h3qz8afsgrzir5t
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_ALL(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 933F0201096

Hi Sascha,

On 8/20/26 08:59, Sascha Hauer wrote:
> On 2026-08-17 16:01, Stefan Kerkmann wrote:
>> After setting the cntfrq the global PBL clocksource must be
>> re-initialized to function correctly.
>>
>> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
>> ---
>>  arch/arm/mach-layerscape/lowlevel-ls1028a.c | 6 +++++-
>>  arch/arm/mach-layerscape/lowlevel-ls1046a.c | 5 ++++-
>>  2 files changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/mach-layerscape/lowlevel-ls1028a.c b/arch/arm/mach-layerscape/lowlevel-ls1028a.c
>> index fd013b2b52..ed9284d55a 100644
>> --- a/arch/arm/mach-layerscape/lowlevel-ls1028a.c
>> +++ b/arch/arm/mach-layerscape/lowlevel-ls1028a.c
>> @@ -1,6 +1,7 @@
>>  // SPDX-License-Identifier: GPL-2.0+
>>  #include <common.h>
>>  #include <io.h>
>> +#include <asm/hardware/arm_architected_timer.h>
>>  #include <asm/syscounter.h>
>>  #include <asm/system.h>
>>  #include <mach/layerscape/errata.h>
>> @@ -35,8 +36,11 @@ static void ls1028a_timer_init(void)
>>  
>>  void ls1028a_init_lowlevel(void)
>>  {
>> +	const uint64_t cntfrq = 25000000;
>> +
>>  	scfg_init(SCFG_ENDIANESS_LITTLE);
>> -	set_cntfrq(25000000);
>> +	set_cntfrq(cntfrq);
>> +	arm_arch_timer_init(cntfrq);
>>  	ls1028a_timer_init();
>>  	ls1028a_errata();
>>  }
> 
> I had to squash this patch together with the next two to avoid
> intermediate compile breakage. Otherwise we get an undefined reference
> to clocksource_hz2mult().
> 
> One thing that strikes me here is that first arm_arch_timer_init() is
> called and afterwards ls1028a_timer_init(). I have no idea what timer
> ls1028a_timer_init() initializes and if that has anything to do with
> the architected timer, but if it has the order should likely be the
> other way round.
> 

>From my understanding this function enables the per-core timers which are driven
by the global system counter (cntfrq/cntpct) but distinct from it[1]. So the
order should be correct?

[1]: https://support.arm.com/documentation/102379/0104/System-Counter

> Sascha
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

Best regards,
Stefan

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |



