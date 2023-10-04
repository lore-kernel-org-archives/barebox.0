Delivery-date: Wed, 04 Oct 2023 06:57:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qntxI-004PQP-Ig
	for lore@lore.pengutronix.de; Wed, 04 Oct 2023 06:57:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qntxG-0001ti-KE
	for lore@pengutronix.de; Wed, 04 Oct 2023 06:57:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eCjmR5prwBXgKx7zrF/MTkPl8WeaQg61uAaj0X5gHBk=; b=2zFoQzlIN+GSNLCYjzbTcokDdZ
	5qTVvGc3UQxgQREUv5YKjfFbe97dp3isNAO2S56bJPcNcZBNKGjtRimePHxQJLxmacv8vIPLwgjCm
	S7ZnK+OHi2KTeJWF27WR8dRwE7blon1C4K9/W8Eta8SACHukV1trjZkb3haBfOnSkIdh2i/Yang+1
	f4gFFIeAUycw62AB5RP6YVy/KtxxBBx5Ua0VqMRxueNk2aYSM2iM+P0GqGWyJgK7FmTxvXfP3ufjL
	BRQ4e6eiCcPL/SyyPPvHxToNRuFEZco5MFY89C96koGMw7Pn1foKmw/G3LXwLJ7Le7HmpBv8ZCbgr
	8WNmdaig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qntvg-00GFQm-1T;
	Wed, 04 Oct 2023 04:56:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qntvZ-00GFOW-1v
	for barebox@lists.infradead.org;
	Wed, 04 Oct 2023 04:56:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qntvU-0001cT-ML; Wed, 04 Oct 2023 06:56:00 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qntvU-00Awbp-9s; Wed, 04 Oct 2023 06:56:00 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qntvU-00ChgN-7a; Wed, 04 Oct 2023 06:56:00 +0200
Date: Wed, 4 Oct 2023 06:56:00 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231004045600.oqs2k6eajti4kpzs@pengutronix.de>
References: <20231002092043.3097587-1-a.fatoum@pengutronix.de>
 <20231002092043.3097587-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231002092043.3097587-3-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_215605_633270_C54CEC33 
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] HAB: extend fuse information with i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 23-10-02, Ahmad Fatoum wrote:
> From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> 
> The i.MX8M family of processors moved the SEC_CONFIG_1 fuse to a
> different location. Extend the hab driver with the new location and take
> care of the DIR_BT_DIS fuse which only needs to be burned on i.MX8MQ.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/hab/hab.c | 32 +++++++++++++++++++++++++++-----
>  1 file changed, 27 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
> index aa848979b467..ee402352f243 100644
> --- a/drivers/hab/hab.c
> +++ b/drivers/hab/hab.c
> @@ -150,23 +150,45 @@ static int imx_hab_permanent_write_enable_ocotp(int enable)
>  	return imx_ocotp_permanent_write(enable);
>  }
>  
> +static uint32_t get_sec_config_fuse(void) {
> +	if (cpu_is_mx6()) {
> +		return OCOTP_SEC_CONFIG_1;
> +	} else {
> +		return MX8M_OCOTP_SEC_CONFIG_1;
> +	}

Small nit: remove the {} from the one-liner if-else, same...
         
> +}
> +
>  static int imx_hab_lockdown_device_ocotp(void)
>  {
>  	int ret;
> +	uint32_t dis_fuse;
> +	uint32_t sec_fuse;
>  
> -	ret = imx_ocotp_write_field(OCOTP_DIR_BT_DIS, 1);
> -	if (ret < 0)
> -		return ret;
> +	if (cpu_is_mx6() || cpu_is_mx8mq()) {
> +		if (cpu_is_mx6()) {
> +			dis_fuse = OCOTP_DIR_BT_DIS;
> +		} else {
> +			dis_fuse = MX8MQ_OCOTP_DIR_BT_DIS;
> +		}

here.

Regards,
  Marco

> +		ret = imx_ocotp_write_field(dis_fuse, 1);
> +		if (ret < 0)
> +			return ret;
> +	}
>  
> -	return imx_ocotp_write_field(OCOTP_SEC_CONFIG_1, 1);
> +	sec_fuse = get_sec_config_fuse();
> +
> +	return imx_ocotp_write_field(sec_fuse, 1);
>  }
>  
>  static int imx_hab_device_locked_down_ocotp(void)
>  {
>  	int ret;
> +	uint32_t fuse;
>  	unsigned int v;
>  
> -	ret = imx_ocotp_read_field(OCOTP_SEC_CONFIG_1, &v);
> +	fuse = get_sec_config_fuse();
> +
> +	ret = imx_ocotp_read_field(fuse, &v);
>  	if (ret < 0)
>  		return ret;
>  
> -- 
> 2.39.2
> 
> 
> 


