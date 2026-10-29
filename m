Delivery-date: Thu, 29 Oct 2026 09:48:09 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMLns-004g3t-1l
	for lore@lore.pengutronix.de;
	Thu, 29 Oct 2026 09:48:08 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5AA2E201FF2
	for <lore@pengutronix.de>; Thu, 29 Oct 2026 09:48:08 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=C8JLQ7ud;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=HfoR1UQq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793263688;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=GvC5QbdBlLKOOn4FVGj2S/sqzK4QX1zFiqNMNTWOxfE=;
	b=A9CPuSSOqHZwqZ2AZeiGSUBTOXO+7miHH3lHU8Hj/T8mHEsjblY5j+wuEnIb+pkPZNKnGO
	KUbOFrI9SsiqB4Dh5E3ipKXQ6GiSkDhD5MLMjrjtf7QcJ17eGzQrGQF9Ti0db4CQucLWVU
	TTYrRuGNTkKZGie8SPMIMRo7I0trK1ygons7WrmKj/P4sKgoKr3/1PEa3FTzQsbOJncjQV
	yI5uGDcuDlyaK7mO2wqUp6xPauOmgjirsNAWl7r9tmvmA+rYfMwU0Ujrw2bD2u87K/9k9X
	OACG0Rzj8ZiQXiHJdhDRJjy70a4IkpSTEZ+qELAb1pzt8ih7qA0V9h519wAo5Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=C8JLQ7ud;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=HfoR1UQq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793263688; a=rsa-sha256;
	cv=pass;
	b=NeKn1ioGuD79pVkdmd1TyKQpV54LuIvMI+jMJapnbpZsxmooT+7SjWGwi5IOn8TQ17XsDo
	Qm3gfBNrYLIEePGqv/ugJ6zq14DGoF5HX983wmB92uImvjAyNOiI95r4rrZiHAQGIt7Cpv
	JbWVqwDs7gMd95I9Nii2w5tUwoyn+jXY0uBUyjfmV93ocA+D/zzOifbIDmnQhL6kA9CNLy
	X8zWHX16gI75xYev0TfnJc8Zz05OCOeTb/ztQwdhZJZ3LOszb3aGAsEUK/tDTZBZw8yG2x
	UdMzNKKWiFfIFaSOHLyV9kKmqHmqkLDwr+nZfSyDuOAZYtXZf83rmo15qoLOrg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=GvC5QbdBlLKOOn4FVGj2S/sqzK4QX1zFiqNMNTWOxfE=; b=C8JLQ7udmrxiRj
	xBxnlPpL/VdHfmIJyywG7cZX0QWVVnAVdNdbVe4K+JYC+1t0InfBVSu+FIhaxcXslZC2+sTAB1UW0
	lx8pqx0Tur9lh2rOEG6xWjj/MC47cuAEqh52okf0ukju5l7kEINvJ7VIhlDafAXwHjGDaS9pCAIBF
	2PQWfQ2s2nRHxNXgesGp9CSDfngHAUH4RuNYIjpgixwH19V8VaUZDXJfxLnh5F3+2THPX9apzgclT
	b2MkP5mDu0I8IOOIoplPma3IDpnFSMGS2maM6CM6GQo3SLa1xcAWXaOrZAOVd8+wxYFXeZVl33l+S
	pkg48T1FD9Stef306PqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMLmf-00000008lHX-3dH3;
	Thu, 29 Oct 2026 08:46:53 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMLmZ-00000008lGJ-36eJ
	for barebox@lists.infradead.org;
	Thu, 29 Oct 2026 08:46:50 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4651C200878;
	Thu, 29 Oct 2026 09:46:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793263604;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GvC5QbdBlLKOOn4FVGj2S/sqzK4QX1zFiqNMNTWOxfE=;
	b=HfoR1UQq/n54qXonXGlANtoX6/VjDOKp2Lvw0Gi7kxY/IAlY0qTUxJquQxkiZ9DAOabbD4
	4K/GBEMge0TbmCA3kipC9d02gz/MZXaYOaUrRo8mgAJu2kUecv4qE393TTLUcFn6YkY8kt
	fv6QCbdU+KxROCT1cC6yOyC/x9vdD99qkOqrhRggcr+zliw6xPJu1hAvdrUVlO7R+YdpdI
	jKmWD+/945vdydVkuIEsUXzwt3H0ZK2QyysQDxckJOeZZrfFhOb7+JwJfYI6KNdmYNVP7C
	oRndRHpG9OxveCXxfFvECjZciTyVxSjUX5yMEOF1PMz9ooRLXuBZQYdn5OX2HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793263604;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GvC5QbdBlLKOOn4FVGj2S/sqzK4QX1zFiqNMNTWOxfE=;
	b=E1mDY9qXFZdyJ7p176iq02KjdnfG98J/qRpSN9y3Ir6CFsGkMKYEDAf/dTVCHRKWsiaeki
	7yuIPNbtn4EsREcxBPQ0uDh8Cw/2ykGfVwL37H98R9n45Rx2aVwdeabgQZrUHDg/1snq/3
	BqAWHk14Bug8zx6Y0PVg4lm9PJBqTsO+1jUSvSFUJtlauk6C2jxjDNseIL7q/YU0MEGDX6
	JYjCsPJCVQJxO3i5lK91B79cY6r00btCl3h706WuDP+fwfIOmNZoeYMs4aStNBtmMTDWJJ
	IJEU02rGRf7sYd6w/Z+Kxb1LZlQXwrRL9JPlWmjHlGxAJhilXBq62dD6Bi4cPA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793263604; a=rsa-sha256;
	cv=none;
	b=c8xYclOue2zYCQFBR/m8Lve8LtbP2xPBnkKywWJXpmWRG5TRxjD5FEssSP2xx9Zkr+WC+d
	gmhurJHqSmn+29B1qGIDJ9Z6WEnUv6Se4JliDq/NW9eeaGfncJgQ94xmmh9OqBMlbSb7ZK
	nmaFGpXJsVSRHmAZb3php1qzWwR7ddrtxbH8H5G9drJwVrdTlZWscqfald5tmRb5sW8dOX
	/P3DrT+ll1HwDZ5rTEo46Qhu1nXraLqy3BWAhTJBDFUJQHi5+ETssSpsOKWY/yFJXQSWJ0
	5ZEEL1xOXNcxhLVe6XlPCsCsxG2iB4q8JT7Zrdku/Zh/uMaJK/vXnntH0zqFcw==
Message-ID: <f99b4af5-2122-484e-a25f-3825961b2058@pengutronix.de>
Date: Thu, 29 Oct 2026 09:46:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH master] video: IPUv3-LDB: fix LVDS serial clock
 configuration
To: Philipp Zabel <p.zabel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, pza@pengutronix.de
References: <20250427134453.637482-1-a.fatoum@pengutronix.de>
 <aBm_gAU4ITMANfwK@pengutronix.de>
 <8e63db4d-b75e-4185-a867-7b846b69c41b@pengutronix.de>
 <67fefe7d5352473523d3d799fe5805ca0d31d1f5.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <67fefe7d5352473523d3d799fe5805ca0d31d1f5.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_014648_425015_A52EE7A6 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Philipp, Hello Sascha, On 5/7/25 10:22 AM, Philipp Zabel
    wrote: > On Mi, 2025-05-07 at 09:25 +0200, Ahmad Fatoum wrote: >> Hello Sascha,
    >> >> On 5/6/25 09:51, Sascha Hauer wrote: >>> On Sun, Apr 27, 2025 at 03:44:53PM
    +020 [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: qzcxui5ti7o3659h6uz6gjzokwof1je1
X-Rspamd-Queue-Id: 5AA2E201FF2

Hello Philipp,
Hello Sascha,

On 5/7/25 10:22 AM, Philipp Zabel wrote:
> On Mi, 2025-05-07 at 09:25 +0200, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 5/6/25 09:51, Sascha Hauer wrote:
>>> On Sun, Apr 27, 2025 at 03:44:53PM +0200, Ahmad Fatoum wrote:
>>
>>>> @@ -189,10 +200,10 @@ static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
>>>>  		pixclk *= 2;
>>
>> This multiplication by 2 is only done for the single channel mode.
> 
> TBH, I don't quite understand this. In the kernel, di_clk is calculated
> as drm_display_mode->clock * 1000 in either mode.
> 
> Does this mean that the pixclk parameter passed to imx6q_ldb_prepare
> was 3.5 MHz here, resulting in the 7 MHz rate that ldb_di0_podf is set
> to after this multiplication?
> 
>>>>  
>>>>  	if (dual) {
>>>> -		imx6q_set_clock(ldb, ipuno, dino, 0, pixclk);
>>>> -		imx6q_set_clock(ldb, ipuno, dino, 1, pixclk);
>>>> +		imx6q_set_clock(ldb, ipuno, dino, 0, pixclk * 7, pixclk);
>>>> +		imx6q_set_clock(ldb, ipuno, dino, 1, pixclk * 7, pixclk);
> 
> The di_clk:serial_clk ratio is 1:7 here, regardless of what happened to
> pixclk before.

This patch is indeed wrong and the regression is fixed now by
v2026.10.0, which contains commit 683819ecd972, a backport of the Linux
commit da321133b53 ("clk: divider: fix calculation of maximal parent
rate for a given divider").

Cheers,
Ahmad



-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



