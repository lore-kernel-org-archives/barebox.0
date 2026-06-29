Delivery-date: Mon, 29 Jun 2026 12:27:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we9D7-00B5Ky-1R
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 12:27:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we9D6-0001UG-P9
	for lore@pengutronix.de; Mon, 29 Jun 2026 12:27:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OYA3GYz3VzO35gkYUHdnfIdCMomSgOjCGkzQHeu67Wg=; b=OKo874WAREl49Yfq3WG2M4nbrq
	Y16dizbD/t8r0ffD8NBYbnIAAm1HuNHHsuiVZfIV1J97ee2zqJv8T1rYKJwNa94fDSRVgPHuLOAzG
	XTy6p8fdif5/AHyydQ95lUtExiq4t0g9rykmTvQWT4pMRZg9cEPDkUMPiTfTkcjuv4NefauXA2+o9
	JwhhyKakLWJJvftS7pWMIC6/svwCr17FTJtWNoOephD/djjEM80NQaXZziPv6eJdKDHjtVXP+Ufct
	FdKsnFEx2Z+LeiQqk5YYDArk1SXXlJwW1kL7IoysBBF470LCS7Ox1wGDirK1SaoCnPR/zKdYW91gd
	mXYkZG0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we9Bx-0000000EKr7-1erU;
	Mon, 29 Jun 2026 10:26:17 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we9Bv-0000000EKpq-1tHs
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 10:26:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 91AFE200320;
	Mon, 29 Jun 2026 12:26:12 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1we9Bs-005ECY-1f;
	Mon, 29 Jun 2026 12:26:12 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1we9Bs-00000000mzo-1t30;
	Mon, 29 Jun 2026 12:26:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20260624122946.1366278-1-a.fatoum@pengutronix.de>
References: <20260624122946.1366278-1-a.fatoum@pengutronix.de>
Message-Id: <178272877244.188323.6718876267242849193.b4-ty@pengutronix.de>
Date: Mon, 29 Jun 2026 12:26:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_032615_658959_2713882F 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] misc: clarify deep-probe compatibility for
 CONFIG_STORAGE_BY_ALIAS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 24 Jun 2026 14:29:43 +0200, Ahmad Fatoum wrote:
> The bulk of the help text described the limitations around the
> "barebox,storage-by-uuid" compatible, which was the only compatible
> initially available: because it requires the device in question to
> be already probed, it's probe order dependent.
> 
> "barebox,bootsource" doesn't suffer from this issue as it depends on the
> bootsource being resolvable via a device tree alias or chosen entry.
> 
> [...]

Applied, thanks!

[1/1] misc: clarify deep-probe compatibility for CONFIG_STORAGE_BY_ALIAS
      https://git.pengutronix.de/cgit/barebox/commit/?id=18599acfcbf3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



