Delivery-date: Mon, 22 Sep 2025 11:47:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0d9D-005uQg-09
	for lore@lore.pengutronix.de;
	Mon, 22 Sep 2025 11:47:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0d9C-0003So-GP
	for lore@pengutronix.de; Mon, 22 Sep 2025 11:47:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IWeYgoDhIgxzi0RbDQN8AnWLDs8KEpTQUeXmkr1BL84=; b=QiSSs1T8Z77VWPwAPm5kA7LY/z
	rrKdzGJYYzdt+yRaik8mNpw2msMoleuA0ZbA93LHzMruKwWm6H10UfpBJK7smE0HQsB+MNpsSnkby
	NtALqZ5P7aAaiVXYLchv3naIFYm4ZeKk+IVhG8FN5kD5nvX/qlbmwEr9tr1pTHpNKYSghCo3D/shR
	oEaFxvkijX7pOcBlSothF4SyNMB9FrKiNu5mKhefJHhGLQ7bVpIw7B7n8GAfRX9OFePZidLV8Debd
	L8b8HPqFA76R2y00J/nVuPwmcu5Q+UauOX8hngSyJUgeHORrcyMvY0rCiUZNg0miLCO9KKqGXffuv
	+Xj+K9NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0d8X-00000009vtl-1wR3;
	Mon, 22 Sep 2025 09:47:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0d8U-00000009vt6-2wTY
	for barebox@lists.infradead.org;
	Mon, 22 Sep 2025 09:47:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0d8S-0003Lf-L7; Mon, 22 Sep 2025 11:47:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0d8S-002ZMh-1U;
	Mon, 22 Sep 2025 11:47:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0d8S-0000000EbYs-1agn;
	Mon, 22 Sep 2025 11:47:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250919102255.1928858-1-s.hauer@pengutronix.de>
References: <20250919102255.1928858-1-s.hauer@pengutronix.de>
Message-Id: <175853442437.3480965.15483413811998573694.b4-ty@pengutronix.de>
Date: Mon, 22 Sep 2025 11:47:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_024706_743283_FB810E01 
X-CRM114-Status: UNSURE (   9.24  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: am62l: fix mdio clock id
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 19 Sep 2025 12:22:55 +0200, Sascha Hauer wrote:
> Based on this commit found in the TI downstream repository:
> 
> | commit 20778f6c125dc24e62767dc4837d793a0f18c319
> | Author: Siddharth Vadapalli <s-vadapalli@ti.com>
> | Date:   Wed Jun 4 15:41:53 2025 +0530
> |
> |    PENDING: arm64: dts: ti: k3-am62l-main: Fix MDIO clock
> |
> |    Based on the Clock ID documentation for AM62L [0], the Clock ID for the
> |    MDIO module within CPSW3G should be '9' instead of '13'. Hence, fix it.
> |
> |    [0]: https://github.com/TexasInstruments/arm-trusted-firmware/blob/ti-master/docs/plat/ti-am62l.rst#am62l-clock-scmi-id-list
> |    Fixes: 12b7268608d8 ("PENDING: arm64: dts: ti: k3-am62l-main: Add CPSW3G DT node")
> |    Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> 
> [...]

Applied, thanks!

[1/1] ARM: am62l: fix mdio clock id
      https://git.pengutronix.de/cgit/barebox/commit/?id=85c11b44889e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



