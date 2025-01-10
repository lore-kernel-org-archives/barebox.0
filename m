Delivery-date: Fri, 10 Jan 2025 09:37:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWAVu-000Idc-2Q
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 09:37:07 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWAVu-0003pp-VR
	for lore@pengutronix.de; Fri, 10 Jan 2025 09:37:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/vVJxek87BybUf1N3elbyTBGop4RB7GPrxwaJrmFEaA=; b=DWodTWhXcFw24TceHQURmhDyLZ
	pJtwGbaJcjpNaMdpYA5ZU7dbOamnyX1hvbpTbjeC4hSBJ5gRnXMWUuCajtedghMk33aAkdvsKUhiu
	S542yVHcez5AYotsWn4wiUDOndqsT0YKGZLcL56VtjneV1bsqOJpi7ExGm0zRzJJwZ6TYshBt5/Tn
	IjL9OHzVwoYMWbWKyugB6OUI/BPPaMLagreAeEnyKAWev4n/MRe875cMbtDXEzHKOz7O94R0q+EG+
	iTwkb8I0S77Ot651RKAS+OtJby37PA+SEzWsfAl+M7mGd29tQ9H+uHP+2/hyUJsW0hVKAs7GjV0uU
	pNGIarUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWAVV-0000000EYfK-43vq;
	Fri, 10 Jan 2025 08:36:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWARU-0000000EXe4-3fi0
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 08:32:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWART-0002y1-Mc; Fri, 10 Jan 2025 09:32:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWART-0007wb-1P;
	Fri, 10 Jan 2025 09:32:31 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWART-001VUs-1D;
	Fri, 10 Jan 2025 09:32:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
In-Reply-To: <Z36bldpLxr1x_rY2@hephaistos>
References: <Z36bldpLxr1x_rY2@hephaistos>
Message-Id: <173649795137.359379.7850408377910081460.b4-ty@pengutronix.de>
Date: Fri, 10 Jan 2025 09:32:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_003232_915227_E92F32FB 
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: beaglebone: add delay in lowlevel.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 08 Jan 2025 16:36:53 +0100, Konstantin Kletschke wrote:
> Some Beaglebone Black devices are not able to cope with a warm start.
> When system is powered up and booted hitting reset button (S1) or
> issuing "reset" at barebox prompt the new instance of first stage gets
> stuck after PLL init.
> 
> Adding a delay of ~1.8ms in lowlevel.c after PLL init solves this.
> 
> [...]

Applied, thanks!

[1/1] ARM: beaglebone: add delay in lowlevel.c
      https://git.pengutronix.de/cgit/barebox/commit/?id=e6f598d9ceff (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



