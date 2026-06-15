Delivery-date: Mon, 15 Jun 2026 10:30:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ2iR-0064d6-1s
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 10:30:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ2iQ-0007HZ-Sa
	for lore@pengutronix.de; Mon, 15 Jun 2026 10:30:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SPwEbUbzfE9HsjTPXUAcdX9RLv2bMEXjxcfNt/Vc1NU=; b=ml1h24TsdYXojJl+cqzc6OUbai
	vtVf7RUl8jlNxqJ9+xBqbKJwEQiId0ItDgSZupSycy8jr/aOBZBYQYvlre15kiEZX7LVzOh0gfVSC
	uHxSYmpjooT68Lwe4HQ8QZSY10E01lJLLb7rf03b8sqqTTKrT3zLNxpaJWsv3J86EThSCORFz034M
	OCn0pddFw80dI0MPm/CgfwwxdSVPgyVv8CiR83FSl675RFvA8PIyI8j3dcKxpGPif7qIlJ1f3kMQI
	QbgShcn5Tq78XQ7oouNHx7WpRK2bv9o5/fqlQIgbhxyRlP634XCIYCduQLr0XrFgNSRHMUpyfBhe9
	oN35GSoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ2hR-0000000Dru1-3q11;
	Mon, 15 Jun 2026 08:29:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ2hO-0000000DrtD-3Cdq
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 08:29:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ2hN-0006xG-3j; Mon, 15 Jun 2026 10:29:37 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ2hN-002pft-0C;
	Mon, 15 Jun 2026 10:29:37 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ2hN-0000000FG1h-00uP;
	Mon, 15 Jun 2026 10:29:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260606182148.337137-1-a.fatoum@barebox.org>
References: <20260606182148.337137-1-a.fatoum@barebox.org>
Message-Id: <178151217700.3636233.1064124468993563081.b4-ty@pengutronix.de>
Date: Mon, 15 Jun 2026 10:29:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_012938_931569_9F50A8B7 
X-CRM114-Status: GOOD (  18.97  )
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
Subject: Re: [PATCH] pinctrl: generic: rename PIN_CONFIG_OUTPUT to LEVEL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 06 Jun 2026 20:20:24 +0200, Ahmad Fatoum wrote:
> To make porting drivers from newer Linux versions a bit easier,
> port Linux commit 203a83112e097a501fbe12722b6342787497efe0:
> 
> |   pinctrl: generic: rename PIN_CONFIG_OUTPUT to LEVEL
> |
> |   This generic pin config property is confusingly named so let's
> |   rename it to make things clearer.
> |
> |   There are already drivers in the tree that use PIN_CONFIG_OUTPUT
> |   to *read* the value of an output driven pin, which is a big
> |   semantic confusion for the head: are we then reading the
> |   setting of the output or the actual value/level that is put
> |   out on the pin?
> |
> |   We already have PIN_CONFIG_OUTPUT_ENABLE that turns on driver
> |   buffers for output, so this can by logical conclusion only
> |   drive the voltage level if it should be any different.
> |
> |   But if we read the pin, are we then reading the *setting* of
> |   the output value or the *actual* value we can see on the
> |   line?
> |
> |   If the pin has not first been set into output mode with
> |   PIN_CONFIG_OUTPUT_ENABLE, but is instead in some input mode
> |   or tristate, what will reading this property actually
> |   return?
> |
> |   Reading the current users reading this property it is clear
> |   that what we read is the logical level of the pin as 0 or 1
> |   depending on if it is low or high.
> |
> |   Rename it to PIN_CONFIG_LEVEL so it is crystal clear that
> |   we set or read the voltage level of the pin and nothing else.
> |
> |   Acked-by: Sudeep Holla <sudeep.holla@arm.com>
> |   Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> 
> [...]

Applied, thanks!

[1/1] pinctrl: generic: rename PIN_CONFIG_OUTPUT to LEVEL
      https://git.pengutronix.de/cgit/barebox/commit/?id=afd843c1a83b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



