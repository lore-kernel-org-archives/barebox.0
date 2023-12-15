Delivery-date: Fri, 15 Dec 2023 12:02:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE5xh-003ZA9-0z
	for lore@lore.pengutronix.de;
	Fri, 15 Dec 2023 12:02:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE5xh-0007Qc-I9
	for lore@pengutronix.de; Fri, 15 Dec 2023 12:02:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q/Fmmwc6Y4ddDctr1O/tifaR2qwUj6Ny1ACkMEEi1aA=; b=sK3FEwXiUVknU5FzPA7VGlLOzx
	H96DSIUbjRmG3L51nwfWvJgksBKw69KZUG57a0w0zGmvPrEpaO96RQbINBAbqnbpJRFtpempGbsui
	1Vp82e8/NX+6X+jBp34gDkouric/GSo2UZitF5NQ5F7oGlWpqBOVI5Ez8M/mOxsLSsiP02/V6PqvW
	Ey2c6jkNZxAeQGBllcsoWxP4Yt/OXLdZ6DjP5PCJ/gRa1uQPmeCQKEYpLlXqBQ1biwVeoDEr9b63v
	mm6HPe3SqXoOgP+h7DFyoAQHIXb+jwS1sYboStCYJl0jJNTZN0ffzVuoK0QLDseYyLpUAENNwvOtl
	4WzRuMNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE5wN-002rF4-1V;
	Fri, 15 Dec 2023 11:01:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE5wI-002rAW-1K
	for barebox@lists.infradead.org;
	Fri, 15 Dec 2023 11:01:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rE5wC-0006ru-Lf; Fri, 15 Dec 2023 12:01:00 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rE5wC-00G0Tg-8y; Fri, 15 Dec 2023 12:01:00 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rE5wC-0076cd-6p; Fri, 15 Dec 2023 12:01:00 +0100
Date: Fri, 15 Dec 2023 12:01:00 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231215110100.GL1318922@pengutronix.de>
References: <20231214151529.1650181-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231214151529.1650181-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_030106_447605_F70EC971 
X-CRM114-Status: GOOD (  19.02  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] mci: stm32_sdmmc2: fix warnings when building for
 64-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Dec 14, 2023 at 04:15:29PM +0100, Ahmad Fatoum wrote:
> Building the driver via CONFIG_COMPILE_TEST for 64-bit shows two
> instances of type confusion, fix them.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/stm32_sdmmc2.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Squashed this into "mci: stm32_sdmmc2: correct usage of DMA API"
(currently sitting in next) which breaks it.

Sascha

> 
> diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
> index 84969a29d0f4..418213a1b334 100644
> --- a/drivers/mci/stm32_sdmmc2.c
> +++ b/drivers/mci/stm32_sdmmc2.c
> @@ -257,8 +257,8 @@ static void stm32_sdmmc2_pwron(struct stm32_sdmmc2_priv *priv)
>  	udelay(DIV_ROUND_UP(74 * USEC_PER_SEC, priv->mci.clock));
>  }
>  
> -static int stm32_sdmmc2_start_data(struct stm32_sdmmc2_priv *priv,
> -				    struct mci_data *data, u32 data_length)
> +static dma_addr_t stm32_sdmmc2_start_data(struct stm32_sdmmc2_priv *priv,
> +					  struct mci_data *data, u32 data_length)
>  {
>  	unsigned int num_bytes = data->blocks * data->blocksize;
>  	dma_addr_t idmabase0;
> @@ -494,8 +494,8 @@ static int stm32_sdmmc2_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  
>  	stm32_sdmmc2_start_cmd(priv, cmd, cmdat, data_length);
>  
> -	dev_dbg(priv->dev, "%s: send cmd %d data: 0x%x @ 0x%x\n", __func__,
> -		cmd->cmdidx, data ? data_length : 0, (unsigned int)data);
> +	dev_dbg(priv->dev, "%s: send cmd %d data: 0x%x @ %p\n", __func__,
> +		cmd->cmdidx, data ? data_length : 0, data);
>  
>  	ret = stm32_sdmmc2_end_cmd(priv, cmd);
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


