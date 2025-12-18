Delivery-date: Thu, 18 Dec 2025 09:15:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW9A9-00ClIn-0q
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 09:15:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW9A6-00033A-V4
	for lore@pengutronix.de; Thu, 18 Dec 2025 09:15:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0kVavAGLqBOMR9Gu/jrvrm5jzpUFPWRg20UR6Z7c7R8=; b=uKIOZ/N1W46fAmtHyZAzZG8vlZ
	OnLBU0vN/uGYybSdgtabKvCJF6GXP3F0bXtrtl5n51cdi3Ne909mB2tFCwqk7rApUwWvHL8puq+as
	sKTmUjkEmku29tAvDOPz6bhcSmrILrp8S6TihuvgAaCnKa+7hnjTD2pxFlo8/PkozxexsGX49slRZ
	iMeBgEmTjqY0rcDZCXXdEqkf2hgz6zOJn7jpAjJUOk41nAcIg88FflV7bJWJSaK4xE+oD/PZw8clo
	kaovuZv891TgzziPKzzPx0/g1Jpx+9X/w0HSRyAJaPllTN35lGSu1vDm78hz1Q4y0Pjcg9k1SFpz0
	aTKLceug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW99i-000000082Ib-2DYS;
	Thu, 18 Dec 2025 08:14:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW99g-000000082I9-2Q8r
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 08:14:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vW99e-0002x6-3G; Thu, 18 Dec 2025 09:14:34 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vW99d-006FM5-2Q;
	Thu, 18 Dec 2025 09:14:33 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vW99d-00000007JS8-2tLp;
	Thu, 18 Dec 2025 09:14:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
In-Reply-To: <20251216-genpd_fix-v2-1-1dddd24a61ef@gocontroll.com>
References: <20251216-genpd_fix-v2-1-1dddd24a61ef@gocontroll.com>
Message-Id: <176604567368.1743047.17615700573412982226.b4-ty@pengutronix.de>
Date: Thu, 18 Dec 2025 09:14:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_001436_620755_687BF8C0 
X-CRM114-Status: UNSURE (   5.71  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] pmdomain: fix collision in names when registering
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Dec 2025 11:47:35 +0100, Maud Spierings via B4 Relay wrote:
> After adding the imx8m-blk-ctrl driver errors started appearing about
> the genpd device already being registered.
> 
> incorperate some extra device details in the device name so this
> possible collision goes away.
> 
> 
> [...]

Applied, thanks!

[1/1] pmdomain: fix collision in names when registering
      https://git.pengutronix.de/cgit/barebox/commit/?id=e2d7e0322811 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



