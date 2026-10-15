Delivery-date: Thu, 15 Oct 2026 13:04:21 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHJG1-00DtS0-31
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 13:04:21 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B0179201B55
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 13:04:21 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=G8Nxtbk3;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LyGPvlsP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792062261; a=rsa-sha256;
	cv=pass;
	b=OE/4jIPj/+49AoJPNk5VEf0tRQwM5hF+z42UsHSFYhwyTUTuDVIoYdIpabx5GsVvqhn5a0
	o/2AC41I7RTtMiI4yVrwyT4PtmBOaxVNPfJYP6z64DTB+tii8LXZyTago+qFIUx2j7Bu7i
	o4tod2gBG0aseTMZPIRwfpGvSuNN/bznMRaQTOab/wg3CLRsuMK7Sd8+GcgzBCDL73u6Wv
	hRuC+lYYCgwbzZ8eTka3K90iRlSZ7dt9xuqTtyqb9fKZAgShHNRUySkvFkXbpq1UXRRtAS
	riz7wcDsW40eZYvzn9R6M5wD9BrEjXflX7Hy2f6Cx6VlhhbIo41+tHPr1Jv8ZA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=G8Nxtbk3;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LyGPvlsP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062261;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=kS3lxhh/K+N/BikEqgRQ5mGb2q7L+3M331ggVdcZZjk=;
	b=Tw/q8ZQCpkDDRCM/A9Y84WN3I+jNjXdduGgh6a2oQGOvOcdatrgDX4q9pCXXq/OAKIyX6Q
	71CDz2JphyGGatDfrdCdY3YCg9QcYDoO3KaU3VyH7idRVMJv8ReXHL5YYVyzZQtdHR7h+4
	wHFTDMzHCrrgMl1SHUAIYwrbcRKrj1Sq1MIuC7u5A/7oWdYqERcjQeNKGszwVogLhEmyOE
	jhlQiMnUXEOZlhGp/q8O9e6ysSzfdaPlJL3RsJEv/kNIdrre/9j9topxjXYxb9Hb8nQMMU
	wVTy9RaJ4PgUOcPCZRrX63zlASdkbJlIUXY+VBapBfDvBSBbggl0vivP3Zg/9Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kS3lxhh/K+N/BikEqgRQ5mGb2q7L+3M331ggVdcZZjk=; b=G8Nxtbk3sum0ORHJjhT7ysDxH9
	q/RjgyEVFqpuJNskM7FOnbkfXTNgotf3qE4LTzMApuz+UV9VQWSbSG/et/lQtp+M5EqJ4F9x5L3IW
	7EgaEMQ0YtOMniAsYi0nC5rCpLMmnZfF4hTKMBbjJghSnOvdhrHYx605NVZvEtMZD6TdvxQJlSGVE
	uEbZKZf3Pdvd0+5PsJNF2jErCjw2shyY+5yernDb7Fuvu/7EActz+amphtK7FwHMdoEfwxEQZaBQ0
	kDtbiE0neltiO7vQu1Uy6fTpcQTwqBaT6PimEo7lUu6/MIAh/I1U4PPyK/8xWJqilNlMDwvwQRYcP
	QyPXFnYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJEp-0000000HVu7-2Rq9;
	Thu, 15 Oct 2026 11:03:07 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJEm-0000000HVq6-1luV
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 11:03:06 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: ske@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 58805201BBB;
	Thu, 15 Oct 2026 13:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062182;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kS3lxhh/K+N/BikEqgRQ5mGb2q7L+3M331ggVdcZZjk=;
	b=LyGPvlsPHZAJLL+LCsQmABtKzkAKDtawnCInBZ4Af4d3UEkFhsjwv82lzOs+aHuGYugqtP
	OViSg3ESbY3e0IWkwk3OK1xDMrbQwm8/0stjhdx6CROAPD9j9uAPouff17X7bpEN4EI8Jb
	/0JocVs7cfq8tQd3DeAFPzfHfmxIuIND6uFvZTF8dmsjevLKtkeWmWvTzCp/aeOI2v4bjE
	GQdZqiAAJO67LQRHBdWXkEjz67Y9hFIkPrhEGhzV29eOMSmcmYmFfH8oWllYTIJOdJUJDo
	CaOJ6bJxMDUY0xUp0YbyQw7s8Etkuy7MYyuDUA5iDizspuWOM1V1ddA4DBkbFg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792062182; a=rsa-sha256;
	cv=none;
	b=IfWvaLKbYBq4MR5JYXbNmfZ6JgLy9fJe/kbUk+wjRntpxK47C1yCH27XVkZ7WwkoNTqMVT
	x6HSMl6tQ18l8afIsSkzYHr1efcJCdKXLtssReVRErQjlU0NX89LqSaayd85H0jn6qtHiZ
	2xyYCHSfVYaU6m3EjkWt007n38aB/0TqcV2kTi3XR1KjVxOPSpWO4+F4YuiU7N4axQrp/V
	4GBwnSQO8HJ25D/5mvHNX1K3n7bBCQTLNmJtnjHx7E9t13mIgUd9dWenGnXZEFddUIQwgG
	LHgbepu5wUcWYwY6UgdHgjLcTVOpUTOhcAYPX3Iw9HwiIvah0K9uE66eQ4iETw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=ske@pengutronix.de smtp.mailfrom=s.kerkmann@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062182;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kS3lxhh/K+N/BikEqgRQ5mGb2q7L+3M331ggVdcZZjk=;
	b=MyBa0y9pAU1LmduGbbp4t7++436gAXWMNEqI8pFMKbBQWXPCW5qAQioTrKmQFmUzHRV5Ru
	1+6yvkb+wuNVvWmtyBx0R2zhTJlKS5sdPiFCjQPXtiuQwIEesKGxmmMICZHfpJsGAvcwsq
	ZqKDFapD1l8AmuFmUNHtyofIe8vOr2Xh+Cb3nnoLgceN5z3QEt2CRNpfRYfCaoqryQY58k
	/4LOxyunOCmgbXRMOQypompx7dPtzNn9ntbVd2AexZsCVK4btynmPW2Di9Xxu7g7YqK67n
	aMPnRfhn/TaF+4u8u+jt6paal86zAxCSRXOHASNfB757tizRN7N645MhTYVGHw==
Message-ID: <aee643eb-2b14-4ddf-924e-37e66de77f06@pengutronix.de>
Date: Thu, 15 Oct 2026 13:03:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] of: overlay: of_overlay_fix_path: allow symbols
 without __overlay__
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20261014-fix-overlay-v1-0-cfd44746d985@pengutronix.de>
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Content-Language: en-US, de-DE
In-Reply-To: <20261014-fix-overlay-v1-0-cfd44746d985@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_040304_639215_4911C9C4 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Sascha, I'll sent a V2 shortly which adds self tests and
    one more fix. Please don't apply. On 10/14/26 17:09, Stefan Kerkmann wrote:
    > Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de> > --- > Stefan
    Kerkmann (2): > of: overlay: of_overlay_fix_path: allow symbols without __overlay_
    [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
	BAYES_HAM(-3.00)[100.00%];
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
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B0179201B55
X-Stat-Signature: 63gpxiy1uib5k3xxb3dd8ax6nfzoj5gm

Hi Sascha,

I'll sent a V2 shortly which adds self tests and one more fix. Please don't apply.


On 10/14/26 17:09, Stefan Kerkmann wrote:
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
> Stefan Kerkmann (2):
>        of: overlay: of_overlay_fix_path: allow symbols without __overlay__
>        of: overlay: fix_path/apply_symbols: add more debugging calls
> 
>   drivers/of/overlay.c | 14 +++++++++-----
>   1 file changed, 9 insertions(+), 5 deletions(-)
> ---
> base-commit: e82842ffe3c7993dac4f8493fb4a44c4d35810ca
> change-id: 20261014-fix-overlay-b53fbdff8ddc
> 
> Best regards,
> --
> Stefan Kerkmann <s.kerkmann@pengutronix.de>

Best regards,
Stefan

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |



