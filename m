Delivery-date: Mon, 24 Aug 2026 12:16:17 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyRiy-006fLo-0a
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 12:16:16 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BB0E3201B02
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 12:16:16 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=u4zV0034;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1Dc2xW7j6FwUx3+XBc/S/hwTzsS3vWXhwyzx9Zq2914=; b=u4zV0034tM9p9ag6xCxIpfY3iP
	LMcA2BGUjZg4iEoH3MgyDJltCm00ZzSI0JfhSLZaoPAp1hZpBL+Dims9lPj+mgqOoLXQ3X6C0oGpS
	63of1DKMweyOGZffPalwpbHiGRSUPIeHWrDFoBrnRq66PLbbsrdTvZQg+WTvpPetbVs4LUB44fK/q
	T2tRrwUXIKjzetnM3QBH2SggFkRxY5jHgzcs4c3hOkFcCsldIrwB2MWmQeERMQ/JOzksFm+Ur18H2
	esYWeBbmAsCVpI2elhcLkJKSARPKwaZ6C5XqCSb58uLq/OgVLJem3Id/QWCWhs6tP0c5v6VvRpJ09
	tcipsLwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRhb-0000000GNOK-3z21;
	Mon, 24 Aug 2026 10:14:51 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRhX-0000000GNNy-2GMy
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 10:14:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D65472010D6;
	Mon, 24 Aug 2026 12:14:44 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyRhU-0035XR-2Z;
	Mon, 24 Aug 2026 12:14:44 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyRhU-0000000DLdU-35FA;
	Mon, 24 Aug 2026 12:14:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Stephano Cetola <stephano@cetola.net>
In-Reply-To: <20260822-send-xhci-fixes-v1-0-22e1de3be715@cetola.net>
References: <20260822-send-xhci-fixes-v1-0-22e1de3be715@cetola.net>
Subject: Re: [PATCH 0/5] usb: xhci: fix endpoint halt and stall recovery
Message-Id: <178756648473.3181409.8501610368159123266.b4-ty@pengutronix.de>
Date: Mon, 24 Aug 2026 12:14:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_031447_735221_9ADC10FC 
X-CRM114-Status: UNSURE (   6.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sat, 22 Aug 2026 15:33:59 -0700, Stephano Cetola wrote:
    > Recovering from a halted or stalled USB endpoint is broken in the > XHCI
    driver in several independent ways. An interrupt endpoint > trans [...] 
 
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
X-Stat-Signature: go5sfmahp95mgdhcmdpgd8i3cadqnmko
X-Spamd-Result: default: False [-7.70 / 15.00];
	BAYES_HAM(-2.99)[99.93%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: BB0E3201B02


On Sat, 22 Aug 2026 15:33:59 -0700, Stephano Cetola wrote:
> Recovering from a halted or stalled USB endpoint is broken in the
> XHCI driver in several independent ways. An interrupt endpoint
> transfer never gets a real chance to complete. Its own timeout
> always defeats the hardware's autonomous polling before it can
> succeed. When that or any other transfer times out, the resulting
> cleanup can hit a BUG_ON in the wrong completion state, corrupt a
> pointer used in the recovery command, or leave the endpoint looking
> halted even after recovery actually succeeded.
> 
> [...]

Applied, thanks!

[1/5] usb: xhci: tolerate COMP_CTX_STATE in abort_td's final completion check
      https://git.pengutronix.de/cgit/barebox/commit/?id=f34158c2f6a7 (link may not be stable)
[2/5] usb: xhci: reset_ep: wait for real completion, not the caller's timeout
      https://git.pengutronix.de/cgit/barebox/commit/?id=90794a34e0d5 (link may not be stable)
[3/5] usb: xhci: reset_ep: fix misaligned pointer in Set TR Dequeue Pointer
      https://git.pengutronix.de/cgit/barebox/commit/?id=f4b7aebfe14d (link may not be stable)
[4/5] usb: xhci: xhci_bulk_tx: re-fetch ep_ctx after resetting a halted endpoint
      https://git.pengutronix.de/cgit/barebox/commit/?id=b5bd959ef11e (link may not be stable)
[5/5] usb: xhci: wait a real interval for interrupt endpoint transfers
      https://git.pengutronix.de/cgit/barebox/commit/?id=c9c00f47f571 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



