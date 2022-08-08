Delivery-date: Mon, 08 Aug 2022 16:03:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL3LV-00GEqq-Ln
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 16:03:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL3LW-0007oK-7L
	for lore@pengutronix.de; Mon, 08 Aug 2022 16:03:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PaBctHdQgSafY/QAGJ6AterNd3pqHGMln6jj3XXoOgI=; b=h99bY+jtYMdKJrhbOECfP84mGF
	ba3onoT0sJTwNjVT8uJYyGjzNwlBJLZ/CjMggX20QvmpIheQlY1Rs7I8HNIl//OyHgzgh9TMEMky9
	MGDnITemC8Vh5SqsqEkVTW6H5soJBjCAJ9lW3sgGhyiGE4B9fJe1gr74+AIAQgE4phEDY5tI5eR+J
	bR4HD1Vag746LfMsflLd51kVrRAw7YSxUt/Gfj5xBejWl++8Y5Ikbg3SLbrAOK00LhbNutj4LBZ+g
	gdBH/fWIZa6xJ1AbFJVNembFrt9MOMQ6KzyV04VkWuHmsbsmfPyq64M2VtxwOaiKZIL7fswUDXm/Z
	Ame05BsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL3KL-00EGAY-Q8; Mon, 08 Aug 2022 14:01:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL3KG-00EG91-W1
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 14:01:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oL3KF-0007Mp-Mb; Mon, 08 Aug 2022 16:01:47 +0200
Message-ID: <27576360-aee8-eb71-13cc-913f7eb83181@pengutronix.de>
Date: Mon, 8 Aug 2022 16:01:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de, lst@pengutronix.de
References: <20220805054215.3383099-1-a.fatoum@pengutronix.de>
 <20220805054215.3383099-4-a.fatoum@pengutronix.de>
 <20220808130452.GH31528@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220808130452.GH31528@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_070149_085255_E04C20D1 
X-CRM114-Status: GOOD (  21.06  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master v2 4/4] ARM: i.MX8MN: assume USBOTG power domains
 to be powered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 08.08.22 15:04, Sascha Hauer wrote:
> On Fri, Aug 05, 2022 at 07:42:15AM +0200, Ahmad Fatoum wrote:
>> When i.MX8MN support was first added, upstream device tree did list no
>> power domains. Now it does and we defer probe of USB indefinitely
>> because we have no power domain driver. If we need to do PCI on the
>> i.MX8MM in barebox, there'll likely be no way around importing the power
>> domain driver, but for USB which used to work, only thing we need to do
>> is ignore the new power domain specification. Do so by adding the
>> new barebox,allow-dummy property to the new known-enabled power domain.
>>
>> Fixes: b01786baa849 ("dts: update to v5.18-rc1")
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> v1 -> v2:
>>   - no change
>> ---
>>  arch/arm/dts/imx8mn-evk.dtsi | 2 ++
>>  arch/arm/dts/imx8mn.dtsi     | 5 +++++
>>  2 files changed, 7 insertions(+)
>>  create mode 100644 arch/arm/dts/imx8mn.dtsi
>>
>> diff --git a/arch/arm/dts/imx8mn-evk.dtsi b/arch/arm/dts/imx8mn-evk.dtsi
>> index ceeb5f8b9384..aeb357007991 100644
>> --- a/arch/arm/dts/imx8mn-evk.dtsi
>> +++ b/arch/arm/dts/imx8mn-evk.dtsi
>> @@ -4,6 +4,8 @@
>>   * Copyright (C) 2017 Pengutronix, Lucas Stach <kernel@pengutronix.de>
>>   */
>>  
>> +#include "imx8mn.dtsi"
>> +
>>  / {
>>  	chosen {
>>  		environment-sd {
> 
> This file doesn't exist in master.

I just sent out v3. On merging next, you'll get a conflict
which can be resolved by deleteing imx8mn-evk.dts and sticking
#include "imx8mn.dtsi" into the new imx8mn-evk.dtsi.

Thanks,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


