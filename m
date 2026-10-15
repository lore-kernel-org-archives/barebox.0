Delivery-date: Thu, 15 Oct 2026 11:50:39 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHI6h-00DrsI-0G
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:50:39 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E0C9B201D35
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:50:38 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SUWqin6G;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="A+/uyfRo";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792057838; a=rsa-sha256;
	cv=pass;
	b=ZV0RDXKzKV1VmIU3xl438b5gJBozRAlC7jW+RFlFKzDjnJqPZH+ufXismDHkENY1qPtrCH
	IF/VAjgVLV5TgdsTd0ERd/mBaWq4jiqOcCHtHUJ52UhJBcMk0kvoY6vkvcaVxSdn0Vw0oj
	EFtZM+XY9pDn90uOHBCHG/39ZOmE55ngoREM3Xt3KaLgzQ6Ol5dC6Sj48xell94CtcZpGB
	Q3eAlkduyqu6hyGG6rHJDXCz8COwAZGEJRIbZz5lK9TOL49G1DcIEYGr3VTpZ65YaY56Kz
	4XZO+dWqZ3nqvmXl1Y26xowVDDVzVrsGtEAD868izeJS9d+9iTbwE1A3ipK6oQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SUWqin6G;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="A+/uyfRo";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792057838;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=SuTPACRi90UxAICGv+zdU1q1M6cw7WRyCX0Lj19XgSg=;
	b=LpjKe7g/EVOBWS9xLN4HTwknzG5U0kK4WTNpi8ni7xCbY4AJW/rxHExOHUzdmMB16b5Orq
	RJ7cI09Qo1qAHOCsDKIIAPvTfhnLtBVjsrBYd8KkJszAoSeWofUgwTTxTd41o3Pklx+LTr
	jpUROf0hamnKVKZRYvf+TYwAucnSxXYp3KXoMMdAJfX4kCU4k1YzXmJeyvr9bsu+0Hd3Sx
	QHXI6k2qvTwA7qdp9OXuDhjSIR6vbwBzNcmdSu+A3Bxpe5WLGeaH5UGEagJiOix7obUbIX
	ctXdn6kuVV8o+lm2IVWcI6aP2s64PzKzsElZ4sQJ2UW88yHoVdkx/kedExqZYQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SuTPACRi90UxAICGv+zdU1q1M6cw7WRyCX0Lj19XgSg=; b=SUWqin6GKGR+XvqBwrthhJK2cd
	0VZpJOZb0hWBMQyWyqHEGt6iX9gRmT4TdlqzgqHDF97oaNDGaRmzgGOo+o0V3N7Y6Dh75hkhBML0z
	5kn0cySCSIER+WSsKccc+Uyo7x7O2LBcYjE73kAeoQu5HkYwygS4tNwdOzjVUA1iU9XgvoHAplBfb
	vJuxVTWKhm0Vf5Z1LXFc/pq+PPnKLtbGMuubiZgj+1hxhX17c+6S3BSz3m8XLjP8SYZgV8yo6nznv
	VQIXoI5J7Lg819yxSsmoVw9zxQ/Vv4qHj/lKOry+neuog9p0VL9SBFvbSaS3am0J++1JCoktjZ59w
	3QepWkXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHI5j-0000000HKwT-0Clf;
	Thu, 15 Oct 2026 09:49:39 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHI5g-0000000HKvF-2puW
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:49:38 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.4.pengutronix.de [10.9.0.3])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BFA32202012;
	Thu, 15 Oct 2026 11:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792057774;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=SuTPACRi90UxAICGv+zdU1q1M6cw7WRyCX0Lj19XgSg=;
	b=A+/uyfRoe86dpbkHw/hGNiTX9jdwGfmctJshpoHkYT+wsqTKgHrgao57hRvKZerXfebQ7r
	sE8jR3hN4ckCNc7Bk+vYZGZWotbQiuDwGa5E65VHbvcksT4WCfD7No8MR9Okp91VemvkK5
	AP61OVH5r3bKxk8RRJeVe3PIzDLuIR482gcCEBtP9U34zrqTQiIbX2yTroy1PBlCrUj/bj
	LprFAB0gM+ysmokPpoU1aujUkXwP5eSNdhKQDAS8wEYlMDmcabyBW0vE1MdujQ3tgf0o3u
	MycbDec367xQvYLPHVLbU9D0tuMb5SFbhw9HofnDQQXtaDjT0sfNQJ/ZjUv+QA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792057774; a=rsa-sha256;
	cv=none;
	b=Nh4pRSF6K/apmZG53DzLxwryl6UsIWmSoSY9W8800F0ysN35o1iUnvcAo5ymFAwRra0Kbo
	bdth7AHK16bLzfQyuz6F0GiNnNIRSoueVuaG17Ns0zAV/Zj6n4Y+AsdNQU3NMBXs4bx8JK
	sxtnkYczF1OwCYVtR8MlLEuQeTzR5Te644yn9hjbLkdZR+aKl4Rc+EK1YLzT5mfLuUKMW8
	d0tF98acir39mAS7COiIxK8+tT8/Pky0xetbWQwfxQW27pPFbbRkRfk3qirgnQdhZ2jyyo
	R1jh50k9Lw1pArBdRDkyfDOUdJblb5vVO3HPlIZJyrP6mtVztZMb0RYNP0seIw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-ptx.office.stw.pengutronix.de smtp.mailfrom=mfe@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792057774;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=SuTPACRi90UxAICGv+zdU1q1M6cw7WRyCX0Lj19XgSg=;
	b=JWPxbLq4rzkE1oRX0i8XebZJ2FLDKZ85FoG0wMYOsNEcBWfvCD3kKSTd/bf8B7f9U2ZGU9
	rBix/o+J7J8bei5dKkEMrbYxJNyaTZiFNPdl2C/oBwYb9/41jYKX3+/SZeauwQmsuK6DTg
	LnfYANFFCMb/fFWAiOoOlh6ro3EgjKDjQtfP2KHLTPmx6IPrC6SV15dRkjvMNYO9NTtiUd
	1gAWi13UPQv/n9WALa1Y3a7p9kM5eaAbqe4odUv1uwACdRz880YPwNYTB8czZprxWY9GQJ
	1aXt5oK/eaL4xGsXkvS2OkjGQUiT2cZ7+96t1WWeMRlNpYKp4K9/mjBfOM52+Q==
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1064)
	id A0D221BFD5D; Thu, 15 Oct 2026 11:49:34 +0200 (CEST)
Date: Thu, 15 Oct 2026 11:49:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de
Subject: Re: [PATCH v2 02/10] common: bootargs: don't leave linux_bootargs
 dangling after free
Message-ID: <c42shvrppl4dzki6rr2ktd2ay7s5b2pyka45ejrjbzyzotm77e@khnx7rwm2gru>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261015092308.146516-3-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_024936_869004_FC2A3F46 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 26-10-15 11:18, Ahmad Fatoum wrote: > linux_bootargs_get()
    frees the cached command line before recomputing it, > but the early return
    taken when there are no bootargs leaves the static > pointer r [...] 
 
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
X-Spamd-Result: default: False [-59.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E0C9B201D35
X-Stat-Signature: k3b1p5gnh391k5mywba75eipxadhhn1y

On 26-10-15 11:18, Ahmad Fatoum wrote:
> linux_bootargs_get() frees the cached command line before recomputing it,
> but the early return taken when there are no bootargs leaves the static
> pointer referencing the freed allocation, so the next call frees it a
> second time.
> 
> Clear the pointer right after freeing it.
> 
> Fixes: ee4cab9e5874 ("booting: more flexible Linux bootargs generation")
> Assisted-by: Claude:opus-5
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


