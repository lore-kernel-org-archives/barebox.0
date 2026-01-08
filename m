Delivery-date: Thu, 08 Jan 2026 17:06:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsWe-002fkE-2w
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 17:06:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsWe-0002AH-Cq
	for lore@pengutronix.de; Thu, 08 Jan 2026 17:06:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IzHXEvLt6wM/cMTzp8QsnaCIylBOAn3JQszjGFgv70I=; b=PUoDaIKsVfH9Fr0zV4Biom7jRC
	G+ooj5Vm4Zf2Qk1yxLUCzVMXMWCAuWO1O5tAq8EbEfTPc1WffdFOsRagmoCk/qwrR/UgCZOIaR49j
	bmF8y9VVNe2vLrIQ2Xx7uf/0F3lijSopNo8lhAZwBjt9tf8UUAfAXaE4P59ZF5EMd2fcdaWbMydub
	aq4Rov7AWzjnfGeAp46eEHuZpPWeKRVRFv/ObfzUOSURDWXtwt1oLSz8bF6EmJOOGupHUG9PEemhG
	4B/UOHZyIJizassXsV4D/WHpOfsKpbm/7MGJu/D7CUqJ+2wrqlN5fa8uLw7N6lkuWk7l3ktCKrUq3
	F43b2S0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsW3-000000003Ul-1sjY;
	Thu, 08 Jan 2026 16:05:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsW0-000000003Tu-2qgT
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 16:05:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsVz-0001yL-4K; Thu, 08 Jan 2026 17:05:35 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsVy-009hcb-32;
	Thu, 08 Jan 2026 17:05:34 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsVy-0000000AOTM-3hTD;
	Thu, 08 Jan 2026 17:05:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260108100739.1731988-1-s.hauer@pengutronix.de>
References: <20260108100739.1731988-1-s.hauer@pengutronix.de>
Message-Id: <176788833487.2477331.14117449458983208330.b4-ty@pengutronix.de>
Date: Thu, 08 Jan 2026 17:05:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_080536_719522_86C4A7D2 
X-CRM114-Status: UNSURE (   9.15  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] test/strategy.py: optionally don't activate
 BareboxDriver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 08 Jan 2026 11:07:39 +0100, Sascha Hauer wrote:
> When bootstrapping barebox on QEMU with my barebox-bringup utility it
> brings it to the 'barebox' state before opening a console. The
> BareboxDriver consumes all console messages in order to bring barebox
> to the prompt. This is bad for interactive use where one wants to
> see the console output right from the start.
> 
> Insert a 'on' state which brings up QEMU but doesn't activate the
> BareboxDriver.
> 
> [...]

Applied, thanks!

[1/1] test/strategy.py: optionally don't activate BareboxDriver
      https://git.pengutronix.de/cgit/barebox/commit/?id=624fd6ded3fc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



