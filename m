Delivery-date: Tue, 20 Oct 2026 15:50:17 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJAEL-00135y-0j
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 15:50:17 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1FCE4201EA4
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 15:50:17 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MzI3aZqm;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=P2ljzkXh;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="ZjZqO/Oc";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792504217; a=rsa-sha256;
	cv=pass;
	b=FDI+L8g8v2FE/cJWbXTRjzVLBM+sgBflQanaSzdmsBCkh0e3FUy0dBx6p+3VfVG8PHrY4P
	VwFAU81KC2KuYWcCLY7zi2dTtjVyhDprOoYwMA4IjT+XzLMu7fFIfvu0nKMF6XcpICmDVG
	EzYJeDS79oOTaUuRkDhCdOank3641c7kL898NE3RE5LHGI5GVRsnn1D3DTTHYi9DWj2ntl
	dMWnpWYhkOd2g7DdAmCFFINdW44zf/I2TYjn+xxpHdJjzWmPD0ttV39mxfXzzuFetNWLGK
	YhAosTI2gqxXXCxtZZ9IhPXNw7USJFW25p1rTkC+aPSdQEIPtML9fV8xyfWXYQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MzI3aZqm;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=P2ljzkXh;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="ZjZqO/Oc";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504217;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Byu6XV0+f3iGMKb23SIr5bDsmoAo0XOLN2bIBYnDQgM=;
	b=X/8jWT1Im5eA2r5UeHYTF448edTub6alq3ER6vRv3NFtzSsfcaJfV7n+kg/q1qiMI20YIJ
	VqF/U9PopTEbEuH+cjqj0vHfIXK8e+xy2yxIf+UIwW8jWCz7gyx4fInBAGWbHVzvBic2xM
	OrajQuXYKUvdFpbWyr9smIk4ASXD9Daz5B8FAspV5rP+jPChpBea1s+sUHbsv9K6qPPNzc
	CtNSrKiBhlE2szWVvSsjCGufDfSgQodJeLqgYl420n7x4pzIpCyCVoPsV+KcPVZba5VMo+
	8kNpmm6DJgLpzlmlFcDDwgTylGzpkVNGVqqpB84Q4om1w0UTs7T+9ZVo3ZU/iQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Byu6XV0+f3iGMKb23SIr5bDsmoAo0XOLN2bIBYnDQgM=; b=MzI3aZqmMDH1pTCM7+z+5PLWij
	K+zSBuMRJSbnPfsBbGvgpyfTIy8nbKojiga4MQaFpXoyZI+Vn93qr9q59jJSNQvt554s+dLnBLYBM
	7kvzwzKd7SdAlMeg8OSmcb/hPKTZG7I6NAsjzhiTY9K73zfAyh8rlz6kVETuZtMglmD40gkbM+Wzj
	xZsHSV2D2LiWVOjYUoTBehvlx4IQswhdiK4jn3Wl0cvvbXR6s8Y1yE5GX7jgJALPUbmAYhGqaCwxg
	GozZObn8wf7/6ps6JSa4JxQWCBmb0uRW1qlRmu3SHJM2b1JTSlUjal/dbe/x+vnzJOJ0J33kXaseF
	22/uRkcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJACs-00000009pS2-0wyi;
	Tue, 20 Oct 2026 13:48:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJACr-00000009pRu-2yNd
	for barebox@bombadil.infradead.org;
	Tue, 20 Oct 2026 13:48:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Byu6XV0+f3iGMKb23SIr5bDsmoAo0XOLN2bIBYnDQgM=; b=P2ljzkXhcJ8qEML6OkXbj/UFP3
	jhPPqcoAZS7ZMhjgbqN4UpsVszm8GCa7udVo0xoJqDyPVU9X3dTf6pal/q9DnfZ+6TQt3IKdfwaCv
	+iwKMnn1RalbYZquaPUKnAdCXn/RkJQqJ2ULs+Bej780lECcUR9kEnJjPa+P4aNWvtBJRVoKniHhD
	2F9TiuUT3u1UrNKQHyDAgudIQiXQU0gwa3pAPNGvdpr2tC2/g72osSDi5t6XerlzONQIfJdSJiA54
	IORwHWmNaGAmcbzgOz2yOqwx1LLh0VvCBSMh9H6yKpP8Tx5TlwPJG3guFr5g9wrSUNTibnMVzPNb5
	oKkcbV6Q==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xJACn-00000004mfT-3tKi
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 13:48:44 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 80262201B9F;
	Tue, 20 Oct 2026 15:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504118;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Byu6XV0+f3iGMKb23SIr5bDsmoAo0XOLN2bIBYnDQgM=;
	b=ZjZqO/Oc3jy1hLyc3ylqGmkSZ2KviIoKPTdxZrJKppJUm3FlRZoZIHuL+yawNXyzIvdLLF
	kyYZp361xYbSrpHUghZYWI+ng/p1Gkaq7UTUVoBDe5W0TVMhBep4Lnp4PfRY10sSIuA27d
	u/pBXTlsd4tOfaYyGZ2XwflwjqgGlXl3i3lszV8Gof+Zvvue8VSmF8rd31+sYS8fMxxT9o
	bjbJyKy36U7WdI+trHB8yeFo8teJTHRXa4WjssRzI6hPjwnZ7YKyLFPlX+jSLMIXWwYaMc
	7lMb0ZGREVPvLUfo7GlDvvgiVhhj/piMeoLwyOolE3PX0v+sYVSLf4qm7F/nxw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792504118; a=rsa-sha256;
	cv=none;
	b=WEq/FWDI14IlsQZN7VymrCeFdVz1OaQbmWj6+9N0oO92OYMuHzFNH9DoxCaDmKShARsNOk
	0SI3RMa7QkBydrKOyF+24bIua0Jg+ABfeMw5fjEqVgA2O5gshfWTWXPj0r1J0pKqVO/LsF
	SlFSrzLl/5sIrImveh1J8MnU6wef56L8m5O7vYKXxBs14EW9uY0HZrfmD4LDkfM8bsdTAS
	3RzM6Ei7UNRjAOtmRPD5Ht3CRZQjjJjN/bWOS/jxBmJfRB2J/ckenLcJFAqqBfv5Q+RyeX
	0iwO0/lUozNrsDi5Y53DrUueneazXxX/Mixifdcsz0AY+lCOmHmLsHEKVGli+Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504118;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Byu6XV0+f3iGMKb23SIr5bDsmoAo0XOLN2bIBYnDQgM=;
	b=GOkoSKZrRn22mmsTdseDCbMrXgsfvRllAusiR/5JMGiyDqYmFWj4A8IY+jk7/GHqQFrbTh
	6+lY1jWaaX2CuuFuprK/DOTB50Iu5CPDkgB1eH4dYaujqANEax0CPJxDXptLoEBgOyXTO/
	HqdA/ogSAP2gg7qULe9BIBU/gGXKy5+AQziR91XkeLA5FQnQLwzwTIrxKvN/gy9DR4P6Js
	Rbt3yzqF9Tzf338//0mSvKx/RL1nTeHyiYLd5at0SYN8H4aHrO3wUQWfqPAwyRb4pUu5Wz
	6uTv2XrlW5beSfVZcFDTpzgCXwFiTK9cWqSSWlo5WUwY3AqNb0FsOhNVuwhQKg==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 73B9AFFA47;
	Tue, 20 Oct 2026 15:48:38 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261020085248.1397710-1-a.fatoum@pengutronix.de>
References: <20261020085248.1397710-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master] ARM: dts: imx93-frdm: allow dummy supplies for
 the PMIC regulators
Message-Id: <179250411845.2714886.9520424132036141081.b4-ty@pengutronix.de>
Date: Tue, 20 Oct 2026 15:48:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_144842_112148_75817129 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 20 Oct 2026 10:52:38 +0200, Ahmad Fatoum wrote: >
    Since commit 63277454ed06 ("ARM: boards: i.MX93: use kernel dts"), the >
   FRDM uses the upstream DT, which supplies the eMMC from the PMIC. > [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 1FCE4201EA4
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: asnq445e3sw3uu4xnqaktf66xwcimoow


On Tue, 20 Oct 2026 10:52:38 +0200, Ahmad Fatoum wrote:
> Since commit 63277454ed06 ("ARM: boards: i.MX93: use kernel dts"), the
> FRDM uses the upstream DT, which supplies the eMMC from the PMIC.
> 
> No defconfig enables a driver for the PCA9451A PMIC, so with deep probe
> both regulator lookups would now fail with -EPROBE_DEFER.
> 
> Let's allow dummy supplies for the PMIC regulators as we already do for
> the TQMa93xx.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: imx93-frdm: allow dummy supplies for the PMIC regulators
      https://git.pengutronix.de/cgit/barebox/commit/?id=6416859b88c9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



