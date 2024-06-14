Delivery-date: Fri, 14 Jun 2024 13:58:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI5ZF-005uaC-1c
	for lore@lore.pengutronix.de;
	Fri, 14 Jun 2024 13:58:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI5ZE-0003qq-Ov
	for lore@pengutronix.de; Fri, 14 Jun 2024 13:58:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2uNdkBbA46Z0G3C+orWqk1lwrXXD2L2wZeK4E27Tq/4=; b=VIRh1sQvsE5ctILeHKfuRDkZ33
	rMypvV7VZGfVRhyIovXrM50bksFesNnMCRGJn483g4A7s1Ze7y+MAwORAz0xd4kEw3boFQbrIe42T
	O0vmuNMCW2JJY521E3TDe9vkqmsSj9NnCLDcAwxKJdezFn47RYqPBsr/Fb059WgjWRW7wafkpZgTV
	+aTRQYwsjvpW7k+sLilsae9CQ/1CYB/x24XzORC+3VkDyqdhQ0SW7qebj9w2Ricct63JMyZfQ8WDf
	HVLygTuqXMxsJQ/Kpa8vGiKlqtsi/mVVvlNFw/YeVP6pgXAjQhTouCfKayFvOznDrGzDcc/gU/Vk1
	p8dxMcOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI5Ya-00000002fJz-3wRc;
	Fri, 14 Jun 2024 11:57:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI5YX-00000002fJT-2t0K
	for barebox@lists.infradead.org;
	Fri, 14 Jun 2024 11:57:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sI5YW-0003m4-7X; Fri, 14 Jun 2024 13:57:20 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sI5YV-002G7U-RN; Fri, 14 Jun 2024 13:57:19 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sI5YV-00APz3-2J;
	Fri, 14 Jun 2024 13:57:19 +0200
Date: Fri, 14 Jun 2024 13:57:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZmwwHwTSqpVuMSOv@pengutronix.de>
References: <20240613130944.264396-1-m.felsch@pengutronix.de>
 <20240613130944.264396-5-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240613130944.264396-5-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_045721_748661_A0900007 
X-CRM114-Status: GOOD (  30.63  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 5/9] i.MX: HAB: add imx_hab_revoke_key support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jun 13, 2024 at 03:09:40PM +0200, Marco Felsch wrote:
> Add an helper to revoke an i.MX SRK key. At the moment the helper
> supprts i.MX8M devices only, but adding support for other SoCs can be
> done easily by providing the .revoke_key() hook.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/hab/hab.c                | 45 ++++++++++++++++++++++++++++++++
>  include/hab.h                    |  6 +++++
>  include/mach/imx/ocotp-fusemap.h |  1 +
>  3 files changed, 52 insertions(+)
> 
> diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
> index 28a091841a69..e21a3c3acf81 100644
> --- a/drivers/hab/hab.c
> +++ b/drivers/hab/hab.c
> @@ -231,6 +231,27 @@ static int imx8m_hab_device_locked_down_ocotp(void)
>  	return v;
>  }
>  
> +static int imx8m_hab_revoke_key_ocotp(unsigned key_idx)
> +{
> +	int ret;
> +
> +	/* Prohibit revocation of last possible key */
> +	if (key_idx >= 4)
> +		return -EINVAL;
> +
> +	ret = imx_ocotp_srk_revoke_locked();
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Return -EINVAL in case the SRK_REVOKE write is locked */
> +	if (ret == 1)
> +		return -EINVAL;
> +
> +	ret = imx_ocotp_write_field(MX8M_OCOTP_SRK_REVOKE, BIT(key_idx));
> +
> +	return ret;
> +}
> +
>  struct imx_hab_ops {
>  	int (*write_srk_hash)(const u8 *srk, unsigned flags);
>  	int (*read_srk_hash)(u8 *srk);
> @@ -238,6 +259,7 @@ struct imx_hab_ops {
>  	int (*lockdown_device)(unsigned flags);
>  	int (*device_locked_down)(void);
>  	int (*print_status)(void);
> +	int (*revoke_key)(unsigned key_idx);
>  };
>  
>  static struct imx_hab_ops imx_hab_ops_iim = {
> @@ -265,6 +287,7 @@ static struct imx_hab_ops imx8m_hab_ops_ocotp = {
>  	.device_locked_down = imx8m_hab_device_locked_down_ocotp,
>  	.permanent_write_enable = imx_hab_permanent_write_enable_ocotp,
>  	.print_status = imx8m_hab_print_status,
> +	.revoke_key = imx8m_hab_revoke_key_ocotp,
>  };
>  
>  static int imx_ahab_write_srk_hash(const u8 *__newsrk, unsigned flags)
> @@ -536,3 +559,25 @@ static int init_imx_hab_print_status(void)
>  	return 0;
>  }
>  postmmu_initcall(init_imx_hab_print_status);
> +
> +int imx_hab_revoke_key(unsigned key_idx, unsigned flags)

Are you anticipating more flags? If not, should we better use a boolean
flag for now?

Otherwise it's not really clear which of the IMX_SRK_* flags is used by
which function.

Sascha


> +{
> +	struct imx_hab_ops *ops = imx_get_hab_ops();
> +	int ret;
> +
> +	if (!ops || !ops->revoke_key)
> +		return -ENOSYS;
> +
> +	if (flags & IMX_SRK_REVOKE_KEY_PERMANENT) {
> +		ret = ops->permanent_write_enable(1);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	ret = ops->revoke_key(key_idx);
> +
> +	if (flags & IMX_SRK_REVOKE_KEY_PERMANENT)
> +		ops->permanent_write_enable(0);
> +
> +	return ret;
> +}
> diff --git a/include/hab.h b/include/hab.h
> index 2cef3841d149..fd32bff15ef8 100644
> --- a/include/hab.h
> +++ b/include/hab.h
> @@ -42,6 +42,11 @@ static inline int habv4_get_state(void)
>   * fuses so that the key hash can not be modified.
>   */
>  #define IMX_SRK_HASH_WRITE_LOCK		BIT(2)
> +/*
> + * Revoke the SRK key permanently, without the flag only shadow registers are
> + * written.
> + */
> +#define IMX_SRK_REVOKE_KEY_PERMANENT	BIT(3)
>  
>  bool imx_hab_srk_hash_valid(const void *buf);
>  int imx_hab_write_srk_hash(const void *buf, unsigned flags);
> @@ -51,5 +56,6 @@ int imx_hab_read_srk_hash(void *buf);
>  int imx_hab_lockdown_device(unsigned flags);
>  int imx_hab_device_locked_down(void);
>  int imx_hab_print_status(void);
> +int imx_hab_revoke_key(unsigned key_idx, unsigned flags);
>  
>  #endif /* __HABV4_H */
> diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
> index c4f94e61e8f8..e6fa96b40ba9 100644
> --- a/include/mach/imx/ocotp-fusemap.h
> +++ b/include/mach/imx/ocotp-fusemap.h
> @@ -57,5 +57,6 @@
>  #define MX8M_OCOTP_SRK_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(9) | OCOTP_WIDTH(1))
>  #define MX8M_OCOTP_SEC_CONFIG_1		(OCOTP_WORD(0x470) | OCOTP_BIT(25) | OCOTP_WIDTH(1))
>  #define MX8MQ_OCOTP_DIR_BT_DIS		(OCOTP_WORD(0x470) | OCOTP_BIT(27) | OCOTP_WIDTH(1))
> +#define MX8M_OCOTP_SRK_REVOKE		(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(4))
>  
>  #endif /* __MACH_IMX_OCOTP_FUSEMAP_H */
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


