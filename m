Delivery-date: Tue, 19 Apr 2022 15:15:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngni0-007tAT-Sh
	for lore@lore.pengutronix.de; Tue, 19 Apr 2022 15:15:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngnhu-0004xm-VO
	for lore@pengutronix.de; Tue, 19 Apr 2022 15:15:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHVKKy3wMWRJCwK6ysQeaMgxtXHnPDk4Tc2f84kRuEQ=; b=l+zsHjltZAyrYp
	HE3EsmRuEY0QXBLv1nd2xV7a0liD8tWcbfKKx/qBPtujT66K3YcFc8hKhfmpyk9RcIB2PNlugP5SI
	7ekDXFgJ6c97eJmb7BpkujW00O2LVVKqsUD9GtwcdeKlTyLDvSEi4nZBojM/7kVfj4GYykGG++/JT
	qafNXarn2AwD08SEPWfaknOovpHaDZXX23wBlLPb6691odcDQdu0lSZ8nrAXcCZkYMe1mBP5ibfBo
	cdDaIM8S/LnxqCp9sCJ+6mNUA6T9Xu6QeCIwtKjIRm0t3hNoIbuqD47iVL5CWtvxh7HlStO72Ckd7
	8hKYwDQk6ZIrctKHOEHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngneR-003k2H-DE; Tue, 19 Apr 2022 13:12:16 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngmTq-003I6I-76
 for barebox@lists.infradead.org; Tue, 19 Apr 2022 11:57:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=as1cnHSdK6fMROi8HKWmcAwUwWt/WZZJ0LwkZb1mk8g=; b=nrp2pmU1DY8Y89rGaV4g+3BNKK
 tUpvUVddrOgbSaGgKaBqzGgqWfE5rdfJJDp9Nx7FNIePR4rwFWFqzVvcmVN+nDXn7zM5kihU3T7Fk
 7pWPEbPr0Uni8PHjsZZnNnzZeKD2kO/jhRBTqK18K85UJO0XhKMBzAxhqSh+YZ9xAj3GgAQzEdrWC
 by+iqUyT0vMaQxSbpW52c+YELpo6TAe8AsC2/RgGxo3x0LiDXcRBmFm+ghBqBIY3kk6WCJZ8MatiB
 IIF8j/ViGFFAwCgoJ2xfvO7Q/Pd6V2Ry1aUcA6JRfEW4W6xS5OnuEAe0Pp9k6L3Vv/IfYKUKrI6lG
 2XajH4Lw==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:47504
 helo=[192.168.69.84]) by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.95)
 (envelope-from <andrej.picej@norik.com>) id 1ngmTf-008zuH-CA;
 Tue, 19 Apr 2022 13:57:03 +0200
Message-ID: <e144b56b-3faf-fc85-c49f-47f474af9c50@norik.com>
Date: Tue, 19 Apr 2022 13:57:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-GB
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: upstream@phytec.de
References: <20220419083946.151251-1-andrej.picej@norik.com>
 <1ff138b7-0567-3d5a-8dae-400c58180ee1@pengutronix.de>
From: Andrej Picej <andrej.picej@norik.com>
In-Reply-To: <1ff138b7-0567-3d5a-8dae-400c58180ee1@pengutronix.de>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_045714_823720_CA8FC039 
X-CRM114-Status: GOOD (  10.87  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: pbab01: allow USB-OTG port runtime configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 19. 04. 22 11:16, Ahmad Fatoum wrote:
> Hello Andrej,
> 
> On 19.04.22 10:39, Andrej Picej wrote:
>> Since commit a5a4c1d5a3 ("dts: update to v5.13-rc1"), which synced
>> kernel dts, USB-OTG port on phyFLEX board was set to work only in
>> peripheral mode. This has to do with phyFLEX baseboard hardware bug,
>> which prevents correct USB OTG ID pin detection in kernel code.
>>
>> Unlike linux kernel, barebox doesn't support OTG auto-detection mode via
>> ID pin. In barebox, user has to select desired USB mode of operation by
>> setting 'otg.mode' variable. Thus delete 'dr_mode' property from dts to
>> be able to later select USB OTG operating mode at runtime (either host
>> or peripheral).
>>
>> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
>> ---
>>   arch/arm/dts/imx6qdl-phytec-pbab01.dtsi | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
>> index 991c7e4fab..36870facdd 100644
>> --- a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
>> +++ b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
>> @@ -15,6 +15,10 @@
>>   	status = "okay";
>>   };
>>   
>> +&usbotg {
>> +	/delete-property/ dr_mode;
>> +};
> 
> Wouldn't it be better to be explicit and set dr_mode = "otg"?
> It doesn't matter here, but some other USB controllers default
> to "host" in absence of the property, so setting it to "otg"
> will be clearer IMO.
> 

hm...yes, I think you are right. I will fix this and send a v2.

Thanks for your review.

Best regards,
Andrej

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

