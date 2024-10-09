Delivery-date: Wed, 09 Oct 2024 07:41:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPS0-002723-3A
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 07:41:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPS0-0004IU-C0
	for lore@pengutronix.de; Wed, 09 Oct 2024 07:41:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:Cc:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JUae4QG0himshjB48eqm52X7NILniaTASeadWFmTHO8=; b=PBT8w6ffjRS3cN2Cj1DHPDcBVD
	8TQHXqwaGHMMwamUvlynsPIMcdL/2COLGG0fKiwa0/Bn9eapvlr/DU1PmexXUH3/q/r9A6jzdJikU
	FNOMDqWu2J9TqBnU/4ieo69+Uddmden6xaLCaTMGnwJeHgAI2lSDagb2R9vHS7x3Ek+CKKyswhPPz
	ZESgVMCjgdQvxwVI9t4/SFJqkWkB4YMmo+s5W5Byke36+22SfvySk7I2qOR1gpQgW/cwmrywJ3Mcb
	nAZNxuOIT5t9sxBqAQpl8Z8pYGSYXdC9h7Fmq/RG0KQD5GjNmqVuQ32sEuVdEbGGIz2pijdG9xuTt
	vjI8lY2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syPRM-00000007ykh-2T66;
	Wed, 09 Oct 2024 05:40:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syPQh-00000007ya7-1PVq
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 05:40:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPQd-000432-Ha; Wed, 09 Oct 2024 07:40:07 +0200
Message-ID: <97bbc7a6-5014-43ed-a253-792faf7570a8@pengutronix.de>
Date: Wed, 9 Oct 2024 07:40:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michael Grzeschik <m.grzeschik@pengutronix.de>,
 barebox@lists.infradead.org
References: <20241008231228.2106435-1-m.grzeschik@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20241008231228.2106435-1-m.grzeschik@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_224011_444700_3F2183E6 
X-CRM114-Status: GOOD (  22.27  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: core: add write_reliable device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Michael,

On 09.10.24 01:12, Michael Grzeschik wrote:
> Add mmcX.write_reliable parameter so it can be queried by
> scripts and board code.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  drivers/mci/mci-core.c | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 48a3df9ec9..1b7526abfa 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -2680,6 +2680,22 @@ static int mci_get_partition_setting_completed(struct mci *mci)
>  	return ret;
>  }
>  
> +static int mci_get_write_reliable(struct mci *mci)
> +{
> +	u8 *ext_csd;
> +	int ret;
> +
> +	ext_csd = mci_get_ext_csd(mci);
> +	if (IS_ERR(ext_csd))
> +		return PTR_ERR(ext_csd);
> +
> +	ret = ext_csd[EXT_CSD_WR_REL_SET] & 0x1f;
> +
> +	dma_free(ext_csd);

I know that this is copied off mci_get_partition_setting_completed(),
but why does it need to call mci_get_ext_csd()? Can't we just access
prepopulated mci->ext_csd?

> +
> +	return ret;
> +}> +
>  /**
>   * Probe an MCI card at the given host interface
>   * @param mci MCI device instance
> @@ -2796,6 +2812,13 @@ static int mci_card_probe(struct mci *mci)
>  				"Failed to determine EXT_CSD_PARTITION_SETTING_COMPLETED\n");
>  		else
>  			dev_add_param_bool_fixed(&mci->dev, "partitioning_completed", ret);
> +
> +		ret = mci_get_write_reliable(mci);
> +		if (ret < 0)
> +			dev_dbg(&mci->dev,
> +				"Failed to determine EXT_CSD_WR_REL_SET\n");
> +		else
> +			dev_add_param_bool_fixed(&mci->dev, "write_reliable", ret);

Wouldn't it be confusing for the write reliability setting to remain constant?

For example a script may want to check that the value is not set before running,
but if it's set at runtime, we want the script to notice that on the second run
without having to reset.

I know this would apply to partitioning_completed too.

What do you think?

Cheers,
Ahmad

>  	}
>  
>  	mci_parse_cid(mci);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


