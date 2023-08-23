Delivery-date: Wed, 23 Aug 2023 18:26:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYqgn-006PN2-Sq
	for lore@lore.pengutronix.de; Wed, 23 Aug 2023 18:26:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYqgl-0004hq-KJ
	for lore@pengutronix.de; Wed, 23 Aug 2023 18:26:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6NwfqQGPUCOe5br4rfw8cUPX31DZPYox06+GIojw3mE=; b=kCjmXu6g460ktwMgn1ZXKthNTH
	aXK1VOlhQiU7Er+4Hg3I4X+jA3eU1dg7PsY60S8eT4MBM3ALpLfbHw4PdhVkmQTnR9lHNdbHvQajS
	mp/jRP3B+tWGW038/y7JCAICM4irsf/uSdw9CzsTUt0EdVvmZO05yfL9GBM5mL1z9YM0ohm/kgfJH
	ZZxwaTeinWoQv1x4k0PCCcMSE4bRzk4EQ7JlYaNweYjRrQBF44Wn1BDYiB/W85+YC8CDFXPfs6FV8
	t5sFj0ccKFA7SRKH//kW7s9e8NSdAYftzsQY00qprNmcocHLlLKFF1X1cdGClCb1WiisznhLcz+2o
	o+DzTSlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYqfU-00145h-0d;
	Wed, 23 Aug 2023 16:25:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYqfP-00144u-1S
	for barebox@lists.infradead.org;
	Wed, 23 Aug 2023 16:25:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qYqfK-0004RR-Ti; Wed, 23 Aug 2023 18:25:06 +0200
Message-ID: <d33ac296-d6fd-6122-b8e2-0e0cfe2b09a7@pengutronix.de>
Date: Wed, 23 Aug 2023 18:25:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org
References: <5977114.lOV4Wx5bFT@n95hx1g2> <4518678.LvFx2qVVIh@n95hx1g2>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <4518678.LvFx2qVVIh@n95hx1g2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_092511_494726_7243B9D0 
X-CRM114-Status: GOOD (  19.15  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: aiodev: imx7_adc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Christian,

On 23.08.23 17:05, Christian Eggers wrote:
> Seems that I found the answer myself:
> 
> https://git.pengutronix.de/cgit/barebox/commit/?id=d353ffd5c6e6d4cee6eee72726125c965a0814f0

(y).

Did you run into any problems at runtime?

Cheers,
Ahmad

> 
> regards,
> Christian
> 
> On Wednesday, 23 August 2023, 16:53:04 CEST, Christian Eggers wrote:
>> Hi Ahmad,
>>
>> I am currently porting the vf610_adc driver from Linux to Barebox.
>> Must thing can be done similar as for the imx7_adc driver.
>>
>> I have one question about the reference voltage:
>>
>> static int imx7d_adc_enable(struct imx7d_adc *info)
>> {
>> ...
>> ret = regulator_get_voltage(info->vref);
>> ...
>> }
>>
>> What type of regulator do you use? I have declared a
>> fixed regulator in my device tree:
>>
>> reg_adc_vref_3v3: regulator-3v3-adc {
>> compatible = "regulator-fixed";
>> regulator-name = "vref-3v3";
>> regulator-min-microvolt = <3300000>;
>> regulator-max-microvolt = <3300000>;
>> };
>>
>> &adc2 {
>> pinctrl-names = "default";
>> pinctrl-0 = <&pinctrl_adc2>;
>> vref-supply = <&reg_adc_vref_3v3>;
>> ...
>> };
>>
>> But it looks like the fixed regulator driver in Barebox
>> doesn't support reading the voltage (the Linux driver
>> reports the value from "regulator-min-microvolt")?
>>
>> regards,
>> Christian
>>
>>
> 
> 
> 
> 
> _______________________________________________________​
> Christian	 
> 	Eggers
> 
> Software Engineer
> ​
> 
> ARRI
> Arnold & Richter Cine Technik GmbH & Co. Betriebs KG 
> 
> Arriweg 17	, 
> 	83071	 
> 	Stephanskirchen
> 
> www.arri.com 
> 
> <http://www.arri.com/>
> 	+49 8036 3009-3118 <tel:+49%208036%203009-3118>
> 	
> 	
> 	CEggers@arri.de <mailto:CEggers@arri.de>
> 
> 
> ​
> 
> CCM1 Camera Control Monitor <https://www.arri.com/en/camera-systems/cameras/ccm-1>
> Get all the latest information from www.arri.com <https://www.arri.com/>, Facebook <https://www.facebook.com/TeamARRI>, Twitter <https://twitter.com/ARRIChannel>, Instagram <https://www.instagram.com/arri/>, LinkedIn <https://www.linkedin.com/company/arri> and YouTube <https://www.youtube.com/user/ARRIChannel>.
> 
> Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
> Sitz: München ‑ Registergericht: Amtsgericht München ‑ Handelsregisternummer: HRA 57918
> Persönlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
> Sitz: München ‑ Registergericht: Amtsgericht München ‑ Handelsregisternummer: HRB 54477
> Geschäftsführer: Dr. Matthias Erb (Chairman); Lars Weyer; Stephan Schenk; Walter Trauninger
> 
> ​
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



