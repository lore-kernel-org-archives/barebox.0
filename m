Delivery-date: Tue, 29 Sep 2026 10:01:09 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBSlx-007bJi-15
	for lore@lore.pengutronix.de;
	Tue, 29 Sep 2026 10:01:09 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 297B4201551
	for <lore@pengutronix.de>; Tue, 29 Sep 2026 10:01:09 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZWdq6kXw;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=YKHiX7mj;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790668869;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Iyjr9ol16IS1FcTHDvJXYWOyZBdX02trPr1c+TqtCFU=;
	b=VljEuMqhJFw8YA3VkJwb6eoM7sGDcnfsMjtzXGRkn5uNHxtNmTOz+gHlGgR64a+szUPSj/
	U+E1vgWii48cABSCynyE97NAhfm0oUytwC0EG/gSeToVQxhkGGI6xH0QNPem+VR2/WSsIt
	cSxuj9CWtQy+STNsVqWnEdSEP9Yns8/Ku0K2hwPHLZZIrtSsBV8MyHsuMMLSnjRVh8fT/s
	mWH4nAyHa8cHW8Lgm4rFesSYyIeORf9CmcNyzB7fHzdfkk9JDyotpvSSmr0Lc5+L1nzF/N
	+B3uIltFYgRsTnlSiwb6TAR859CHtdRgwY3s944O6jcwlRCIEvKKoXnQUfpCcg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790668869; a=rsa-sha256;
	cv=pass;
	b=bFAAzvuFXEhHvsvMisQWQt0oRW+bnTqaxCIC/osr7HBiy1a0VHJOFVM58svfVjwW7DVvgh
	RDJtEsSBHceZ9lksKfX5MjAmIsc1z/cTkLQFKGV5pbHhNUxRD3Wsy2u6sawGNrGZgxLdnh
	n7L93nsQpiGUfwSHGyI178Wi03HLqwu5g4gDElVqMup/8ZVXt7+yf5GyjG8p9UhnALEUCU
	gf/41W3YhNWUk7V/+SqfZ4PbXQsDaYoWDS6vsha5j6SbOszJnvvWD31z4tIJ2dxcySflPd
	rSdKdWlw+GaKWfNXPbDSZScw487K2jifdw4EO5tk09OrM9nHepzu1tizmvYx8Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZWdq6kXw;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=YKHiX7mj;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Iyjr9ol16IS1FcTHDvJXYWOyZBdX02trPr1c+TqtCFU=; b=ZWdq6kXwBmvr3b+fwIVUlmV3CZ
	rzBGo+v9WP5t423xurBiiFgUeNwHCWj+PaWXBf1yMH/hooKFncyJziwoQBGSHDPKkblQofsnP7HXI
	UqOAVn6F/sMWMBcs3UbgjF45PKNrmMAPs8I8ha2NGd+rKXU1zt+PBsrfTfthk86RECUcZxEJ8KWoR
	ou45vYIl2kjnejGb0oTdaZtDiFg+6PWTpLLeIbPTreWy+J9B33lVffXwI6T1v6ZNUcsPpe5JrurMS
	+wtnisKYxoCyRf0JsIFfDgW4HAVQGiyHk9hHKEBizZvvsgJpiIhm+m6mo/jIMuznW3tjZWQVa7mQL
	mmHzxg4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSkn-00000002g08-18vq;
	Tue, 29 Sep 2026 07:59:57 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSkj-00000002fzJ-2e9R
	for barebox@lists.infradead.org;
	Tue, 29 Sep 2026 07:59:55 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D5F0D200B4C;
	Tue, 29 Sep 2026 09:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790668791;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Iyjr9ol16IS1FcTHDvJXYWOyZBdX02trPr1c+TqtCFU=;
	b=YKHiX7mjIrWY6Tyez7Eke1N5NTDPoiDy0sYp1CavNv9lpK7I1opX8a2xcJfZ3iq5GtGQXx
	UqlEo/AC29e6HGEzs1qKrbthm1nqxAqkVFkbqntFpzpx8uAbTdAVJiIFoCI+Jyf9h6V7x3
	WQjptMdW1Siim58Njm2QoP7V8KCHEcf/YrZR+Vp6FWG26FWsYeasK3L2C/KOD3q9SB9/VB
	UKM2iqUdZFH0etWxgKYY55XdmMBe/wqwvBcQn7q75XFOOFCtI8yENc5m0PJerMjIeFliwo
	aMafK9bQ9Awpu4zRMyNG+5KTyfLb6k0NcJZQSRP+3JyKGAmJJZFa99bJl4e9Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790668791;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Iyjr9ol16IS1FcTHDvJXYWOyZBdX02trPr1c+TqtCFU=;
	b=EsUhufYw5xI1sp3jKYB4VPz6ECNnPpJus/Isaa9mn6FJhMlf/RBWNgQgBhvW473zobX94f
	98/OOiiB7hFOtkxtN5O7SBZIWT5QseFu66Ve3EMxTOB/tqzi1Lq/QhLYEJrdqkU9EjvBK2
	nEbSnqbSoqLe1dL3A+50LtXMY8sYyqI3z8BpMVoFrBGeD8CBZuhgZuAZlzu/RHohNrvX/3
	aHwaLDSOtyCaNnsZRREt6XxMTlCIzcUfhKGUane8jUVGzGORsWnJCqa/QKXc5fgejhNxVC
	x9L5BMYtohzwRguScQGVPECOAyBXT0skV/aIVrxTs++OcN9C/o6O9FfTe1FclQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790668791; a=rsa-sha256;
	cv=none;
	b=XAkT8lHfW26llZuoPjaSK97KNgm/pemP7GLavIsH67kd7H6ScZVwCja+Tr2eB16/fS9Q54
	WKFTmACrFrP0Ug89NFPacHsZo0rY2pSe5PfrIovUVkzEiHSyKurZrq9XZV/XXDipcWNXEg
	nO6jxg+2goMj180cyT59E/rSPXpGZE44+yf2zscBr6JV+08q+NbtrxYKXKjILximhS2HoS
	CaARKx6g6DOdEhRRw0GGPsArVj7/R+S9qd/TLirhefwSLXZMCcChZD8vbw4kq5wwIDsw9K
	yrXtAu62kEC7PO+psn5W+y4di41xfCMyZXoWxQi9JjLDOPcpBg3pBWYGoVccww==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id CA56DFF954;
	Tue, 29 Sep 2026 09:59:51 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Johannes Schneider <johannes.schneider@leica-geosystems.com>
In-Reply-To: <20260926141137.244764-1-johannes.schneider@leica-geosystems.com>
References: <20260926141137.244764-1-johannes.schneider@leica-geosystems.com>
Subject: Re: [PATCH] usb: dwc3: gadget: ack pending events while waiting
 for the halt
Message-Id: <179066879181.758923.10939069776340435844.b4-ty@pengutronix.de>
Date: Tue, 29 Sep 2026 09:59:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_005953_830359_5AC1C5DC 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sat, 26 Sep 2026 14:11:37 +0000, Johannes Schneider wrote:
    > The controller sets DSTS.DEVCTRLHLT only once every event in the event
   > buffer has been acknowledged. Linux relies on its interrupt ha [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.38 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.97)[99.87%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 297B4201551
X-Stat-Signature: 74oxdcmaayq3mgkqxuewdkxzbs5nt9m3


On Sat, 26 Sep 2026 14:11:37 +0000, Johannes Schneider wrote:
> The controller sets DSTS.DEVCTRLHLT only once every event in the event
> buffer has been acknowledged. Linux relies on its interrupt handler
> doing that while dwc3_gadget_run_stop() polls; barebox has no
> interrupts, and gadget_unbind_driver() unregisters the UDC poller
> before it disconnects. Any event left pending at that point keeps the
> controller running, and the poll ends in its 2 s timeout with
> -ETIMEDOUT.
> 
> [...]

Applied, thanks!

[1/1] usb: dwc3: gadget: ack pending events while waiting for the halt
      https://git.pengutronix.de/cgit/barebox/commit/?id=9efea34d34b4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



