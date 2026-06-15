Delivery-date: Mon, 15 Jun 2026 10:29:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ2hE-0064bp-37
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 10:29:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ2hE-0006si-Bj
	for lore@pengutronix.de; Mon, 15 Jun 2026 10:29:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ImLMQpK1h6Pa8j9hxx8N2C6ZLzJrDyBp2X9qV3qSHyE=; b=jgrZoVwOxGfxxMFpPeDuFUCHYc
	HH5v6/MSd3xzNpVX5lUCNqfOgVEtAd4hpIWIfPUcOODUAkFmT1eJa5zOg629+l7LKuUJY6Kbc9uHF
	+sceP0sDdH0/QIbUH7o8UP/Qwatfe7Dt8u8NlL++koXrXd+Bgq6MAdoSGLzYZvzBTSghn/WHgLjHW
	E371Sv5juHZaAr7faIbrHsTOFEsjJ0vLyz0BmA9kO2i+rbmbERVV7Vb3vU1tRg7Klpq26Fuqd8WCR
	jIXQqtxy+/ihP6TSZaSEoLZOVqvsO6Kjahsif+Bh4Pv2HmhAXDJuL7KWte8cDvWn4PD8N5RrApVYV
	JWDO/yGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ2gA-0000000DrkG-2u6O;
	Mon, 15 Jun 2026 08:28:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ2g8-0000000DrjU-1PVs
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 08:28:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ2g6-0006bH-ML; Mon, 15 Jun 2026 10:28:18 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ2g6-002pfa-24;
	Mon, 15 Jun 2026 10:28:18 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ2g6-0000000F7cM-2Qb5;
	Mon, 15 Jun 2026 10:28:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260605-socfpga-agilex5-clk-v2-0-780562ec169f@pengutronix.de>
References: <20260605-socfpga-agilex5-clk-v2-0-780562ec169f@pengutronix.de>
Message-Id: <178151209857.3603796.18279984531853203534.b4-ty@pengutronix.de>
Date: Mon, 15 Jun 2026 10:28:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_012820_380777_5E943334 
X-CRM114-Status: GOOD (  11.29  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/4] clk: socfpga: agilex5: sync with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 05 Jun 2026 15:06:42 +0200, Michael Tretter wrote:
> This is a v2 of the patch series [0] to synchronize the socfpga clock
> driver with the kernel driver, which was applied by reverted due to a
> compile error.
> 
> This series split the original patch into cleanup patches to synchronize
> the entire socfpga clock driver with the Linux driver and another patch
> to apply the synchronization of the actual Agilex5 driver. Otherwise,
> the fix of the compile error would have resulted in inconsistent structs
> for the various clocks.
> 
> [...]

Applied, thanks!

[1/4] clk: socfpga: sync arria10 clock initialization with kernel
      https://git.pengutronix.de/cgit/barebox/commit/?id=34f1a294808a (link may not be stable)
[2/4] clk: socfpga: remove clk-phase setting
      https://git.pengutronix.de/cgit/barebox/commit/?id=3e6c2f9e358d (link may not be stable)
[3/4] clk: socfpga: sync clock structs with kernel
      https://git.pengutronix.de/cgit/barebox/commit/?id=4eb127d855f0 (link may not be stable)
[4/4] clk: socfpga: agilex5: sync with kernel
      https://git.pengutronix.de/cgit/barebox/commit/?id=8d17c7c9f556 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



