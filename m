Delivery-date: Mon, 11 Mar 2024 15:02:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjgEq-0019To-0X
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 15:02:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjgEm-0005xn-2R
	for lore@pengutronix.de; Mon, 11 Mar 2024 15:02:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Uxp2zZAR+4Pj3bzjX3KsDGjHRsLfwiyDEHZfnXOH8s=; b=NPEK7GqtVhM8bcpM+COjshVWNm
	3I2rHtqm7mb+1pa91F0lhGVfXN3EEpwj01lxBuIlGT2dVnDN8d7vSntHw+03ZhvmcIMLqoGQdhWjT
	zvCsCXjFgb0CP3Mkg9un/tS4BLlF/RFV1mU7bMjNG68gPvlAnUg1QdO+mYAiV6+84BP4W3s7UA/6/
	32cO3a9RbE46JMAuh41Z18nMMbDY897/HCrfyLHDyMHrDffyxJeT9rYN3t2O95rlBwHWy4L+40lwP
	VHL8n40uWXRYVYhF05IAtHRpN7e4p/7KwNr3NadktqMdiCxGfHP3uh5Mv1Wip3MJ9x3mbQd8At6Cb
	BmWz8keg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjgDy-00000001iWn-07fO;
	Mon, 11 Mar 2024 14:01:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjgDs-00000001iVV-3Qkd
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 14:01:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjgDr-0005BL-Ie; Mon, 11 Mar 2024 15:01:47 +0100
Message-ID: <3a54e933-5006-40b6-b0ae-885b87d71f2b@pengutronix.de>
Date: Mon, 11 Mar 2024 15:01:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240311-karo-imx8mp-som-board-upstreaming-v1-0-7c77f9ba02e5@pengutronix.de>
 <20240311-karo-imx8mp-som-board-upstreaming-v1-6-7c77f9ba02e5@pengutronix.de>
 <f1fdc37f-61ce-40e7-a521-9e895dfbc8f9@pengutronix.de>
 <5dd3c20d-26c4-4cd0-89a1-f922d5ddae02@pengutronix.de>
 <89f1c7a4-ebe3-4ce9-a5d6-ebbc6187d982@pengutronix.de>
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <89f1c7a4-ebe3-4ce9-a5d6-ebbc6187d982@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_070149_286751_13CDA7CB 
X-CRM114-Status: GOOD (  16.49  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 6/6] arm: imx8mp: add karo electronics qsxp imx8mp som
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On 11.03.24 14:58, Ahmad Fatoum wrote:
> Hello Stefan,
> 
> On 11.03.24 14:32, Stefan Kerkmann wrote:
>> Hello Ahmad,
>>
>> On 11.03.24 11:13, Ahmad Fatoum wrote:
>>> Hello Stefan,
>>>
>>> On 11.03.24 10:10, Stefan Kerkmann wrote:
>>>> From: Marc Kleine-Budde <mkl@pengutronix.de>
>>>>
>>>> The Ka-Ro QSXP is a i.MX8M Plus solder down system on module. This
>>>> commit adds support for the SOM on the QSBASE4 RDK.
>>>>
>>>> [1]: https://www.karo-electronics.de/qsxp
>>>>
>>>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>>>> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
>>>> ---
>>>>  arch/arm/boards/Makefile                           |    1 +
>>>>  arch/arm/boards/karo-qsxp-ml81/Makefile            |    4 +
>>>>  arch/arm/boards/karo-qsxp-ml81/board.c             |   35 +
>>>>  .../flash-header-karo-qsxp-ml81.imxcfg             |    9 +
>>>>  arch/arm/boards/karo-qsxp-ml81/lowlevel.c          |  102 ++
>>>>  arch/arm/boards/karo-qsxp-ml81/lowlevel.h          |    8 +
>>>>  arch/arm/boards/karo-qsxp-ml81/lpddr4-timing.c     | 1597 ++++++++++++++++++++
>>>
>>> If QSXP is the SoM name, rename the folder name to drop ml81.
>>>
>>
>> See reply to patch 5/6, the full manufacturer part number is `QSXP-ML81`
>> therefore I vote to keep the `ml81` part.
> 
> Ok, can you call it QSXP-ML81 in the commit message?
> 

Sure, I will change it :-).

>>> JFYI, if you want to dynamic frequency scaling for DDR, you'll need some
>>> more entries here.
>>>
>>
>> I'm unfamiliar with dynamic frequency scaling, so I'm not sure if we
>> need/want more for a first support of this SOM?
> 
> No, you don't need more. This is Just For Your Information. Dynamic Frequency
> Scaling can be useful to reduce power usage.
> 

Alright, thanks for the heads-up! Depending on the use case of the
product this might become handy in the future.

> 
> Cheers,
> Ahmad
> 
> 

Cheers,
Stefan

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |


