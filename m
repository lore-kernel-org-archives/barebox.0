Delivery-date: Wed, 21 May 2025 09:39:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHe3O-0015pL-2t
	for lore@lore.pengutronix.de;
	Wed, 21 May 2025 09:39:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHe3O-00047Z-CS
	for lore@pengutronix.de; Wed, 21 May 2025 09:39:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=scd52tvM0yTfy9hoesTiomuboa3HLT++tvV5Gbou7cU=; b=jxGCTOWJtNGUV3dgXoQY1ZMRQr
	18x8hw9jjcH2bBqivurMa8y78sud4BynPGvuySjar64EC4WbStwub32ABY1QQQOepzO2bH2ZRzJ6b
	sfiryX3ITAvvs2l3VHADtQnzAKcv7gA0FOBEwO5zT0eKzRB3GaYsgcGp8TAWJWXYwlngN0vp7ceyB
	ar+u5k977LrKlrBqQgGtF0JCAQXuF2tSAQvN+upjY8HF7cjH9QDjvMy447yygwNdWS1m474CoA8Dw
	DKpZYjgWyenYtOZZZlf8Y2h2P2vSVn8qPvNuINrs/VFYwcs0ijaxr+N+aV2ejTABgiw6zNm1ibzWh
	J1gFzK0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHe2k-0000000F58Q-3L9O;
	Wed, 21 May 2025 07:39:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHdzN-0000000F4iX-04oP
	for barebox@lists.infradead.org;
	Wed, 21 May 2025 07:35:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uHdzL-0003OF-2u; Wed, 21 May 2025 09:35:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uHdzK-000XGr-2w;
	Wed, 21 May 2025 09:35:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uHdzK-009Loe-2j;
	Wed, 21 May 2025 09:35:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250520121738.42686-1-a.fatoum@pengutronix.de>
References: <20250520121738.42686-1-a.fatoum@pengutronix.de>
Message-Id: <174781294283.2228791.9625677898489700831.b4-ty@pengutronix.de>
Date: Wed, 21 May 2025 09:35:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_003545_056924_D852056C 
X-CRM114-Status: UNSURE (   7.10  )
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
Subject: Re: [PATCH master 1/2] ARM: i.MX: fix cpu_is_imx on
 CONFIG_ARM_MULTIARCH configurations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 May 2025 14:17:37 +0200, Ahmad Fatoum wrote:
> CONFIG_BOARD_ARM_GENERIC_DT is not the only way an i.MX initcall could
> run on a non-i.MX SoC. Since the addition of the multiarch (really
> multiplatform) support, this can also happen with native images.
> 
> Therefore check for both config options.
> 
> 
> [...]

Applied, thanks!

[1/2] ARM: i.MX: fix cpu_is_imx on CONFIG_ARM_MULTIARCH configurations
      https://git.pengutronix.de/cgit/barebox/commit/?id=1826809f122e (link may not be stable)
[2/2] ARM: omap: fix cpu_is_omap on CONFIG_ARM_MULTIARCH configurations
      https://git.pengutronix.de/cgit/barebox/commit/?id=ba84cd9af113 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



