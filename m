Delivery-date: Wed, 23 Aug 2023 18:33:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYqnI-006Pj6-1h
	for lore@lore.pengutronix.de; Wed, 23 Aug 2023 18:33:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYqnF-0005VG-Gk
	for lore@pengutronix.de; Wed, 23 Aug 2023 18:33:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g/4tDRLPK+IQXvxAdBpPDAp9Ubtydf7PzVjQSmSABE0=; b=kNSClh2nhlmkpW9Kr+A9xgrwiZ
	jYr7tg+wCj7+PsurnhFpcOkJQMdmPYsOFwx1kP+tjeIwBK/c1bmIKdF0/GgcJo0ngKl2166E/ZEs9
	TY+KSYPYD3BDav0+I0TTVk8lmW4DZnz2lgrnmVa6abKBn/6bbywJbT5CXd9vUks/C3yEzRe7+Lbas
	zELSfIexHM0nFgbTghwSMVAF/N5u84iQloROA8u1OLhC99OOjwm4K4EP5uEPJpRQ3spNbyUp3aPlO
	RyLuLi7G2rRZc5Ti8nvgKsVumhJc1HeHOZpLbDFM7yTScFwCTToTh9p8sPcPSewf5dYYWle5Iwsti
	2TJuA+iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYqmC-0014l2-2b;
	Wed, 23 Aug 2023 16:32:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYqm8-0014k8-2a
	for barebox@lists.infradead.org;
	Wed, 23 Aug 2023 16:32:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qYqm7-0005R8-Ax; Wed, 23 Aug 2023 18:32:07 +0200
Message-ID: <a88e51c3-d19e-931a-e1c1-51d3ed292f5e@pengutronix.de>
Date: Wed, 23 Aug 2023 18:32:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org
References: <5977114.lOV4Wx5bFT@n95hx1g2> <4518678.LvFx2qVVIh@n95hx1g2>
 <d33ac296-d6fd-6122-b8e2-0e0cfe2b09a7@pengutronix.de>
 <2167506.irdbgypaU6@n95hx1g2>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <2167506.irdbgypaU6@n95hx1g2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_093208_837419_A7377162 
X-CRM114-Status: GOOD (  24.34  )
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

On 23.08.23 18:30, Christian Eggers wrote:
> Hello Ahmad,
> 
> I forgot to mention that I still use barebox-2021.10. In this version,
> regulator_get_voltage() returned an error code. After applying the missing
> commit, I works find.

I see. I need not tell you though that latest is greatest and all that ;)

> 
> Maybe I could add the vf610_adc driver (works for i.MX6 series) to the
> upstream barebox later ...

Yes, might be useful for those with 6ul/6sx. 

Cheers,
Ahmad

> 
> regards,
> Christian
> 
> On Wednesday, 23 August 2023, 18:25:05 CEST, Ahmad Fatoum wrote:
>> Hello Christian,
>>
>>
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
> On 23.08.23 17:05, Christian Eggers wrote:
>> > Seems that I found the answer myself:
>> >
>> > https://git.pengutronix.de/cgit/barebox/commit/?id=d353ffd5c6e6d4cee6eee72726125c965a0814f0
>>
>> (y).
>>
>> Did you run into any problems at runtime?
>>
>> Cheers,
>> Ahmad
>>
>> >
>> > regards,
>> > Christian
>> >
>> > On Wednesday, 23 August 2023, 16:53:04 CEST, Christian Eggers wrote:
>> >> Hi Ahmad,
>> >>
>> >> I am currently porting the vf610_adc driver from Linux to Barebox.
>> >> Must thing can be done similar as for the imx7_adc driver.
>> >>
>> >> I have one question about the reference voltage:
>> >>
>> >> static int imx7d_adc_enable(struct imx7d_adc *info)
>> >> {
>> >> ...
>> >> ret = regulator_get_voltage(info->vref);
>> >> ...
>> >> }
>> >>
>> >> What type of regulator do you use? I have declared a
>> >> fixed regulator in my device tree:
>> >>
>> >> reg_adc_vref_3v3: regulator-3v3-adc {
>> >> compatible = "regulator-fixed";
>> >> regulator-name = "vref-3v3";
>> >> regulator-min-microvolt = <3300000>;
>> >> regulator-max-microvolt = <3300000>;
>> >> };
>> >>
>> >> &adc2 {
>> >> pinctrl-names = "default";
>> >> pinctrl-0 = <&pinctrl_adc2>;
>> >> vref-supply = <&reg_adc_vref_3v3>;
>> >> ...
>> >> };
>> >>
>> >> But it looks like the fixed regulator driver in Barebox
>> >> doesn't support reading the voltage (the Linux driver
>> >> reports the value from "regulator-min-microvolt")?
>> >>
>> >> regards,
>> >> Christian
>> >>
>> >>
>> >
>> >
>> >
>> >
>> > _______________________________________________________​
>> > Christian
>> > Eggers
>> >
>> > Software Engineer
>> > ​
>> >
>> > ARRI
>> > Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
>> >
>> > Arriweg 17 ,
>> > 83071
>> > Stephanskirchen
>> >
>> > www.arri.com
>> >
>> > <http://www.arri.com/>
>> > +49 8036 3009-3118 <tel:+49%208036%203009-3118>
>> >
>> >
>> > CEggers@arri.de <mailto:CEggers@arri.de>
>> >
>> >
>> > ​
>> >
>> > CCM1 Camera Control Monitor <https://www.arri.com/en/camera-systems/cameras/ccm-1>
>> > Get all the latest information from www.arri.com <https://www.arri.com/>, Facebook <https://www.facebook.com/TeamARRI>, Twitter <https://twitter.com/ARRIChannel>, Instagram <https://www.instagram.com/arri/>, LinkedIn <https://www.linkedin.com/company/arri> and YouTube <https://www.youtube.com/user/ARRIChannel>.
>> >
>> > Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
>> > Sitz: München ‑ Registergericht: Amtsgericht München ‑ Handelsregisternummer: HRA 57918
>> > Persönlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
>> > Sitz: München ‑ Registergericht: Amtsgericht München ‑ Handelsregisternummer: HRB 54477
>> > Geschäftsführer: Dr. Matthias Erb (Chairman); Lars Weyer; Stephan Schenk; Walter Trauninger
>> >
>> > ​
>> >
>>
>>
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



