Delivery-date: Thu, 19 Nov 2026 20:02:03 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xU7OU-001C6d-2P
	for lore@lore.pengutronix.de;
	Thu, 19 Nov 2026 20:02:03 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4750B202052
	for <lore@pengutronix.de>; Thu, 19 Nov 2026 20:01:59 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NaM0+Sy0;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=b5WYLYzB;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795114919;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=/wcdNMmrvmmSqo+35/krbcGpQ3sYrEbgjQHvkboq4R8=;
	b=fUjPFqNajFwXrDPiGiKjnl7KKBiBwmGUC+/dt4Qw5U/tBKb2qUmYTXs8vS1ocCGEv+2f0E
	JBuek0sD5AnvFPPj0v0/3yaWdjoWYVz0HvaDRUe+D3OYCEl9DQrkfU6mOpuIQ5aq/IIgUd
	MrjxbTx7nEL/EKKEEawWnrWmUNloT+ngjJzNl8ymifVXLElKtNNe3WvR/HE9zYjwpcDcqp
	4+bGQtkA26FkDaRc9FfakrPAyaMT1xK62mOwwf0q8bZKO0DLwuw9tzc7jBfrjmI9xy7eY9
	0qrKPCQfRVjg22BycD2/di6BtjmJg3H2PLMUvNRVP+Wwjpgdxc+d2SZj0m8e9w==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795114919; a=rsa-sha256;
	cv=pass;
	b=D1JkCYK6fVDAxbbRTcBPl1fsT/4VkRG06vFMBVMI0cS+Ox/0ixgcyNC6VFSkjF0iwOJ51L
	dKeruCCumBC27QlJ1rCASkimWdvTiNDK9+hHq8lCcqqkxYvS/15DoENbgXoOlzOLkGpv2y
	Qj+DOOKoE0w46TgbkvO/GKWbkX/byxZ9a8XIh20vIg8kNtUgzFe7TpvEkiw9oCDaPFdjrZ
	97prsPngN818kHA6ue6dzvnhaw9ZU0I1idj6gbVSiE99ZMctRfy1L66VlATFVka9ga0Bp1
	tzZLNYEra/t7ES4Khk1r7lXMXHI0Z8uOZEpXqyRhwWh20fxe2rKojIpil4JJfw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NaM0+Sy0;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=b5WYLYzB;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=/wcdNMmrvmmSqo+35/krbcGpQ3sYrEbgjQHvkboq4R8=; b=NaM0+Sy0UBBOyP
	VIeKO85hL5txrTWaEZk78XkMdK2NUqC1fSs0rPgeSNRvxwCPLnDyO5ARkHz75n1NT4zi6aMnvwNpL
	PZxPPYh8tDxMttZ1h6KneFU99+kj/QWy6ieBAG5qB8Cg5D40lEtd4zRQJsmZfSWQ52nI3zcuXrwO+
	2wmCwpJeFbnX95lvH0UGWyNhrgs1Ty0MBdc2u59sUHv75EggPJM2iQRlbL3y4XglZxF72MFXS2DoD
	DU59baasvgJQI+Thq9YL5FpgfjILCr1JFfZUO7BMDqYODnrLJr/ReJCKLCCWWzfKwPipkWX/TPgPp
	YKyv4gGOIdE3DLfdeTBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7ND-0000000D8Pf-1mqE;
	Thu, 19 Nov 2026 19:00:43 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7NA-0000000D8Ol-1tru
	for barebox@lists.infradead.org;
	Thu, 19 Nov 2026 19:00:42 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8D476200F83;
	Thu, 19 Nov 2026 20:00:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795114833;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/wcdNMmrvmmSqo+35/krbcGpQ3sYrEbgjQHvkboq4R8=;
	b=b5WYLYzBOKQn0LT+bAVqR3egPkmrp9PmA3O/R5u/bYwtdSUj75NEbMqKf+JdnF851GIWk+
	ewFj3q/BxUwK5CuRTLdjLLzQt8gTUma2CItDWQfSjUeBqP4Dmxhnl0T6SoQPwceX5kTaZH
	VBsj1he7YpkMgSRAg3+bNpfbXbe1N64AEf3OIoCrLBV4tuU13KTbedUI9/k5DArvniITQB
	KkVxCJ7MrjC4/tLP71BiWDCLfX3tTd6/T7sB9A24Mg+I4hZNz7PFU5hufvHf2Dja2eB+79
	OeEELujt1wabVnnwzKkiWVgymqtYlSDx445cIQHdCHZjRI7hoV5JucmnFuY2LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795114833;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/wcdNMmrvmmSqo+35/krbcGpQ3sYrEbgjQHvkboq4R8=;
	b=A0/U0dyggP2YXKikw2YBvtHa6R3tbZPmLId4kwxfmiVPXik7I3UCaHFnon7kyQtjCN5i0G
	iZ+QIseGVbhAdm1i9JDxHfWAZs8R0eeGvaze9JbY9fYxIAJrpCs/9qMWWQ2gglRiEueIdE
	INHFABQIvo5SCYROn8JpJJTkf7yUZV8ffRBquCQEgWx5JGPuC/uDqni9iruFBxufFE8JVs
	8aqeT5C6ovnwpW2WSgW7TyxAELITDf7fYHiUt3GXZ2n57JyBb81s2MwKKEA8qD5xDMDeH3
	oaaN3UkV81Cpc6NyxMdyR9aO+WTNGq2D3M2gMVwYIP3W/EYFztolz2/Q8aA10g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795114833; a=rsa-sha256;
	cv=none;
	b=LOhbt9YiA5DXZNuUHDbD4dUqJZz2bDSUROuyGI0+pXxeRoQwajNPj8eUa0JQK+ST1Dudz2
	eoNi/gbOVinZ3Di8j1bv097n7ecvqeFE5ydydcwbx4xB6MQ7kiNZxw4sQNZ7T1gChPPw4U
	PIJdPiiCah3ldiXC0IfLQLWLp6qry3dox2E3LAzwJGq+5DQ0NaTjv3dPWg/4bZho5E9MTq
	/krOneynDYjoKZQBZDBym9Q2iHiIALUg9UTaGkHaZ4AKgyJaZZOGI304pc7ysVVigfeK4X
	Hn1e32NZLao5RzBaI0l+tApxpsLd0JeQbOuwh7S5V7KqegJf25xaW58jtdWE4w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <31660d31-5215-416b-bbf7-56dd6335885f@pengutronix.de>
Date: Thu, 19 Nov 2026 20:00:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Strange bug with supply dependency
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Marco Felsch <m.felsch@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <CAP1tNvRtU8munqnUTiqU_zEP_rxdm_hb42u_oU1FVL93czrtFA@mail.gmail.com>
 <yhue3ceigbcc2njkoqyui5z6dhjkxts3dvbbwxlt7v36abxsyi@v3uubuqgfe5x>
 <CAP1tNvRpSdk9mauU3RGraT0DqCc5LFyR8mzBjHQg3Uw_eeo63A@mail.gmail.com>
 <2817c1f2-7550-4c85-821d-acffc20d3077@pengutronix.de>
 <CAP1tNvRWnRyMqBA2kxu-a-UxLUm2TJXR3_tHANL5X0sfEDXX3Q@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvRWnRyMqBA2kxu-a-UxLUm2TJXR3_tHANL5X0sfEDXX3Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_110040_653572_3A0B0FA9 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 11/19/26 17:18, Alexander Shiyan wrote: > Hello. >
   `-- fd880000.i2c@fd880000.of > `-- i2c0 > `-- pcal65240 > `-- rk86021 > `--
    rk86030 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
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
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_RCPT(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 4750B202052
X-Rspamd-Server: mx1
X-Stat-Signature: 369zp9cz9j9aiehoa9pqgag1p7kszaw4

Hi,

On 11/19/26 17:18, Alexander Shiyan wrote:
> Hello.

>    `-- fd880000.i2c@fd880000.of
>       `-- i2c0
>          `-- pcal65240
>          `-- rk86021
>          `-- rk86030

Here's your PMIC

>       `-- fd880000.i2c@fd880000:pmic@23.of

and here's a platform device that deep probe wrongly created
to represent it.

>>>>> Uncommenting the "vcc-supply" line causes the PMIC driver to silently
>>>>> fail to load,

Interesting bug you stepped on.

You are hitting an corner case with deep probe, when devices
on the same I2C bus have dependencies on each other and a consumer
device is probed first.

I Cc'd you on a series that should fix it. Please give it a test.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


