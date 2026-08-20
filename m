Delivery-date: Thu, 20 Aug 2026 10:08:11 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwxoo-0059rW-0e
	for lore@lore.pengutronix.de;
	Thu, 20 Aug 2026 10:08:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C3D18202200
	for <lore@pengutronix.de>; Thu, 20 Aug 2026 10:08:10 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wtrOyBwz;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ne6BbkdMTATfEUgDYgKNjQbbuQofhquf1GYVBL0KhTw=; b=wtrOyBwzd77ZnZv/a7Z2wUUgI+
	FwnKHo7ZRrLNxpjvL+eE1wXovykdeitQBLJyR4hVuTzetI0gfCntUNMY6LWe5vabt08QXxBFc0d/Q
	s40tw9tkeGKnsxNGb17dNJNVLkU3cW41joXcRR+RawIgnxNYGrL0bXV24jwRjH9aYnuEBfDCTfpqw
	AeuzFisSj7cXJTkZzcbvNt35SsMlVNT/TX/zHyhoRDk6Rgnv9EVk2Pk1vmkrjDW+ck3PooU9JvGn7
	JoN93WZeLEEHnNacVkIzsWixXnvSeXlxQkMOHou0yF8qtfNz7WUVfC0zKF2D88jeeGq3kU6xjiHT6
	2YjFEB6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwxoa-0000000B7gp-4AcV;
	Thu, 20 Aug 2026 08:07:56 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwxoY-0000000B7gM-139u
	for barebox@lists.infradead.org;
	Thu, 20 Aug 2026 08:07:55 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: ske@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 461A42010F9;
	Thu, 20 Aug 2026 10:07:52 +0200 (CEST)
Message-ID: <285f8e75-d674-465b-b5b0-0669ad4b446d@pengutronix.de>
Date: Thu, 20 Aug 2026 10:07:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/8] drivers: arm_architected_timer: refactor for pbl
 compatibility
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
 <20260817-feature-pbl-get-time-ns-v3-4-9874c1438855@pengutronix.de>
 <a361d161-65c7-446d-bbbc-8e870923df9c@pengutronix.de>
 <adbd4cd9-70d7-4a8d-a692-3a56b5dc81ab@pengutronix.de>
 <a56adf74-a3e3-4ed1-96c5-38619b31fa33@pengutronix.de>
Content-Language: en-US, de-DE
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <a56adf74-a3e3-4ed1-96c5-38619b31fa33@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_010754_447834_CBA93353 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Sascha, On 8/20/26 10:00, Sascha Hauer wrote: > On 2026-08-20
    09:32, Stefan Kerkmann wrote: >>>> diff --git a/drivers/clocksource/arm_architected_timer.c
    b/drivers/clocksource/arm_architected_timer.c >>>> ind [...] 
 
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
X-Stat-Signature: zr74838yez1hn79aagoniiu5awfmwmiz
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
X-Rspamd-Queue-Id: C3D18202200

Hi Sascha,

On 8/20/26 10:00, Sascha Hauer wrote:
> On 2026-08-20 09:32, Stefan Kerkmann wrote:
>>>> diff --git a/drivers/clocksource/arm_architected_timer.c b/drivers/clocksource/arm_architected_timer.c
>>>> index daced94c0e..ea5f5b8e05 100644
>>>> --- a/drivers/clocksource/arm_architected_timer.c
>>>> +++ b/drivers/clocksource/arm_architected_timer.c
>>>> @@ -9,6 +9,7 @@
>>>>  #include <linux/clk.h>
>>>>  #include <io.h>
>>>>  #include <asm/system.h>
>>>> +#include <asm/hardware/arm_architected_timer.h>
>>>>  
>>>>  static uint64_t arm_arch_clocksource_read(void)
>>>>  {
>>>> @@ -22,22 +23,29 @@ static struct clocksource cs = {
>>>>  	.priority = 70,
>>>>  };
>>>>  
>>>> -static int arm_arch_timer_probe(struct device *dev)
>>>> +int arm_arch_timer_init(uint64_t cntfrq)
>>>>  {
>>>> -	u32 cntfrq;
>>>> -	int ret;
>>>> -
>>>> -	/* Some platforms don't set CNTFRQ_EL0 before barebox */
>>>> -	ret = of_property_read_u32(dev->of_node, "clock-frequency", &cntfrq);
>>>> -
>>>> -	if (ret)
>>>> +	if (!cntfrq)
>>>>  		cntfrq = get_cntfrq();
>>>
>>> I wonder if we should just drop the cntfrq argument. All users call
>>> set_cntfrq() before calling this, so get_cntfrq() should return the
>>> correct value and we can rely on it.
>>>
>>
>> Maybe keep the argument and use set_cntfrq in arm_arch_timer_init if the
>> argument is !=0? Then arm_arch_timer_init is the function to use if a C
>> environment is available? This would prevent any inconsistency.
> 
> I am not sure, but set_cntfrq() might only be usable in EL3, so you
> would have to be careful about the exception level when calling
> arm_arch_timer_init() with a non zero argument.
> 

Yes, it would have to be guarded by an el3 check.

> Sascha
> 

Best regards,
Stefan

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |



