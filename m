Delivery-date: Tue, 06 Oct 2026 08:43:20 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDytU-00AOed-0R
	for lore@lore.pengutronix.de;
	Tue, 06 Oct 2026 08:43:20 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E9CD82003F0
	for <lore@pengutronix.de>; Tue, 06 Oct 2026 08:43:19 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oKoI6qLC;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=HxDFGyCh;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791268999; a=rsa-sha256;
	cv=pass;
	b=H7PLaGTGvgA2jKgtppu+j+HTTcYG2Zt80ZAi5rZY1TjVXkemHd0M/VA2kkp4kXXGZHNNGI
	g2EZ+0EtiQ5L5pCr6tAMwAYVFHMlfZzZeq9Y3F16YMDwL0OxbBScl4J7qVECAD9couR+Ap
	XymDhK5S9jeE+mu+SxIcNupplDrZk6vB34vKgaNqZNLkv3xqaz6f2rECjbRXeLuedodWVD
	Z2dGXrzg0WxQ4zGX5xbgG1J9HN2igUJFuFlg0kxfhaRClAPY9L37Upir/YgkIiR+TRM+ow
	VWh69Kq5ZYIx+cRaoQ3JOtn9d+oDRrl4vaxhQ9VpcJkPZ49gBEKidM1bmvhnng==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oKoI6qLC;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=HxDFGyCh;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791268999;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=xt0KMuuzhqgl7WU8RLRJAblGmkUSfKIGYgdUzFmm0zY=;
	b=DoDY0GlyMjPHhJ3L3UZsZ27YiYOZAdpsdunmHcln3bClx5WdldOQEGMO6ckMPsASFTd7zH
	QR7OLUtmlHJE2rQiijUabm3CoU/7Rr15wvQhctp3tVFdXV16eh2wJ9GdOaT4kezgyYrR0/
	VomIQBjMw1G4HyE0TK/jDX22JRkOir/2QFvuA8zL+Zk2WsESbtCFeQwBfTBZVAvI/csbFW
	o6gJgzCB0Uqz1lrPcvwriu0zjlwm3uTonUXy2QfPm4sjZ6VlMDslaMDseuS1zPs1mtmt7/
	PRqrh3dxLSsGnhcD4XI4XbXm5tV4vETgxCdt5GFbDp447Cy/CXhqvuR9ytSvpQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xt0KMuuzhqgl7WU8RLRJAblGmkUSfKIGYgdUzFmm0zY=; b=oKoI6qLCAEkmX0cX+q7HPWjy4A
	lRt0HOVDt11EqpgBJhhldYtMpr71fI2VdVTBYH1CrVlnEveEooTT+CbOp1RvIMX1miPhNUNDSehsL
	qjNhWCxHmKv3CIirho7a1yq6J+QW4O6cHHMz15gDdO+f9Vb4P+9xqlI85OOV334IP1igxCkhEJkde
	XaBOTPc9NBqnWJit6XsLcOoTqiMkKo3dwnFc+kSrZEp7h3d4695HRnf0ANrUjXJdlwvXG8cfd8WJj
	mKAaVBTzNopef6BcAeswBrnP9AhYDpC+cUU/ZfWyvZ1yVUY/I65xJ9di9/a8rQAoS4WZ/IrbzRIcM
	qD0Y4ruQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDysM-000000008om-35IS;
	Tue, 06 Oct 2026 06:42:10 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDysJ-000000008o2-22ZA
	for barebox@lists.infradead.org;
	Tue, 06 Oct 2026 06:42:09 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 97DCF2012A4;
	Tue, 06 Oct 2026 08:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791268925;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xt0KMuuzhqgl7WU8RLRJAblGmkUSfKIGYgdUzFmm0zY=;
	b=HxDFGyChdXniQ1sZmLyweXF9GHDicl6AgCt8odG5ktNPwROKkLhs+/vCco+h/l3ddWDSKp
	XvstnEgk95FWPZQmuDCvkkLnBPVXAZ52bx9Aqv/5fJUV+z3tDFXBDdnTjhQ/Nx7/uX4Jlk
	RLWSJKgqUKaEoVESP0ahHIYWqmuZ3ZzQt+Mzb/X3DheSn0FNjzuQYKFjOdr58LKVJ349k7
	UBGA8OXONYemr7a4yLG5Vv7gL7tbeMuuev+kDTkPH4B0noPJcHDtcGccsRbF4caqeJzXqS
	NuD0+/YoQt+4LOJih29lrvmOoLGEUO1+0hJyeLZAg0NL9pCUgcasJfb0hTD0jQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791268925; a=rsa-sha256;
	cv=none;
	b=KbCvOATWVkaFLBIJtHtnHXk4YhlsgN3r7F0H4e9VU8FZSQrVCvVOxxd3xU/MAlbS/YHQC2
	aM4ly9ndpsPMjSPbkfKHMTQKMAUGtUHbONIv4KD0HxYCwb2Vj3z+/7iqfS2mpLHvOtCe3d
	dFEY3U8hncyq+9CgfmH2Thbzf0JAEvDQ12aIUixmB3ChADb/rBMvMweMdKR5cHaHPiWvyw
	PfEU4cwd5zGvORq52KVX7XpJ97i9o6dbIbtWFK2dzQzIzWdL5Vy0O0O8VWnzSO0o7G9JYg
	ONiojpQAY3io455vaFKqC45N6p9M79xsnMYzwoZQy1iicQyhcwUdv9o+Zi5xoA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791268925;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xt0KMuuzhqgl7WU8RLRJAblGmkUSfKIGYgdUzFmm0zY=;
	b=STlN0ntIxyv3Enpe+T7jHRKRANjpNz85Ytz4Ajw6WFjKPoiX5V4zkRNdzVUUb+Xwk4Ga3b
	8z/Cn0SDsazYReU2UmcXoHfJhQBcv3/GheGN6a0gWLCtCkjANRdWORov7EsHOz/DKkbK2f
	JCb06erxF7dw6wuR7hRDj8R2Mf/X3F7AOoY84aSK5J/3GyP2g02myRWLK9J119xfzS+Q/d
	1g0kCu0wIaz49HRwuzJIGS2DALBXEtI/du2neYOArKxFLeOIgBKTiE0bk1D3J0V+SSa0WZ
	cbH+OFO7sGIOeOq8whqaI5CFDnzfbxzHf/X9XMXaFDX4NGwnsDHAckuFMmb4fw==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 887E9FFA39;
	Tue, 06 Oct 2026 08:42:05 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Florijan Plohl <florijan.plohl@norik.com>
Cc: upstream@lists.phytec.de
In-Reply-To: <20261005091420.216137-1-florijan.plohl@norik.com>
References: <20261005091420.216137-1-florijan.plohl@norik.com>
Subject: Re: [PATCH v2] ARM: boards: phytec-som-imx6: Add ADIN1300 PHY
 fixup
Message-Id: <179126892555.541372.13264499090230407913.b4-ty@pengutronix.de>
Date: Tue, 06 Oct 2026 08:42:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_234207_678117_06CB2E4C 
X-CRM114-Status: UNSURE (   6.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 05 Oct 2026 11:14:11 +0200, Florijan Plohl wrote:
    > The i.MX 6 requires a ref clock from the PHY when running in RGMII mode.
    > Since the clock output from the GP_CLK pin is disabled by defaul [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
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
X-Rspamd-Queue-Id: E9CD82003F0
X-Stat-Signature: koctwup9seggprchfb1r4ccrso63jbsu


On Mon, 05 Oct 2026 11:14:11 +0200, Florijan Plohl wrote:
> The i.MX 6 requires a ref clock from the PHY when running in RGMII mode.
> Since the clock output from the GP_CLK pin is disabled by default on the
> ADIN1300 PHY we need a fixup to enable it.
> 
> 

Applied, thanks!

[1/1] ARM: boards: phytec-som-imx6: Add ADIN1300 PHY fixup
      https://git.pengutronix.de/cgit/barebox/commit/?id=91e5373c52dd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



