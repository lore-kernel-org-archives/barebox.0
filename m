Delivery-date: Wed, 05 Jul 2023 21:40:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH8MM-00GhGR-Jh
	for lore@lore.pengutronix.de; Wed, 05 Jul 2023 21:40:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH8MK-0003yR-9q
	for lore@pengutronix.de; Wed, 05 Jul 2023 21:40:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BpzO8bjT9ZkYse5juwcAvuPFcEeRZ+JQwnbh8WoSer8=; b=vwQReFWejyxjDDS8gUnCI613PG
	bXaopfTqoenpsVePoBqegy4qw2nvOg9J1JH8J60U6kddw2E4d12fsBVJPLKHZFf3c1dFSn+I2R1V/
	M66971H1XbJkR+ekKzCpf7FGfACX9zBqnrvV3Y1ABd6whQjvBtTBmlO/CF2lVDNzTKXd8C2sX76mC
	1PPDewzmRyA8TrCy3pT3XbCZCKwlBWs7sb9kvo0yy2P3gx4DcfpJAwltdAqrENL4zdr2VKDelOs3N
	Mo1tKs6380VsG5IEG5kNdJgjHUeJG+83CeJVPydjmKsytDits8CHXNIvws0pjn+O507VrReRczYjU
	+ytNGFMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH8L9-00GvDo-0l;
	Wed, 05 Jul 2023 19:39:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH8L5-00GvCn-2t
	for barebox@lists.infradead.org;
	Wed, 05 Jul 2023 19:39:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qH8L4-0003Ve-CU; Wed, 05 Jul 2023 21:38:58 +0200
Message-ID: <e409ea04-f3df-ddea-d781-c9eff4e841a2@pengutronix.de>
Date: Wed, 5 Jul 2023 21:38:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20230705190352.1448472-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230705190352.1448472-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_123859_935192_07410F68 
X-CRM114-Status: GOOD (  20.59  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mci: imx-esdhc-pbl: fix image load in DDR mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.07.23 21:03, Marco Felsch wrote:
> The __esdhc_send_cmd checks the sdhci.timing setting and configures it
> accordingly. If the BootROM configured the device to operare in DDR mode
> we need to honor that else the PBL can't load the binary correctly from
> the eMMC. Therefore readback the sdhci mixctrl setting and set the
> sdhci.timing to DDR52. At the moment DDR52 is the fastest/highest
> transferrate the BootROM supports, so we don't need to handle HS200/400
> yet.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/imx-esdhc-pbl.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
> index 7c5febb7a8..f789f43b69 100644
> --- a/drivers/mci/imx-esdhc-pbl.c
> +++ b/drivers/mci/imx-esdhc-pbl.c
> @@ -120,6 +120,8 @@ esdhc_load_image(struct fsl_esdhc_host *host, ptrdiff_t address,
>  static void imx_esdhc_init(struct fsl_esdhc_host *host,
>  			   struct esdhc_soc_data *data)
>  {
> +	u32 mixctrl;
> +
>  	data->flags = ESDHC_FLAG_USDHC;
>  	host->socdata = data;
>  	esdhc_populate_sdhci(host);
> @@ -129,6 +131,10 @@ static void imx_esdhc_init(struct fsl_esdhc_host *host,
>  		      FIELD_PREP(WML_WR_WML_MASK, SECTOR_WML) |
>  		      FIELD_PREP(WML_RD_BRST_LEN, 16)         |
>  		      FIELD_PREP(WML_RD_WML_MASK, SECTOR_WML));
> +
> +	mixctrl = sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL);
> +	if (mixctrl & MIX_CTRL_DDREN)
> +		host->sdhci.timing = MMC_TIMING_MMC_DDR52;
>  }
>  
>  static int imx8m_esdhc_init(struct fsl_esdhc_host *host,

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



