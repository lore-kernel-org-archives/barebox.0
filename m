Delivery-date: Mon, 22 Jan 2024 11:17:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRrMa-00BJPc-0S
	for lore@lore.pengutronix.de;
	Mon, 22 Jan 2024 11:17:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRrMa-0007IS-QN
	for lore@pengutronix.de; Mon, 22 Jan 2024 11:17:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LUGPLKgQfT0XRPak/tljhcm6aoDmkK6u/pM1Kt1HgmU=; b=BiYDUK8p6shCSWxHkQQLgGeJ6c
	QUMRBUVKJcdG0ofVxuYoBxZa4aminLMnjWOro0l043xcJrKt8O9JZa4LwCHb0S/i4QT/0XRl+U3jo
	YKNwxEHc/0UyaR7R9X6mz6PAa1+tpf2xoc37Zfqull525P+CX1Yql+0YVPtDq9h3+mn1NdVZGw4UT
	ImctPbrBnT0nFoDcoQZ5MGQvKfLFohI+B56C4nm+w1+c+VISpPsZHDH5y2Fi/z0W+VcVD4P2tXSOd
	OY6TMYwlAvwN6mLOwDPyvcmzvgt0b6Lfucd9ULTNn+yHKX+EzqrZ2Kix01uwoq3MJsyRaCQPnWLsT
	YqVVYqIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRrLO-00BT3u-1Q;
	Mon, 22 Jan 2024 10:15:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRrLI-00BT2u-0B
	for barebox@lists.infradead.org;
	Mon, 22 Jan 2024 10:15:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRrLG-0007Ad-Pf; Mon, 22 Jan 2024 11:15:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRrLG-001ZNp-D6; Mon, 22 Jan 2024 11:15:46 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRrLG-008DRi-17;
	Mon, 22 Jan 2024 11:15:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240119142413.3206832-1-s.hauer@pengutronix.de>
References: <20240119142413.3206832-1-s.hauer@pengutronix.de>
Message-Id: <170591854634.1958231.15660921358573238283.b4-ty@pengutronix.de>
Date: Mon, 22 Jan 2024 11:15:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_021548_093278_E97A69E2 
X-CRM114-Status: GOOD (  11.71  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/7] ARM: Add i.MX93 OP-TEE support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 19 Jan 2024 15:24:06 +0100, Sascha Hauer wrote:
> This enables OP-TEE support for i.MX93. This is done in a way very
> similar to how it's done on i.MX8M.
> One major difference is that the i.MX93 needs a RAM firmware for the
> EdgeLock secure enclave. Without it OP-TEE doesn't work properly.
> The firmware can be integrated into the i.MX93 image where the ROM
> picks it up automatically. The firmware image is SoC revision specific
> though, so we load the firmware during runtime to avoid having to
> create a barebox image for each SoC revision.
> 
> [...]

Applied, thanks!

[1/7] firmware: add missing FIRMWARE_IMX8MQ_OPTEE symbol
      https://git.pengutronix.de/cgit/barebox/commit/?id=d52fd9bf6688 (link may not be stable)
[2/7] firmware: add missing include
      https://git.pengutronix.de/cgit/barebox/commit/?id=e3e2b837d11c (link may not be stable)
[3/7] firmware: i.MX OP-TEE: Add some Kconfig help
      https://git.pengutronix.de/cgit/barebox/commit/?id=75ad426aa1e8 (link may not be stable)
[4/7] ARM: i.MX93: add imx93_barebox_entry()
      https://git.pengutronix.de/cgit/barebox/commit/?id=250e4d9efd85 (link may not be stable)
[5/7] ARM: i.MX: export imx9_ddrc_sdram_size()
      https://git.pengutronix.de/cgit/barebox/commit/?id=79069811cd59 (link may not be stable)
[6/7] ARM: i.MX93: add scratch space support
      https://git.pengutronix.de/cgit/barebox/commit/?id=585c8dc5df4d (link may not be stable)
[7/7] ARM: i.MX93: Add OP-TEE support
      https://git.pengutronix.de/cgit/barebox/commit/?id=c678c3ff052c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



