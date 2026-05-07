Delivery-date: Thu, 07 May 2026 10:23:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKu1S-001tte-1I
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 10:23:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKu1M-0000VO-CI
	for lore@pengutronix.de; Thu, 07 May 2026 10:23:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=anhNiJhM7m/P3GlQdtWhOU6PkQURhyKwz+equLcb8c4=; b=iVewoKUnxZNczKI8KNP4LBAcSW
	7dEGPW+GuSo8dshndJYrnvqTdr2dnmacKmsFnlqDAtuhwDD03o8Vrph+z+k86vQUyz++zsDHCOQZc
	K9zuOOXH88Mpvzq2o5n7s7L/9s32tmxVK/2uftEgdOp6JA8W5PfBtRz8CeTQmz6BVgJYGLDAhpTt6
	P7NinPvjlLZNDDtEPbUhfpgPec6iPc/nSR+7iqBM1rqmvPSI/np8e1b0p9fNj2jxU8Cj8PbmIo54Y
	ceMHId9yp4NMwPgHKeNzaEmbw8yi6iHGMjJ8CcK/fwCCRQWZLSpfCaSQueukw/n8xHs2uOCPyYO7G
	yEfXrQhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKtS3-000000034Al-0mBK;
	Thu, 07 May 2026 07:47:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKtS2-0000000349e-0UUJ
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 07:47:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKtRz-0004ms-67; Thu, 07 May 2026 09:47:15 +0200
Message-ID: <79ed02bc-045d-4e0b-a1a4-0158787cb39c@pengutronix.de>
Date: Thu, 7 May 2026 09:47:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: Sascha Hauer <sascha@saschahauer.de>,
 "Claude Opus 4.7" <noreply@anthropic.com>
References: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_004718_165496_5F1C3554 
X-CRM114-Status: GOOD (  18.41  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] mci: rockchip-dwcmshc: add HS200 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 5/7/26 9:02 AM, Sascha Hauer wrote:
> At least on RK3588 the dwcmshc core doesn't have an internal clock
> divider, we fully rely on the clock tree to configure the MMC clock.
> By default the clock comes from the 24MHz oscillator. For higher MMC
> clocks we have to reparent to a PLL clock, but if we do this once the
> 6bit divider iss not enough to scale down to the 400kHz MMC
> initialization clock. This means we must dynamically reparent the clock.
> This series adds support for finding the best divider/mux combination
> for composite clocks.
> 
> This series also adds some fixes to the dwcmshc driver which used to
> timeout on writing sometimes.

\o/

How much faster was the reading now in your testing?

Cheers,
Ahmad

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> Sascha Hauer (6):
>       mci: sdhci: rockchip: set hidspd before re-enabling the clock
>       mci: sdhci: rockchip: disable clock while setting DLL
>       mci: sdhci: rockchip: Wait for transfer complete interrupt with MMC_RSP_BUSY cmd
>       mci: sdhci: rockchip: Update pre-change delay for rockchip platform
>       clk: composite: pick best parent for round_rate / set_rate
>       mci: sdhci: rockchip: officially support HS200
> 
>  drivers/clk/clk-composite.c          | 110 ++++++++++++++++++++++++++++++-----
>  drivers/mci/rockchip-dwcmshc-sdhci.c |  51 ++++++++++------
>  2 files changed, 128 insertions(+), 33 deletions(-)
> ---
> base-commit: 019d102038a64e6b6e8f445cbfd2d15e68d0ec3f
> change-id: 20260507-rockchip-emmc-0e8c5097cf33
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



