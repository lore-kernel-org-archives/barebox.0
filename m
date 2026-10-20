Delivery-date: Tue, 20 Oct 2026 17:50:53 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJC73-0015Bq-1B
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 17:50:53 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7812A2021F0
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 17:50:49 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xkEygeC9;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="a/T4Di8U";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792511449; a=rsa-sha256;
	cv=pass;
	b=cLNVGJeq6svDsJmWKWjZaQL4dyyv3DONRr/hsVupVc4E+915cOGDBD9xyrMTvjJ0biPmK3
	kqmm4jHedQswt95Hq6IPALd+DRLp7i42kiRKJ+x67bO12nXdHo1QkRKXQodk3K5Luusawi
	ecIf2a3jTElC3MbU2kS3KInFkLZq1+kG1EYQC7cJG6CeBvfyns6rQrkuRccrphClm+Rdl4
	GN1MArAiQsGecgPcnjKIzYYLY6PmiAzyCgA20V1sOcGNvdXzvBztgv43YJ+afEpilnFDVU
	Jr2GQ4bTrOFjvVhA4Pa3LRXr+6t/6hz7NivGLBBOk5GxUiJ4Q0HAsroZwwnYZw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xkEygeC9;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="a/T4Di8U";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792511449;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=R78vgdBziE9h/G0blqKpfSjGUN9hJmprP2Pht7tNlPI=;
	b=QiSKSdQ1TZkQtSSdeow2wq4g0HeMVxcJTh+DBlJ7nAqfdhtsg8JF3UVHm0zWSaC2ql0iB9
	BTkc+2cSteZ/HqJ3hvnFgNCNd0WrZjmmXQAuDozJ8uS/xJGnWiLJa0s2ivIq8T6kfOZO6j
	slblYgBSI8mline57D4oLg/h9umQvuOGnHr/gtXTY6Etiwnn0qIxKt+EVOt6ifVlqx+M94
	AfBDhJwada+I9K3s5LfFGnLPDYGJ6cq2LbskQxnKlwgCr28l8rt+64Dwz0alyFTrb0ALbh
	eDhzC/Q4GXXFmke45bcqS4ahj/oq3mKxmzg2jBAKqHjz3f7O5svQb6VAr53+cw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R78vgdBziE9h/G0blqKpfSjGUN9hJmprP2Pht7tNlPI=; b=xkEygeC9x0VIqJaHjbGCqctmRi
	4TDHXxPE/wm3saKQnP1oYl+evYGoMiSVOip4MEFy21KpKo6R3HWX/awnTP3pyFcuIxcHA97uq4BGV
	1xcBKhoq05t72RI6dbQWabjR6IB2HdYjp9Ch/Fqso4nL0s0O9KlBbr1lbZtwAKjgl3j9Lx0GrQ5sH
	5SMRAAImQ9gAEjjyTwh3NtfhAiTaWSwuV6dvaXif4zCSpw7hd12oNHpGw8Rz4MaGLqsLGFIFS5apN
	+CWFUQSYkkS9FANdZqMLRrW/h7mCRnVc6tE8ucZyyCftt2HRKJFtnIQta0foT6eZNYyQEJTf86wUK
	rHA8q/kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAN1-00000009r5D-13TI;
	Tue, 20 Oct 2026 13:59:15 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAMy-00000009r3R-2OBC
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 13:59:14 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DE873201B9F;
	Tue, 20 Oct 2026 15:59:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504750;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R78vgdBziE9h/G0blqKpfSjGUN9hJmprP2Pht7tNlPI=;
	b=a/T4Di8UqzbJVxzu+dwaaRw5kIBmdCwEqCszFWI9v/pUl9FXmm8G67njaNSJAxfxEvJ+lm
	UHrFqdneEpWZLmsYYCcCgC83gph8/eZuXhdXMKjo1lznkNsEqM6IYKLMJ0coWmMzkHL/jX
	KsI+7RAesLW8nFXn28V9TpQdBs/bbu3DU5XLoSgyx3qdvvrwpJTAaf2Sjmz3Po4uaFi255
	6u/dWoLi5WYY9/nWI5ddCvrzMFOl7Goq39aCQIXqkTpLoxf+i/OpPyfnv+eQclRENDd1NM
	8aOHHij5wOPMyoLPRBbhjpgt0BAojfJ4D6CfmRIPEFFElWB24Wb8uuhBcjYPMQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792504750; a=rsa-sha256;
	cv=none;
	b=Pf4hlTjl6c0kovKF1MAj57Mx8abprQ6RSdpdLhi3JciaH80TVGg2lTOFYIoUZ1C9iD+H5C
	+7tUPRJMNU7lNTex6bBavobfl7D3fNJHQjT9M70y6+u1w4G7yTOkAdoWnJv3MxesVNYbZk
	EAtld/k/Jj4dPOjdAiIwFoXPeCeOR755wQTEKpDi27h7RyWCcyLFnvqEEmfmvAvKLD35IP
	1JY049nIoM7BnC4PMWMo/bGRmoBcNpY6qSAQHbwoutezdFtDoCWbR+/bzkN4yUyJyB4Kfi
	HQTw61Olu3XsVdYIZA4KlYScIRRvEXSnFbjxn8mAgvOdY6YO3Z0fY7LvTFj3sw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504750;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R78vgdBziE9h/G0blqKpfSjGUN9hJmprP2Pht7tNlPI=;
	b=ZKs1QMsGjbDDlT11praHAtej5FK4PlSf5fmJBNHS7ZSGjVOjlmmGtFitGbQ4EktubivNXM
	WGFBfGl9P5tYD2gvImzy4sMFY7nk9IpmSd0Nsv766IVZ8c0O0mpwawpqn+HpTmpe77cqT0
	ZQXxByjrTfV9lhpnFpsvZhG3FhSr8+fr8VCZ6fKMqVG9rubbzvBbqi9gJuuM/+yUlCs8yY
	SHrKbLs0l9wuPHvU6ivWvoGvvdYxtEWcsEo8y8dVCiUCR8nYEp53WINsssTbUFx+rVRLU0
	gs/bAgASX40CtOB072lIHKCbll47E4DzYnquwkoYf7lrvAQmLXx38+HTfGnYcQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id CEA99FFA47;
	Tue, 20 Oct 2026 15:59:10 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: Johannes Schauer Marin Rodrigues <josch@debian.org>
In-Reply-To: <20261017115018.1202076-1-a.fatoum@barebox.org>
References: <20261017115018.1202076-1-a.fatoum@barebox.org>
Subject: Re: [PATCH 1/2] efi: loader: in-place patch the runtime services
 on ExitBootServices
Message-Id: <179250475084.2719855.4114309304807716986.b4-ty@pengutronix.de>
Date: Tue, 20 Oct 2026 15:59:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_065912_798251_C621942B 
X-CRM114-Status: UNSURE (   6.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sat, 17 Oct 2026 13:50:14 +0200, Ahmad Fatoum wrote: >
    ExitBootServices() repoints systab->runtime at a separate table with the
   > detached runtime services. If an EFI application caches RT, it may [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Queue-Id: 7812A2021F0
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
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
X-Stat-Signature: jbqnn3o61rnxm4rzkkdecyxakstp9e5i


On Sat, 17 Oct 2026 13:50:14 +0200, Ahmad Fatoum wrote:
> ExitBootServices() repoints systab->runtime at a separate table with the
> detached runtime services. If an EFI application caches RT, it may end
> up calling into the stale boot-time runtime services object.
> 
> Fix this by keeping the systab->runtime pointer the same and do a
> "deep copy" by rewriting the object including its callbacks instead.
> 
> [...]

Applied, thanks!

[1/2] efi: loader: in-place patch the runtime services on ExitBootServices
      https://git.pengutronix.de/cgit/barebox/commit/?id=ccf7ea6dd236 (link may not be stable)
[2/2] efi: runtime: accept 1:1 mappings in SetVirtualAddressMap
      https://git.pengutronix.de/cgit/barebox/commit/?id=fa86dd3e46ef (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



