Delivery-date: Fri, 15 Mar 2024 13:10:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl6O4-007qE8-1P
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 13:10:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl6O3-0004H4-QT
	for lore@pengutronix.de; Fri, 15 Mar 2024 13:10:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=likfKOFfAjCKMnkf2qmLDC5/MGt7vrp5DlqoVkN2VGI=; b=mla2yqdyFAuQ/aQK6XYy1LPpJM
	jGJ1uSNRcKEi37UKx+PgHxQvnpTH+gqjLZD8EM9RFttt6Sh9cKsy/aqtSaofhmSd81n2b2VkfsYAV
	3hs7Ide3FyVq03V6UIjJ853jnr6Gj4M+JxKOr0eWQl8xmw34oOdX7naF3EFoIcf5i9tpeKGvCNCQ7
	83fuvmw/zoQl7mgB+SnfqS3R1fJPbcQzst/ZjJsEKd88rdNsIpK+hz5OkPUAfFYHlo65nmTbK0tsH
	NJ07UXjrkaabIPuJhaxJg7En1OI4qpxi+VMCJrHMtYp0Ubl7i75UQw7x/rfgPK3Yvxma1xGBi14Gu
	60tnc+1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6NZ-000000008At-2fqd;
	Fri, 15 Mar 2024 12:09:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6NU-000000008A4-1Xkq
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 12:09:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rl6NS-0003o1-U2; Fri, 15 Mar 2024 13:09:34 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rl6NS-006V3I-HX; Fri, 15 Mar 2024 13:09:34 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rl6NS-0090qF-1Q;
	Fri, 15 Mar 2024 13:09:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
References: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
Message-Id: <171050457442.2148042.10934160309345397872.b4-ty@pengutronix.de>
Date: Fri, 15 Mar 2024 13:09:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_050936_455744_13045D7E 
X-CRM114-Status: UNSURE (   9.54  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 00/14] mci: add HS200 support for eMMCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 14 Mar 2024 19:47:23 +0100, Steffen Trumtrar wrote:
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

[01/14] ARM: zynqmp: add sd_dll_reset call
        https://git.pengutronix.de/cgit/barebox/commit/?id=e50802987998 (link may not be stable)
[02/14] zynqmp: firmware: add functions to set tap delay
        https://git.pengutronix.de/cgit/barebox/commit/?id=357020fcf88c (link may not be stable)
[03/14] mci: arasan: implement 25MHz quirk for zynqmp
        https://git.pengutronix.de/cgit/barebox/commit/?id=efd852fa6f13 (link may not be stable)
[04/14] include: mci: sync mci_timing with linux
        https://git.pengutronix.de/cgit/barebox/commit/?id=7496070e8378 (link may not be stable)
[05/14] mci: arasan: read clk phases from DT
        https://git.pengutronix.de/cgit/barebox/commit/?id=9b08b1b1783d (link may not be stable)
[06/14] mci: core: save the set clock as actual_clock
        https://git.pengutronix.de/cgit/barebox/commit/?id=80ad7a2a84bd (link may not be stable)
[07/14] mci: arasan: register sdcard/sampleclk
        https://git.pengutronix.de/cgit/barebox/commit/?id=d4a3cb3f9767 (link may not be stable)
[08/14] include: mci: add more EXT_CSD_CARD_TYPE_*
        https://git.pengutronix.de/cgit/barebox/commit/?id=98fc2c9c153b (link may not be stable)
[09/14] mci: core: parse more host capabilities from DT
        https://git.pengutronix.de/cgit/barebox/commit/?id=9a82adc87dfb (link may not be stable)
[10/14] mci: mci-core: add HS200 support
        https://git.pengutronix.de/cgit/barebox/commit/?id=78b2b2886f08 (link may not be stable)
[11/14] mci: mci-core: replace value with define
        https://git.pengutronix.de/cgit/barebox/commit/?id=73861352b1a5 (link may not be stable)
[12/14] mci: sdhci: add tuning support
        https://git.pengutronix.de/cgit/barebox/commit/?id=f5684230829b (link may not be stable)
[13/14] mci: arasan-sdhci: add HS200 tuning support on ZynqMP
        https://git.pengutronix.de/cgit/barebox/commit/?id=97a8d7804666 (link may not be stable)
[14/14] mci: sdhci: replace sdhci_wait_idle
        https://git.pengutronix.de/cgit/barebox/commit/?id=3c735ec29cee (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



