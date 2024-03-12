Delivery-date: Tue, 12 Mar 2024 09:35:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjxba-002LoF-0P
	for lore@lore.pengutronix.de;
	Tue, 12 Mar 2024 09:35:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjxbW-0002SU-BY
	for lore@pengutronix.de; Tue, 12 Mar 2024 09:35:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6dmIJBOFiS8MUGj8lb2pWxn67sAJ4GA9bzUxKnuobmc=; b=N/mWvIkNlxM+U50va/P4vZjGUO
	W1wtYG0t4qz+52/x4q8R4SgAPVtMMWgbKbdWDkG6J1zYd4BFWYLuIT51nohk1RwmGtPG+cnegBWsP
	nbxpidC9lPLpnvVgN5zVDH3dUZSUAE6CBeRoo1qoh9iHVR/cg8QCREEsw4AxKC5oTfYVtK99h5cfU
	7DcaoBDbVi4vfMS0U8x8PSXgh6osA0fNWYLdY38Rl4DybzZKmQX/h9JigE19TzcMxJwBkfzQ51yEJ
	8p9W+m3wkDCPPHHv8WI8mxJcKsgtiVTdp+0Jy7lv2mv6S9KGq/WgHwWHqdLoIfvv7lxH8u9YSltYL
	SmSzMxuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjxaw-00000004tzt-0FI3;
	Tue, 12 Mar 2024 08:34:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjxat-00000004tzE-0REs
	for barebox@lists.infradead.org;
	Tue, 12 Mar 2024 08:34:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rjxar-0000Ou-Nn; Tue, 12 Mar 2024 09:34:41 +0100
Message-ID: <7dc0dd9e-c1f1-49a7-a719-e56313da8ae4@pengutronix.de>
Date: Tue, 12 Mar 2024 09:34:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
 <20240308-v2024-02-0-topic-arasan-hs200-support-v1-3-6d50c90485f3@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-3-6d50c90485f3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_013443_219756_2FC28013 
X-CRM114-Status: GOOD (  24.70  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 03/12] mci: arasan: implement 25MHz quirk for zynqmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 08.03.24 12:17, Steffen Trumtrar wrote:
> The Arasan on the zynqmp in version 8.9a doesn't meet the timing
> requirements at 25MHz. It works at 19MHz instead.
> 
> Add the quirk from linux kernel v6.8-rc4.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/arasan-sdhci.c | 28 +++++++++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
> index 59afac7372..cc1bad8b62 100644
> --- a/drivers/mci/arasan-sdhci.c
> +++ b/drivers/mci/arasan-sdhci.c
> @@ -37,6 +37,12 @@ struct arasan_sdhci_host {
>  /* Controller does not have CD wired and will not function normally without */
>  #define SDHCI_ARASAN_QUIRK_FORCE_CDTEST		BIT(0)
>  #define SDHCI_ARASAN_QUIRK_NO_1_8_V		BIT(1)
> +/*
> + * Some of the Arasan variations might not have timing requirements
> + * met at 25MHz for Default Speed mode, those controllers work at
> + * 19MHz instead
> + */
> +#define SDHCI_ARASAN_QUIRK_CLOCK_25_BROKEN	BIT(2)
>  };
>  
>  static inline
> @@ -110,13 +116,30 @@ static int arasan_sdhci_init(struct mci_host *mci, struct device *dev)
>  	return 0;
>  }
>  
> +static void arasan_sdhci_set_clock(struct mci_host *mci, unsigned int clock)
> +{
> +	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
> +
> +	if (host->quirks & SDHCI_ARASAN_QUIRK_CLOCK_25_BROKEN) {
> +		/*
> +		 * Some of the Arasan variations might not have timing
> +		 * requirements met at 25MHz for Default Speed mode,
> +		 * those controllers work at 19MHz instead.
> +		 */
> +		if (clock == 25000000)
> +			clock = (25000000 * 19) / 25;
> +	}
> +
> +	sdhci_set_clock(&host->sdhci, clock, host->sdhci.max_clk);
> +}
> +
>  static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
>  {
>  	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
>  	u16 val;
>  
>  	if (ios->clock)
> -		sdhci_set_clock(&host->sdhci, ios->clock, host->sdhci.max_clk);
> +		arasan_sdhci_set_clock(mci, ios->clock);
>  
>  	sdhci_set_bus_width(&host->sdhci, ios->bus_width);
>  
> @@ -243,6 +266,9 @@ static int arasan_sdhci_probe(struct device *dev)
>  	if (of_property_read_bool(np, "no-1-8-v"))
>  		arasan_sdhci->quirks |= SDHCI_ARASAN_QUIRK_NO_1_8_V;
>  
> +	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
> +		arasan_sdhci->quirks |= SDHCI_ARASAN_QUIRK_CLOCK_25_BROKEN;
> +
>  	arasan_sdhci->sdhci.base = IOMEM(iores->start);
>  	arasan_sdhci->sdhci.mci = mci;
>  	mci->send_cmd = arasan_sdhci_send_cmd;
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



