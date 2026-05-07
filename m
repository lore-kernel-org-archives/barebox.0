Delivery-date: Thu, 07 May 2026 10:16:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKtuA-001tno-1z
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 10:16:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKtu5-0004TG-Ij
	for lore@pengutronix.de; Thu, 07 May 2026 10:16:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KniE6qfB9L6SzVk5FD+WUZXCodPI1d8I827ZgYS0z0Q=; b=Dr1mb1tWh0wRNh0VSmyoLXrasB
	AmiNrLU6ZtOxN8CAyG1NiOfv9HyLkFOXgoom05dODPWPhQ6MIG25HHJjVOzlSQWyma4Ez8EJqKzBK
	KIklGqykM/bwTETtKumZfASg/LXx1gvpR/kR2A+ub+DVRC9u7G9svkobBGiFoG+cOj0TqvzJSyGoE
	NVw7xeb3Nptf+8XPDB9ivwusdisqhFvPKaJe+tZ5sCuklk4lP5gVY8DeHDgmn1/fl/yd5AO/Vm+Vn
	1I+a0K+59hEq+/ejl5wBd+Upblll/DjUHcN84LrDWJ0X39GJA4Yh7t2nK9q+4y55HbQg6unyD9uEF
	wN61et1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKtsz-000000037Xy-0K3o;
	Thu, 07 May 2026 08:15:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKtsw-000000037XD-371Z
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 08:15:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKtsv-0003qh-4p; Thu, 07 May 2026 10:15:05 +0200
Message-ID: <7cc7c207-bc4f-43b9-a9dc-4939316c4169@pengutronix.de>
Date: Thu, 7 May 2026 10:15:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
 <20260507-rockchip-emmc-v1-6-5e8109e8059d@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260507-rockchip-emmc-v1-6-5e8109e8059d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_011506_792997_3E100528 
X-CRM114-Status: GOOD (  20.83  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/6] mci: sdhci: rockchip: officially support HS200
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 5/7/26 9:02 AM, Sascha Hauer wrote:
> "officially" is meant in the way that even with the SDHCI_QUIRK2_BROKEN_HS200
> flag set the driver already does HS200 when the device tree mandates it.

Shouldn't we change mci-core.c to evaluate MMC_CAP2_HS200 then?

> Just remove the ineffective flag and wire up the execute_tuning hook.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
>  drivers/mci/rockchip-dwcmshc-sdhci.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
> index 9ffd52e7e0..04ee528f07 100644
> --- a/drivers/mci/rockchip-dwcmshc-sdhci.c
> +++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
> @@ -300,11 +300,19 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
>  	return ret;
>  }
>  
> +static int rk_sdhci_execute_tuning(struct mci_host *mci, u32 opcode)
> +{
> +	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
> +
> +	return sdhci_execute_tuning(&host->sdhci, opcode);
> +}
> +
>  static const struct mci_ops rk_sdhci_ops = {
>  	.send_cmd = rk_sdhci_send_cmd,
>  	.set_ios = rk_sdhci_set_ios,
>  	.init = rk_sdhci_init,
>  	.card_present = rk_sdhci_card_present,
> +	.execute_tuning = rk_sdhci_execute_tuning,
>  };
>  
>  static int rk_sdhci_probe(struct device *dev)
> @@ -351,9 +359,6 @@ static int rk_sdhci_probe(struct device *dev)
>  
>  	mci_of_parse(&host->mci);
>  
> -	/* HS200 not supported by this driver at the moment */
> -	host->sdhci.quirks2 = SDHCI_QUIRK2_BROKEN_HS200;
> -
>  	sdhci_setup_host(&host->sdhci);
>  
>  	dev->priv = host;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



