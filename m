Delivery-date: Thu, 07 Aug 2025 08:18:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujtwz-007tjl-1d
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 08:18:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujtwy-0002Lk-Vy
	for lore@pengutronix.de; Thu, 07 Aug 2025 08:18:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kBZtYVguGBK9AAPfo4JWS/wEk4k2ym5R4BvSwmj9kFo=; b=QlapZzvWGaSujbuqVNelThiGbT
	/U/4sB1+sqAoUmMCuTWDvWTNC+LcdWuLMv3hSJ1h4KS6Z5zrHXAE19P4GQtnHOy8XyMo0EyUCxbna
	9b35cvPCVPUHWyTaZX+bGmt4G5m/uFRGVwWZHPh2q47FQZE6yrSnwADWuwq0uKxaapw04+ADCJxxi
	s5VJskR6rVOLhygYh+lcXesu+A8/SOwOhXZ9UMMTpKgcVT0x9mYTrHWbNumMY3PYsWK5/twfhuEnG
	H1mtRtGh/GCBqeTuogOmVU7ydLqAcm+3ty7ueM/XNGaGIlZcbUOZQcF67dcvfBz0NML2r+uBvBMYB
	Df4ebklg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujtwQ-0000000HMMh-42P0;
	Thu, 07 Aug 2025 06:17:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujtuq-0000000HMH4-0mps
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 06:15:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujtuo-00028R-NK; Thu, 07 Aug 2025 08:15:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujtuo-00CKYz-1j;
	Thu, 07 Aug 2025 08:15:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujtuo-006esp-1X;
	Thu, 07 Aug 2025 08:15:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250806122259.650027-1-a.fatoum@pengutronix.de>
References: <20250806122259.650027-1-a.fatoum@pengutronix.de>
Message-Id: <175454735047.1587050.9083000534843818079.b4-ty@pengutronix.de>
Date: Thu, 07 Aug 2025 08:15:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_231552_228993_E7003800 
X-CRM114-Status: UNSURE (   6.55  )
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
Subject: Re: [PATCH] fixup! net: add support for Designware XGMAC (10gb)
 ethernet
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Aug 2025 14:22:59 +0200, Ahmad Fatoum wrote:
> net: xgmac: fix COMPILE_TEST build
> 
> The socfpga_secure_reg_ helpers use SMC SIP calls and are only
> compiled-on when CONFIG_ARCH_SOCFPGA_AGILEX5 is enabled.
> 
> Add stubs to fix sandbox allyes builds.
> 
> [...]

Applied, thanks!

[1/1] fixup! net: add support for Designware XGMAC (10gb) ethernet
      https://git.pengutronix.de/cgit/barebox/commit/?id=37449f18f437 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



