Delivery-date: Thu, 24 Sep 2026 09:41:53 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9e5Z-005i4n-2P
	for lore@lore.pengutronix.de;
	Thu, 24 Sep 2026 09:41:53 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2F793201A7F
	for <lore@pengutronix.de>; Thu, 24 Sep 2026 09:41:53 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tO+PR1Va;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="OS1TgLi/";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DxIv+QvG;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790235713;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=OIqpr/De/56A3mFs4JmwV5Kiq9eF8xsc2BCws4rXh6U=;
	b=Ly4sfmQms4otsaZnDfvZC0+F9HlU1f3TajkupuhutTOw2bUc6TJyFTPfOAHQ+7PYJ0LARl
	fturpl2AQLVduUPDewb1cReB8sCqb52h/f7OTfBUMxLRS2VORQwi51sS0Xevvkdh+4rFrK
	5cvUHDA4LIel1317WmwB3VCNJ8DMQQLx2emqFI04SWpCoGoA4HwO2QMhRsDbayBBmGrQ/t
	bL8YSl+3pnAmfbLGfSvJckHkcIUMsTZmatyjKd7O5nRDrK9FBabRcpro/EYQrmYnth6JeO
	YpQtZzjrRxERXT0NeVhyH2/UV+HQQm0RNsAm0IYvTzwzk0gfPx/fhQ1uqnATEg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790235713; a=rsa-sha256;
	cv=pass;
	b=G9of/MpZqJo5QkrcFCBrurcT9Z5W2WlQ1xh5+R4I/dvK0TIUw98nzqbwhmlzIh01aLj9if
	DF4RmcShSI1pCqbATwEavjLr8wN+B4WhhdSnm/Gky+f8vBTIePh6o1Lylgf5BYYD9jirHG
	0PvzLPmOXHABq6jpDndFMongWDnCTH4zWI9D4wuaaEmnb46ioBPjXdi8zWFfidjT41/NsJ
	J85w3dWXt+TEBaik7e7qI89BTXutqq7dhyG9dm2aCzeiFdNoCyqCbcDdbhbcypp2Njevs3
	hbvGUkCIQ/ukmNfH7jLZQd0975wdpV1lqHloOB/pIWmR9JridQcTGifzh5rvbQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tO+PR1Va;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="OS1TgLi/";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DxIv+QvG;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OIqpr/De/56A3mFs4JmwV5Kiq9eF8xsc2BCws4rXh6U=; b=tO+PR1Va7jKLohdFBGtbvXOoFn
	4ZA5wb2rAqb2rEz7eXYveleFWBplPoju/V44TO5xTkm0qOVFKXReo6JH2TtKfHF6B4Ptcqdcgm+v/
	1uzY5Q6m2Suj2jQBITfIDebGda74i5aNxyLVb7gJRX+jRxz2cuudY00bE7vmvIEen29jEKHd1EB4y
	5dPCEhCSQ3FCNT3jQVXMNLSkHMiylvhiV2hAo7cfhTYf6qTtXcILmae8fizdRpUceLtuWunswiCC9
	eXfR89upg3IjgQHuZIA5YJS4TK2RVP6Xv69BLAUdXgPJ+4gTrTl9KDFMD0obBC0uRGU/cUZ2/BMDS
	8xh7sV1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9e53-0000000AKCE-0v7B;
	Thu, 24 Sep 2026 07:41:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9e51-0000000AKBx-34CI
	for barebox@bombadil.infradead.org;
	Thu, 24 Sep 2026 07:41:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=OIqpr/De/56A3mFs4JmwV5Kiq9eF8xsc2BCws4rXh6U=; b=OS1TgLi/jVXUKp31z9HmYrNtyF
	BD//C+FYocWfzNwjvsd456MSNz25bavJVq5Yxj1c69qhF0nbKdpg2+IwTzbo8aANLhzglcPcVFoCX
	d3vHtuXkWU10P3Cgfzvk4hoFHuv+Z0I6Yfe9OX2l4UzlDc0jj75jzYm6iFVSqQFv2+/PicqSby1vQ
	Su5J/gpumgIAa1qGuBvV/YcU6C7lQQE5nKp5Npmn7oK5bN4tfHIzh9ybAkcW7CDxdpqg3/KYTgnHr
	wQMA5bot1PmBQzJ3rlykg8R3dLMCFl3vf2Gss35SClOsnhRmD11yMzoHEvWQcEl9PdguZ6AzQxNQa
	h3S00tCg==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x9e4y-0000000FfQe-0ACO
	for barebox@lists.infradead.org;
	Thu, 24 Sep 2026 07:41:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9232E200291;
	Thu, 24 Sep 2026 09:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790235674;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OIqpr/De/56A3mFs4JmwV5Kiq9eF8xsc2BCws4rXh6U=;
	b=DxIv+QvGjGpYYjP+2xytoPCbOPmILQCDyDE4QAUtOA08P14SsNGnWAal3I3GmTJVjd/1kr
	8LRJTKOmdQ+FTAqODsiYXywlbiLpIDP3rdWJTV/+ptMRSLDIp9NVy5GRqeefzPUq17xuZd
	/OA6AD+rmTfOkYwoHhOTPGEfoFsnAdXRqwBswzFbRmaRwTF2iBydcyMMbWEY6+HICCDH/Y
	7Id7/LPdjUz8Jdl1JdjsmBJHtTSjcsAkJeh/AHBdbotubzCMu7J9SWdbhZJFRd0fGlkMm+
	qFzA0k0J2MHIER3WGLoTURFKriHGQBBp1cgwG3bi92fpJPXR5AqiA3W9bVTUGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790235674;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OIqpr/De/56A3mFs4JmwV5Kiq9eF8xsc2BCws4rXh6U=;
	b=K5Kv1VgArKhI93qfb6I4vbYXfI6APSbMWlt1GWRdPHtv1ox+mxOQgnCp1Qk+n1oNoIc5g5
	kTw/HUNLznC2jHlDiTwCodkygrXb8OAQLoX1ifZOMSOC4C8IFKxpQV4r9uAQUkJIgZOkED
	zvUMYjlvAAQV9p7Iw67h1ql9iG03rd5IRV0Jd32XWPnDewS4qyeNKpE/bNNyHaYjnVkJy9
	2+608/+55DOoQNKo+PbKG89WbnhtL89Hur03nWRckzQEjpIi1ENmnTcckxfZK1HZ8/lB2c
	pK87s93NJkmmiARMHYPz0iMhDCFJSTQ6t0hfjcENDVT+U/cu7QnKzjclsxHmiw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790235674; a=rsa-sha256;
	cv=none;
	b=TilBaFSmGT0f0qq6R/Rebf5HSbYyOfgIdZ8SLJhQz++7hMZ9zGGpCVdtAH+JQ13UAlDju3
	RHPkwmWC+CxvpOwdcM6vyb6JJCAgWkQD4LDy5SlXUiCkYIqZrRMZetwC02g95DL3CvjXw+
	o0K6gxTxa90w/GLiTwJg6Dy7Z0O83lTycq7+8xec/RzK0hEm57PJc3O3IfZ3byW2z24EGM
	MwZRVVz+3lzmM40N2CmFNrdacBgUSwESAyKZ8bVZsR4cYqyUPqVQFaBQCRYWYsWqjSL8Ua
	FYgZjCsswOnZWIy0/hLPHLBhe+LGby1Ms93suwXTijMjJ0KwY6yBpU2z/cxxzw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9e4w-002Wt9-1f;
	Thu, 24 Sep 2026 09:41:14 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9e4w-0000000GpEW-1trp;
	Thu, 24 Sep 2026 09:41:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260923073000.4124447-1-s.hauer@pengutronix.de>
References: <20260923073000.4124447-1-s.hauer@pengutronix.de>
Subject: Re: [PATCH] test: check-security-policies: mark the source tree
 safe for git
Message-Id: <179023567445.4010155.3519918163986079788.b4-ty@pengutronix.de>
Date: Thu, 24 Sep 2026 09:41:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_084116_695651_EED98BB5 
X-CRM114-Status: UNSURE (   5.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 23 Sep 2026 09:30:00 +0200, Sascha Hauer wrote: >
    The labgrid-pytest job runs the container as root, while the checkout > belongs
    to the user of the GitHub runner. git refuses a repository ow [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-61.01 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.80)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2a0a:edc0:0:1101:1d::28:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 2F793201A7F
X-Stat-Signature: cupwy5ayysa4h9gr6qppz8m8nrfmzi89


On Wed, 23 Sep 2026 09:30:00 +0200, Sascha Hauer wrote:
> The labgrid-pytest job runs the container as root, while the checkout
> belongs to the user of the GitHub runner. git refuses a repository owned
> by someone else, and the final
> 
> 	git diff --exit-code -- '*.sconfig'
> 
> then never compares anything. Instead of failing with the ownership
> error, git diff treats the tree as no repository at all, falls back to
> --no-index and exits 129 with its usage message, which fails the job:
> 
> [...]

Applied, thanks!

[1/1] test: check-security-policies: mark the source tree safe for git
      https://git.pengutronix.de/cgit/barebox/commit/?id=0734b8afb94f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



