Delivery-date: Thu, 22 Oct 2026 12:10:06 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJpkL-001ozD-1a
	for lore@lore.pengutronix.de;
	Thu, 22 Oct 2026 12:10:06 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 60FC1202013
	for <lore@pengutronix.de>; Thu, 22 Oct 2026 12:10:05 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="3aX/a3V2";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=b914A59Q;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792663805; a=rsa-sha256;
	cv=pass;
	b=YDj0AMP8kohFK5l7zYF5b6QhXTLSydO0SbII8DbNJyRCuvajNMDKDTt150Ag9gPfz1CUoY
	g3aqvvQAjPMLugkEc9wz3ii1RCxzcqx69O8fPHiYlQM0EaxaqzIhpTZCcOJ5GKskrA3q4C
	HLdmUHNgYabMO6B94/1YVqRp+pQyrz54MEKB3FJLP6z4g68oa2ctLZmSJc0Biqlk3Caeuk
	7+plBv2lSW6LxI44TCpriE+GoOWK2vqbGuVMgITXNOWTVcYNOuF0FPJ09gxnG66xcmoYpy
	AoZCjYIUSWb5BGy6VyB4xtxXZCViegjQobgCOMASUl3UhPci5r8sdr0BD/ajQw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="3aX/a3V2";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=b914A59Q;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792663805;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=httjhvFtMey12NN4cDQERf1V6sDkM7ET8bAzX8dhp0g=;
	b=BQm84Q5pCvz1XIpdRVV0HaoOK0XoITAioMnQ4WlLymElOetPphPJqqlSHq/rq7lW6BpXji
	01FD1gtHnCQWNAw54wRO3Rn3s3ebdD4birC9MYOytiQ5RO0s3ZZRaRfrFbg7NY9iu5+bm6
	ti5T2tP19zHDsf4qREDTwGrdZa1XjCiCfFTZn+RpymeWUs1VmVAJGe+9TD5hrQ9YsDP1vU
	sur2y6yH+g5DR2aw3sXKsuB5W5l1ztu0UUwbkbS5pzWHf9wGdTy3QYztRF85Eaz88MiVLh
	s6zQI8d6uxOL1sEZlxJc65NWfjRWffWZ5TWruSyawD3MfKdnlICQ3e9bxVAe5g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=httjhvFtMey12NN4cDQERf1V6sDkM7ET8bAzX8dhp0g=; b=3aX/a3V24tgEuO
	e1jBOBOItgSXlbBNsoFva0i3BTbdDHpdKZsDxGthQIJqRHJfwjSs74+koRhmbvqFdYsCMejq/1W+z
	ZNWKBP9o30EuK8mugoqQ4ynKL/dj1Sb+eeaIvIz33buIhJVj+dvmz2o9z3cqZCinwt6ZB4J/i63DV
	/QdNiJhoUzzn3P2fXXH8VvocGc3NcaW4xjBHRIhVJQ848drsSRUgnWJweRIDuqjWWzGPibMdHIfeW
	2moJgUjQXy1IYdiKWBT7g986WszIujpT5tsw+9qFL+EZeWz/xJMHG6UC5tIjkst+wP9qWC4hXQ6HH
	qHOx8XRjZgZfpRoX4Jdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJph0-0000000Du5g-43vg;
	Thu, 22 Oct 2026 10:06:38 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJpgy-0000000Du59-0s3Z
	for barebox@lists.infradead.org;
	Thu, 22 Oct 2026 10:06:38 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CF9032009B1;
	Thu, 22 Oct 2026 12:06:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792663592;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=httjhvFtMey12NN4cDQERf1V6sDkM7ET8bAzX8dhp0g=;
	b=b914A59QuiAG+b23qlJPtYonyTANATdUdfQDOnn8HC4/FWsatWaYCDuco4f7WbekZ/+pc3
	ZBohX+SKvPJcA9MT58p4LTzWPRJfWO2p19PCso1mzWcakjtlJj8wJ7bgwaa3NvKbmQ0OwE
	Q6OeYM1Dyd4rFSPQk7TwaxfGlyo/QL1r/Q8/ZkXuXThRQJRX/SLChCaAIm5XNlhJWxLRVv
	uE19+W9DeTke9SGCkDOEGSTXUQbbTUtXQmIKWoHzYZ3u8KS8JXPiW1U9PKpW5etuTjNqSU
	+lo25IxeDGUZvndMvEyvxrzM6H9jkl5TOZLZ6VKocniiFwCyux2FOLLbRm+nRw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792663592; a=rsa-sha256;
	cv=none;
	b=gxMr4TC3tTCwlxL0D0BDXe52v8vrM1IOcYDoSsncEJNfKnsqfMD31QJCN2Q3WfGX3Y1OYw
	SxjgJ3sS4JE5MSCn2nEfhL28Wq0UfWX72PZ7+P3X2YvpHA4E+EksLB6YtxX7qUoBFb1fg/
	f/ErkBgczfIsk0LAHp/EpuZR2l7evZel9kUBXn0uskmY26phJOWtQs+lVgKMpQjI7W/bAU
	qRKYcQ+eassOnCE7ygtenNzIsazcBWd10peUo0MFzZNZiYsRxxC+2c3IoY5+CeQaLniS/1
	xfjH+9yEn1uWK6pFEWY4Z6EhwcwsEeedgLqPp3vMmcXpxRcBX5yvY9uo7/FSoA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792663592;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=httjhvFtMey12NN4cDQERf1V6sDkM7ET8bAzX8dhp0g=;
	b=UNXsitNomHjlOnZ6v0sBQdcaApmfNk+QUP82dwVKj43qt32oMaWYsGmp8ehEuAFJrnypHG
	gAzBsbfvyMgVA7Myp76O1TpC9T196OUoOu/V3Q9kXM7P3YShRHip0XBl8xvXiA52fvDAsE
	xJooxIpyDoGklrJukIqIoxF7dGXG8q07RQeQCLMS9no0lxNkkJEIo+yC89WVjRJ3x9O3q+
	39bheznvgXqGJwbF5HyY9zU5KkANmCA3+Yj3kdeWBfbg+mTxwFHi8LGN/qFTFzoSkqtTJ9
	k8S6od+aDw+XkS4SHkpFfEvC9Xd/798AtuIcFDq2llMn72sN8BSNiMVJg4HVEg==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id BECE1FFBD9;
	Thu, 22 Oct 2026 12:06:32 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20261021083843.3550194-1-m.tretter@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-11-f8fb2d2819da@pengutronix.de>
 <20261021083843.3550194-1-m.tretter@pengutronix.de>
Subject: Re: (subset) [PATCH] fixup! arm: socfpga: axe5-eagle: build FSBL
 without piggy data
Message-Id: <179266359276.1191624.5820559623751061458.b4-ty@pengutronix.de>
Date: Thu, 22 Oct 2026 12:06:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_030636_407207_84664AC6 
X-CRM114-Status: UNSURE (   3.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 21 Oct 2026 10:38:43 +0200, Michael Tretter wrote:
    > Applied, thanks! [1/1] fixup! arm: socfpga: axe5-eagle: build FSBL without
    piggy data https://git.pengutronix.de/cgit/barebox/commit/?id=66750a7a007b
    (link may not be stable) 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 60FC1202013
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
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
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: xwcdp9edwxzyubha1h1dk98kmn7848js


On Wed, 21 Oct 2026 10:38:43 +0200, Michael Tretter wrote:
> 


Applied, thanks!

[1/1] fixup! arm: socfpga: axe5-eagle: build FSBL without piggy data
      https://git.pengutronix.de/cgit/barebox/commit/?id=66750a7a007b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



