Delivery-date: Fri, 02 Oct 2026 07:57:40 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCWH6-008jPx-2n
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 07:57:40 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6FF3B201547
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 07:57:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2InPwRJi;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=VyWxhGJv;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790920660; a=rsa-sha256;
	cv=pass;
	b=X2hXOBgJl/9xGVI+egQ0IZNDXVC0JsJOpgn3FK6IW8LDGlKUdDLRA6cWyLTa8L/x9e7TSg
	pdHNq1WJxvajn3FLiCsQ2QoBH03NtXSx82LyW4euWDk0ddEAkEj9y5n/Gh0lSdG6UNMB95
	Vqf59qHPUCCwW+9beMxD/T5bjPQogE63wrZakQVCpkPf2G7JBf0xF6abFZV10cspIjrhXM
	KnvmwhedaMecaA3ufjcAdVdtfsiA4w1VIOYbFIinY2AaYOsJOvqd2SLVNlea8EBItUf20Q
	vyKsgdspKwOVxjyP4EUnmC5CGncx4fPEa402fbUkW+I73y+WiyWLxZ5CKNjsGg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2InPwRJi;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=VyWxhGJv;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790920660;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=hdH+zXO74w01XBHyxUoHiOZfLL6Irso/7R0SZ9VyOpg=;
	b=cJSP+H5BnkF4GBCnQvzurmG7HUplmRdDaSo20It7FNcotey1q+dCNMp5/4PcdCsPyNXnM/
	Jc7ZH6DgTyLpqaebFI3R1E5ZN73k7K+Dd+R/Li1Vaa3vsjMWPzUMtZyx+nPTXA80Ym/fjw
	wsqzLk25MMlBqTYtTgZZxG7TyYyL2Dmne51o8JPkHerrou/96vpbcj/4o0eQpK3xmUcPkS
	G+neJPgmyloOYBsxFqlQFgJ0VofkJaUoJe1NUEpqc2f2Ukh4FumHV7wExCRqZC269B12Xm
	RaqkenNE3QujwxMX6+lYhVOOl2N538XICUO0s6LbnqG0dOQBEHAbBhyaSHa4hQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hdH+zXO74w01XBHyxUoHiOZfLL6Irso/7R0SZ9VyOpg=; b=2InPwRJi9q78MyAJ6e3O/nE2jj
	mMJ2XUu8+zCp5bz0T0H9VLC82K2EEwy+X6Mb6jKEIYnRN2IRgUdFhaVmVr4ztvykytsBBJhWtthbJ
	fiW22ic0jta0Kt3u1qqlA39jWcTtvrYvDPLUpW7PVwkND/7ssREuiXi5lyQKcnEeW5REISQ+9K7yZ
	FyiV8k3aswWpxYJrMHIvV4qlWqGRfTv8Xa5AbCQ1cPxNsT8/UF+PJrHDBwbgx/Lx0bH9IZUbcktw6
	MF1c9r1U5P4otaYeJXDPp4Sambbj5UjaGZmxPkwKa6qkSw+CtJuEySJZF+xMRNCHViM6mj4HUiecC
	JMleP0QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCWFj-0000000AfzI-30SQ;
	Fri, 02 Oct 2026 05:56:15 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCWFg-0000000Afyz-4ApR
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 05:56:15 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7490F201E6D;
	Fri, 02 Oct 2026 07:56:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790920569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hdH+zXO74w01XBHyxUoHiOZfLL6Irso/7R0SZ9VyOpg=;
	b=VyWxhGJvUwlM/hNrmUsPv/nq1wcQ4ZWXe1gA26aEeXcwH2Ik38YRNyd46t6ZYHIiUXFv6d
	WU64M45yjk97GD1DJn8l5sAJG4jvqzf0hLancGFyaJdJ+Kjnf0Ne2NVduJXXosMYxz3K+q
	MUxcLL5dnU3fj8qVtBlsHms+d36Wvqkf1hNWWd0Ys7kY6GVR8eTFJrrXorPWmer9/cKEFc
	C3SuB/Pyf3BNtJlfndz3mClCamFkZ/jOdCjhmJENXG3WsiK/IMRgeGw5XMEauKw+2/GGB6
	dkO3NdaOt6+i5WvkaTYtN81JtXzEWfB15nDQYcS/ab+1bs+dgkfDlufgbCIJDg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790920569; a=rsa-sha256;
	cv=none;
	b=B/kSphue2th4LcWYPxz+QutLMnsb15vSvuu8MK4CW+wp5+cKbTdUdYDKsZoJ5ZjQQpZaln
	aKtyh9MXgiJ/AmeUoM1XSaFfgl845TLBCFvvCMFZd3XFN99w/3ynPtaw1+diwFKPf1sY8y
	SuBtx6FFekOYEpemWLIFR5W1bc3Sg9e2yxJGgL/5JFpFUxEv7lpX0I7WEuCwUzXEidg5pw
	wSmOwXJN3gGg1lHclrB39IbVyk5m31jcLY5AW15AXcuIWimWf5b4JvUVQNrWYh+ZzVdNxZ
	UX2zPARkPBE43Bsyxyp1w9RFzT1RsmgqK9fpt95FKusyU1Vc5nfv04aBtcqs3Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790920569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hdH+zXO74w01XBHyxUoHiOZfLL6Irso/7R0SZ9VyOpg=;
	b=EHIwaa4szgme5ZkdWnPaZ3wNty4Fw6It9XPoizhXoiTMLYn0CGF5xTLqMSZV6pS7o9/m4W
	7SEBlqScRPsjlV8cdwbi3dV341VYDqHihJyhfbGSVprUu7tLxMj1NSgRBnW3NzZqMPC603
	cyYcCrTyg3pKL6ecRbS0Z6KbySMJznyhQig63vw4MEq6odTUkmcBcPYIZMtQVaks3LjOBs
	dKyVFaR2DzRmQtjSMMqnVcbxqkHlYNYKUF+aQV6FzdlqN1D+IIVZPbSJZ5UAGR11Xs4esR
	8Wf4EuLvPLpHtAZ59hz/Vu8mSQCirDrRsrap2nOusWjua55cBw1/Y74XLEMS/w==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 68D62FF876;
	Fri, 02 Oct 2026 07:56:09 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
In-Reply-To: <20260930074407.1499418-1-a.fatoum@pengutronix.de>
References: <20260930074407.1499418-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] ARM: i.MX8MP: variscite-dt8mcustomboard: use i.MX8MP
 early clock init
Message-Id: <179092056941.3099971.2228252690391238237.b4-ty@pengutronix.de>
Date: Fri, 02 Oct 2026 07:56:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_225613_212092_60607F59 
X-CRM114-Status: UNSURE (   6.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 30 Sep 2026 09:44:05 +0200, Ahmad Fatoum wrote: >
    The board is an i.MX8MP, but calls imx8mm_early_clock_init(), so it > runs
    the i.MX8MM flavour of __imx8m_early_clock_init(), leading to > PL [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 6FF3B201547
X-Stat-Signature: 5rdymnwrn6jdbuzcmuxk4bp6bgtzrr1r


On Wed, 30 Sep 2026 09:44:05 +0200, Ahmad Fatoum wrote:
> The board is an i.MX8MP, but calls imx8mm_early_clock_init(), so it
> runs the i.MX8MM flavour of __imx8m_early_clock_init(), leading to
> PLL, NOC_IO and GIC root clock to end up with different configuration.
> 
> Call imx8mp_early_clock_init() like all other i.MX8MP boards do.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX8MP: variscite-dt8mcustomboard: use i.MX8MP early clock init
      https://git.pengutronix.de/cgit/barebox/commit/?id=c9df6248afe2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



