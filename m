Delivery-date: Thu, 01 Oct 2026 22:23:58 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCNJu-008ZmE-15
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 22:23:58 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0CDD6201F04
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 22:23:54 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KtnJu1f7;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=XPIeDoyE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790886234; a=rsa-sha256;
	cv=pass;
	b=SsOT9XP3Lf999OP9ZmWUG9di+Fb4Te3eyjb9D3Z4voTSHzhHjsS9mFIPdhJeBuqCiyQbIM
	WLWY8cbxWlBcp874OUNodvoFCPBC+gBK4/nDCZNHU2wyA3hPuhaQQlJqOPHjIoA6OFtBR/
	sc360gNZgoe/c6ruoa612u8qQ4cBTLMxXeTz2IHuBmULDbdSju+0f+E7QYsIw4A/yQxPSS
	vewqMtJ3eWC4oJ5KBDMD0sBPdle6FwMn26TEKPo/deGzr53swWkPL5rH7ocekcfROI6j2+
	ushKoajhgUCnqHkz04CPqy7x+gLqvfXwc/EMDbdyWukiOEdI1oGRC6KoMxhc8w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KtnJu1f7;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=XPIeDoyE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886234;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=hJTQiR5iipZALd4ziAiSHYnTq7kb4ug1k1HDFW139mI=;
	b=BMD0xGs2q0YyBU+bw/d0b+Sy1jXxdJEj5us3jJXtpFvxhiim1h576aUGIddAngL/cennRh
	LnmVxgFWtWzkAS8gSM2I8RhzLnaGst1RZG/SWRZZyoNw3K25Da9v6nZENmR6sKYc290nuV
	jtDkUOrTC0wNyMxgVWGTAYxKnc1GMTjjQi800NR8xqb1gNCXkNXYOQkyDP7k4VFv1VGHbM
	1GC9xIm9gv0sFCWJ+FVv0zGMBljCwWRPO/hnprTmIgz/YRIVVdEjkmPCEkrzfmW4rUriix
	WedHe0OdXD9aLMj9mOa7LWV1JHFHidGPtRTD4vrd/NSBI/kuWh80qDXOw6I25Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hJTQiR5iipZALd4ziAiSHYnTq7kb4ug1k1HDFW139mI=; b=KtnJu1f7FwvMXxVFMzkXFfQW25
	PRV+i077092nZ7O30Q00ddwfkysQVHKzndZa9T1HJp7UqEmPXC3mGxb8IKiFEUpdw1pnAU1vxNC3t
	HQdOz6biMZEC9EBWIpMqtN2ePm4xTtPCPjaBpePRI7I6/AkqGMllvEI888MM5AIIt1LjoyIYv2ycP
	CR3SotW2B+38h/FRJ+mP1Ut5FKudj5MNW7hKRBr1D9F2KyMfivl+dkirEI4jA3xsnafc04dlWxdRU
	FiJq4eWiW/pJK1CGeOVEGaw7Gf+ORF/O8qKPzwt/R2Nk5XqeMrYIyee+Okzkl7p3HPbJ2lru/pz2O
	DUyJ+ikg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNIP-0000000A8oC-3qIh;
	Thu, 01 Oct 2026 20:22:25 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNIN-0000000A8nc-3GAd
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 20:22:25 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 160B6201E6D;
	Thu, 01 Oct 2026 22:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886138;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hJTQiR5iipZALd4ziAiSHYnTq7kb4ug1k1HDFW139mI=;
	b=XPIeDoyEtW8eRrnkzpCNNVnCutNnqTDt8jn4gfP9rsLMKNuNdOsO3bYDcK6/4nB4ESqePF
	iUMAe+8GZXxrrt9/YwESND3ZK0kxqRffN2zB4omMIej4mqgZ8CPu9YEPJ/LCNLXxHhNiBz
	JbSQJT5qrS2cKk7h3T7KbClavQpg7fcD8HdCr6SvQRbI2zpAmMkLogr2H2lRMlKbxnLGn9
	d8M3bd1VNBL6RHv5+wxPxiHAHmTKK1W1O80ySpzgoJ+KefqqCTta+YC9s8jVmnrU5Z6wmt
	BsAlfyKHQeOAWdq9IL2QgKKnxYghWEbtSLpeCW5CdroZ4ul/XMgSCGFes4Bu1Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790886138; a=rsa-sha256;
	cv=none;
	b=Qu8cVnCU0mKWLwJ/GiqBIdVNkESEYCQPEWuDhVeDa4tKtxVV0Fvv0sDjINGA/HyFL8sYT/
	QAJdIuQtWA3pSOHOlufTXBqXyET0I68LaJ/X86LCkpq0quxY+wBqv9UCLRv+Pp+YgxiMgf
	2Zgp8BNI8rSHX6xNtJxXZPGoss5vvNBa87E+CVkmLWO6eoaA9RZoEUxaQB3X26mCTNztcs
	OLeJ8f1X4oqN5m2SP1jtJHa9h251z5pBCX9okzgzk3YSIdMmxT9VFbT39uNpkUmJq1WmZ2
	6a4KC4seco161THS1jUm6ArUxBgXmZslJnhlbFeh/rRr5f/tSpSEgG4/bN4l+g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886138;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hJTQiR5iipZALd4ziAiSHYnTq7kb4ug1k1HDFW139mI=;
	b=Dla7Go+v78g33asegxBBcZFk8U4BY+8FHF66C/7WYAVUsyAoWJAUuQx/qHhApPRNbgHmO+
	74fOTTQrVUOx/6dZ/VC3L8t/v+QterYIM4G4OnI+vqkCSb1ed1u8uZepe6/l0tKhwRtu7k
	/a9EzQrbSVRlgDXhJCyulmnR/QQDbrk9ftGLfL9yw09UUs/rqF5CH8kiNnhp/Heyb+L6I1
	w2I34L8EUQ4ral9Pb5jVURX5k1Q7UyqOdSHdATRKmCruzOmg6ItGiGsSmYE9R4cfEb28G9
	a0trVl5X/tRwohFxO2oybm4J3gGjU4Rqw6SrZ6jq70p+GkPm73AMm0sNcHpFVQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 0697BFF876;
	Thu, 01 Oct 2026 22:22:18 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20261001065247.152618-1-s.hauer@pengutronix.de>
References: <20261001065247.152618-1-s.hauer@pengutronix.de>
Subject: Re: [PATCH] ARM/RISC-V: pbl.lds: drop ALIGN before _text and
 assert entry at start
Message-Id: <179088613802.3011340.6770804757822496850.b4-ty@pengutronix.de>
Date: Thu, 01 Oct 2026 22:22:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_132223_970143_8A65A8DB 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 01 Oct 2026 08:52:47 +0200, Sascha Hauer wrote: >
    .image_start and ._text only hold the zero-sized __image_start and > _text
    markers, so the location counter is still 0 when it reaches > the [...] 
 
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
X-Spamd-Result: default: False [-59.84 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.43)[97.37%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0CDD6201F04
X-Stat-Signature: tirubzfgfo9c3bpreud3wciuxgkwktxx


On Thu, 01 Oct 2026 08:52:47 +0200, Sascha Hauer wrote:
> .image_start and ._text only hold the zero-sized __image_start and
> _text markers, so the location counter is still 0 when it reaches
> the ALIGN(4) in front of ._text. The ALIGN was only meaningful while
> PRE_IMAGE could place data of arbitrary size there. RISC-V copied the
> sequence from ARM.
> 
> The PBL must start with its entry code: it is started from its first
> address, the image size is taken as __image_end, and code copying the
> image uses __image_start and _text interchangeably. Assert that
> instead of silently relying on it.
> 
> [...]

Applied, thanks!

[1/1] ARM/RISC-V: pbl.lds: drop ALIGN before _text and assert entry at start
      https://git.pengutronix.de/cgit/barebox/commit/?id=a2bae64125b0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



