Delivery-date: Tue, 17 Nov 2026 09:30:55 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTEac-000MTi-10
	for lore@lore.pengutronix.de;
	Tue, 17 Nov 2026 09:30:55 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 851C0201BC8
	for <lore@pengutronix.de>; Tue, 17 Nov 2026 09:30:54 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=K5VLUvQA;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=RSOK+QuD;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794904254;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=dxZgvbMCJ7bxTMdCDPd/1Trnmsiovo+rh7r8oS74NDI=;
	b=PWeU0f+j+2JAKd22FI4FTH2VrOoEypchUm/jSii21jOKGjB174F0FcXrji2+xS+J78wExp
	2XHYXGZB8UOlen2RL/y4rxdhkxyOpuLXQk3sz6tJKjXbjTUDYIyPYg0GWQr4RD2TLv2w+F
	8kTb6Kn6/1xb5YXXPMTM+KQQtAyTbuOVA2MhNh9Dvkuls+61laly6O1MIHJvOPCKeEvEcG
	FBoUgG6rE+rspuvDBYK6O8i0F8TNP9hR3XYZpfnQyyAsRUIRnUV3UVpkeCZliybrV+njRr
	S1dWDKGCcRstP26M7IzUNtK4qxTyw8vOSJsbeDNrjlz+tRL1PElB8CqdEUoBlA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794904254; a=rsa-sha256;
	cv=pass;
	b=DEl++tadYfbh5HnBmatkSgVClPdF2ESEp1sXRxG07E50f1AMc6TcOwFfwvS6NzRMJc9Tg6
	q+ZDX27KIw1cfHGWc3t/MhmHbUd6YZBQ160vyt6ti/bPu17dnk0bihUyG3GQvJKWWPwtgV
	JRKafpmJ+84xIrozd5FXXpbJ3GfG3azJQrU1AgN7deUWUvOjyqsZ5wYlwdi8ex+dwNhCXN
	O3HxIQWDi98LpWB9NKImaZgL7FzoxPmC0DtaxRmGkVdfnx4V4p5dwVa9oY39XWEg1KHXrr
	+NpJSEkz6iE1/VV+uLSlcnBQrqjlMAfihQaGV26TG8hKHGXRvk6BRbdeEVNfrA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=K5VLUvQA;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=RSOK+QuD;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=dxZgvbMCJ7bxTMdCDPd/1Trnmsiovo+rh7r8oS74NDI=; b=K5VLUvQAGDHldj
	Hk65hHgVmaX9SFWhoTIND9KQgMTT3xQNmsJaS7hlYs/YnhUy8ccyF7c8By8RADI7izvLJTLNSu1rO
	x7wlPeJP3oolVRv/xjG76PR30WMwlGe3yrJp7lhYFtB/a0/l8DOq3liteM0K75/L6t1NTz+yHqMdm
	FdVnRYmLjP5vTR0DSEqJ2qO0C4RpiX6eGoh6GorkSjXDjNRJZb4vJarVzvm9UnTrHTnDs+ZCEguC4
	z3qaKWPgHzCsB/7HIu2FvJ3uhax2QtHfAavE+vsHVv2b9M31YaMVgLltesgpmkfLbH4ZtOrFWegK9
	tBZ9JofU9Sl0ORuzi8wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTETp-00000004sEg-1bK4;
	Tue, 17 Nov 2026 08:23:53 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTETl-00000004sDF-2Z18
	for barebox@lists.infradead.org;
	Tue, 17 Nov 2026 08:23:51 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 09D7A201BC8;
	Tue, 17 Nov 2026 09:23:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794903828;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dxZgvbMCJ7bxTMdCDPd/1Trnmsiovo+rh7r8oS74NDI=;
	b=RSOK+QuD0Egqjk5S6l5oaj17AVwCQ3SVuy0tBlf96QCFWUunraEOLmaatjJ56D/WJIC3DX
	9myM/Kbu/Z2dEItKQ+e+OVeuj3xQrmqg1ZKtPRCGkgxEMMOPoBmD4afU2ESVuM466qLSuH
	0cVneLknkzQa8Q1JFaM91FMu0vn+s5ts9rh0lEiA2ZHnKnpDX9My4Ma9GvmJfECHMB9Wi2
	8FeF3qqFUTz59dlMWpREoynWltKi0xAADqeRc3SP0lOaTRgDmtmkrbpyCt0BnJjoSKAg8C
	LcnuNBdNoq0sbMwVqyaOci6wpUNb2OZ+tY0rtC/E2GlWQnvn+DX2CwQNL+Wd2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794903828;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dxZgvbMCJ7bxTMdCDPd/1Trnmsiovo+rh7r8oS74NDI=;
	b=eSiR25NkiAwMYg5pjrKfbro6mTtM/LPnobCrKwUvRFqlBu0R9JnNlOMcHNdJpH5Yd9lc9m
	8GUmrJWkv/EN7GtOpEddrVS4CXDSefN55dc/+W7NHQla029yN2LeROh+j0HWjMpOxOfDRS
	kQzI4ASrcqgasSWgGFC2UxmGzeMFDNgjZwdeaOYaQ2eTdls90OJ8TniDUIz2gTkfxiQAbQ
	xCtU1tVcHOq6eiZUXVteow9WUbnZbDOK5YcfXRaK37Eac4/DlXZfXeqvR3zk5/bI7gVw2S
	zwI9CdSqh2Nr4cqIYwg1s9vC82nCnDtYezx11VFkHyQtOFFaKn03u6/PWrYLnw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794903828; a=rsa-sha256;
	cv=none;
	b=ATD6qc1egM6/2dUv1RipkuxowWuIGtGpk7I1lRlRe0UtMTVhR1EWl6WmXzMNX2L4cco1e0
	Qt3lPN9maKKe6WMmFBoIYh8Hhb+PbCGuDe1Ffap0y5YCzXtgTEtMFGcV4yB3xgVgZHYWAx
	WvCsAG3qeexl7BH7bP5E/lJAV0/KWQ8oz3yr/CHVzWY/5ihKxnUGAy9XInBY8cv/Ka4xX3
	TM3hpEcJuf68BnFO8q43QTqH82KmiwZ4W82dW38qZVP7f3eQNrM+srQnM0dZ4Lf3qp3+p5
	TlrVl8nB0wQbJKcdOTWliE4RTXL6p8hg8Rci+O1kqF6n9oQ0zoBJnDw6mW3z9w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id E8F74FFBC0;
	Tue, 17 Nov 2026 09:23:47 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Primoz Fiser <primoz.fiser@norik.com>
In-Reply-To: <20261113115548.2224914-2-primoz.fiser@norik.com>
References: <20261113115548.2224914-1-primoz.fiser@norik.com>
 <20261113115548.2224914-2-primoz.fiser@norik.com>
Subject: Re: [PATCH 1/1] commands: of_property: resolve phandles of fixups
 in the booted tree
Message-Id: <179490382793.2182637.163200036367003343.b4-ty@pengutronix.de>
Date: Tue, 17 Nov 2026 09:23:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_002349_803350_F135329F 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 13 Nov 2026 12:55:48 +0100, Primoz Fiser wrote: >
    Node paths in a cell value are converted to phandles when the command > runs:
    in the barebox live tree, or in the tree read with -e. For a fi [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 851C0201BC8
X-Rspamd-Server: mx1
X-Stat-Signature: m7tnxma5f8wahez79ts9f7657fwaitoi


On Fri, 13 Nov 2026 12:55:48 +0100, Primoz Fiser wrote:
> Node paths in a cell value are converted to phandles when the command
> runs: in the barebox live tree, or in the tree read with -e. For a fixup
> (-f), the phandle is then written to the tree the kernel is booted with.
> Phandles are assigned by dtc and differ between the barebox and the
> kernel tree, so without -e the fixup points to a wrong node.
> 
> With -e, the kernel dtb must be available as a separate file, and its
> phandles must match the tree that is actually booted. This is not the
> case when the device tree comes from a FIT image: the command fails
> because the file does not exist, and the fixup is never registered.
> 
> [...]

Applied, thanks!

[1/1] commands: of_property: resolve phandles of fixups in the booted tree
      https://git.pengutronix.de/cgit/barebox/commit/?id=a02195e65cc9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



