Delivery-date: Mon, 02 Jun 2025 13:58:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM3nv-002wyj-1h
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 13:58:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM3nu-0000xZ-VE
	for lore@pengutronix.de; Mon, 02 Jun 2025 13:58:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PD/PFSJyaW2CebZH4cQffvDJ0rFgXjlPKvWi1kYTunw=; b=2y/zekkTtf5Dz51f1nR/ybg+lg
	3Cj+fP5UdyMUmL3ncYFlydRIzGahDZC6elOWfq56idSrekZlmZ6LJWAC0Bi2ccbDp6xJaWtwdw3ae
	qSdaovvDTIMonTAnGeXlQojiCmV9s7kErMMZnLhGGu41G5fKUxjjXOYEi6It4PKQtY1a7xwHNz0Do
	relG8qhhQat42HN7Tlc/ZThO+sGgqSpi45qBN1y0ky7167HhOYkO6hadllHxp56FPOxkPl+jtZfZg
	bvpRpK51t7N4EUCcZc6FYMr6j3hnpn/G5MBo+r3j6hY75KI6p8jfpPNPI3t+N+zXWE7TbDbyl5EEM
	O3SJfjKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM3nT-00000007Jqn-0uxQ;
	Mon, 02 Jun 2025 11:57:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM3nQ-00000007JqN-2CYz
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 11:57:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM3nP-0000ld-4c; Mon, 02 Jun 2025 13:57:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM3nO-001Rqe-36;
	Mon, 02 Jun 2025 13:57:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM3nO-003r4i-2s;
	Mon, 02 Jun 2025 13:57:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250527201359.889550-1-a.fatoum@pengutronix.de>
References: <20250527201359.889550-1-a.fatoum@pengutronix.de>
Message-Id: <174886545888.918949.7342295014365999538.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 13:57:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_045740_568134_76FB035C 
X-CRM114-Status: UNSURE (   8.92  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/9] lib: stackprot: fix type for %pS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 27 May 2025 22:13:51 +0200, Ahmad Fatoum wrote:
> Adding __printf to the panic definition in the follow up commit will
> make it evident that we are using a long value for a %pS format
> specifier, which is not correct, albeit they have the same size.
> 
> Fix this by adding the missing cast.
> 
> 
> [...]

Applied, thanks!

[1/9] lib: stackprot: fix type for %pS
      https://git.pengutronix.de/cgit/barebox/commit/?id=52596d188d6d (link may not be stable)
[2/9] fastboot: use correct format specifier for size_t
      https://git.pengutronix.de/cgit/barebox/commit/?id=f3af60da5ed9 (link may not be stable)
[3/9] Makefile: don't warn over zero-size format string
      https://git.pengutronix.de/cgit/barebox/commit/?id=e04094f4502c (link may not be stable)
[4/9] scripts: define __printf attribute macro
      https://git.pengutronix.de/cgit/barebox/commit/?id=c828b74066bd (link may not be stable)
[5/9] treewide: specify __printf attribute directly on static definition
      https://git.pengutronix.de/cgit/barebox/commit/?id=64a294ec1dea (link may not be stable)
[6/9] treewide: replace attribute with shorter __printf macro
      https://git.pengutronix.de/cgit/barebox/commit/?id=a23e5d816124 (link may not be stable)
[7/9] treewide: add missing __printf attributes
      https://git.pengutronix.de/cgit/barebox/commit/?id=b2adbadce5c6 (link may not be stable)
[8/9] vsprintf: add %ps format specifier for symbols without offset
      https://git.pengutronix.de/cgit/barebox/commit/?id=71586b2b7869 (link may not be stable)
[9/9] lib: random: print get_crypto_bytes caller when no HWRNG is registered
      https://git.pengutronix.de/cgit/barebox/commit/?id=2d309b83ccc2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



