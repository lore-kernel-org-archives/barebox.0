Delivery-date: Wed, 06 Nov 2024 15:14:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8gnf-005YO4-0E
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 15:14:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8gnf-0004Pb-Iz
	for lore@pengutronix.de; Wed, 06 Nov 2024 15:14:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O9LpvGNR+qE6eDB+5kPcyl+w41Y3sEO2u0QgUkyOUQs=; b=llBcnCfypqJ0PU5m1mKugnXIE8
	gEKWRNwXIMKBton441PA26R8LCM8/aenvi7drjXNhavVymtA5lrtqTJ6xfvpEJcSjn1djyIW9xb7r
	4AaZKi5WoPs8zJcRs2nUUPU1ZDOYmEk2loSHzMeBK4LDWYgsW924RcMlTl+ykXOBtFJK3FlV5zaLQ
	D5yrCUK5OTpW+jSzcaEJ28Tsj6pGFdhLCgKtFw3sQL15rqlZGPgsxL2aqu3Sk2Bjl29O1H85g82cn
	PpK4az+wagHrLzV2v4caGoZ5eCy52yStQX9mTNOd30Q6qqot6HIG/Abd4S3g6zL8Ywi5vO9jXDOCE
	sk+KYOwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8gnD-00000003YbJ-31f1;
	Wed, 06 Nov 2024 14:13:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8gaj-00000003WY2-3k6S
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 14:01:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8gai-0002oO-NK; Wed, 06 Nov 2024 15:01:00 +0100
Message-ID: <d8b41d0f-6716-43f7-b30c-a36800cdb681@pengutronix.de>
Date: Wed, 6 Nov 2024 15:01:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>,
 barebox@lists.infradead.org
Cc: oss-contrib@rtone.fr, Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
References: <20241031092721.763280-1-sebastien.bourdelin@gmail.com>
 <20241031092721.763280-5-sebastien.bourdelin@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241031092721.763280-5-sebastien.bourdelin@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_060101_967886_70106281 
X-CRM114-Status: GOOD (  19.03  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] mci: bcm2835: set timeout value to 100ms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sebastien,

Thanks for your fix.

On 31.10.24 10:27, Sebastien Bourdelin wrote:
> From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
> 
> As mentionned in the Raspberry Pi4 bootrom Changelog [1]:
> "Increase timeout of early SD/EMMC commands to 100ms".
> The BCM2711 SDHCI can take up to 100ms to complete a command.
> 
> Without this change, we had noticed that Barebox sometime stay stucked
> on a timeout error while trying to boot Linux from the eMMC.
> 
> [1] https://github.com/raspberrypi/rpi-eeprom/blob/master/firmware-2711/release-notes.md#2022-03-10---promote-the-2022-03-10-beta-release-to-lateststable
> 
> Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
>  drivers/mci/mci-bcm2835.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
> index cbf99ee7ca..3b086ed22c 100644
> --- a/drivers/mci/mci-bcm2835.c
> +++ b/drivers/mci/mci-bcm2835.c
> @@ -128,6 +128,10 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
>  		block_data |= data->blocksize;
>  	}
>  
> +	/* BCM2xxx SDHCI might take up to 100ms to complete a command */
> +	if (cmd != NULL)
> +		cmd->busy_timeout = 100;
> +
>  	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
>  	if (ret)
>  		return ret;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


