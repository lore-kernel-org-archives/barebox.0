Delivery-date: Mon, 17 Aug 2026 08:08:13 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvqW4-0041Wj-2Z
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 08:08:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 68B0B200F4F
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 08:08:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="nReJ/Xkz";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s44iTKSJxbx369k4J/WmaqJuZQMv4GT6S8QnPYAe2TE=; b=nReJ/Xkzp1LDIPAsgUQDHH/iHM
	ko6Y0bETgfgOs0scVsLHeSlj5C0GOi8pa6cPzpXbXNDWVIjk8wTBp7RcX+KWsrjr1NmU4G5FKFtO7
	apjmELpcpJGQNJoJty6g6uq2AKLMuFeB6B4qkOxPoEdquN1JOF7DkVrU2c+LrmjOm1Htpa1LHDJpm
	TGLj6vp/4vNG3o9OOiwXMIt6ii/brYRZV1cblVwaLSEqj6kGx+IgFhUV/IVAfXCF6A5V87+LxvKh4
	LX4zw4WEsr4ehWP35vA9KCM2uNGMm/inQNQt46VvB2ToChfVrcAGOVbi6ENsNH1qGmnxOhWs9OX6b
	kl3VsDhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvqVn-00000005SP0-44P2;
	Mon, 17 Aug 2026 06:07:55 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvqVk-00000005SOg-1W30
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 06:07:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 82008200F4F;
	Mon, 17 Aug 2026 08:07:50 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvqVi-001tiL-1M;
	Mon, 17 Aug 2026 08:07:50 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvqVi-00000004Hd1-1VyZ;
	Mon, 17 Aug 2026 08:07:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260806130003.1964184-1-s.hauer@pengutronix.de>
References: <20260806130003.1964184-1-s.hauer@pengutronix.de>
Subject: Re: [PATCH] net: designware: eqos: keep virtual RX buffer address
 around
Message-Id: <178694687035.1021058.11225005312268924215.b4-ty@pengutronix.de>
Date: Mon, 17 Aug 2026 08:07:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_230752_569611_34703C44 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 06 Aug 2026 15:00:03 +0200, Sascha Hauer wrote: >
    To free up the RX buffers in the remove and error paths we need their > virtual
    address. Instead of reading back the physical address back fr [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: prdncdnujcyfkixca8m9kj9h7mm56dpx
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 68B0B200F4F


On Thu, 06 Aug 2026 15:00:03 +0200, Sascha Hauer wrote:
> To free up the RX buffers in the remove and error paths we need their
> virtual address. Instead of reading back the physical address back from
> the descriptor ring and throwing phys_to_virt() at it, just keep the
> virtual address returned from dma_alloc() around and use that directly.
> 
> 

Applied, thanks!

[1/1] net: designware: eqos: keep virtual RX buffer address around
      https://git.pengutronix.de/cgit/barebox/commit/?id=2ddaf458ecd6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



