Delivery-date: Fri, 08 Nov 2024 11:21:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9M6x-006HjR-1O
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 11:21:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9M6y-0004Cd-2b
	for lore@pengutronix.de; Fri, 08 Nov 2024 11:21:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cvZnb+j9V3p0Qc0IxqXvspBILaAfyAC91O3PJlRUXrM=; b=OrLcqN2gmoAt2Cuyu/KEGXX8Kg
	h0W7q2npqLSYb1SUeIiysaGqDkHDVYgNKc75NU3kYKzzuLEi2bhV7ohfPj/EiFUrCandhns2ZfFaX
	OVICTFluSyeVguzEWNsLu8djzroR2fGTNCnpR/dM9OGhyJiA3YTANjteJQDbrAlnPayu4LZirW0Du
	tX48fmO1JirM4Tl3q4hG1oRSjA3blDr0gu8EGiafacC5V0CJ0RhiiMQChQ8yAqzyNERUjWer43dpF
	RO7Ry1UfuVyvy3gVV9HaDqaVKSY3Eed1AYrLcWHT5dy5zfagzu1vbc1zHl5qHJPipzHO69q0PnKiX
	N6gig7vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9M6Q-0000000A5mE-3uua;
	Fri, 08 Nov 2024 10:20:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9M6O-0000000A5lg-0ius
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 10:20:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9M6M-00044g-LI; Fri, 08 Nov 2024 11:20:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9M6M-002bXQ-1P;
	Fri, 08 Nov 2024 11:20:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9M6M-009fvk-1D;
	Fri, 08 Nov 2024 11:20:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Robin van der Gracht <robin@protonic.nl>
In-Reply-To: <20241106185724.2526-1-a.fatoum@pengutronix.de>
References: <20241106185724.2526-1-a.fatoum@pengutronix.de>
Message-Id: <173106122637.2306089.11349967618608085808.b4-ty@pengutronix.de>
Date: Fri, 08 Nov 2024 11:20:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_022028_243556_EFADF622 
X-CRM114-Status: UNSURE (   9.78  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] ARM: Rockchip: fix OP-TEE as BL32 installation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Nov 2024 19:57:18 +0100, Ahmad Fatoum wrote:
> This series resulted while getting OP-TEE to work on RK3399.
> There is no upstream OP-TEE support for the RK3568 or RK3588,
> but the expectation that loading the blob is analogous to the
> RK3399, which is fixed by this series.
> 
> Ahmad Fatoum (6):
>   firmware: rockchip: rename from rk3xxx-op-tee.bin to rk3xxx-bl32.bin
>   ARM: lds: move stack top section to front of rodata
>   ARM: Rockchip: fix clang warning about passing 32-bit register operand
>   ARM: Rockchip: save pointer to scratch memory in global variable
>   ARM: Rockchip: implement tee.bin v1 header parsing
>   ARM: Rockchip: use vendor blob OPTEE load addresses
> 
> [...]

Applied, thanks!

[1/6] firmware: rockchip: rename from rk3xxx-op-tee.bin to rk3xxx-bl32.bin
      https://git.pengutronix.de/cgit/barebox/commit/?id=c8d797dad31a (link may not be stable)
[2/6] ARM: lds: move stack top section to front of rodata
      https://git.pengutronix.de/cgit/barebox/commit/?id=3def2f136aea (link may not be stable)
[3/6] ARM: Rockchip: fix clang warning about passing 32-bit register operand
      https://git.pengutronix.de/cgit/barebox/commit/?id=9cd71fc171b6 (link may not be stable)
[4/6] ARM: Rockchip: save pointer to scratch memory in global variable
      https://git.pengutronix.de/cgit/barebox/commit/?id=73a2b3c8d293 (link may not be stable)
[5/6] ARM: Rockchip: implement tee.bin v1 header parsing
      https://git.pengutronix.de/cgit/barebox/commit/?id=e1ecb0bdeeed (link may not be stable)
[6/6] ARM: Rockchip: use vendor blob OPTEE load addresses
      https://git.pengutronix.de/cgit/barebox/commit/?id=d857e9ea91fd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



