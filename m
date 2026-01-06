Delivery-date: Tue, 06 Jan 2026 14:18:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6xe-001uBe-2F
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:18:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6xe-0006gg-4x
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:18:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IzaP0TlLG3vjNYIxPc3FfX5owY7euBgil0/U7fX9xS4=; b=zNaFsduk4HrPjYHj5l4MJZ5UwS
	PykuCZVaeVjE0HGNcMzKe+i5Uq6dl8uhVs3brFlL7T+CtRE4G/3F8PzHOCFPtjJ+0EU/YOOyEG07v
	AhQRmpLugYYAijemeUAmUGlJ58MEieqfRg57v+QiYcG4hBBjT2BQlhVmq1KryHSmJzZRHf+c0Lppn
	MjBd8I3Zf7zBC5sf4Dp7I59mBOKfm2h5xxHyLkcNnFdGEo1K5pT0ElDaXkxH0in5NWvZHFD9qe2XR
	IJq6a05rkgPLaERKAyj7v0vvWsKH4Pr/j/twYDICyQ1SAPjGO4H+sx/nusPl+XIXlrNiz8e7DytL0
	z80Q8dnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6xB-0000000D4xk-3GeD;
	Tue, 06 Jan 2026 13:18:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6x9-0000000D4wj-1ke8
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:18:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6x7-0006XG-UZ; Tue, 06 Jan 2026 14:18:25 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6x7-009LwQ-2P;
	Tue, 06 Jan 2026 14:18:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6x7-00000009nt9-2tdt;
	Tue, 06 Jan 2026 14:18:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20260105-rockchip-secure-boot-v1-0-eaf5053a7d7e@pengutronix.de>
References: <20260105-rockchip-secure-boot-v1-0-eaf5053a7d7e@pengutronix.de>
Message-Id: <176770550568.2336688.18101062133426499563.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 14:18:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_051827_460622_844A967A 
X-CRM114-Status: UNSURE (   8.81  )
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
Subject: Re: [PATCH RFC 0/3] ARM: rockchip: add rockchip secure boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Jan 2026 15:32:30 +0100, Michael Tretter wrote:
> Add support to enable secure boot on rk3588 SoCs via the Rockchip Secure
> Boot PTA [0].
> 
> The OTP fuses for the secure boot configuration are only accessible from
> the secure world. Therefore, the actual hardware access is implemented
> in the aforementioned PTA. Thus, barebox is only able to enable secure
> boot, if this PTA is available.
> 
> [...]

Applied, thanks!

[1/3] scripts: rockchip: add script to calculate key hash
      https://git.pengutronix.de/cgit/barebox/commit/?id=183ab30d8ab1 (link may not be stable)
[2/3] tee: drivers: add driver for Rockchip Secure Boot PTA
      https://git.pengutronix.de/cgit/barebox/commit/?id=a18cd546d7f0 (link may not be stable)
[3/3] commands: implement rksecure command
      https://git.pengutronix.de/cgit/barebox/commit/?id=36179589b6d5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



