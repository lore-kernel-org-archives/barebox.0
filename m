Delivery-date: Tue, 10 Mar 2026 11:09:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzu26-00A3ly-1E
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 11:09:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzu26-00064b-Ov
	for lore@pengutronix.de; Tue, 10 Mar 2026 11:09:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rLYlB33xqOnt6pnaI3aGa5ZlxSYbSanXCJ1r7prr14E=; b=oPX1WecDB+U3Txl9grxeccnxxI
	7zemFFNZ5PCMApRulu5x7oVqbYoBMsCP53yf/V67aCAPYSSnAhbvFDL0VegYR/F/SOkFmuDX8xFnB
	Jhv43e8WMLd1FVTmFdogLmuAQZz/sJaKYOcdFCBAJ9I1YUKESI9NTag9+y26ONzvxCHmkVDluVtI/
	kvH1gQYVgpcqfmEkkNzoxy9GZIb/zQwVY/rVJap381oKR+zfGaupoqjlBVTEKmp9yk+5gb84UQPmR
	hYKX4pl8ym+cFMFTcUG9I1VjHzcXNzNMYwufEvY46fxq14MHaQxBT14chT9IbqtVRRPGCgBHWuw0f
	mo+SGfhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu1j-00000009AHO-2w8R;
	Tue, 10 Mar 2026 10:09:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu1i-00000009AGE-0zI9
	for barebox@bombadil.infradead.org;
	Tue, 10 Mar 2026 10:09:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=rLYlB33xqOnt6pnaI3aGa5ZlxSYbSanXCJ1r7prr14E=; b=ViZVSVCTul8LSlfHkkPRFHFrNy
	xA/dr4+RcuEMG5xTnOJTbfw+gWkAhp/vc/g65myrTpzAEzHoKOucPsgx7q1r1+eD2B7R09yKRN70G
	vyYRvFonfYOpXQrfmPtwfdbQ3hripRjzGPGLAOD7dJwQvZg/kfOleOoORCr3BMs+35gJIexFkcFRw
	r3qbTQUgfcTOMhO/WY1ihtakkhEzoWxcEZlSVZjhlomx3DKQUK497FuuTxNCM+J+a+YFX/7MRYy/3
	3SCvE+2Rgr8O/m1z+8rWF16ilsLsMF63H5+XvE590tRUpYrWNpyPOrjtux+MO3EXgmkysm85VNmrk
	oaJLVijQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu1d-0000000EDTK-2rH9
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 10:09:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu1b-0005kg-GF; Tue, 10 Mar 2026 11:09:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu1Z-004gFO-2r;
	Tue, 10 Mar 2026 11:09:15 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu1b-00000003BHM-0e2F;
	Tue, 10 Mar 2026 11:09:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Robin van der Gracht <robin.van.der.gracht@protonic.nl>
In-Reply-To: <20260304124606.549402-1-robin.van.der.gracht@protonic.nl>
References: <20260304124606.549402-1-robin.van.der.gracht@protonic.nl>
Message-Id: <177313735514.757414.10483138105026815683.b4-ty@pengutronix.de>
Date: Tue, 10 Mar 2026 11:09:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_100918_130576_FE14E7AD 
X-CRM114-Status: UNSURE (   5.33  )
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
Subject: Re: [PATCH] aiodev: rockchip_saradc: Fix ADC resolution for RK3562
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 04 Mar 2026 13:46:06 +0100, Robin van der Gracht wrote:
> The RK3562 has a 10 bit A/D converter.
> 
> Fixes: 6e46ee2f (aiodev: rockchip_saradc: Add RK3562 support)
> 
> 

Applied, thanks!

[1/1] aiodev: rockchip_saradc: Fix ADC resolution for RK3562
      https://git.pengutronix.de/cgit/barebox/commit/?id=9d93c1aece25 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



