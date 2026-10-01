Delivery-date: Thu, 01 Oct 2026 22:25:16 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCNLA-008ZnW-0g
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 22:25:16 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F2D3A201F0C
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 22:25:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=a6vycWVH;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LzwYYHxL;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790886312; a=rsa-sha256;
	cv=pass;
	b=RfZKQNN9fKHFY977obZMq+6CHi7+zlq+C3yOLvprVsFluFiSkOYUU9pU9gOODoanCNs9x3
	PooH0JbWLKL5hG44ArET1GKiHqx9R3y1ZQwsuS6amUltZmAIMWYXNJ4my/2fipVQ7KZ3rj
	4WGWI2G/3wT/eINluKkCKga2ztf7MdkkUd7Xp+woel5RyyCso0eCwaPk90itvtCkkRenET
	ZlU7ysh3SPfvBvx3zqCSNBOFZ6pNSkynYgaKXhO/vFvmmYDuTvop8S+uXm3H8FsR0PPlco
	JwIcDUZhwiHDR37Z41yJZnaaBYk/UXRnIUZVMv98raVAXeeiRgOf/XFqjSqGmg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=a6vycWVH;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LzwYYHxL;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886311;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=yAIMhH6VxV6hgAelm6+NYKLMZNqXQSA9VsrUQdRMuUk=;
	b=S6pNWP2/qvbGdz3OlsjPuEwmQpvzktlluFRnISSUrJUtailKXK3AcsK+jHxNLmtPDMEhkz
	rHV6BMDjJ+KVA2UY5tQx2Bi25eHCfeNPtjYqiklzYlch4dzh+xgNwgTSGiaz97v5Rjftc9
	FArT0nn2WArO28Z9nkt3oTxoIOxUk1QBlmkNEuEzYcNEVv2kujuTKw2TwXqrEzqb2vk4dT
	2Lex49ugllw4VDTQSbanIFdreGwasWJzOKRA5e7KVi7amFrhg5Y8pCs2pcs4onetDASlRC
	teCurekHzMujbdaUr6Ho88CTl8QDbwRPtvyGCBW9DQ7CmaiYja9p++Qim3L45Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yAIMhH6VxV6hgAelm6+NYKLMZNqXQSA9VsrUQdRMuUk=; b=a6vycWVHpvdKjraskoM/ag4xq/
	rXVK617MIE/mDCOPVJ1s960lAm/k/rkMXts7Q97qwX+WBYNJrMofbpxshbZSOl8n2fUml2KoufBUS
	gncIOQDTpYssJCQLup5a9Wg/809gl+AF3odxxUlTk7QjBlefqK7BFWTGAlCYKD2PWlOC3Rxmr+1De
	SCcaK7MND+QZjgaTvgw69L/LaC1eDfVM4DmTxQCCLO7QrYgFGOfAtKy3DvbxM3yFhxLR244ps5oOe
	loy70490qYDZpb7nMaE9ecfcqkxPwhucVoBiJHiRhQeBTXomMRXayf6fKZofQrueV2m32WBzESw7y
	pp47IkIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNJY-0000000A91U-0nO4;
	Thu, 01 Oct 2026 20:23:36 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNJS-0000000A8yc-09iu
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 20:23:34 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5D1D3201EAF;
	Thu, 01 Oct 2026 22:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886204;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yAIMhH6VxV6hgAelm6+NYKLMZNqXQSA9VsrUQdRMuUk=;
	b=LzwYYHxLWKl4JGKuqTaJf7fXvWIoOrXgbSrOllcbNIu+UmGiHJaRWW621zBKAstbQMTRVY
	WFeYruqWWZqjVsTrZYjjxYSKHX17Q6zS1Eh9utb4Udis9IAYNj8H700AVxICNwmi5Z/h9o
	8sygaZMgKMGQ+jjhlra6k0pDIo8MeodVYRPUl9snimAQ9BFLSCtn5jd8EWeVO1N3xGZQ9B
	Rrh7NPYQq4dI7NTi+uoX0rYwtTLGZPEqUvtLO0Q68xyx16EGgnNqWpIocdgKkSSxADx+EE
	fIBr56nNVOpdSRENQJAOtIkK34mRIZIL6YIvR0kWdA9SciaA0ZtJnnHaZ6P+rg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790886204; a=rsa-sha256;
	cv=none;
	b=hDWuy3TR7lNmbGl0Uj2hVThXN1WeJx++JDVPw8ZClW46UP7+AyA0FmGtT68qCxvo4oAiIG
	Ch9/8fZTmjZXVcQmTSNBMAAFypOUXQt6Of7GuvbkdtNIhUEMcdmJUNPyQjoNm1D1gR0AFX
	mS6KVxrhwU2POcBxP3vijvpaT+iGZd4RlWAuA2SkCD5dHZZz2flr+CqpEXtNdgi97kJ5iW
	Yd8iouh5X8Ng6mzDaj4Bir6dUgTpLtLIAK3Np4cZR53YWd6rHUF8kjJIxGi0qnyvcGPxo4
	VdBZCTqwfkuOELo+YK26DiCjBvaOSaC3BFsX4vH2RvQkVxJqEWqSaDMlyZYtIQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886204;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yAIMhH6VxV6hgAelm6+NYKLMZNqXQSA9VsrUQdRMuUk=;
	b=BI9wARGNk7NOgxA7lUiB/WELAHqh6UYt7ornVz6QnpZ3cVQ6deanxGS5aTnIU23tm4jWrK
	UOx+vbdkuRCZd9lDE8sLXhIjhsLwOrYww1Wys8AS3F6B6+gnSkIViboVGzLym5CCzp/JTe
	z7I0GZhNrr2StVXxP3A/BmlY2CFsSZWf49s6wWbbZEzot70PRAkElJjgAWltIDzV5RXDLP
	5bmhbk5N0KNBzlK90r9YFJa16qxfapB1vzpjC6vvU9aY566YN2Q/6iBgqUalfIz1qug2pd
	U4826LPk6NzFL6uYrZNG8wX1iXcbo9Suu3tsaB4uJW0ZOFFpbbkTeupd/9T7Rw==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 4D9C4FF876;
	Thu, 01 Oct 2026 22:23:24 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Florijan Plohl <florijan.plohl@norik.com>
Cc: upstream@lists.phytec.de
In-Reply-To: <20261001104112.2615285-1-florijan.plohl@norik.com>
References: <20261001104112.2615285-1-florijan.plohl@norik.com>
Subject: Re: [PATCH] ARM: dts: imx6: phycore: Add phy-reset-post-delay
Message-Id: <179088620431.3011488.17337469418802186010.b4-ty@pengutronix.de>
Date: Thu, 01 Oct 2026 22:23:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_132330_283282_B32B420B 
X-CRM114-Status: UNSURE (   5.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 01 Oct 2026 12:41:12 +0200, Florijan Plohl wrote:
    > Give the ADIN1300 PHY enough time to latch the hardware configuration >
    and setup management interface. > > Otherwise the phy_id read as 0x [...]
    
 
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
X-Spamd-Result: default: False [-60.34 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.93)[99.72%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: F2D3A201F0C
X-Stat-Signature: and766uhw1psj71uteaqdks7ni9duff1


On Thu, 01 Oct 2026 12:41:12 +0200, Florijan Plohl wrote:
> Give the ADIN1300 PHY enough time to latch the hardware configuration
> and setup management interface.
> 
> Otherwise the phy_id read as 0x0.
> 
> 

Applied, thanks!

[1/1] ARM: dts: imx6: phycore: Add phy-reset-post-delay
      https://git.pengutronix.de/cgit/barebox/commit/?id=e25c49dcab5d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



