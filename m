Delivery-date: Tue, 10 Mar 2026 11:09:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzu24-00A3l4-0x
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 11:09:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzu24-00062e-KY
	for lore@pengutronix.de; Tue, 10 Mar 2026 11:09:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bhnF2w02AjLdrXkj8p9XpeiiyzGr0VWY9obZ+Y4Xj1I=; b=Lkiud1pX6lV2Vk/Udk9U7Mj+Mx
	x3gkP7Mtw7z0eRvlNdoyrIF7mqiYc8Xn1R5UPtKL3zNfYfFhTByeXtM+igI6/vDXc/hfyAWvuVHr0
	YS7/ZbYlr88uEXa0zaRSyQlEeBn0bQXi/s5uSTRzUAgMcPlwuQ19qhMh9+KCn3rXvVtvfMW7pSOg/
	wPS45WM24J844Et5aDmBlAyCnOahbTcVZNmSK0ybdyv+PI39Hxaf1Y3w8upXjsnOn1SFJZHZlcpmn
	dOrNkEhhK/9avAc/lcUoO2dRjQRxpxgddPvhxICAiuLB0YEROWRUFg+UwZQPP7wEB+iwN72eDnMYb
	FO0J92gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu1k-00000009AHn-02rf;
	Tue, 10 Mar 2026 10:09:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu1i-00000009AGG-0zVT
	for barebox@bombadil.infradead.org;
	Tue, 10 Mar 2026 10:09:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=bhnF2w02AjLdrXkj8p9XpeiiyzGr0VWY9obZ+Y4Xj1I=; b=lmzNBS9pxFGR308DIk8dFUy9uq
	Jr3jsDr00mYSjTWMfxEwycmG/2e/EfYmIKvtbQlfbu+BWH8ppLvP1wFrozsu20lTzLJMWbBeXE47N
	/5JYRDHZ6gyPD+TFCqjsZUWy8Spf25YHuE6yOPCwE1YPfmQtzkUkf75MbZITsTUX2JnHcfX/DO+TJ
	888JEr+KWfR2EsYUrHRV0erkFpBUsCHLRkDgCXQDSBhBnyxZglgyudo/osA5lbjZx6Y/Kect3zH84
	ArMsrr/uUyIOwL+zPuZ7iLiftyUpgBDAMHtyuKblDiO1Sd4ozpSfm16CVkT91B6PiW6FAQZcsyPpT
	IMTlQtFQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu1d-0000000EDTJ-3hwP
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 10:09:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu1b-0005ki-GF; Tue, 10 Mar 2026 11:09:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu1Z-004gFQ-2x;
	Tue, 10 Mar 2026 11:09:15 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu1b-00000003BHM-0lEE;
	Tue, 10 Mar 2026 11:09:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Robin van der Gracht <robin.van.der.gracht@protonic.nl>
In-Reply-To: <20260304131232.563522-1-robin.van.der.gracht@protonic.nl>
References: <20260304131232.563522-1-robin.van.der.gracht@protonic.nl>
Message-Id: <177313735517.757414.13563010964729803935.b4-ty@pengutronix.de>
Date: Tue, 10 Mar 2026 11:09:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_100918_254203_0C8E336B 
X-CRM114-Status: UNSURE (   6.80  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: RK3562: Add reset reason detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 04 Mar 2026 14:12:32 +0100, Robin van der Gracht wrote:
> Reset reason detection on the RK3562 (and some other Rochchip models)
> only works if the TSACD_SHUT_M0 pin hasn't been connected to the nPOR
> pin (as is suggested by the hardware design guide). In that case all
> soft resets become POR.
> 
> 

Applied, thanks!

[1/1] ARM: rockchip: RK3562: Add reset reason detection
      https://git.pengutronix.de/cgit/barebox/commit/?id=e1c115e61c1a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



