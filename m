Delivery-date: Thu, 27 Jul 2023 08:27:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOuTP-00BmG6-Vb
	for lore@lore.pengutronix.de; Thu, 27 Jul 2023 08:27:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOuTN-0000LE-Kx
	for lore@pengutronix.de; Thu, 27 Jul 2023 08:27:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1jfab8QXH9ttX0xEfYNvahtIw7NqwFRyXshHXIapJH8=; b=O9DL66hUmlT0iajQzlQbcsaI/1
	D+m2BQr2BY8yiBNA741Jpry7RIlYBhCvgYhIg/dNtKZuldlGnNCn7kqVXIS7RVjE4jm163qNm/a8r
	/MqqsWRXwuibjMA3T/uGcQtryg7VJIzYODtKn2196SCtwCA5lCCE1B/QaxSC6MYac/OUWvhcfmTjB
	k1rjy8Mc2ZvMVf9iFFB/WFgPEc5vEnQSnaVMq9zFHHMwpOCdwAiczzb6m1BsKdXD/nX0UODzReVi6
	qIqOw8lwixKvhDKTOfVqm4qfUK7mdpejEpkPG2ca/eWIO3385pgKmT3Ro20YpAleC/3w2Pd0JPOgi
	sLwTBgYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOuSI-00CJcm-2l;
	Thu, 27 Jul 2023 06:26:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOuSF-00CJc5-1Q
	for barebox@lists.infradead.org;
	Thu, 27 Jul 2023 06:26:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qOuSC-0000H6-GW; Thu, 27 Jul 2023 08:26:28 +0200
Message-ID: <32d7716a-2b47-88e8-087d-27c145ca629f@pengutronix.de>
Date: Thu, 27 Jul 2023 08:26:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230726192718.911735-1-a.fatoum@pengutronix.de>
 <20230726192718.911735-3-a.fatoum@pengutronix.de>
 <20230727060502.sy46mutzo4enww3s@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230727060502.sy46mutzo4enww3s@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_232631_501145_0F1FE93D 
X-CRM114-Status: GOOD (  15.11  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] nvmem: ocotp: handle too early calls into ocotp
 driver gracefully
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 27.07.23 08:05, Marco Felsch wrote:
> On 23-07-26, Ahmad Fatoum wrote:
>> HAB code calls into OCOTP driver by relying on a global imx_ocotp
>> variable that's populated on driver probe.
>>
>> For board code that calls a HAB function to early, this may end up
>> dereferencing a NULL pointer, so let's return -EPROBE_DEFER in that
>> case or if deep probe is enabled, just probe the OCOTP directly.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---

>> @@ -497,11 +498,17 @@ static void imx_ocotp_field_decode(uint32_t field, unsigned *word,
>>  	*mask = GENMASK(width, 0);
>>  }
>>  
>> +static int imx_ocotp_ensure_probed(void);
> 
> Nit: Move the function definition here?

Then I'd have to forward-declare imx_ocotp_dt_ids.
I choose to keep the probing stuff together.


>> +static int imx_ocotp_ensure_probed(void)
>> +{
>> +	if (!imx_ocotp && deep_probe_is_supported()) {
>> +		int ret;
>> +
>> +		ret = of_devices_ensure_probed_by_dev_id(imx_ocotp_dt_ids);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>> +	return imx_ocotp ? 0 : -EPROBE_DEFER;
>> +}
>> +

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



