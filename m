Delivery-date: Mon, 18 Mar 2024 13:18:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmBwm-00CK04-1m
	for lore@lore.pengutronix.de;
	Mon, 18 Mar 2024 13:18:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmBwl-0001ue-Sb
	for lore@pengutronix.de; Mon, 18 Mar 2024 13:18:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=31xP0DnN0dfiaRBBXgn6TwTu9MwAFdgrxGftWefXmDA=; b=s3ox05du1tu0DI8gFA9ZZtYj1l
	HEKBWI4GsxRnR4x0OOsDejItdCzeDgXn+ODtB23M9YTxRbRe9jMdtsHJgMbfaGNjiP8cXxW+ui8bs
	2bwNZFbQN3ooJVZNgJ1j4iatzvG7Chc4BT2hqL/2AjT8QYK2cJeclZuRAwnyaACeJhm1MwuFODqxB
	BcAZ9pReLiNTfzI5jEz2xivgwcILsCqbZcAn7eX0ZunOoKHruMSkdQFmlwfyL6csjhrU3V2XtTZ49
	o3CY6O6qK2fEB6+TMeLbkprHQfW3kVk4FmlaOpDj0anbUNe5xW5rMhumBjHdhdH53csgekrlPKqTu
	JkDf+UMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmBwD-00000008UXF-1Sxp;
	Mon, 18 Mar 2024 12:17:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmBw9-00000008UVC-2p31
	for barebox@lists.infradead.org;
	Mon, 18 Mar 2024 12:17:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rmBw6-0001Og-AC; Mon, 18 Mar 2024 13:17:50 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rmBw5-0074d6-U6; Mon, 18 Mar 2024 13:17:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rmBw5-00BinI-2f;
	Mon, 18 Mar 2024 13:17:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-0-48756863add6@pengutronix.de>
References: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-0-48756863add6@pengutronix.de>
Message-Id: <171076426981.2793593.6249578549368520671.b4-ty@pengutronix.de>
Date: Mon, 18 Mar 2024 13:17:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_051753_744425_A7FE63EB 
X-CRM114-Status: UNSURE (   9.64  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4 00/15] mci: add HS200 support for eMMCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 18 Mar 2024 11:18:14 +0100, Steffen Trumtrar wrote:
> This series adds support for HS200 mode to mci-core and sdhci.
> As the host driver also needs to handle clock setup, pin control and
> host specific tuning, this series only adds HS200 support to the Arasan
> SDHCI driver.
> 
> Tested on: ZynqMP
> Compile tested: for ZynqMP with/without CONFIG_MCI_TUNING
> 
> [...]

Applied, thanks!

[01/15] mci: arasan: fix dma support
        https://git.pengutronix.de/cgit/barebox/commit/?id=a6d9e82f515a (link may not be stable)
[02/15] ARM: zynqmp: add sd_dll_reset call
        https://git.pengutronix.de/cgit/barebox/commit/?id=54a4e53cc859 (link may not be stable)
[03/15] zynqmp: firmware: add functions to set tap delay
        https://git.pengutronix.de/cgit/barebox/commit/?id=d26f2505c399 (link may not be stable)
[04/15] mci: arasan: implement 25MHz quirk for zynqmp
        https://git.pengutronix.de/cgit/barebox/commit/?id=6d0980c89783 (link may not be stable)
[05/15] include: mci: sync mci_timing with linux
        https://git.pengutronix.de/cgit/barebox/commit/?id=312fe15bc734 (link may not be stable)
[06/15] mci: arasan: read clk phases from DT
        https://git.pengutronix.de/cgit/barebox/commit/?id=3455c97f5841 (link may not be stable)
[07/15] mci: core: save the set clock as actual_clock
        https://git.pengutronix.de/cgit/barebox/commit/?id=8b8c5b0e39a3 (link may not be stable)
[08/15] mci: arasan: register sdcard/sampleclk
        https://git.pengutronix.de/cgit/barebox/commit/?id=82d92eff1be3 (link may not be stable)
[09/15] include: mci: add more EXT_CSD_CARD_TYPE_*
        https://git.pengutronix.de/cgit/barebox/commit/?id=7dfc146ffa24 (link may not be stable)
[10/15] mci: core: parse more host capabilities from DT
        https://git.pengutronix.de/cgit/barebox/commit/?id=b8ebb6ec0f94 (link may not be stable)
[11/15] mci: mci-core: add HS200 support
        https://git.pengutronix.de/cgit/barebox/commit/?id=ffa59e16bb96 (link may not be stable)
[12/15] mci: mci-core: replace value with define
        https://git.pengutronix.de/cgit/barebox/commit/?id=aaafc8f241e2 (link may not be stable)
[13/15] mci: sdhci: add tuning support
        https://git.pengutronix.de/cgit/barebox/commit/?id=c45f2eb6451a (link may not be stable)
[14/15] mci: arasan-sdhci: add HS200 tuning support on ZynqMP
        https://git.pengutronix.de/cgit/barebox/commit/?id=94d79ed7b781 (link may not be stable)
[15/15] mci: sdhci: replace sdhci_wait_idle
        https://git.pengutronix.de/cgit/barebox/commit/?id=6c809314ab88 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



