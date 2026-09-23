Delivery-date: Wed, 23 Sep 2026 08:28:50 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9GTK-005KxQ-03
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 08:28:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D7029201FF7
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 08:28:49 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WCE8I86n;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=e3DQly2l;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144929;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=vAFspAGuX60nUaa9mBR7vh0kiQOp1JWvhsqukmKp4JQ=;
	b=f3MPWRBFVLAYN7Arth3KaM2vp9nMcOXbLlmqKW5AkamvfmYMc80Ma/jIh5UC06ZktyeU3N
	Z/BKz/3dH7VS7mexajZ7bHtRCHwjhGY72sV3Nub1IOjP+MkNm3CaM7U6+xYHHI6B9E2BNr
	0MmRUVkTaoUa3kp9D2+MrWRo+SxHPAZf6wg0NI+057DwX3xZh7WMNZYd71yn7px14afyaF
	VkcmI3mNbXzbjuqlqlWXbjq/TWgqvJ2hStCI6OlRw4rt5GBFR3wOvdM4H4PPPwXz4DuQDD
	xEhTgXXQKoIRPtffgA4h8bFHL20b1BM1FSYRAosm6qDLqmr1unN+X1rlvbJQFQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790144929; a=rsa-sha256;
	cv=pass;
	b=Pd1wruKeidwNKQlnBgRCwm0xS06aNM+rzGx30H8toZA3rVuC7r/GbpTr3Smm9Y+dP6bHyC
	SC8ClnQuPMya6zU67pVNVf2w/K1V+X9LiMkUtSg+H9PnA1/mz0Zm1Kq5rVSNxrji5Y06sE
	gNRN8ZpT8h5+5RtNsBEzB/IUsR298xteP1/HO5AbKIFtWQVGYaogeeQf96Q3VubAFwXTrc
	1UOeUqx0AjY9zhDdXk6VjR9S7u314b6P24Gj+8IiImSy8gKWjHOTveavubgjr59/Vwp/dV
	Dq4wxfS+UjOisovbESDpN3vrWJ0gLiFivM0QQjZbqXAQILQ0yvoxn2NLVGTR8g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WCE8I86n;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=e3DQly2l;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vAFspAGuX60nUaa9mBR7vh0kiQOp1JWvhsqukmKp4JQ=; b=WCE8I86n1DhIUnoe6cMvQvgP5O
	1f9/s70AAorcbC6dBOHjaEDz/FnQVdZX6rZIxNKykroMvhnT8LaN5OIsWV9UnBVGgI8LSbkjPOrgK
	NlQqBhDv/v8RPSg0LpZUGInOTMg4YV5RyqCF5YBG68R55vVYJ6TqkcHHBAzVCV3TWfzVju4dkpxjP
	3giP3JSJczvvWFctN55jAzUwd2EKsrm8Bh8bJsMLPoca0TJDE7CEaiFHm2j52EQHjkE0UvvcPT1eF
	vyjQqxLo2BoVjQtTW5OAZAgqUoeoNflSq45V9ja7iFt6OGOF3yY49hssZYfLg6MwBWk57h+oHOxMA
	v5FUVc3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GSF-00000007GoR-2hSu;
	Wed, 23 Sep 2026 06:27:43 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GSD-00000007Go5-0DlD
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 06:27:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 73A212001F2;
	Wed, 23 Sep 2026 08:27:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144859;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vAFspAGuX60nUaa9mBR7vh0kiQOp1JWvhsqukmKp4JQ=;
	b=e3DQly2l6D1ZH1YSJpHQn+Aa4gjaRkRjblgU56VwARpnXCJtqv4mUswE3Tt3UWFmmCuGsR
	iCTK6AbRmpIQiJj6F9nzkbynmrj7Uo5aDUr7+psxJwdzV64mokYsPzJlppaPL2NUjNiq8k
	8ssocApS/KvjvgsQIhHk6+Zyx+HIk5hN47AuctW/+nNOVVYUdrSZeJ51xsseA5g5qOwloY
	YCV4lfjSjju10JXK6/JUbQyjHhpIcrPpeCVpZxu1uFKIGMwF5ba0qNPbbLW+TrQtywkCoS
	nkbVjFFM8p5OfXY2vVkhdfXADrpU94rPkIRaY9+9CBguCBRWzq/RHw9wwILVuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144859;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vAFspAGuX60nUaa9mBR7vh0kiQOp1JWvhsqukmKp4JQ=;
	b=WkEGCdxbR8DFKQzmw+SJNNjDpZb5QLqm5K+pY+1BUEmDTHlzP17cSJRsw6YsJLl0UziQyJ
	pepm1Mu6Ir7lNVwgbfsrutHSWdMw3Imf+Md2g8aDvAsL7LcIGmOWs8vkBwAffNkBPAY7MD
	azJixFeC4O/QBigYZjcE4kvj9Semco+e3kIJ4LikapjygozhfeeM8WxrXTyqglFLfxIp5i
	/8FwKNZAHeHz93DFuNblaI38I+eQEn6i56bGNQTdGa8y/gekjiwD1wKz3KUppxHOV5voGB
	jngYk9NPiNWqIJOZmJDdqxFWFzk8OKJn5uX8Db7lt2MpLq+B4KJ+Q/CVp6MXqQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790144859; a=rsa-sha256;
	cv=none;
	b=TgqrgaZF44ZXu0qR6zrPIKvm4jF64zTWj3KEPqJvjDMIBuJ5TmbIX5B8M3BIVpG1iXpI2A
	fq9DxKwRVATk1i5N2J9gAOtHK5vVR7mHuYxH+BsvlAnq4zed81/0CXuhBg7uQnBJZBHhji
	XJ+keTETdHRsrR+o36MNDQOXDbopKUBBnNX8tOID44mUUF2mc70VcD+rVGkL0T9HXXTG1M
	idv60xIXlsIBlLizwi3b+51za84TLqzGC5uI0mwfmQ57qkd4zRno32EOQT+oe2tn7ABQ1R
	Vh5AdQtXFOC3q4f07qljpSi7+qdJicg7WBraifuIRF0F8lsGQcmItErv08GJSg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GSB-002M63-1G;
	Wed, 23 Sep 2026 08:27:39 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GSB-0000000BpbO-1OAO;
	Wed, 23 Sep 2026 08:27:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: bruno.produit@trailofbits.com
In-Reply-To: <20260921085922.261158-1-a.fatoum@pengutronix.de>
References: <20260921085922.261158-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] .mailmap: fix Bruno Produit's author name
Message-Id: <179014485932.2819917.14698630723927131129.b4-ty@pengutronix.de>
Date: Wed, 23 Sep 2026 08:27:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_232741_249747_E2D6DE2B 
X-CRM114-Status: UNSURE (   6.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 21 Sep 2026 10:59:18 +0200, Ahmad Fatoum wrote: >
    Import into git led to two of Bruno's patches having > bruno.produit@trailofbits.com
    as both author and email. > > Not sure how that came abo [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.98%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D7029201FF7
X-Stat-Signature: 8eahzrmk5756cjgw3q1mq94ra63sm8ss


On Mon, 21 Sep 2026 10:59:18 +0200, Ahmad Fatoum wrote:
> Import into git led to two of Bruno's patches having
> bruno.produit@trailofbits.com as both author and email.
> 
> Not sure how that came about, but add his name to the mailmap,
> so they are shown correctly.
> 
> 
> [...]

Applied, thanks!

[1/1] .mailmap: fix Bruno Produit's author name
      https://git.pengutronix.de/cgit/barebox/commit/?id=24a08a7cfa58 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



