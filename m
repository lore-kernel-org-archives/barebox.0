Delivery-date: Tue, 29 Apr 2025 17:27:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mrb-000XEX-36
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 17:27:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mrb-0004ad-ES
	for lore@pengutronix.de; Tue, 29 Apr 2025 17:27:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jBbEL0CdarX7edKeKjl1EElkyRmN+IWGOax+Z3lm/ZY=; b=4EUsopqE/282ldtJLm8mdcEurX
	m7YvPsv7I0ZyRkoqGjoxLuufmzjJz3vtDrSt2H33C513bUax2GaApTc43Eig1MLwKq0FjLH6w8+lr
	bxF4o7EsJWHDv3mp05Cv0rbepCscb2ziKVxu2iwUf8oOZ4RmbRFkVe00gcIc0qrUbxgETYnIS77a+
	jBpuwx6sNj3K9jMQ2L/QwtzIuvQRxXPgrO59ryA6h716jEBpZsaKcTgQoqfO1FrHstdpwXYHTwbYk
	AMRqhYNszEfOrCc21YJJvNp3iJDG8x9Jrd2rlAP9TYngN6CGBnb9C5S29Xrw9qMO9TJVANLVgAJRT
	5BmE6/nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mrC-0000000A7ih-2wju;
	Tue, 29 Apr 2025 15:26:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mVc-0000000A3Sm-2d94
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 15:04:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=jBbEL0CdarX7edKeKjl1EElkyRmN+IWGOax+Z3lm/ZY=; b=HVz3Y1qfw2jmcm7HPJ6uFqiNtm
	J43CNPLGUZaX4Nb+voT3+U2xI6Mxnil165RAWk5EWPvSGzzU4J2ga4rPxsRLJCDjTisssZsfMtIVl
	4V7i36lSD8OEUls5EjvPcKD//10J3z3cDYDuK6YRIAeRnoxsjsunkSd+UXfyfDwkGf0ySuOLZES2I
	/wJ3HxDA6zEFFSK9hyWttN8CKvhZsaDKigEHNgldVNtUGuRKCG93EB9ihbBo3eHeh4Wdv3P9YO5P2
	ztUVkACxZmqeLxkt/xV43L6DfCR5BRMPn352LMds4EqmLWTkfRz33hEarAC3TMKWLJrsheEogKyJe
	REHnjSjw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9mVZ-0000000DQQ8-3BSo
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 15:04:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mVZ-0006eu-60; Tue, 29 Apr 2025 17:04:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mVY-000Hdq-3B;
	Tue, 29 Apr 2025 17:04:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mVY-00D4yb-2x;
	Tue, 29 Apr 2025 17:04:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250429132550.3768805-1-a.fatoum@pengutronix.de>
References: <20250429132550.3768805-1-a.fatoum@pengutronix.de>
Message-Id: <174593906891.3117328.8214270493101658656.b4-ty@pengutronix.de>
Date: Tue, 29 Apr 2025 17:04:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_160429_901234_92888156 
X-CRM114-Status: UNSURE (   5.06  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] clocksource: timer-ti-dm: replace magic constant
 with descriptive macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 29 Apr 2025 15:25:49 +0200, Ahmad Fatoum wrote:
> This improves readability a bit, but introduces no functional change.
> 
> 

Applied, thanks!

[1/2] clocksource: timer-ti-dm: replace magic constant with descriptive macros
      https://git.pengutronix.de/cgit/barebox/commit/?id=008ef5feae46 (link may not be stable)
[2/2] clocksource: timer-ti-dm: adapt omap_dmtimer_init parameter type to usage
      https://git.pengutronix.de/cgit/barebox/commit/?id=c762dd5beeb2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



