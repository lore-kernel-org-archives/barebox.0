Delivery-date: Tue, 05 Aug 2025 12:25:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujErO-007GMN-0F
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 12:25:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujErN-0001DR-Ft
	for lore@pengutronix.de; Tue, 05 Aug 2025 12:25:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T7UGBTxYLujSYU8jl7YnMd1cW3VBshgmwraMegkdTag=; b=i20yfMn5jSuMK0sHV462qFVhvq
	xLP7zMS347SYpreLWz0CzmhMvYI++bMvLbQCVjkEuLGuox6uL6DY7y7bVtAmKYdeOM9ZiL1fIVKNg
	mCwyetrGZBjkABgyQ3CHSJi3RhPo1X4f3F73YyG/uAwha9J+lCYz2oJFJwrUTk+RSSg0/7gN4wFxA
	t/DtTQSf4MlIIXmPlrLnHc5Z/xEQQ/qnJfL0dsd+eQtFCXfWo+Sm7VCeYVM2sUmt0uTWknzQF8g3p
	53XYYc+5NNQQC4QjyFxdGLjNZ1TFYv5RLYSnlBOqKZgeQRGjvi5Ym9vyoZ5zAuptghorzbToYOFZ2
	iXNIa4GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujEqw-0000000CTrq-0HP3;
	Tue, 05 Aug 2025 10:25:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujEdz-0000000CSTu-1Bmu
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 10:11:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujEdx-00082C-IK; Tue, 05 Aug 2025 12:11:41 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujEdx-00C1Ny-10;
	Tue, 05 Aug 2025 12:11:41 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujEdx-00EspN-0o;
	Tue, 05 Aug 2025 12:11:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-0-30b6f507810b@pengutronix.de>
References: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-0-30b6f507810b@pengutronix.de>
Message-Id: <175438870125.3547280.13812530368881749362.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 12:11:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_031143_400409_5A7D4633 
X-CRM114-Status: GOOD (  12.05  )
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
Subject: Re: [PATCH v2 00/10] ARM: SoCFPGA: Add initial support for Agilex5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 18 Feb 2025 10:21:25 +0100, Steffen Trumtrar wrote:
> This series adds basic support for the Altera Agilex5 SoCFPGA series.
> Currently only booting from QSPI is supported. Flashing the image to the
> QSPI has to be done with quartus_pgm, therefore there are still some
> essential things left to have proper support for this platform.
> 
> Nevertheless it boots from QSPI and starts linux on the included
> Arrow AXE5 board.
> 
> [...]

Applied, thanks!

[01/10] ARM: socfpga: kconfig: sort entries
        https://git.pengutronix.de/cgit/barebox/commit/?id=7e5e8068c261 (link may not be stable)
[02/10] mach: socfpga: debug_ll: rework putc_ll
        https://git.pengutronix.de/cgit/barebox/commit/?id=3f7b0e870250 (link may not be stable)
[03/10] reset: reset-socfpga: build only for 32-bit socfpga
        https://git.pengutronix.de/cgit/barebox/commit/?id=fdcfda4944f5 (link may not be stable)
[04/10] arm: socfgpa: add support for SoCFPGA Agilex5
        https://git.pengutronix.de/cgit/barebox/commit/?id=bd8541b60e2e (link may not be stable)
[05/10] linux: clk: add clk_parent_data
        (no commit info)
[06/10] clk: support init->parent_data
        https://git.pengutronix.de/cgit/barebox/commit/?id=19fdf932cc2c (link may not be stable)
[07/10] clk: socfpga: add agilex5 clock support
        https://git.pengutronix.de/cgit/barebox/commit/?id=19f83d5b59f4 (link may not be stable)
[08/10] net: phy: add Analog Devices ADIN1300
        https://git.pengutronix.de/cgit/barebox/commit/?id=b644c62c6254 (link may not be stable)
[09/10] net: add support for Designware XGMAC (10gb) ethernet
        https://git.pengutronix.de/cgit/barebox/commit/?id=631eecb0b3a7 (link may not be stable)
[10/10] ARM: socfpga: add Arrow AXE5 Agilex5 board
        https://git.pengutronix.de/cgit/barebox/commit/?id=a824f41c6a2c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



