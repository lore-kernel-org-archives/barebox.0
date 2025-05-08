Delivery-date: Thu, 08 May 2025 09:35:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCvn8-003OEN-08
	for lore@lore.pengutronix.de;
	Thu, 08 May 2025 09:35:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCvn7-0007c5-8I
	for lore@pengutronix.de; Thu, 08 May 2025 09:35:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1GmxqAKculed5P57CjxVoyZUQlNEFYYIZb5DZ1NNGEs=; b=acAtQRn6wM2U3ZwQJ05/f6qtsi
	rwcF+XNqvAIRXzMtF0t8sdL1Iba0D08fe0TVziukhqtQRz8JK0Nh5jH6U8GLs7+6IPW9APZs5oZS7
	qrPtpbW2OcUzcLBSF3Mhs9HBZwtxNkG012BvBZhjkvyo/MfBO4cgVK8bKToUUWKDShMtSKVUpt0vH
	QN93HOAW+kubRZ9pynYiLKabPP4KW9/lJpun9FmFOCMlMn2Fc0SreVxmWsDCvIn0So2h1pFEs/e1V
	rbyaUu3TeRCgPXOH+QwG5U1O52uzAMpwXIT8BqeqcpHseUW6eAqMiWd51Oxiwuy3rzNy86tmv4jhh
	8jrdujdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCvmO-000000000nX-0afF;
	Thu, 08 May 2025 07:34:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCviH-000000000EL-2YaF
	for barebox@lists.infradead.org;
	Thu, 08 May 2025 07:30:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCviD-0006Xs-Po; Thu, 08 May 2025 09:30:33 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCviD-001giY-1x;
	Thu, 08 May 2025 09:30:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCviD-00B0Kz-1f;
	Thu, 08 May 2025 09:30:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
Message-Id: <174668943351.2622830.6694157576082860820.b4-ty@pengutronix.de>
Date: Thu, 08 May 2025 09:30:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_003037_653477_4F84321F 
X-CRM114-Status: GOOD (  10.94  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/30] mci: imx-esdhc: add HS200 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 07 May 2025 10:21:39 +0200, Ahmad Fatoum wrote:
> On my i.MX8MP board this increases sequential read nearly from
> 72 MiB/s to 131 MiB/s.
> 
> I also got HS400ES running, but it gives me occasional CRC errors, so
> this series only concerns itself with HS200 for now.
> 
> v1 -> v2:
>   - use correct speed comparison in commit message. v1 had KASAN
>   and DMA_API_DEBUG enabled..
>   - define and use new sdhci_compute_timeout helper (Sascha)
>   - remove superfluous comment about clearing bits (Sascha)
>   - always populate delay settings in boarddata (Sascha)
>   - reduce number of Linux SDHCI quirks mentioned in commit
>     message to 51 (Sascha)
> 
> [...]

Applied, thanks!

[01/30] mci: sdhci: fix SDHCI_TRNS_AUTO_CMD12 definition
        https://git.pengutronix.de/cgit/barebox/commit/?id=3854b61a6eb2 (link may not be stable)
[02/30] mci: move most recent I/O settings into mci_host::ios
        https://git.pengutronix.de/cgit/barebox/commit/?id=365b66461683 (link may not be stable)
[03/30] mci: use struct mci_host::ios inside mci_set_ios
        https://git.pengutronix.de/cgit/barebox/commit/?id=103d060182d0 (link may not be stable)
[04/30] mci: tuning: fix fallback to DDR52
        https://git.pengutronix.de/cgit/barebox/commit/?id=3cf0ddbd3f19 (link may not be stable)
[05/30] mci: sdhci: unmap DMA buffers on timeout
        https://git.pengutronix.de/cgit/barebox/commit/?id=ce6ff8b4be4d (link may not be stable)
[06/30] mci: add MMC_CAP_UHS constants
        https://git.pengutronix.de/cgit/barebox/commit/?id=88f55d158d33 (link may not be stable)
[07/30] mci: rename MMC_CAP_MMC_x_yV_DDR to MMC_CAP_x_yV_DDR as in Linux
        https://git.pengutronix.de/cgit/barebox/commit/?id=b8b702948038 (link may not be stable)
[08/30] mci: compare host and card caps for supported speeds
        https://git.pengutronix.de/cgit/barebox/commit/?id=a242a89a274f (link may not be stable)
[09/30] mci: print HS200 capabilities in devinfo
        https://git.pengutronix.de/cgit/barebox/commit/?id=d3882ad438fc (link may not be stable)
[10/30] mci: respect no-1-8-v OF property
        https://git.pengutronix.de/cgit/barebox/commit/?id=50c62ba74801 (link may not be stable)
[11/30] mci: sdhci: add support for struct mci_data::timeout_ns
        https://git.pengutronix.de/cgit/barebox/commit/?id=bbecd0b7bb7e (link may not be stable)
[12/30] mci: imx-esdhc: use unsigned types where appropriate
        https://git.pengutronix.de/cgit/barebox/commit/?id=e535fc5d3e83 (link may not be stable)
[13/30] mci: imx-esdhc: implement esdhc_poll using sdhci_read32_poll_timeout
        https://git.pengutronix.de/cgit/barebox/commit/?id=02986964885c (link may not be stable)
[14/30] mci: imx-esdhc: drop one extra read of SDHCI_INT_STATUS
        https://git.pengutronix.de/cgit/barebox/commit/?id=a1aa6df5f81f (link may not be stable)
[15/30] mci: sdhci: add cmd parameter to sdhci_transfer_*
        https://git.pengutronix.de/cgit/barebox/commit/?id=f35385a1ccaa (link may not be stable)
[16/30] mci: arasan: introduce mmc_op_tuning helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=60c69c089fee (link may not be stable)
[17/30] mci: imx-esdhc: flesh out register description
        https://git.pengutronix.de/cgit/barebox/commit/?id=a92af4b8188b (link may not be stable)
[18/30] mci: imx-esdhc: add support for delay/tuning properties in DT
        https://git.pengutronix.de/cgit/barebox/commit/?id=fadd0942f11d (link may not be stable)
[19/30] mci: add mci_set_timing helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=663eb4f5b8df (link may not be stable)
[20/30] mci: imx-esdhc: add support for setting drive strength
        https://git.pengutronix.de/cgit/barebox/commit/?id=ab10a18526e1 (link may not be stable)
[21/30] mci: sdhci: move SDHCI_MAKE_BLKSZ definition to header
        https://git.pengutronix.de/cgit/barebox/commit/?id=f37f0ab77c79 (link may not be stable)
[22/30] mci: imx-esdhc: select different pinctrl state depending on frequency
        https://git.pengutronix.de/cgit/barebox/commit/?id=8395625eec32 (link may not be stable)
[23/30] mci: core: retry MMC_CMD_SET_BLOCKLEN up to 4 times
        https://git.pengutronix.de/cgit/barebox/commit/?id=3f1a9f9037e4 (link may not be stable)
[24/30] mci: imx-esdhc: don't reconfigure clock unless required
        https://git.pengutronix.de/cgit/barebox/commit/?id=fe803b9faaf8 (link may not be stable)
[25/30] mci: sdhci: fix sdhci_transfer_data MMC_SEND_TUNING compatibility
        https://git.pengutronix.de/cgit/barebox/commit/?id=12d4384a64cc (link may not be stable)
[26/30] mci: core: implement mmc_send_tuning
        https://git.pengutronix.de/cgit/barebox/commit/?id=8adfce51b38d (link may not be stable)
[27/30] mci: imx-esdhc: set burst_length_enable
        https://git.pengutronix.de/cgit/barebox/commit/?id=30a7d2c657fa (link may not be stable)
[28/30] mci: imx-esdhc: fixup quirks in standard SDHCI registers
        https://git.pengutronix.de/cgit/barebox/commit/?id=cb831446eb5f (link may not be stable)
[29/30] mci: sdhci: support Linux SDHCI_QUIRK2_BROKEN_HS200 flag
        https://git.pengutronix.de/cgit/barebox/commit/?id=72a71ebb5f91 (link may not be stable)
[30/30] mci: imx-esdhc: implement HS200 support
        https://git.pengutronix.de/cgit/barebox/commit/?id=bfcae5ddd3d3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



