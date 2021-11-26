Delivery-date: Fri, 26 Nov 2021 17:11:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqdou-0000XS-F7
	for lore@lore.pengutronix.de; Fri, 26 Nov 2021 17:11:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqdot-0005B1-FG
	for lore@pengutronix.de; Fri, 26 Nov 2021 17:11:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EXNIk8VLZJkoJ1m/vuwv/Sb5tcoksfSk5OwvAGFJ9bI=; b=em2UzJRz8xgGhDCpR0NLBsV6VE
	d2vc44tg/GIakpZF8pmjzUfv9109HSbzxRK6lZFV0xD5O4paE3DbSknAkYDPOnobdiEpvDk9QqUbD
	MO9qVA5WQvTdCaKJQSSgJjlsNTztMxEjnkZQZt+b3H89fjUX+sJPxx8KssKoxV0n67EHybGANzJFj
	yB915X3yBQ0nQjaDLxoEvhBe8GCJTxbPm+WrqbA4bB/nVaqTZV9VPGrYajzlyynG0fPIqhWRytCcJ
	ARr3dLKXMRndbfJTx1rs3v/yynUqkKF2l7DzQ/lo0FqEEdh/G1d/BJl2rVlSQ0uBR8VeXfX+9M6KI
	6wg8WnQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqdn7-00B4tz-UW; Fri, 26 Nov 2021 16:09:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqdn2-00B4t9-Qq
 for barebox@lists.infradead.org; Fri, 26 Nov 2021 16:09:34 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mqdms-0004nx-Gu; Fri, 26 Nov 2021 17:09:22 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
Cc: David Jander <david@protonic.nl>
References: <20211126133108.3003431-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <efcbb9fd-478b-57d6-b774-17afd3320116@pengutronix.de>
Date: Fri, 26 Nov 2021 17:09:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211126133108.3003431-1-o.rempel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_080932_903895_E217D4C7 
X-CRM114-Status: GOOD (  26.56  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] nvmem: bsec.c: Use SMC_READ_OTP in
 stm32_bsec_read_mac()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Oleksij, David,

On 26.11.21 14:31, Oleksij Rempel wrote:
> From: David Jander <david@protonic.nl>
> 
> TF-A (version >= v2.4?) apparently does not copy all of OTP to shadow
> registers so reading the MAC address area will read all-zeroes.
> Make sure to read the _real_ OTP register in this case.

Thanks for the fix. Linux reads the lowest 32 words of OTP directly from shadow
registers and calls into TF-A for reading shadow memory beyond that, which should
include MAC address (offset 0x39, didn't test though).

It never does READ_OTP, so it seems the TF-A change would affect Linux as well?
It's for sure something we'll need to address in TF-A eventually, but as a bug
fix, this is ok:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>


> Signed-off-by: David Jander <david@protonic.nl>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/nvmem/bsec.c | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
> index d9b38c8414..a31eff7358 100644
> --- a/drivers/nvmem/bsec.c
> +++ b/drivers/nvmem/bsec.c
> @@ -82,20 +82,27 @@ static void stm32_bsec_set_unique_machine_id(struct regmap *map)
>  	machine_id_set_hashable(unique_id, sizeof(unique_id));
>  }
>  
> -static int stm32_bsec_read_mac(struct regmap *map, int offset, u8 *mac)
> +static int stm32_bsec_read_mac(struct bsec_priv *priv, int offset, u8 *mac)
>  {
> -	u8 res[8];
> +	u32 val[2];
>  	int ret;
>  
> -	ret = regmap_bulk_read(map, offset * 4, res, 8);
> +	/* Some TF-A does not copy all of OTP into shadow registers, so make
> +	 * sure we read the _real_ OTP bits here.
> +	 */
> +	ret = bsec_smc(priv, BSEC_SMC_READ_OTP, offset * 4, 0, &val[0]);
> +	if (ret)
> +		return ret;
> +	ret = bsec_smc(priv, BSEC_SMC_READ_OTP, offset * 4 + 4, 0, &val[1]);
>  	if (ret)
>  		return ret;
>  
> -	memcpy(mac, res, ETH_ALEN);
> +	memcpy(mac, val, ETH_ALEN);
>  	return 0;
>  }
>  
> -static void stm32_bsec_init_dt(struct device_d *dev, struct regmap *map)
> +static void stm32_bsec_init_dt(struct bsec_priv *priv, struct device_d *dev,
> +			       struct regmap *map)
>  {
>  	struct device_node *node = dev->device_node;
>  	struct device_node *rnode;
> @@ -118,7 +125,7 @@ static void stm32_bsec_init_dt(struct device_d *dev, struct regmap *map)
>  	rnode = of_find_node_by_phandle(phandle);
>  	offset = be32_to_cpup(prop++);
>  
> -	ret = stm32_bsec_read_mac(map, offset, mac);
> +	ret = stm32_bsec_read_mac(priv, offset, mac);
>  	if (ret) {
>  		dev_warn(dev, "error setting MAC address: %s\n", strerror(-ret));
>  		return;
> @@ -159,7 +166,7 @@ static int stm32_bsec_probe(struct device_d *dev)
>  	if (IS_ENABLED(CONFIG_MACHINE_ID))
>  		stm32_bsec_set_unique_machine_id(map);
>  
> -	stm32_bsec_init_dt(dev, map);
> +	stm32_bsec_init_dt(priv, dev, map);
>  
>  	return 0;
>  }
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

