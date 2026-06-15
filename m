Delivery-date: Mon, 15 Jun 2026 10:28:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ2gk-0064b0-2F
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 10:28:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ2gj-0006l4-HN
	for lore@pengutronix.de; Mon, 15 Jun 2026 10:28:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wCR2C5/puUvLpkch6PZsYDpm3l+ym+4G0+e0oKh2jNg=; b=talZeeZFlpLR7eZIUe1vx27mFV
	VgTiD8VoaoVgcP4LxYjAEZLuXkYYZBrPRLp/r7N6HER/FXMaKxshKM4rST61ZlAZqGaijFl3+xqZa
	NkJ854A8EFLVtOouBUiJEzSs/iTO8e3jfwLp/x0DCVySdx4EjAIKjPLsOJQG5c1tzxJ9w+VLcLW2j
	fsHSijmLMM1EOycqXwzt4zOvjrU1uAQNYmaLxwsASNRbeKsw2LGb30iQxnmiWP6sezeyVw8Ee/aFV
	gEYPZFCUzQTMi6h5CwSfPz7JVI9YVvYjdJzLLd3rWvURiEOtQt5j5gvXvCBFDWS9gRS2tY6WiOgSV
	jcY7/LUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ2ZP-0000000Dr5L-2a7W;
	Mon, 15 Jun 2026 08:21:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ2ZL-0000000Dr4O-3SUV
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 08:21:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ2ZK-00052J-8K; Mon, 15 Jun 2026 10:21:18 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ2ZK-002peX-0f;
	Mon, 15 Jun 2026 10:21:18 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ2ZK-0000000EMj9-0NaT;
	Mon, 15 Jun 2026 10:21:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20260605-socfpga-debug-uart-v1-0-8454bfc709bf@pengutronix.de>
References: <20260605-socfpga-debug-uart-v1-0-8454bfc709bf@pengutronix.de>
Message-Id: <178151167808.3423202.12468798829809719531.b4-ty@pengutronix.de>
Date: Mon, 15 Jun 2026 10:21:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_012119_864963_16C3B33A 
X-CRM114-Status: UNSURE (   8.13  )
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
Subject: Re: [PATCH 0/3] arm: socfpga: cleanup UART for serial console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 05 Jun 2026 14:58:12 +0200, Michael Tretter wrote:
> Configuring debug console output for the PBL and low level code on
> SoCFPGA boards is surprisingly complex and an inconsistent configuration
> bit me more than once.
> 
> Get rid of the custom UART implementation and the base addresses for the
> debug UART in the barebox configuration.
> 
> [...]

Applied, thanks!

[1/3] arm: socfpga: replace custom UART with ns16550
      https://git.pengutronix.de/cgit/barebox/commit/?id=6c559cbe2174 (link may not be stable)
[2/3] arm: socfpga: get rid of UART address for low-level debug
      https://git.pengutronix.de/cgit/barebox/commit/?id=8fd44fcf22b3 (link may not be stable)
[3/3] arm: socfpga: axe5-eagle: always use UART0
      https://git.pengutronix.de/cgit/barebox/commit/?id=157789470475 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



