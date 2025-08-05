Delivery-date: Tue, 05 Aug 2025 12:25:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujErN-007GM8-10
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 12:25:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujErM-0001Cs-LK
	for lore@pengutronix.de; Tue, 05 Aug 2025 12:25:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HxCoHYnHYKOOl2S/0+T4iZXIlzPTmCPX5u9jPvmFV48=; b=rOHZ259CL6XJv4w1bTjwSePxfA
	uqLzd4bKpC1t/wFNfVUAyxiJVaJTLOUikZYGS/fCHmx2iqtG1lpwieISc8Zw4L/m9B/876icrp5k4
	euYTg7bziqR1qSigAHxyxxdpW8OhhI4/veZOcexY7ItXYFznYD+vdM9uGmN7mINsy0+QukZG4pMCJ
	LVC8uWvLUpin2+0iHrX6vKwU140bgH4R4+BH5hXTQcHN58qSMENqTXo3zv1z7OTBokhgla9+/Z+7p
	Ky+1f1DjWdD29FD/FZA/GxxW1/pJm98oIuyubT6DotAaUieqlG83yNUga9nD7DbpfsdrwFcmHi1Dm
	LW8Seziw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujEqu-0000000CTrT-48xl;
	Tue, 05 Aug 2025 10:25:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujEdz-0000000CSTr-1BOd
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 10:11:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujEdx-00082A-Hz; Tue, 05 Aug 2025 12:11:41 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujEdx-00C1O0-14;
	Tue, 05 Aug 2025 12:11:41 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujEdx-00EspN-0q;
	Tue, 05 Aug 2025 12:11:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-0-af7ee9182480@pengutronix.de>
References: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-0-af7ee9182480@pengutronix.de>
Message-Id: <175438870126.3547280.15527133248056282915.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 12:11:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_031143_407164_37FB9D3B 
X-CRM114-Status: GOOD (  12.12  )
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
Subject: Re: [PATCH v4 00/10] ARM: SoCFPGA: Add initial support for Agilex5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 07 Jul 2025 13:22:42 +0200, Steffen Trumtrar wrote:
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
[05/10] clk: support init->parent_data
        https://git.pengutronix.de/cgit/barebox/commit/?id=19fdf932cc2c (link may not be stable)
[06/10] linux: clk: add fw_name
        https://git.pengutronix.de/cgit/barebox/commit/?id=7aed13cc7ddd (link may not be stable)
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



