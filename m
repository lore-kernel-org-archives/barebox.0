Delivery-date: Tue, 02 May 2023 11:18:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm9m-002AkB-8D
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:18:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm9k-000323-0u
	for lore@pengutronix.de; Tue, 02 May 2023 11:18:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=98oAMy7CisS/EiznBLJfvNEe5wkngOsfXbKLC9VAQNo=; b=LpDIgq05rzOIPginEbNaSlCnK3
	CU1is2PGvPcQLQOJYr/ECRlRoQa8ZhFEtEqqsmV35EbtWpPbhRnqUNHuOFIqiVaCVlHkOwxF8RI0Z
	9ThfNCugW2sJq19xknchHP68Fs5Eyv/liEgrk3wcZ0FUJoLYjrJcKerEwKJ8QZeSUlBuj7Vv9Niti
	52faYdBJwQmuRzaezogdkecc43QPd9Ymv2lSAyUcbQx4cob6C6nZ7kkmNoIQnMlE03HhpzB3JfdG4
	dQ2+yiDfo2BZ5fyq4HoR5GYDrbZBULzmGNDcFeSW8XWC7VZZ7dr1ZimV2ouDii36qQiD3LIARguGv
	NGZ4agfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm8s-000ki1-0F;
	Tue, 02 May 2023 09:17:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm8o-000kgh-1v
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:17:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ptm8l-0002t6-QS; Tue, 02 May 2023 11:17:43 +0200
Message-ID: <52edeca2-edbb-0a55-c9fc-1555200102d5@pengutronix.de>
Date: Tue, 2 May 2023 11:17:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230502091419.2551228-1-s.hauer@pengutronix.de>
 <20230502091419.2551228-7-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230502091419.2551228-7-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021746_632446_7268F443 
X-CRM114-Status: GOOD (  22.99  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 06/12] ARM: versatile: Use smc91c111 from device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.05.23 11:14, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/versatile/versatilepb.c |  7 -------
>  drivers/net/smc91111.c                  | 16 +++++++++++-----
>  include/platform_data/eth-smc91111.h    |  1 -
>  3 files changed, 11 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
> index 0ea397d3cb..8079ade9a5 100644
> --- a/arch/arm/boards/versatile/versatilepb.c
> +++ b/arch/arm/boards/versatile/versatilepb.c
> @@ -39,15 +39,8 @@ static int vpb_console_init(void)
>  }
>  console_initcall(vpb_console_init);
>  
> -static struct smc91c111_pdata net_pdata = {
> -	.qemu_fixup = 1,
> -};
> -
>  static int vpb_devices_init(void)
>  {
> -	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL, VERSATILE_ETH_BASE,
> -			64 * 1024, IORESOURCE_MEM, &net_pdata);
> -
>  	armlinux_set_architecture(MACH_TYPE_VERSATILE_PB);
>  
>  	return 0;
> diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
> index 89195fc826..46faf385f9 100644
> --- a/drivers/net/smc91111.c
> +++ b/drivers/net/smc91111.c
> @@ -440,7 +440,6 @@ struct smc91c111_priv {
>  	struct mii_bus miibus;
>  	struct accessors a;
>  	void __iomem *base;
> -	int qemu_fixup;
>  	unsigned shift;
>  	int version;
>  	int revision;
> @@ -1048,7 +1047,8 @@ static int smc91c111_eth_open(struct eth_device *edev)
>  	if (ret)
>  		return ret;
>  
> -	if (priv->qemu_fixup && edev->phydev->phy_id == 0x00000000) {
> +	if (of_machine_is_compatible("arm,versatile-pb") ||
> +	    of_machine_is_compatible("arm,versatile-ab")) {
>  		struct phy_device *dev = edev->phydev;
>  
>  		dev->speed = SPEED_100;
> @@ -1451,7 +1451,6 @@ static int smc91c111_probe(struct device *dev)
>  	if (dev->platform_data) {
>  		struct smc91c111_pdata *pdata = dev->platform_data;
>  
> -		priv->qemu_fixup = pdata->qemu_fixup;
>  		priv->shift = pdata->addr_shift;
>  		if (pdata->bus_width == 16)
>  			priv->a = access_via_16bit;
> @@ -1489,8 +1488,15 @@ static int smc91c111_probe(struct device *dev)
>  	return 0;
>  }
>  
> +static __maybe_unused struct of_device_id imx_fec_dt_ids[] = {

smc91c111_dt_ids

> +	{
> +		.compatible = "smsc,lan91c111",
> +	},
> +};
> +
>  static struct driver smc91c111_driver = {
> -        .name  = "smc91c111",
> -        .probe = smc91c111_probe,
> +	.of_compatible = DRV_OF_COMPAT(imx_fec_dt_ids),
> +	.name  = "smc91c111",
> +	.probe = smc91c111_probe,
>  };
>  device_platform_driver(smc91c111_driver);
> diff --git a/include/platform_data/eth-smc91111.h b/include/platform_data/eth-smc91111.h
> index 72193bf972..ddc28438e3 100644
> --- a/include/platform_data/eth-smc91111.h
> +++ b/include/platform_data/eth-smc91111.h
> @@ -8,7 +8,6 @@
>  #define __SMC91111_H__
>  
>  struct smc91c111_pdata {
> -	int qemu_fixup;
>  	int addr_shift;
>  	int bus_width;
>  	bool word_aligned_short_writes;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



