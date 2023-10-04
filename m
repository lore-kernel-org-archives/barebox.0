Delivery-date: Wed, 04 Oct 2023 09:37:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnwRM-004cKP-BC
	for lore@lore.pengutronix.de; Wed, 04 Oct 2023 09:37:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnwRK-0005A4-DK
	for lore@pengutronix.de; Wed, 04 Oct 2023 09:37:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DiPkc77ox1CTHazY5AE9DEND3mlvXv/7YuB59IX2RSk=; b=Q2bRDa4n5bs3EZUYgR+fMaILFp
	9Rwult+HOhRRNCqTCNAAr/pbr6sixRk5hqQG8xdkbQxkU6vIltQXKEImVivBuAhS8y/fZ/sF5GjZe
	3lKs2QWcd0YriYuQM3yNtTigB5X93I4OM++S0mLJ8X2W7KpY+00XszJnOOlyFLT3P6y+gRz1UveL5
	0aVAa+oNk3Y8Rwz6pa6auMT1Uu3t6v2Bt3+k0XL/RMp+btjNpdH/KHr0N+elY1S7qx9X8FkrqsmpG
	ZsJJRkbC3+OCQYVwEpdEoxc4cHIjfXhChqU5rnefV5VpTIjyRbcBY5BYuCZljc+mvRi2JNe/fk2pB
	NsVdZymA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnwPr-00Gcgk-1U;
	Wed, 04 Oct 2023 07:35:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnwPm-00GcfX-33
	for barebox@lists.infradead.org;
	Wed, 04 Oct 2023 07:35:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qnwPl-0004xP-Im; Wed, 04 Oct 2023 09:35:25 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qnwPl-00AyRi-6Q; Wed, 04 Oct 2023 09:35:25 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qnwPl-00Ciqs-40; Wed, 04 Oct 2023 09:35:25 +0200
Date: Wed, 4 Oct 2023 09:35:25 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231004073525.GH637806@pengutronix.de>
References: <20231002092043.3097587-1-a.fatoum@pengutronix.de>
 <20231002092043.3097587-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231002092043.3097587-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_003526_983928_B1ACC635 
X-CRM114-Status: GOOD (  25.10  )
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

On Mon, Oct 02, 2023 at 11:20:43AM +0200, Ahmad Fatoum wrote:
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

The opening brace should be on the next line.

> +	if (cpu_is_mx6()) {
> +		return OCOTP_SEC_CONFIG_1;
> +	} else {
> +		return MX8M_OCOTP_SEC_CONFIG_1;
> +	}
> +}

Given that the i.MX8M defines have a SoC prefix I would find it more
natural to test with if (cpu_is_mx8m()) instead of if (cpu_is_mx6()).

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

Right now we only support i.MX6 and i.MX8MQ, so this is always true.

Have you considered creating a i.MX8MQ and a i.MX6 specific struct
imx_hab_ops {} entry? Given the amount of if(cpu_is_*()) expressions the
result may look cleaner.

BTW struct imx_hab_ops has a init() function pointer which seems unused.
Could you remove it along the way?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


