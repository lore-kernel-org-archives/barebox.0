Delivery-date: Mon, 20 Feb 2023 09:53:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pU1vE-00CYBN-W6
	for lore@lore.pengutronix.de; Mon, 20 Feb 2023 09:53:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pU1vD-0005Ec-Jk
	for lore@pengutronix.de; Mon, 20 Feb 2023 09:53:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KCIilU+LqeK90SNrHxaII/Eq9F0yTBsegT9rDYCFlJE=; b=guJobosCdCAFIb8Rdbxcn8Wf1N
	VALwdqsNu+CkF0gb9tDIXz/CqDdtRF+Kw0oAcyvx9ipoAQ3lxZrrQSDzwQD+y6AIQoeWrz1gRmsdu
	LVjtl3f3DPy0mJwDolIkF3ScgJCNWaw0H+f7hCXOzUT+DdxioRFIkbZ+Wo2n9PscUgwJCnZZ+MJGH
	FmNJP5snQ/XApqza02WxlmbMxgB1YWg6yCJ597kaLy0OCR9/0nz7GZC3TzCcRpMrNu9B7Tpso5mWa
	7JsWwlHBLwTFzZjp47sDdJ8pMsKkxskSzycatWC1dMsWnjFDAKI3fWruFbDcncBfubjvTlToAWJXu
	/HqWHUUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU1tz-003Oc5-Qe; Mon, 20 Feb 2023 08:52:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU1ts-003Oam-3f
	for barebox@lists.infradead.org; Mon, 20 Feb 2023 08:52:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pU1to-0005Ab-Vj; Mon, 20 Feb 2023 09:51:53 +0100
Message-ID: <c063a72c-94df-a545-0b9f-f97a9ba04564@pengutronix.de>
Date: Mon, 20 Feb 2023 09:51:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
 <20230220084809.f7xcbqzwbz5jzsd6@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230220084809.f7xcbqzwbz5jzsd6@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_005156_347721_12418407 
X-CRM114-Status: GOOD (  14.97  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 00/20] dts: avoid DT breakage new fancy DTC v1.7.0
 syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 20.02.23 09:48, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 23-02-17, Ahmad Fatoum wrote:
>> The fresh v1.7.0 release of the device tree compiler now contains
>> fancy new syntax:
>>
>>   &{i2c1/at24@50} {
>> 	partitions {
>> 		/* something */
>> 	};
>>   };
>>
>> instead of &{/soc/bus1/bus2/i2c@12345678/at24@50}, which is overly
>> verbose or &i2c1 { at24@50 }, which will break once someone renames
>> it upstream to please the schema checker.
> 
> Just to double check this and I understood you correctly, the compiler
> will complain if we specify:
> 
> 	&{i2c1/at24@50} { };
> 
> and the node is not exisitng anymore?

Exactly.

> 
> Regards,
>   Marco
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



