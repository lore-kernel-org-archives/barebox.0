Delivery-date: Wed, 07 May 2025 10:21:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCa1b-0034WN-1j
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 10:21:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCa1b-0001TI-09
	for lore@pengutronix.de; Wed, 07 May 2025 10:21:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XI+NsqlMh39OfffYp8iXi0Bb0fCujs8Fj3NAHxAHUQE=; b=ysbq1WVUUZ5d4P5VMlbht4pyOf
	3C815Cq1M4k9aH6X37vQPmIHoffvHDzpVfpIi/uU2Adof0zbNLmXF953Oje/PCgB2+mKnUSbyODH9
	7EhvtRf0hfLni7u8ajklhb+lHpkaPnjQWvYVIWrCkq6ZTY+ROp+WcxgQh+bwcFUHl+AiDekuTOrsy
	5fmrmw4CtLDMB6t3gx28U0eLpmr1EhPJsfOIojxpHHu6IjDR8RZM2tGX0pN3Tmd3oMJNYoOn0AjM0
	tZJED5FfVOoifkcwWkmmEMn8zh1+ITeCs+VN3cIJLMQLfmhxKcqCoVlhbzvzx+BXbeSZVX/L9GLCb
	vjpf71Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCa0m-0000000Ei8g-3hyR;
	Wed, 07 May 2025 08:20:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCZA2-0000000EWHa-39fY
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 07:25:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCZA0-0006g7-B1; Wed, 07 May 2025 09:25:44 +0200
Message-ID: <8e63db4d-b75e-4185-a867-7b846b69c41b@pengutronix.de>
Date: Wed, 7 May 2025 09:25:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, pza@pengutronix.de
References: <20250427134453.637482-1-a.fatoum@pengutronix.de>
 <aBm_gAU4ITMANfwK@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aBm_gAU4ITMANfwK@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_002546_790168_6D6A2271 
X-CRM114-Status: GOOD (  13.33  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] video: IPUv3-LDB: fix LVDS serial clock
 configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 5/6/25 09:51, Sascha Hauer wrote:
> On Sun, Apr 27, 2025 at 03:44:53PM +0200, Ahmad Fatoum wrote:

>> @@ -189,10 +200,10 @@ static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
>>  		pixclk *= 2;

This multiplication by 2 is only done for the single channel mode.

>>  
>>  	if (dual) {
>> -		imx6q_set_clock(ldb, ipuno, dino, 0, pixclk);
>> -		imx6q_set_clock(ldb, ipuno, dino, 1, pixclk);
>> +		imx6q_set_clock(ldb, ipuno, dino, 0, pixclk * 7, pixclk);
>> +		imx6q_set_clock(ldb, ipuno, dino, 1, pixclk * 7, pixclk);
> 
> I think in dual channel mode we have to maintain a 1:3.5 setting instead
> of 1:7.

That means pixclk for dual channel mode here is already half the value
it would be for single channel, i,e. 1:3.5.

Thanks,
Ahmad

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



