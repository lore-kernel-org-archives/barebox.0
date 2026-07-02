Delivery-date: Thu, 02 Jul 2026 09:08:43 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfBXP-00CAlL-0j
	for lore@lore.pengutronix.de;
	Thu, 02 Jul 2026 09:08:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0DAF32003DD
	for <lore@pengutronix.de>; Thu, 02 Jul 2026 09:08:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DecJFsUA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dt/LNFVSun4VBBWWVeIFCaLMsEFG+XDynJRd8gBGK+s=; b=DecJFsUASVFZUKwvzrbjQPbb8U
	YtnACHVyOL2Xvri0k4bWysEV5or64Lca0mHHcLNBbAuaO8mBzNrJIvBHqyps91GH4khtBWq555JZw
	rFZBd+Dr8pt5OPjv8EKETXRFS7RPWgwnVcnd151L31DcL4+3pgNXQIOSF9f8kkKIXl9qpDbT87GN9
	FtheeFR34q7XM07unDuz1CJAPybHtvzz69MWZ/tXCyFhbNs7NzqTrcDwd2cNrxOJ7BiAlr5ZjAeX+
	Kste0gdo64uFN3lR8/7R9BDsqJUS+ZYmLlrXgOmEqD3fWnpQMF7is7bD2JLllM5CCEOnJkNDmDVRk
	zbGyI4gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBWP-00000003hII-2X4w;
	Thu, 02 Jul 2026 07:07:41 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBWM-00000003hHZ-0LHD
	for barebox@lists.infradead.org;
	Thu, 02 Jul 2026 07:07:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 29EF92003DD;
	Thu, 02 Jul 2026 09:07:36 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wfBWK-005hy6-0E;
	Thu, 02 Jul 2026 09:07:36 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wfBWK-00000008VEJ-00mS;
	Thu, 02 Jul 2026 09:07:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Johannes Schneider <johannes.schneider@leica-geosystems.com>
In-Reply-To: <20260619160918.88315-1-johannes.schneider@leica-geosystems.com>
References: <20260619160918.88315-1-johannes.schneider@leica-geosystems.com>
Subject: Re: [PATCH 212/212] dma: make dma_mapping_error NULL-device safe
Message-Id: <178297605600.2026638.4084219943269273902.b4-ty@pengutronix.de>
Date: Thu, 02 Jul 2026 09:07:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_000738_279902_C4C23397 
X-CRM114-Status: UNSURE (   3.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 19 Jun 2026 16:09:18 +0000, Johannes Schneider wrote:
    > PBL callers often pass NULL as dev; NULL deref of dev->dma_mask > reads
    i.MX8M boot ROM and returns junk byte causing false 'mapping > [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Queue-Id: 0DAF32003DD
X-Spamd-Result: default: False [-6.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
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
X-Stat-Signature: 6g6o6eqecumb6xdeb39i4ejeieu5rjej
X-Rspamd-Server: mx1


On Fri, 19 Jun 2026 16:09:18 +0000, Johannes Schneider wrote:
> PBL callers often pass NULL as dev; NULL deref of dev->dma_mask
> reads i.MX8M boot ROM and returns junk byte causing false 'mapping
> error'. Treat NULL dev as 'no constraint'.
> 
> 

Applied, thanks!

[212/212] dma: make dma_mapping_error NULL-device safe
          https://git.pengutronix.de/cgit/barebox/commit/?id=d058dbc760ff (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



