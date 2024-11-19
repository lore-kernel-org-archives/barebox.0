Delivery-date: Tue, 19 Nov 2024 12:30:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDMRC-003oFR-1X
	for lore@lore.pengutronix.de;
	Tue, 19 Nov 2024 12:30:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDMRB-0003fv-TP
	for lore@pengutronix.de; Tue, 19 Nov 2024 12:30:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iZwbdMr7XDVhdAK9iVWaFPo00tm0D5Ffp9ePb/9yluI=; b=Eyy2hcTZZBYFDnHAsAJrBBisJu
	EH7+5vWVpeW94qlp2Tj7eqaGPwiLdeptPczHX62GWk9uKw0ocsSRGvYR3NEzRLwpQ27PDKqm8zPaF
	Gs/d9MBc66SFigiv4PiTJtDC4ch9wpdsYqhl/gyVSFGbhTd9bdznVcw89+1acO12zORqYrlISVMXu
	kcg0AOTUIhU5eMGzSj9cm79hOWWW3NM1IgYwlPatdrTPNXBL3a06iolZf6jJboODNLTmI3bpty+3I
	a1FCxLA9/CJqAxCzu7Mjne5mYmepnPFzpaSwneJxzY8tXRiW51V9nFDkifEGpmZ35HQSwyIQIVLTD
	rD+j/JRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDMQi-0000000CDh9-1zyR;
	Tue, 19 Nov 2024 11:30:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDMQf-0000000CDgF-0wED
	for barebox@lists.infradead.org;
	Tue, 19 Nov 2024 11:29:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDMQd-0003WA-7f; Tue, 19 Nov 2024 12:29:55 +0100
Message-ID: <646e3bb7-dca5-4b1b-afb6-39ebce11815b@pengutronix.de>
Date: Tue, 19 Nov 2024 12:29:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefano Manni <stefano.manni@gmail.com>
Cc: barebox@lists.infradead.org
References: <CANn9nbiT8J+irgWYQxiTydNyOiTEiXBo_ZLqdVG1EGpHY9eyOA@mail.gmail.com>
 <ed999cd8-a8e3-4e19-ba7d-924e393945ab@pengutronix.de>
 <CANn9nbjCGMOavMYQ+_WSGvSXYVcvFsi6d4H89LWqYfjFP4Pk6A@mail.gmail.com>
 <eaf67a30-ea57-4d4a-8be8-b72273918956@pengutronix.de>
 <CANn9nbhjc_r+Y2zogX9bgKb=BjvOk2AJc5wa4hYSF=00kAP8zA@mail.gmail.com>
 <55dbe395-08b7-4b72-b2b9-6e2ceee182b5@pengutronix.de>
 <CANn9nbi2HiandQTRiAL7RgFY6f6yUU21vT6iAnZMp7gNg81bFw@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CANn9nbi2HiandQTRiAL7RgFY6f6yUU21vT6iAnZMp7gNg81bFw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_032957_267598_450CA789 
X-CRM114-Status: GOOD (  14.22  )
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
Subject: Re: firmwareload fails for cortex-m7 on imx8mp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Stefano,

On 19.11.24 11:40, Stefano Manni wrote:
> Il giorno mar 19 nov 2024 alle ore 10:03 Ahmad Fatoum
> <a.fatoum@pengutronix.de> ha scritto:
>>
>> I am surprised it works for you in Linux. To get it working with barebox:
>>
>>  1) run iomem and note where your malloc area begins. Set CONFIG_MALLOC_SIZE,
>>     so it starts after 0x90000000
>>
>>  2) Add the following to your DT:
>>
>> &{/reserved-memory} {
>>         rproc_reserved: rproc@80000000 {
>>                 reg = <0 0x80000000 0 0x10000000>;
>>         };
>> };
>>
>> &remoteproc_cm7 {
>>         memory-region = <&rproc_reserved>;
>> };
>>
>> Do you not have an equivalent memory-region definition in your kernel DT?
> 
> Yes, I have. Adding rproc_reserved to barebox as in kernel DT it fixes
> the issue.

Great. :)

>>
>>  3) I found some issues that I just Cc'd you on the fixes for. They may not be
>>     necessary for the simple hello-ddr.elf example though.
> 
> Do you need that I test them?

I have already tested that they don't break anything using the ELF
file you provided, so this is just a heads up if you run into
further problems with different firmware ELF files.

Cheers,
Ahmad

> 
> Thank you.
> Best,
> Stefano
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


