Delivery-date: Thu, 18 Dec 2025 20:17:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWJV7-00CwSt-0M
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 20:17:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWJV6-00014u-DM
	for lore@pengutronix.de; Thu, 18 Dec 2025 20:17:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tK59YfhUhobfnnvTbkZtdttv3zvHht96XXk4HdsEfA8=; b=hCZtCRPsBaQXygxV5XTMIU13tN
	SsihaShUJrdq+VfosYpz4YoQJJPJERk5kvJlQ3Gghzjkebjkwv7Xkeov0J509Yci18v2pBfH/Yj/b
	FMiJKYhPsBMBvdFGaHM/Xv75UNLBu2RtFPyrWeADAIYN8TR0CqOJqp0nH71OtJ8i7jfh6nWpYLDd4
	22NtRZcA2P+z2LO9B4whx3JB5Xtf3qg3Ja7OEE7kBnvXjDQpHVU8TGvRWUhxvGAUr56aNMAQWhxii
	Tx7tcvPMEchq2AhpUHDXQH5AS4eA3oQUO92zg3H9LqK2eZ/An6aiGo+i23QOUhv5wOAANrijka9ID
	zwyuFYAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWJUe-000000094au-2Bew;
	Thu, 18 Dec 2025 19:16:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWJUb-000000094a8-3nlf
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 19:16:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWJUa-000110-87; Thu, 18 Dec 2025 20:16:52 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWJUa-006Kwb-0C;
	Thu, 18 Dec 2025 20:16:52 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWJUZ-00Ee5a-31;
	Thu, 18 Dec 2025 20:16:51 +0100
Date: Thu, 18 Dec 2025 20:16:51 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20251218191651.6jcpronwwvlk5cdz@pengutronix.de>
References: <20251218-v2025-11-0-topic-imx6-field-return-v1-0-3781143198d6@pengutronix.de>
 <20251218-v2025-11-0-topic-imx6-field-return-v1-2-3781143198d6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251218-v2025-11-0-topic-imx6-field-return-v1-2-3781143198d6@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_111653_969099_E2887349 
X-CRM114-Status: GOOD (  19.25  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] nvmem: ocotp: extend support to query the sticky bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-12-18, Fabian Pflug wrote:
> The i.MX* devices do have an sticky bit which indicates if the
> field-return fuse can be written. Before only support for i.MX8* was
> provided. Extend this for the i.MX6* series.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  drivers/nvmem/ocotp.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
> index 7bca275404..1f74fddb60 100644
> --- a/drivers/nvmem/ocotp.c
> +++ b/drivers/nvmem/ocotp.c
> @@ -294,7 +294,7 @@ static void imx8m_lock_srk_revoke(struct ocotp_priv *priv)
>  	writel(val, priv->base + OCOTP_SW_STICKY);
>  }
>  
> -static bool imx8m_field_return_locked(struct ocotp_priv *priv)
> +static bool imx_field_return_locked(struct ocotp_priv *priv)

Nit: I would mention the rename within the commit message at least.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

>  {
>  	return readl(priv->base + OCOTP_SW_STICKY) & OCOTP_SW_STICKY_FIELD_RETURN_LOCK;
>  }
> @@ -990,6 +990,7 @@ static struct imx_ocotp_data imx6q_ocotp_data = {
>  	.fuse_blow = imx6_fuse_blow_addr,
>  	.fuse_read = imx6_fuse_read_addr,
>  	.ctrl = &ocotp_ctrl_reg_default,
> +	.field_return_locked = imx_field_return_locked,
>  };
>  
>  static struct imx_ocotp_data imx6sl_ocotp_data = {
> @@ -1002,6 +1003,7 @@ static struct imx_ocotp_data imx6sl_ocotp_data = {
>  	.fuse_blow = imx6_fuse_blow_addr,
>  	.fuse_read = imx6_fuse_read_addr,
>  	.ctrl = &ocotp_ctrl_reg_default,
> +	.field_return_locked = imx_field_return_locked,
>  };
>  
>  static struct imx_ocotp_data imx6ul_ocotp_data = {
> @@ -1014,6 +1016,7 @@ static struct imx_ocotp_data imx6ul_ocotp_data = {
>  	.fuse_blow = imx6_fuse_blow_addr,
>  	.fuse_read = imx6_fuse_read_addr,
>  	.ctrl = &ocotp_ctrl_reg_default,
> +	.field_return_locked = imx_field_return_locked,
>  };
>  
>  static struct imx_ocotp_data imx6ull_ocotp_data = {
> @@ -1026,6 +1029,7 @@ static struct imx_ocotp_data imx6ull_ocotp_data = {
>  	.fuse_blow = imx6_fuse_blow_addr,
>  	.fuse_read = imx6_fuse_read_addr,
>  	.ctrl = &ocotp_ctrl_reg_default,
> +	.field_return_locked = imx_field_return_locked,
>  };
>  
>  static struct imx_ocotp_data vf610_ocotp_data = {
> @@ -1063,7 +1067,7 @@ static struct imx_ocotp_data imx8mp_ocotp_data = {
>  	.fuse_read = imx6_fuse_read_addr,
>  	.srk_revoke_locked = imx8m_srk_revoke_locked,
>  	.lock_srk_revoke = imx8m_lock_srk_revoke,
> -	.field_return_locked = imx8m_field_return_locked,
> +	.field_return_locked = imx_field_return_locked,
>  	.ctrl = &ocotp_ctrl_reg_8mp,
>  };
>  
> @@ -1095,7 +1099,7 @@ static struct imx_ocotp_data imx8mm_ocotp_data = {
>  	.fuse_read = imx6_fuse_read_addr,
>  	.srk_revoke_locked = imx8m_srk_revoke_locked,
>  	.lock_srk_revoke = imx8m_lock_srk_revoke,
> -	.field_return_locked = imx8m_field_return_locked,
> +	.field_return_locked = imx_field_return_locked,
>  	.feat = &imx8mm_featctrl_data,
>  	.ctrl = &ocotp_ctrl_reg_default,
>  };
> @@ -1116,7 +1120,7 @@ static struct imx_ocotp_data imx8mn_ocotp_data = {
>  	.fuse_read = imx6_fuse_read_addr,
>  	.srk_revoke_locked = imx8m_srk_revoke_locked,
>  	.lock_srk_revoke = imx8m_lock_srk_revoke,
> -	.field_return_locked = imx8m_field_return_locked,
> +	.field_return_locked = imx_field_return_locked,
>  	.feat = &imx8mn_featctrl_data,
>  	.ctrl = &ocotp_ctrl_reg_default,
>  };
> 
> -- 
> 2.47.3
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


