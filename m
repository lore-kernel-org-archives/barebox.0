Delivery-date: Tue, 19 Dec 2023 17:22:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFcrl-004p5O-2R
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 17:22:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFcrl-0001sx-5Z
	for lore@pengutronix.de; Tue, 19 Dec 2023 17:22:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5vadYiKjQtFzH7s66Z+PMc5xWeofhigQmhrbdOU68oo=; b=imseffdnnEwOqoiCkkJdbs3mCb
	xaWuUSXkgJKsFXZrd6tj178DkUs9G+sEzkZLga48v79GC0jpXQjo2SUO8uzpjpcReLzs0uLJRVPOn
	frorrFX7U2ZdVj6CUIu3VZs69EH6HewXsp5sXm2BDROF4en75ZZaO6IUIEnKHm08aDq/rEGJ5HLgu
	khDr61PtyYo8MOuezbCmppZtNqbPEJWO+Az0h4MAW6xgwR/ysiL8J7w/wO7H7MUD4GYhEvJ0tr/dh
	zICrVN5GLb1JQ5k6Fpe3taZBJBJg+dVHfzji8AWLhB25YfgvYwSBxAgfdLe8/9PIqeWwBX2oCmksR
	oWZ1qP6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFcqk-00EfRg-0R;
	Tue, 19 Dec 2023 16:21:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFcqg-00EfQl-0z
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 16:21:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rFcqd-0001R7-Dy; Tue, 19 Dec 2023 17:21:35 +0100
Message-ID: <aec171fa-98b8-4dcd-9594-36175a66c072@pengutronix.de>
Date: Tue, 19 Dec 2023 17:21:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
References: <20231219161135.1388398-1-bst@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231219161135.1388398-1-bst@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_082138_339206_8BDCAFC5 
X-CRM114-Status: GOOD (  20.34  )
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
Subject: Re: [PATCH] i2c: add pmic_reg_read() for PBL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Bastian,

On 19.12.23 17:11, Bastian Krause wrote:
> Add a common PMIC read function to PBL which allows easy porting of
> U-Boot's pmic_reg_read() in lowlevel board code.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  include/pbl/pmic.h | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/include/pbl/pmic.h b/include/pbl/pmic.h
> index 0f882c5649d..bd0583370ec 100644
> --- a/include/pbl/pmic.h
> +++ b/include/pbl/pmic.h
> @@ -9,6 +9,27 @@ struct pmic_config {
>  	u8 val;
>  };
>  
> +static void pmic_reg_read(struct pbl_i2c *i2c, int addr, u8 reg, void *buf)

This should be static inline to avoid warnings for boards that don't use it.

> +{
> +	int ret;
> +	struct i2c_msg msg[] = {
> +		{
> +			.addr = addr,
> +			.buf = &reg,
> +			.len = 1,
> +		}, {
> +			.addr = addr,
> +			.flags = I2C_M_RD,
> +			.buf = buf,

U-Boot has buf of type u32 *. In your barebox implementation, only the
first byte is written, so this leaves 3 bytes potentially uninitialized.

You likely want to change void *buf to u32 *val and then

  u8 buf[1];
  /* i2c_xfer... */
  *val = buf[0];

> +			.len = 1,
> +		},
> +	};
> +
> +	ret = pbl_i2c_xfer(i2c, msg, ARRAY_SIZE(msg));
> +	if (ret != ARRAY_SIZE(msg))
> +		pr_err("Failed to read from pmic@%x: %d\n", addr, ret);
> +}

Cheers,
Ahmad

> +
>  static void pmic_reg_write(struct pbl_i2c *i2c, int addr, u8 reg, u8 val)
>  {
>  	int ret;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



