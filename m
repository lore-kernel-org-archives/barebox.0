Delivery-date: Wed, 02 Apr 2025 10:25:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tztPv-007KdV-29
	for lore@lore.pengutronix.de;
	Wed, 02 Apr 2025 10:25:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tztPv-00025J-4b
	for lore@pengutronix.de; Wed, 02 Apr 2025 10:25:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/FtZlNyswqLXMYnVhrtUKDldCwFdZ0QB24ZFhkYMGYw=; b=Zq4lmFbcyW003rtyjHsY8U4LHV
	E26KheaQri7GZxzwkH28eef0lsBIplO+e+76S15Nbz7Chw9FGzzv2fywjjvT4vpsjouu+J2VyAWXx
	EYWmeEHaTM6Bh2O/9wQG4yizrfanppSokLhLfh/zrJptgSV7UgycCzfmYE4EwU4rzqYH3kVMRDkEg
	Z7qV2AEaY85EqSWV+3BLGmewnyxLabY4R1bqLwRd2mW7+dHtHAtuvopFwYmejQjmTLbptdCxosa8V
	loSXaOI/sJF49kmQhQg9/st3v9NgInpz9yDPjFi2QujqIAudj5Gm/3FDApf+gEIoGmVEj3RpeKXLz
	rLfleqMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tztPS-00000005WJa-2Y17;
	Wed, 02 Apr 2025 08:25:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tztPP-00000005WIw-3Rbx
	for barebox@lists.infradead.org;
	Wed, 02 Apr 2025 08:25:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tztPO-0001yq-Mq; Wed, 02 Apr 2025 10:25:14 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tztPO-002u7V-1f;
	Wed, 02 Apr 2025 10:25:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tztPO-00ESdu-1S;
	Wed, 02 Apr 2025 10:25:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250402054109.20688-1-eagle.alexander923@gmail.com>
References: <20250402054109.20688-1-eagle.alexander923@gmail.com>
Message-Id: <174358231444.3446651.12410223540085809800.b4-ty@pengutronix.de>
Date: Wed, 02 Apr 2025 10:25:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_012515_858510_C3459C5A 
X-CRM114-Status: UNSURE (   5.70  )
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
Subject: Re: [PATCH v2 1/2] regulator: core: Implement
 regulator_is_enabled() call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 02 Apr 2025 08:41:08 +0300, Alexander Shiyan wrote:
> 


Applied, thanks!

[1/2] regulator: core: Implement regulator_is_enabled() call
      https://git.pengutronix.de/cgit/barebox/commit/?id=ec5409e47523 (link may not be stable)
[2/2] gpio: clk-gpio: Updating the driver from the kernel repository
      https://git.pengutronix.de/cgit/barebox/commit/?id=b1fb0aac1ed5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



