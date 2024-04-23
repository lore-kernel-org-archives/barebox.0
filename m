Delivery-date: Tue, 23 Apr 2024 08:53:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzA1f-00CYhW-35
	for lore@lore.pengutronix.de;
	Tue, 23 Apr 2024 08:53:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzA1f-00015V-4l
	for lore@pengutronix.de; Tue, 23 Apr 2024 08:53:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=062NkxmmizP2ghL+sfbpWTxpSsZ9dS7m60JQq/KYFLg=; b=2qVKOmbOsvfBRq6lF2aPEZmMAe
	Yn2lYZc+WFI+I0vWiu7G+efjnxL3zDGaFuKPXswinpLE/mn+5/EpYRE7qS9SCQCjVRdHF6AJJZZvo
	9I6iDlJfCg71Sr0UogS8nP4iZ9gxgc74gZICYmqQnBg3cYDmJ9B3t+rV3MRQjzRWDaiW14BZXV09u
	K4jYdfFryQvA3a4yzBN3fzcd3bgdFn3UtgPuM4ejX2XZF57d4299nr3HP93pFpMYGEr5Wkr0K6OAG
	oGYP8oTffOKEyZP/y+6O62wlZT+NXkAi5H2+OTY6+UOt3RYv05N25oAW4JHst07oSpHRG3um1umcP
	ChoZyZXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzA1D-0000000GBuz-1Dua;
	Tue, 23 Apr 2024 06:52:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzA19-0000000GBts-1jKC
	for barebox@lists.infradead.org;
	Tue, 23 Apr 2024 06:52:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzA18-0000xG-2J; Tue, 23 Apr 2024 08:52:38 +0200
Message-ID: <1da89dfd-2ce1-4394-9354-a9384804fc6f@pengutronix.de>
Date: Tue, 23 Apr 2024 08:52:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, str@pengutronix.de, mtr@pengutronix.de
References: <20240423062206.1518464-1-a.fatoum@pengutronix.de>
 <ZidY2gPIldO_pfIk@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZidY2gPIldO_pfIk@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_235239_485603_FB492F09 
X-CRM114-Status: GOOD (  22.43  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] mci: core: fix fallback when eMMC DDR52 is not
 possible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23.04.24 08:44, Sascha Hauer wrote:
> On Tue, Apr 23, 2024 at 08:22:04AM +0200, Ahmad Fatoum wrote:
>> mci_mmc_select_hs_ddr() will try DDR52 and if that fails, revert to
>> SDR operation. In that case, it returns the bus width, which would
>> be forwarded as if it were an error code:
>>
>>   WARNING: mmc2: Card's startup fails with 3
>>
>> Fix this by translating successful return values to 0 in
>> mci_startup_mmc().
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/mci/mci-core.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
>> index 1d383e6449e9..57b4c5b99c9c 100644
>> --- a/drivers/mci/mci-core.c
>> +++ b/drivers/mci/mci-core.c
>> @@ -1566,7 +1566,7 @@ static int mci_startup_mmc(struct mci *mci)
>>  		}
>>  	}
>>  
>> -	return ret;
>> +	return ret >= MMC_BUS_WIDTH_1 ? 0 : ret;
>>  }
> 
> Can we do it like below instead? It makes clear where a MMC_BUS_WIDTH_x
> return value is expected.

mci_mmc_select_hs_ddr() may return MMC_BUS_WIDTH_*, which isn't addressed
by your patch.

> 
> Sascha
> 
> 
> ----------------------------------8<---------------------------
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 083d2f4ed1..da892a5f84 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1558,8 +1558,12 @@ static int mci_startup_mmc(struct mci *mci)
>  
>  		/* find out maximum bus width and then try DDR if supported */
>  		ret = mci_mmc_select_bus_width(mci);
> -		if (ret > MMC_BUS_WIDTH_1 && mci->tran_speed == 52000000)
> -			ret = mci_mmc_select_hs_ddr(mci);
> +		if (ret > MMC_BUS_WIDTH_1) {
> +			ret = 0;
> +
> +			if (mci->tran_speed == 52000000)
> +				ret = mci_mmc_select_hs_ddr(mci);
> +		}
>  
>  		if (ret < 0) {
>  			dev_warn(&mci->dev, "Changing MMC bus width failed: %d\n", ret);
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



