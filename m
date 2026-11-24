Delivery-date: Tue, 24 Nov 2026 07:54:06 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xVkPl-002iBv-2P
	for lore@lore.pengutronix.de;
	Tue, 24 Nov 2026 07:54:06 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 68199205A22
	for <lore@pengutronix.de>; Tue, 24 Nov 2026 07:54:05 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=I6zG4PAB;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ToVMJHyH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503246;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=UWmbof1bhIkjXFrec+qu5/Zwywqyn1volq9+Jl8kqk8=;
	b=PoANyfMrhczgRexI9qrBkvInpLfWnjwCUXJLFFPKiWtHcz0MbMwXdZAruZiOaHh0lsWKI1
	r4kCtX0dW/OJ1Qm+0Rsw5JM1i55HJGyGRBgeIX6t8bLTXqqPhzHuejWknKFia+NymTO+rc
	spiROi5YBGHatIg4TTzzMgkain/P6IiC8Uf+VKjYWlFHotEI3HVUi6UsTFajdAUwpaD9SY
	GOgwtRyQ0namrYXk96gOyjtvXlux6gn4yn1fkBCla8wATpM1/v0Eafau2VfUnR6S2udaVe
	4Vpz4eXujFBuQl+/GOOU+YRHhl7WJrh5oT34TNFFwVCndtDlsLk4mUIY5QqVuQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=I6zG4PAB;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ToVMJHyH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795503246; a=rsa-sha256;
	cv=pass;
	b=bdvxMuCJnVFBVp+wS7U8R49YqG6BcRL1rBB3jjcz3s4N8CMeNctLhH0Nw7a0AlNbp7/Ep9
	yAN9RX3v/Wlbz1gTxpIY9dXmxpe7Y0nJT9zfvOBSwDAkF6Z2MVV730lH/Y/tll9+ga/c0l
	yQn/XTBcf33MpnM3iNda6hs4QZXRGQh4ZKgwEbMFZD1hq5qNAvLqF1xBoagkH6d8u8pEZm
	/5YniN1kpSpiagKkBWaUQyWMal4jxF0Tfp0TW55RcwIkebU9wd4IULtKK+F0r40G/GTLJd
	/823wbkAuPHOD44BAliYlDW0oOoYngP0RAxj+IWe3OMK0SLAQB3wmZwGmA5ZlQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=UWmbof1bhIkjXFrec+qu5/Zwywqyn1volq9+Jl8kqk8=; b=I6zG4PABM+d+Jk
	l9XBkpv49ohqBn3kyt9wcHnWTuTfmtdWC7WXdNanHRbkqS8RdiXaobQhH1oCygHV6HkOcqBse8l+S
	8Tip+c6EhAMwjcZsIbKremZ7qiOoMHloCpBjRHuUImO5nnAgHcnPzyz9HoKSvAsR+wbrQm04/KhW1
	9p5GwfxFgR4uyoJweAfqpZ2Vcalo2u6UPxNOfYi28S/3VwCMNvrXjWq2QiM8uWLs6uoRLtRwphFwZ
	WmZ7z6/w+PFmvTHJ0o4kpNZqe4zC7/GYFNEE9So7S9/6R1PIIyFMdvtCIFIHQ5sLYVx8jEhmh3kXE
	CqBHehJEHVALQPVpQbCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkOV-00000005g1w-1o9h;
	Tue, 24 Nov 2026 06:52:47 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkOR-00000005g0Y-38yE
	for barebox@lists.infradead.org;
	Tue, 24 Nov 2026 06:52:46 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 09F72205A0C;
	Tue, 24 Nov 2026 07:52:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UWmbof1bhIkjXFrec+qu5/Zwywqyn1volq9+Jl8kqk8=;
	b=ToVMJHyHdgT4zMvqLLIWrpDoO5O479EJ9jBCNF5JuYVCqq3rLduNsra/ce/lZ1OtjjkC7f
	pprb8rvA5zoCyk1oUSd2C7Q+L60/6VXucCngsjjf2pl23TYA2d9AuWlKflVKbmhbUvDGTb
	orscqMntm/Hpt3QJs4XbsiO+CbFXu2kWGuy3I0AK4qhsy9mDK/XNPvSKLFVXgnFkjau3Yq
	4KvZuz7yOD49uPxNBYPHHbVtX8kGQm+JojvUKTxlBtdi2iNWTolrIA4S1q4CPY1XkjVkI+
	vS7J4JZAZ/2dUMThrNVWBH4M+5Pe91AePluCZTOGddOOzsEiGK53hVcC5U3PsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UWmbof1bhIkjXFrec+qu5/Zwywqyn1volq9+Jl8kqk8=;
	b=PmnlqPvIBkB42KJwLS4k7k6I28iZk7IG7xsSrusV7gSYFioSaLH23PM7tIz2cjtpVwWKEA
	TStjP2sBliJ0bi7AkWeYk5Yt99uu2LE4thOzXPWOCVGxM64KFylk9D0BtEJMFfbhU6G0Ub
	EXxAa4w5bCaFLpMIr3JBnWljZTzFHJnNc9gKiUaY8spOaJf161Zt/kUtr3ZJmQBG4xj/7c
	HkrXY/Ex0d6hQRzzKWph2qT9e85C7LuBADRF9DBCSfuHjppip+KoKrZOp1eMczSHKU7IJ/
	yMo84PeXararysPBHruS94l5bRGJB4PETKgKr1cWzuXkFaAt/ber+aC5AAZz+Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795503160; a=rsa-sha256;
	cv=none;
	b=S4fn95I0TVJY1zLpsywgBe80OKOgJlR+/FErQ52FwcBJOI+xUVAdmyQm0YXQCWNVjXqAzB
	5dG+FjzhnTICP0081R69LOfphAGlmdoz3TwnDdAlorr/6ytZtnm7dKjS+2CtY7z/YDuDth
	LfQSPRFzqoV0VMcZdSqWsqwqJQU1vJECOG/r6FgaAXVeRpof+jPFlDFZ3SsRIZm+VTOOC2
	qw/PIvlO/vXnhLby+wLI2//929l/972KmpvUZ+E30buiocWBVzEq9hlmiAXxg1NsI1Z7Vv
	rsWGsZFckCVkORxe/vhQF0HpbOwKZnhaD+aXQGoViMTQr3hRwFY6gNfKVBPv6g==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id F27EFFF9E6;
	Tue, 24 Nov 2026 07:52:39 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
References: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
Subject: Re: [PATCH v2 0/9] boot: revert boot related globalvars after
 booting
Message-Id: <179550315997.350571.454428875944079114.b4-ty@pengutronix.de>
Date: Tue, 24 Nov 2026 07:52:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_225243_949704_64250FD1 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 13 Nov 2026 08:20:35 +0100, Sascha Hauer wrote: >
    Boot entries configure booting through globalvars like global.bootm.*, >
   global.linux.bootargs.* or global.of.overlay.*. So far only some of [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Stat-Signature: m37hcaw9a45ybb63buut3b5f1oa6rzhs
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 68199205A22


On Fri, 13 Nov 2026 08:20:35 +0100, Sascha Hauer wrote:
> Boot entries configure booting through globalvars like global.bootm.*,
> global.linux.bootargs.* or global.of.overlay.*. So far only some of these
> were restored after a boot entry returned, by saving a fixed set of
> variables and by clearing the global.linux.bootargs.dyn.* namespace.
> 
> This series adds globalvar scopes, which snapshot all globalvars matching
> given patterns and restore them later, and uses them around each boot
> entry, bootm and bootchooser boot attempts. With that the .dyn infix is
> no longer needed, so it is dropped from the boot scripts of the default
> environment. blspec and extlinux keep using
> global.linux.bootargs.dyn.bootentries, so the position of their options
> in the Kernel command line doesn't change.
> 
> [...]

Applied, thanks!

[1/9] globalvar: add scopes to snapshot and restore globalvars
      https://git.pengutronix.de/cgit/barebox/commit/?id=4b6cba03b9c1 (link may not be stable)
[2/9] bootm: revert globalvar changes in bootm_boot_cleanup()
      https://git.pengutronix.de/cgit/barebox/commit/?id=94074c039321 (link may not be stable)
[3/9] boot: revert globalvar changes after each boot entry
      https://git.pengutronix.de/cgit/barebox/commit/?id=efb2a44be77c (link may not be stable)
[4/9] bootchooser: use a globalvar scope for its bootargs
      https://git.pengutronix.de/cgit/barebox/commit/?id=1d5167e77f1f (link may not be stable)
[5/9] test: py: add test for reverting globalvars after boot
      https://git.pengutronix.de/cgit/barebox/commit/?id=7e59add5e61e (link may not be stable)
[6/9] bootargs: remove unused linux_bootargs_overwrite()
      https://git.pengutronix.de/cgit/barebox/commit/?id=697cf02c0d13 (link may not be stable)
[7/9] of: add watchdog bootarg directly instead of via a globalvar
      https://git.pengutronix.de/cgit/barebox/commit/?id=f59275942a82 (link may not be stable)
[8/9] defaultenv: don't use global.linux.bootargs.dyn.* in boot entries
      https://git.pengutronix.de/cgit/barebox/commit/?id=e71011c84ad2 (link may not be stable)
[9/9] Documentation: migration-guides: describe reverting boot globalvars
      https://git.pengutronix.de/cgit/barebox/commit/?id=99b7fad27f75 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



