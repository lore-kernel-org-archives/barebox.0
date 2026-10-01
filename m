Delivery-date: Thu, 01 Oct 2026 22:34:02 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCNTe-008Zvz-11
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 22:34:02 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0C060200926
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 22:33:58 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DGSTlmzw;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=YMnEbTwg;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790886838; a=rsa-sha256;
	cv=pass;
	b=XG/qEgqtRmBDVZyqwbIFbSDwUsGMncLDFizjQqZibx94ucPk6P/iUFOlx6iLv26HQx8p9b
	ztWDsoAOPxdS/e8HoqlvyWblPM07DMszcjo7VYS1ZMtHpVKMs+8pGU9qO40eQumEjZ2vHm
	i9/E9D1qHIvZfbdqBkv28j/PcUzmVnIpXahVhLlaOTmJ2vv5D4ZlWiagIrD4xaeLSl+nj7
	xsDeIszFhn7HPgiwBJmklIZ4KmgAmEdwqyht1ZAGfReOycUgN2J+nuVqFY0YqcUFB09zfo
	dlRDLYpnabAH8FvngHeYMdhMdpdPdziplEOG5pOMjYhd+3+k46a1vzyrffZPog==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DGSTlmzw;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=YMnEbTwg;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886838;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Q2Q3u38BvvxrVNyDhO1uciuPRRwS+rBIPfstgqzZfNA=;
	b=IU/WwQsJmo5NVGT0XOfkp60usuVRHMVo3vFFXdN9V6NWIrsvRieISVTb41ZMDuGXRsczQV
	Kfoym5okKpF+WpbFdMey83op8x/mRN6/jD+wzrF5/gGyY0BOtDD3n2CKyRhW9+KjCmukeE
	xmiUIhA0YJL+80dMmjKk31EoDn4WxbouYzjx7GUUXKO8O7kmUm77e1zMbAvTliirM++T1Y
	RXMrgzlE+q4a0bCOfhOXcgZHMcOvKEWbgCCiTFGb3A5gKwxXep4t90CgpJWixwY4650TC9
	SKzCht1mtQpcLNp0B+GrmCj/YmU7zF7MkroLwJj834W/tzfKLG9zZXAPYp3yCg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q2Q3u38BvvxrVNyDhO1uciuPRRwS+rBIPfstgqzZfNA=; b=DGSTlmzwR76DiA8A+dUKmmyPp9
	m+6LfDznfFxp0+E+kAdWyRRa6AGcPDvEo0WcwoJlaC7fnVeCMsHgW7RMRBn3D5zQ6tAJDC9Ip7kgH
	MsyJh1fgSnwnEaS+rxQ5tSWYd8C/o4btooXxo+H2c4Csd2Dv1HmRq761jJf2Xo41wQ7TtzN2+23me
	Kzzr2+sOzoLWWusteFYbySFiitJh3trljqOKOgFiF0+KFK3NeO4ISW32M0rMb5zxrzKdCKiFAjEgL
	tKao5kPxc5D1Foi9qJDAVxxjs+A3lCoZEBI5/49jgxsg8KFfmcGUhdAIdI4Db8iMJvezVB7KbLZEm
	9nCAZREg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNSm-0000000AAe9-3rMD;
	Thu, 01 Oct 2026 20:33:08 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNSh-0000000AAd2-1gRk
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 20:33:07 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 96F20200566;
	Thu, 01 Oct 2026 22:32:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886777;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Q2Q3u38BvvxrVNyDhO1uciuPRRwS+rBIPfstgqzZfNA=;
	b=YMnEbTwg53UhPFBOTtxTaotVqzIZor3jVTPG64CsNWhPVjgwjaEXgjU6UTLykMu6fsLkok
	Cs57sFGtTBz6kXdSSdUPfF50+GQmjSYyK96TY6W8dfO4oJqmx3/uMxmhC5StIrRR8V1Pwg
	n5nydxV0Ns28X3152/4Awry7etePlEToWSaFaY8bduB8iVPlk+lEVAfhCoGWkirpaJaYth
	1kZ/371jqTqNKlrPN28RXsj360tsI2Z/W7/7HTD5/Yacp7U7znlpLsZzoLsmhOONc7WUrn
	a1lZB1+eiFwApv8MFMuVbMC9Az1Y+cxnLQUg/1n67ROL8B0QACJh8iCOzYIjlQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790886777; a=rsa-sha256;
	cv=none;
	b=WfvvZSpbGv1/vMLenE9Y3H3ak1AE1JUTwCTTjsc3m3EP+LAJZuvwvPIpsKjE0Tgz1l/LGO
	QfCFdy9C4NxDVvqlcPXZ1U/igzw+RfRMJ8h+UVOROFZEYfGy19F4OOtLkylxB1xtixKqbA
	dNkoysuXBTYqevsNr9gW1JyjFjdT0L+lU+rGp7rdhvRtK9yXA3WlZ3ns+4Zxgu0wSOBaCQ
	+67V6yDy5WbNHEDbY5K9gt5w5UgQ0G5IDa78W1mTQBkE8E/ye/pe/IyH9rZRsnnasIh0X5
	OqN0qYZyUUkpxV4dF6da6TLHuucg/ZAxwELBO+ZdQW15YDqWvXPpSdj5Dhl5pA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886777;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Q2Q3u38BvvxrVNyDhO1uciuPRRwS+rBIPfstgqzZfNA=;
	b=KGVOM37tOuPtpqaGQBT+Kl4uoUrCxKWqVCD00/+MjBVO8IxBk2ZPKhMM+LBqs9N2sCEdVv
	7DN0xDTh3EouNqkwHNGlvq8/jXIdacuAEfZ9r2cAxdnqrludio0US+V8n7I6iYraukGZcX
	NBtlz2gKCyn9I0ibvq4PHHj9LFqzHer5Ggk00m1oJ+vq9b23IzlYsNJDJs6/PXTUNI7C+S
	ie9o3QuydDlgFKE2X9insreayUwXN0dtv5Txw6DxsmVSrEVO17HpZn9cLo+TT9mRq61km1
	FNkcjRCsIcYkUVusLGbnMB2sPXOJ0eoE8ecoMfb82X9OFjAROVpU7MIGI+PNrg==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 817DFFF876;
	Thu, 01 Oct 2026 22:32:57 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>, 
 =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>
In-Reply-To: <20260924-add-cmdline-fitimage-v2-0-4a665e165002@bootlin.com>
References: <20260924-add-cmdline-fitimage-v2-0-4a665e165002@bootlin.com>
Subject: Re: [PATCH v2 0/3] FIT: parse and use the cmdline property of FIT
 images
Message-Id: <179088677750.3014472.3492517977003987282.b4-ty@pengutronix.de>
Date: Thu, 01 Oct 2026 22:32:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_133303_693660_5B385586 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 24 Sep 2026 19:59:30 +0200, Thomas Bonnefille wrote:
    > As of FIT v0.9, it is possible to pass cmdline parameters to the > bootloader
    via a special property in the fitimage. > This series adds [...] 
 
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
X-Spamd-Result: default: False [-60.60 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.99)[99.94%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0C060200926
X-Stat-Signature: yhumhqdzffjbq3mxojmp48n6ise33kpf


On Thu, 24 Sep 2026 19:59:30 +0200, Thomas Bonnefille wrote:
> As of FIT v0.9, it is possible to pass cmdline parameters to the
> bootloader via a special property in the fitimage.
> This series adds support for this feature in Barebox.
> It also adds some tests to avoid any regression on this feature.
> As `cmdline` is a property in a configuration that isn't a reference to
> an image, it needs to be whitelisted by fit_config_build_hash_nodes() to
> not be hashed.
> 
> [...]

Applied, thanks!

[1/3] bootm: add fitimage command line to bootargs
      https://git.pengutronix.de/cgit/barebox/commit/?id=f84988c69555 (link may not be stable)
[2/3] test: py: add test for fit cmdline parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=6efb8f71259a (link may not be stable)
[3/3] FIT: add cmdline to whitelist of non-hashed properties
      https://git.pengutronix.de/cgit/barebox/commit/?id=96317f537f97 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



