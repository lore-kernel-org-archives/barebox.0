Delivery-date: Wed, 19 Aug 2026 13:17:04 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wweI3-004qS0-1J
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 13:17:04 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 00BDD20190E
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 13:17:04 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JsMS4KNk;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AF0YqqRRarPpYNLwFc/2dy6oFIDTv5qS8ZyfYsZtuZI=; b=JsMS4KNk30QKBNnaU167XTWhLX
	sD0UvR7FvO+D5SkM9+VbkzwrVSlbyhbjfKbQW0t42J9J0vjFh3bnHJRTVbLuUps371ILqAVwhBdyT
	p6wMfDWrn9eAxXCpFwPqGFOYo+wGI9wnIMIBsRCV3b5IlXUEtQlcLUJKn3PjSoYU8+4kyfTbCs2Rs
	+7yMNXaXUdkfSlJcm4KDdMIEJq+EAptL8hxiJiOOqyQi6geGPAHYhAgKtG4DB9ZVDt+/ydIN17z4j
	WrdqFkcPnGECbkYMMgTIJavg2OTDekJ7ZORlZJnQWmQ5Xp4iU3C/c+QQRGl38QOJyXPbcAbv1XxzA
	VgWF0zWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wweHj-00000009eQS-15IO;
	Wed, 19 Aug 2026 11:16:43 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wweHf-00000009ePH-2wn8
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 11:16:41 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id F0EF820190E;
	Wed, 19 Aug 2026 13:16:37 +0200 (CEST)
Message-ID: <adfd0175-d8cb-40a2-9f63-b1982682418c@pengutronix.de>
Date: Wed, 19 Aug 2026 13:16:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: iMX ddrphy_utils difference with U-boot
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrei Lalaev <andrey.lalaev@gmail.com>, barebox@lists.infradead.org
References: <E1wZ30Z-00000006Gk9-35a3@pty.whiteo.stw.pengutronix.de>
 <db7b48bd-24d8-4249-92f8-fe38af5cb212@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <db7b48bd-24d8-4249-92f8-fe38af5cb212@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_041639_922408_F6BD1B41 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 8/19/26 10:26 AM, Ahmad Fatoum wrote: > Hi, > > On 6/15/26
    10:49 AM, Sascha Hauer wrote: >> On 2026-06-08 19:26, Ahmad Fatoum wrote:
    >>> Hello Andrei, >>> >>> On 6/8/26 16:24, Andrei Lalaev wrote: [...] 
 
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
X-Stat-Signature: dn8hqwrmz8ozyiomikwszuee8d7cr5h5
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FREEMAIL_CC(0.00)[gmail.com,lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 00BDD20190E



On 8/19/26 10:26 AM, Ahmad Fatoum wrote:
> Hi,
> 
> On 6/15/26 10:49 AM, Sascha Hauer wrote:
>> On 2026-06-08 19:26, Ahmad Fatoum wrote:
>>> Hello Andrei,
>>>
>>> On 6/8/26 16:24, Andrei Lalaev wrote:
>>>> Hi,
>>>>
>>>> I am moving an iMX8MP module from vendor U-Boot 2024.04 to Barebox 2025.02
>>>
>>> Sidenote: You'll probably want to use one of the still supported
>>> v2026.04 or v2026.06 releases.
>>>
>>>> and found a strange difference in the DDR training code:
>>>>
>>>>   vim drivers/ddr/imx/ddrphy_utils.c +94
>>>>
>>>> And the corresponding line in U-Boot:
>>>>
>>>>   vim drivers/ddr/imx/phy/ddrphy_utils.c +101
>>>>
>>>> Is there any chance that somebody knows/remembers why "return -1" was replaced with "hang()"?
>>>
>>> I can't speak for Sascha, but having looked at the code, I see no reason
>>> why not to propagate the error.
>>>
>>>> I couldn't find any explanation in the commits/mailing lists.
>>>
>>> My guess is that it wasn't anticipated that boards would handle
>>> the error gracefully to fall back to a different DDR init.
>>
>> That's my guess as well. Note the callers of
>> imx8m_wait_ddrphy_training_complete() which is only a wrapper around
>> calling wait_ddrphy_training_complete() do not check the error code, so
>> when changing it back to return an error code we likely want to add
>> error checking where missing.
> 
> I just stumbled upon this patch:
> https://lore.kernel.org/all/20260819070758.51350-1-frieder@fris.de/
> 
> If we start allowing ddr_cfg_phy to propagate this error, you'll likely
> want above patch as well.

Or maybe not. Just thought to let you know.

Cheers,
Ahmad

> 
> Cheers,
> Ahmad
> 
>>
>> Sascha
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



