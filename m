Delivery-date: Wed, 05 Aug 2026 14:01:01 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wraIv-006cXa-0Q
	for lore@lore.pengutronix.de;
	Wed, 05 Aug 2026 14:01:01 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7FB8D2002FE
	for <lore@pengutronix.de>; Wed, 05 Aug 2026 14:01:01 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FoHQyXKh;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rAjrrlDpHUkbKua6XINEOYDhqsUTWpphP/pGUmXcKjI=; b=FoHQyXKhbkWtziK2mUd+iWt9Sy
	qULrjWxbSjJb2GbMSbeiGBPpzbmrCc7qN9NnQrn01twedUwGjmpevxG6QAIQ5qngO6ZLTb7zOGCwe
	q8TSmLdnCHsQZDfm8jdzrGCsynvrsdNvgDbnvD5Bpl/TNb2Q5Ipbw9EhgO8ilNWH9iO3CE7Z1x9bp
	AALKpqxJMOhKnJ0qC8yXA/i4ui89OPVmRahm1N/qaKnkWR1CGxX+2l1MvwlRiMFQz6+7nyNKSo8QN
	NMA/O4rdjELhuVIQ424ZVRe1aJEL4XrWjYDuf9pf70supNW6RW5pwNDR2HFMKxlCErZS/XWey+Ei7
	+Rr3AvXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wraHS-00000003qyc-2Ylp;
	Wed, 05 Aug 2026 11:59:30 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wraHO-00000003qyF-2jLD
	for barebox@lists.infradead.org;
	Wed, 05 Aug 2026 11:59:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 40DC2200740;
	Wed, 05 Aug 2026 13:59:21 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wraHJ-0036FL-0Q;
	Wed, 05 Aug 2026 13:59:21 +0200
Message-ID: <9c0886a8-4293-4acb-9962-1347194dae71@pengutronix.de>
Date: Wed, 5 Aug 2026 13:59:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] ARM: cpu: suppress arm_early_mmu_cache_invalidate if
 dcache enabled
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>, barebox@lists.infradead.org
References: <20260707080707.997606-1-a.fatoum@pengutronix.de>
 <491622cd3262aaf95d5ed3f45044c29cdffed696.camel@pengutronix.de>
 <ba9e9ab0-b16e-44b2-91e6-fb036d0e66f0@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <ba9e9ab0-b16e-44b2-91e6-fb036d0e66f0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_045926_864922_26A057AC 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Lucas, On 7/7/26 7:20 PM, Ahmad Fatoum wrote: >> Also,
    by moving the call to a later point in the init flow later in the >> series,
    are you sure that the invalidate happens before the I cache >> gets enabled
    [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Spamd-Result: default: False [-6.61 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.20)[2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7FB8D2002FE
X-Stat-Signature: 8uprjj881zhfsm341t9csrdw4d4qp9g6

Hello Lucas,

On 7/7/26 7:20 PM, Ahmad Fatoum wrote:
>> Also, by moving the call to a later point in the init flow later in the
>> series, are you sure that the invalidate happens before the I cache
>> gets enabled in arm_cpu_lowlevel_init()?
> arm_cpu_lowlevel_init() invalidates I cache on ARMv6 and ARMv7.
> I believe on ARMv8, it's not necessary?
> 
> Interestingly, for ARMv8, I-Cache looks like it is only enabled early
> for EL3, but for EL2/1, it's enabled in mmu_early_enable(). Any reason
> for that?

Any thoughts on this?

Cheers,
Ahmad


-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



