Delivery-date: Tue, 17 Jun 2025 10:04:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRRJO-008CXa-2K
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 10:04:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRRJO-00037D-4T
	for lore@pengutronix.de; Tue, 17 Jun 2025 10:04:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PBoGJQnhLpg2T0dEUfuF4R4i0z/PqYEyhG3BEkw0drE=; b=P4kxUCzqoXnOgAqZzPoZ+b7svb
	l/ztmFhWcAqZirb4do12Algq+RhoMObUiz75kzscSAWZ9rVU4YXH2UshnYIBfL2iQr6X+cnAV+HUM
	2mlAJOucPt46pTUAhgTXsgpPd5vNXiujdu6P6QDyzuGWK7S4FekcuDhiQ7461WWCAiWTQ10x7XN6/
	oiS6m04OHEMnYVI9mU4fKCkxnLOAJdX/PJLqCiWa1dZv9hVH3E3GUd3JDYPdB8zt+OJjeOxIQgkWA
	1IGjCaz/aNSZsLSCq2a0s0zQLLO1qU3T/nEKSiJB41GXhpXAIMhB1qd/jA1J5ch7ODDPWnnqhA8GG
	BY9dv2BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRIt-00000006XF2-2qLK;
	Tue, 17 Jun 2025 08:04:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRIq-00000006XDi-25YW
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 08:04:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRRIp-0002G2-Bm; Tue, 17 Jun 2025 10:04:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRRIp-003wDW-0a;
	Tue, 17 Jun 2025 10:04:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRRIp-00CYM2-0N;
	Tue, 17 Jun 2025 10:04:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20250612065812.2025665-1-o.rempel@pengutronix.de>
References: <20250612065812.2025665-1-o.rempel@pengutronix.de>
Message-Id: <175014745911.2991704.17120508598918451669.b4-ty@pengutronix.de>
Date: Tue, 17 Jun 2025 10:04:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_010420_540529_0203D24F 
X-CRM114-Status: UNSURE (   8.11  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH v3 0/9] NVMEM: Introduce write protection
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Jun 2025 08:58:03 +0200, Oleksij Rempel wrote:
> This series adds a generic protect op to NVMEM core, enabling
> standardized write protection. This makes NVMEM behave more like other
> flash interfaces (e.g., CFI block protection), which helps with common
> tooling.
> 
> Oleksij Rempel (9):
>   nvmem: Add 'protect' operation to core framework
>   nvmem: rmem: add write and protect support
>   commands: nvmem: Add support for creating dynamic rmem devices
>   regmap: Add reg_seal operation for hardware protection
>   nvmem: regmap: Implement protect operation using regmap_seal
>   nvmem: bsec: Implement NVMEM protect via regmap_seal for OTP locking
>   nvmem: rmem: ensure unique device name per instance
>   fs: Report errors for out-of-bounds protect operations
>   test: Add pytest suite for NVMEM framework
> 
> [...]

Applied, thanks!

[1/9] nvmem: Add 'protect' operation to core framework
      https://git.pengutronix.de/cgit/barebox/commit/?id=485d5d4620a7 (link may not be stable)
[2/9] nvmem: rmem: add write and protect support
      https://git.pengutronix.de/cgit/barebox/commit/?id=bdeaa40c51cd (link may not be stable)
[3/9] commands: nvmem: Add support for creating dynamic rmem devices
      https://git.pengutronix.de/cgit/barebox/commit/?id=f97002b8b0c1 (link may not be stable)
[4/9] regmap: Add reg_seal operation for hardware protection
      https://git.pengutronix.de/cgit/barebox/commit/?id=8f582f13fbce (link may not be stable)
[5/9] nvmem: regmap: Implement protect operation using regmap_seal
      https://git.pengutronix.de/cgit/barebox/commit/?id=94839a59178b (link may not be stable)
[6/9] nvmem: bsec: Implement NVMEM protect via regmap_seal for OTP locking
      https://git.pengutronix.de/cgit/barebox/commit/?id=8e61bcdb871f (link may not be stable)
[7/9] nvmem: rmem: ensure unique device name per instance
      https://git.pengutronix.de/cgit/barebox/commit/?id=5788dad52505 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



