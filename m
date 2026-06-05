Delivery-date: Fri, 05 Jun 2026 08:15:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVNpj-002Wki-1H
	for lore@lore.pengutronix.de;
	Fri, 05 Jun 2026 08:15:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVNpi-0004si-KB
	for lore@pengutronix.de; Fri, 05 Jun 2026 08:15:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AgVhqvUbvVdTGPKnRBzRsAixsIR45+8Y8ixjwUMJS+4=; b=gOIS71DZ+zahPuvw8j/LDFB93J
	WQntwDoo9KuOFrfw1tPsNmtoLhdxjpil34Cnqp6czd7YpheQym5FNhcW0NoC1Nn7Jo02Y452mbqX4
	kfh7WfGQwDVHmYkv6bmPxizKiG1vr5EjfK3FyFxnfwVQUWyIVhk927emMRhIKxq6uvCVXAFM6aZUW
	TswHqHFoebeFS4FxjGxNayoAHzbcqQWR2Ho/wFKAGcjpQpc7koB3Jkd3TNQ18zZhaV2+U/rWPgmfX
	ZuUD5fzWQo0kya5XSoMLbm4/RBDBEJ4DNBMY2AnKZUAsBgRX12QYzRrULE/gHXbqbXqwnQmPVrESj
	LrQR/3sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVNoc-000000008ra-1J6W;
	Fri, 05 Jun 2026 06:13:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVNoZ-000000008r3-2SaL
	for barebox@lists.infradead.org;
	Fri, 05 Jun 2026 06:13:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wVNoV-0004fp-Sk; Fri, 05 Jun 2026 08:13:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wVNoV-001CJZ-28;
	Fri, 05 Jun 2026 08:13:51 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wVNoV-0000000661A-2VSN;
	Fri, 05 Jun 2026 08:13:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260604-socfpga-axe5-sdram-init-v1-0-274f6361ce98@pengutronix.de>
References: <20260604-socfpga-axe5-sdram-init-v1-0-274f6361ce98@pengutronix.de>
Message-Id: <178064003159.1453075.16583214569331174653.b4-ty@pengutronix.de>
Date: Fri, 05 Jun 2026 08:13:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_231355_634734_AAE12ACC 
X-CRM114-Status: UNSURE (   6.99  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] arm: socfpga: agilex5: cleanup SDRAM
 initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 04 Jun 2026 13:06:53 +0200, Michael Tretter wrote:
> The Agilex5 SDRAM initialization contains some obscure and unclear
> workarounds, which are supposedly necessary for a successful SDRAM
> initialization.
> 
> I observed a race condition between the IOSSM firmware, which is
> responsible for the SDRAM initialization, and barebox. I assume this
> race is responsible for the observed initialization failures.
> 
> [...]

Applied, thanks!

[1/5] arm: socfpga: agilex5: separate EL3 init function
      https://git.pengutronix.de/cgit/barebox/commit/?id=f615446b218f (link may not be stable)
[2/5] arm: socfpga: agilex5: panic if DDR init failed
      https://git.pengutronix.de/cgit/barebox/commit/?id=3791fb227199 (link may not be stable)
[3/5] arm: socfpga: iossm: add delay to wait for firmware
      https://git.pengutronix.de/cgit/barebox/commit/?id=4296d8ae1181 (link may not be stable)
[4/5] arm: socfpga: agilex5: drop dual port hack
      https://git.pengutronix.de/cgit/barebox/commit/?id=36ad90f489fb (link may not be stable)
[5/5] arm: socfpga: agilex5: drop bank select before ddr_init
      https://git.pengutronix.de/cgit/barebox/commit/?id=6685029a7c78 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



