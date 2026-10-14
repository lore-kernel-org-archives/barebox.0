Delivery-date: Wed, 14 Oct 2026 14:44:45 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xGyLd-00DVMw-0d
	for lore@lore.pengutronix.de;
	Wed, 14 Oct 2026 14:44:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A4F4E200153
	for <lore@pengutronix.de>; Wed, 14 Oct 2026 14:44:44 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=CfO7brh0;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FHc20uer;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791981885; a=rsa-sha256;
	cv=pass;
	b=UP2OL7P45rYarPSiSMNMDYcbG9q2aLk85Eh7Uth4mLCX1u/YyBjBHhhhPZlwA7vOsTWvx+
	2X2fprLeYI2rRVVbCz7gIuPNgj6RJkLGRvMWwH4eVgsqfGsY3fMCZDN2ycZ9nnpnXpsp8J
	B+mX7FSAvT0t/ojJ//DDG3x9apF2Izbx0vwJbduuqdjpfHRVDy9aTOQcrK7W0JFaUPULCt
	7ODnrEX0Yaeavpi30THuFoaHYB1uJQPRoAk7X0wS+fQGyPJpd6C/aCZ1pHqyvjvNKPzv59
	Ovzwrbb3meQLrhVI/7zmcDNBkjD58wUOCfyfp5miPiUMEOMoDIGGEBDz6AEbbg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=CfO7brh0;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FHc20uer;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791981885;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=sengMsCp8G1cku1GzGHXxiAQMZQsMVdA86luBNi4UAQ=;
	b=RwMIofwwh9E/hSYJE+nEiH0s5Rxvjw91Q8YmJZSAFxADdDXNmZmiVGeN5SiXukaHRm+fl/
	ZuIckgKmbQTfcq04S068iagtgGpSoyiMjOy1VP8j2tNNW5tHZyPab+kEc/PeAGTRWxTQu0
	S95E/uMSpRJzKq1SDXA19ZzKqgVf296zHnfiPfGkYSFBYH6o44lwpTR8Bv+H/DhT08pMyI
	Bx3amm7bdtsYBChZz/JLc0LL6Rd2sOXIh7zk5n9ZN9eQhWlXV8kGpWKcVLQW9qClCfRYgs
	O3WIiOWOA3/ZzKYyjWbegk5/lVslDHAKOggKGKxJvIDTEum9u38Kt4inoqziUA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sengMsCp8G1cku1GzGHXxiAQMZQsMVdA86luBNi4UAQ=; b=CfO7brh0LuTyYeyGdY2FRVHzhw
	jCUSmSl1XydYMdcBOfuzAcOqWfikosgYNLMQcgGlGO6vt/+uWHavZDRjtjoAAqQtXvpeEToqhq7WQ
	HyatO93CnnJv8+j0NXlVWuZoeYG1FHdL3Yn+A5Q7odG5kch5QoJr5Kpz4GyKczgAekgGatTag4nro
	9rhpzmLLu0kYbMBysIsKiR5cbY/hUON3YRe+XXfNBA74UlHDImodQXpMRUXDbLqnl4Tz5g+ay+Po6
	MfzAAxBHrc09KnZD331lL00HgxXiPEHlCeUCkgC9+mK2vqPmvVgtj2AL1B/U1MDby17VOo6qMeQAm
	NEewQZnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGyK2-0000000FTau-0qpP;
	Wed, 14 Oct 2026 12:43:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGyJy-0000000FTZu-13C7
	for barebox@lists.infradead.org;
	Wed, 14 Oct 2026 12:43:05 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2B8EA201BAB;
	Wed, 14 Oct 2026 14:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791981778;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sengMsCp8G1cku1GzGHXxiAQMZQsMVdA86luBNi4UAQ=;
	b=FHc20uerHIAo+hSasqDTJFznPGIgj//gQ/LuCPDUPncjiOrbj2drAqATz0lo5jy3MQeX9p
	+QFkzYMu3a58H6q8TKL9SPid9sM4rblgp5NP8iXgR7EwsZYXTltfioiKBiAc5hmXkC4t5k
	4RNTvc2BD595ol4CvMwG90AN2jtATJ2FEJ9RKCOY96lSB/8lL08Uf6jeYZFsypb7cTtidk
	QkLgz3wqdSQS79SOrDSSmn+zwz6Z8Oxq+Rmhy11oPWkeHxjEyQo/u4gd7pcPLeddIhyKwm
	WXGZxodEE/VwJkNiqX42Jq3DrUa/rrKwk9ud3YBgr4nzL4UKhf7KcBHrQ5ERRg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791981778; a=rsa-sha256;
	cv=none;
	b=EMUxHV+mO6V4MwtThTEZ2m6ak/6mqL+B7aKW4ZaoQ8rOLBWiLKgKkntb3GZywgfRw5xqIn
	JpdXELLsuWYewEgwY3LKOmBgOX2Zj0UiwOMPGxwUQRNQrYCyViwNpU4CtZKtJ9Z2OcgY6i
	r1ZBKXjgO/w8Z1wOD8tGhHYYbhS1IVDsZFC42NFPyOfzdY34EcqUw6gcGJcaIxEhZC+IYw
	BBdABTiDhNyy7QFgSNM0nr3EQXMSwu4zRTHkfMTzP0n4CGntqAOgmoNzrp7RZe+JePQYXz
	4EG1knPiJE1ZTvrnCEZK+5gP5Iiap+04B0/l6j7zH6qHJ5f3mldBSFHXfFLaQA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791981778;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sengMsCp8G1cku1GzGHXxiAQMZQsMVdA86luBNi4UAQ=;
	b=IC6kvPILxhcOb8luGO8rH0MEe5QS5KkNVbsGTES+5mVZbnQuD+HdTygfwUReHEpTI2aKxi
	G71ss/o18631gG2iTLv77YkUPaOgZIpWEZ6PU8lqepQZ3Vp/X5ZBWzFUYfkOpfa+Xs6/ZY
	rVh3y20dutnZqtKi5kmmNkJzHEd9HzbZJYoujU300DZZSWPFg2K9ShzGJi+do8KCWoQK27
	6Bd3usePK8hL+RR/UZskv5ELgBOTBdikdx+h74KNBL3F9U8sZVgkU+5MMVd9QDRmaRNuz2
	hWcNDDS0joBlimCcfzST8zDxphHDRKdF8mtC7BlFURYLbeh4LKsa9g/asao2jA==
Message-ID: <74cf8b9b-3509-406d-9a18-092939c76acf@pengutronix.de>
Date: Wed, 14 Oct 2026 14:42:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/2] defaultenv: board defaultenv now overrides
 CONFIG_DEFAULT_ENVIRONMENT_PATH
To: Florijan Plohl <florijan.plohl@norik.com>, s.hauer@pengutronix.de,
 barebox@lists.infradead.org
Cc: upstream@lists.phytec.de
References: <20261007055953.1001705-1-florijan.plohl@norik.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20261007055953.1001705-1-florijan.plohl@norik.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_054302_476194_72B36E6B 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Florian, On 10/7/26 7:59 AM, Florijan Plohl wrote: >
    Hi, > > since commit 7f1cc5dd869d ("defaultenv: add base and external > defaultenv
    in pure_initcall"), a board's own defaultenv overrides the > environment
   [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A4F4E200153
X-Stat-Signature: 4htf1ssb46ur6z959w7z3bk91rpadr4q

Hello Florian,

On 10/7/26 7:59 AM, Florijan Plohl wrote:
> Hi,
> 
> since commit 7f1cc5dd869d ("defaultenv: add base and external
> defaultenv in pure_initcall"), a board's own defaultenv overrides the
> environment from CONFIG_DEFAULT_ENVIRONMENT_PATH instead of the other
> way round:
> 
>   before: base -> board defaultenv -> CONFIG_DEFAULT_ENVIRONMENT_PATH
>   after:  base -> CONFIG_DEFAULT_ENVIRONMENT_PATH -> board defaultenv
> 
> Documentation/user/defaultenv-2.rst still describes the old order.
> 
> On phytec-som-imx6 this means the board's boot/* scripts now replace
> the ones with the same names from our Yocto BSP (meta-phytec). Booting
> via these entries then skips the BSP's additional setup, e.g. the
> device tree overlays it applies for mmc, emmc and nand boot.
> 
> This RFC restores the old order for this board only: patch 1 adds
> defaultenv_append_external(), patch 2 calls it at the end of
> physom_imx6_probe(). Before polishing it, we'd like to ask:
> 
> 1. Is the new order intended?

I must have had blinders on when I did it this way. I agree with you
that it makes more sense for external to override board defaultenv than
the other way round.

> 2. If not, is a per-board opt-in like this series acceptable, or would
>    you rather see this fixed generically in defaultenv.c?

I would rather seen this fixed generically. An entry in
Documentation/migration-guides/migration-master.rst is probably apt to
point out the change/restoration of behavior.

Watch out that CONFIG_DEFAULT_ENVIRONMENT_PATH can not be assumed to be
the last element always, e.g. fw_cfg should still be able to override it
as it can be specified at runtime.

Thanks,
Ahmad

> 
> 3. If it is, what is the recommended way for a BSP to replace a board's
>    boot scripts?
> 
> Thanks,
> Florijan
> 
> Primoz Fiser (2):
>   defaultenv: add defaultenv_append_external() to re-apply BSP
>     environment
>   ARM: boards: phytec-som-imx6: re-apply BSP environment after board
>     defaultenv
> 
>  arch/arm/boards/phytec-som-imx6/board.c | 12 ++++++++++++
>  defaultenv/defaultenv.c                 | 16 ++++++++++++++++
>  include/envfs.h                         |  5 +++++
>  3 files changed, 33 insertions(+)
> 
> 
> base-commit: ba8e34dfa96f80ae405e0ea7ac1e62762c28246a

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



