Delivery-date: Tue, 04 Aug 2026 07:45:53 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wr7yL-0067Y8-0y
	for lore@lore.pengutronix.de;
	Tue, 04 Aug 2026 07:45:53 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B33002006CF
	for <lore@pengutronix.de>; Tue, 04 Aug 2026 07:45:53 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=AYP3LqUM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jyyS8zJ+1RWssnndfNh/H9n4hhzxXsHOrmHb0+ZyEhY=; b=AYP3LqUMYwqGNSx/KvdHXMrYV9
	9ApQ2bVGJDjNFpMOFFhsFKreJATKaYxyhl+x1XNu79TV1UGrcMXL4oF2H4ZdvXA14wCHvOrQ98dQP
	xZmlkj2U3DssHrunJJVaO6XmFIx2L7b/W33JH2oRo1kEouBU+PwwQM1DoOZ1F0ZjTtOQ0WFf6eDz0
	+o7nvl2swLzo4qWsA0o2AeQeILWR5S2z6+fHQcHnc2HT64zOCWgRcGVK3VPP6oWr30G0DRXzaVbyv
	Quc4LSEOSW4I4RoZfbl5oJOg2ev1dXtrHSFtMEjWpojyHKXUxwnDIN3uiKhSmKSz2kAhayCMrKmRU
	Mk+8/Y7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr7xJ-00000001465-1eFS;
	Tue, 04 Aug 2026 05:44:49 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr7xH-0000000145Z-2SkK
	for barebox@lists.infradead.org;
	Tue, 04 Aug 2026 05:44:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D146B200082;
	Tue, 04 Aug 2026 07:44:45 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wr7xF-002oYc-2U;
	Tue, 04 Aug 2026 07:44:45 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wr7xF-00000003ZwT-2xzP;
	Tue, 04 Aug 2026 07:44:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20260702081719.2065068-1-s.hauer@pengutronix.de>
References: <20260702081719.2065068-1-s.hauer@pengutronix.de>
Subject: Re: [PATCH] input: gpio-keys: initialize the input value with the
 current gpioval
Message-Id: <178582228570.853103.814130763020946925.b4-ty@pengutronix.de>
Date: Tue, 04 Aug 2026 07:44:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_224447_781329_088C3365 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 02 Jul 2026 10:17:19 +0200, Sascha Hauer wrote: >
    This is required for deep-probe systems which probe the "gpio-keys" > device
    on demand. In such case the input value is not yet accessible > [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Spamd-Result: default: False [-6.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B33002006CF
X-Stat-Signature: g9zanu4n8jxz9kadmcghznhgz9e9jhht


On Thu, 02 Jul 2026 10:17:19 +0200, Sascha Hauer wrote:
> This is required for deep-probe systems which probe the "gpio-keys"
> device on demand. In such case the input value is not yet accessible
> once the probe finished because the first gpio reads happen
> asynchronously to the probe function. However, board code queries the
> input device value directly after the of.*ensure.*probed().
> 
> Therefore provide a sane default by reading the gpio value during probe
> and init the input device value.
> 
> [...]

Applied, thanks!

[1/1] input: gpio-keys: initialize the input value with the current gpioval
      https://git.pengutronix.de/cgit/barebox/commit/?id=7992d842898d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



