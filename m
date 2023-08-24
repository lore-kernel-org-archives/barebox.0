Delivery-date: Thu, 24 Aug 2023 15:27:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZANB-007OdV-G7
	for lore@lore.pengutronix.de; Thu, 24 Aug 2023 15:27:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZAN9-0006PX-E8
	for lore@pengutronix.de; Thu, 24 Aug 2023 15:27:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OnssG4YynQV+iatVVI/I+f04rdBBC5htD6So5MnhcWE=; b=qxEqN/EkEtt3+tuOhpC9uvnFL4
	w59eUKYFYuVwTJDlAK3S/yKsISduY03X0wOFxAIWaTMYOIOLEsav4FkbGGO2h/pJgiumc00ubBJGc
	BfuGpS+CyKQE9RV2D5UT+ffpA0ZjaDAVas2gv4PIbuVq30Cm/RefhKhScX1W9iyKtzKJKLHxEk3a2
	x5FYBYUHIuucyUMgdQ4FGX7qlsj/HyM+BLhNNTs68N7sn5uAxGpAKPAobdAm7F9wwFHkLrOhNwQsb
	QGJ+aiPFUh/MX3BXaS94wxw4kUrZ/IN3Pg8SII275kwZ2k2DvlhIus6WixHdoHGauUXlEhJdHmkDR
	ksZ7SA2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZAM6-0038Wg-1w;
	Thu, 24 Aug 2023 13:26:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZAM3-0038WL-0g
	for barebox@lists.infradead.org;
	Thu, 24 Aug 2023 13:26:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qZAM1-0006Jo-Vk; Thu, 24 Aug 2023 15:26:30 +0200
Message-ID: <cf63ae60-1292-497b-cf9a-325a6d1d5dbf@pengutronix.de>
Date: Thu, 24 Aug 2023 15:26:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org
References: <20230818142244.17157-1-jmaselbas@kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230818142244.17157-1-jmaselbas@kalray.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_062631_254891_07180F1E 
X-CRM114-Status: GOOD (  18.34  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/7] mci: sdhci: Set 8-bit host caps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 18.08.23 16:22, Jules Maselbas wrote:
> Set the mci::host_cap MMC_CAP_8_BIT_DATA if supported by the hardware.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/mci/sdhci.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
> index 635884e2a2..f6deea4020 100644
> --- a/drivers/mci/sdhci.c
> +++ b/drivers/mci/sdhci.c
> @@ -568,6 +568,9 @@ int sdhci_setup_host(struct sdhci *host)
>  	if (host->caps & SDHCI_CAN_DO_HISPD)
>  		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED | MMC_CAP_SD_HIGHSPEED;
>  
> +	if (host->caps & SDHCI_CAN_DO_8BIT)
> +		mci->host_caps |= MMC_CAP_8_BIT_DATA;

FYI, this is usually overridden by the bus-width DT property.
You (or Yann) will probably want to write it explicitly into the DT,
because bus width is not only a controller capability, but depends
on the eMMC and the board layout as well.

Cheers,
Ahmad

> +
>  	host->sdma_boundary = SDHCI_DMA_BOUNDARY_512K;
>  
>  	return 0;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



