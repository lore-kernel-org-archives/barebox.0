Delivery-date: Mon, 18 May 2026 12:11:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOuwx-00161A-0l
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 12:11:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOuww-0003eN-J1
	for lore@pengutronix.de; Mon, 18 May 2026 12:11:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I2Oe87lVqWXRxeJ5NmyG5Hvtowubizc0yzAqwhsngnA=; b=J5Oa/wx/w17ja6vCwXGqCg5iR6
	zWzTgEL4mkrcpCuV4ym18tIuLIlxhiC2onLQ8yWzcCICB0qyiNV3ZKuN7yaBx5bZRFG6jbS8O5JIN
	fKJOvjf5c9W6W6xs5uKoo+s9dVbXaF9Z40SoRPCQeOcz7RU2qdfiUnNHDLRRB9bU/6jF0QCUW8p+m
	Zws22okj+N+t0O3dRjU93y/jxkg48NouxesoSfNZ9AF3S/ynYFoClmUxGKS1qNu/MF9MTdNNOXvpO
	US1QrkFVWDIUhbJapnXgCKnFiSqQGMWZaBzFvlIWOMnDpxpkxXCWxZ0l40usW+zwTBkReZCnzqMhs
	3aRRd/dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuvu-0000000FA3C-2n6K;
	Mon, 18 May 2026 10:10:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuvt-0000000FA2l-44ui
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 10:10:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=I2Oe87lVqWXRxeJ5NmyG5Hvtowubizc0yzAqwhsngnA=; b=hObH/l4xHa1/1VkA/yMtDPaMwl
	ORzIOPDCfnf3V1jeraSIUgVt7p8ypQ2ISXPFsv7pRpnWaYbwO9jgTk9kNv5KviSacELgC/CzuL3vj
	nXRQsDpeETp8gBtVzcsPd9cyrfo3EpImoi86LumCypKF0A6MnqY1excEVC/5tqTxL6ks50LEyycJS
	Ol8eck8Yu+SDbjiO2KPTo5K3E+gPE6HXzOhBJsRbs38NDeBzWQmKy7lPCPc6YCrFbznf7uemMezku
	M1IhJSwlc5MZfU7iBUNIN3NJ3fzKvEOCBCOb3xw+bsTdBjuoiWCvw+MRu/NkboTFHetSJAPIIVnqN
	cvxYpDdw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuvo-0000000Ahpk-2loO
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 10:10:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOuvo-0003SM-2e; Mon, 18 May 2026 12:10:40 +0200
Message-ID: <a0b2ffff-e0a1-4aa6-9f90-8160cf759af1@pengutronix.de>
Date: Mon, 18 May 2026 12:10:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.7" <noreply@anthropic.com>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
 <20260511-rockchip-emmc-hs400-v1-10-515fb6d20e12@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-10-515fb6d20e12@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_111041_832426_767C11D3 
X-CRM114-Status: GOOD (  20.28  )
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
Subject: Re: [PATCH 10/10] mci: sdhci: rockchip: support HS400 Enhanced Strobe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 5/11/26 2:08 PM, Sascha Hauer wrote:
> Implement the hs400_enhanced_strobe op so the dwcmshc controller
> samples on the eMMC strobe instead of the source clock when in
> HS400ES. The bit lives at EMMC_CONTROL[8] (DWCMSHC_ENHANCED_STROBE)
> in the same vendor area register that already holds CARD_IS_EMMC.
> 
> Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/rockchip-dwcmshc-sdhci.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
> index 3aa3f12930..89bc4781b4 100644
> --- a/drivers/mci/rockchip-dwcmshc-sdhci.c
> +++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
> @@ -19,6 +19,7 @@
>  #define DWCMSHC_HOST_CTRL3		0x508
>  #define DWCMSHC_EMMC_CONTROL		0x52c
>  #define  DWCMSHC_CARD_IS_EMMC		BIT(0)
> +#define  DWCMSHC_ENHANCED_STROBE	BIT(8)
>  #define DWCMSHC_EMMC_ATCTRL		0x540
>  
>  /* Rockchip specific Registers */
> @@ -363,12 +364,24 @@ static int rk_sdhci_execute_tuning(struct mci_host *mci, u32 opcode)
>  	return sdhci_execute_tuning(&host->sdhci, opcode);
>  }
>  
> +static void rk_sdhci_hs400_enhanced_strobe(struct mci_host *mci,
> +					   struct mci_ios *ios)
> +{
> +	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
> +	u32 val;
> +
> +	val = sdhci_read32(&host->sdhci, DWCMSHC_EMMC_CONTROL);
> +	val |= DWCMSHC_ENHANCED_STROBE;
> +	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_CONTROL, val);

Linux checks ios->enhanced strobe and disables/enables the strobe based
on that. I think that's useful for barebox as well, so the core has a
chance to implement fallback.

Cheers,
Ahmad

> +}
> +
>  static const struct mci_ops rk_sdhci_ops = {
>  	.send_cmd = rk_sdhci_send_cmd,
>  	.set_ios = rk_sdhci_set_ios,
>  	.init = rk_sdhci_init,
>  	.card_present = rk_sdhci_card_present,
>  	.execute_tuning = rk_sdhci_execute_tuning,
> +	.hs400_enhanced_strobe = rk_sdhci_hs400_enhanced_strobe,
>  };
>  
>  static int rk_sdhci_probe(struct device *dev)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



