Delivery-date: Mon, 08 Jun 2026 21:13:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wWfQ6-003jv9-1b
	for lore@lore.pengutronix.de;
	Mon, 08 Jun 2026 21:13:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wWfQ5-0007s9-Sz
	for lore@pengutronix.de; Mon, 08 Jun 2026 21:13:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VHSjGjUhmiJTwQQO8V8WsMM88lvbUBNuhF0t+4cfmn4=; b=LDMK3RkPqMfnlZHkhfncsalkcz
	i4R/shu3lEMZWNSaehxLXzi5hk7KP/BtRrxuz+/2Znr2wMZZwiZYIfwS0nKI76qqiTBgZO62XjpSX
	gN9aX+lWMNIsQFbnu3l7CbvWt3MxrbhRkCStLGB/sCoP0rN63hFu/Sg30gaqKvx/bOPl36pO+6OkY
	l2Dhwn3zJ8iAA41LS5j2fSdKaNX6QKapr7g9IrQlQPV6GCiP0VPPCk+qq9zq9au/NG8nKejWL+Zl4
	1cfpz9h30BIaZk+jtL/EQeNYX0SkpKWG7LJUHkFzmwMIqpIGim5OgV9r3lYiSMSXnsy0+QwOcmFvC
	dNFC7wjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWfOV-00000004Ixk-2ISE;
	Mon, 08 Jun 2026 19:12:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWfOT-00000004IxP-2Ag7
	for barebox@lists.infradead.org;
	Mon, 08 Jun 2026 19:12:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wWfOR-0007em-An; Mon, 08 Jun 2026 21:12:15 +0200
Message-ID: <ac4b3d6e-0f3f-4f91-966d-541f6705ab81@pengutronix.de>
Date: Mon, 8 Jun 2026 21:12:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrei Lalaev <andrey.lalaev@gmail.com>, barebox@lists.infradead.org
References: <489b74af-bb47-4c1c-a969-094b9ff3e9ba@gmail.com>
 <7d47871b-989a-4ad0-bfb1-4d449fd13ceb@pengutronix.de>
 <82d65dc1-f88b-4527-b627-57378da46f95@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <82d65dc1-f88b-4527-b627-57378da46f95@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_121217_582494_1D2A841B 
X-CRM114-Status: GOOD (  18.78  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: iMX ddrphy_utils difference with U-boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/8/26 20:15, Andrei Lalaev wrote:
> Hi Ahmad,
> 
> Thank you for your quick reply.
> 
> On 08.06.26 19:26, Ahmad Fatoum wrote:
>> Hello Andrei,
>>
>> On 6/8/26 16:24, Andrei Lalaev wrote:
>>> Hi,
>>>
>>> I am moving an iMX8MP module from vendor U-Boot 2024.04 to Barebox 2025.02
>>
>> Sidenote: You'll probably want to use one of the still supported
>> v2026.04 or v2026.06 releases.
>>
> 
> That's our plan for the near future :)
> 
> 
>>> and found a strange difference in the DDR training code:
>>>
>>>   vim drivers/ddr/imx/ddrphy_utils.c +94
>>>
>>> And the corresponding line in U-Boot:
>>>
>>>   vim drivers/ddr/imx/phy/ddrphy_utils.c +101
>>>
>>> Is there any chance that somebody knows/remembers why "return -1" was replaced with "hang()"?
>>
>> I can't speak for Sascha, but having looked at the code, I see no reason
>> why not to propagate the error.
>>
>>> I couldn't find any explanation in the commits/mailing lists.
>>
>> My guess is that it wasn't anticipated that boards would handle
>> the error gracefully to fall back to a different DDR init.
>>
> 
> In our case this is the only option, because we may have 2 and 4 GB modules.
> So, if the 4 GB timings don't apply, we fall back to the 2 GB timings.

Send a patch and we continue the discussion there?

Cheers,
Ahmad

> 
> 
>> Cheers,
>> Ahmad
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


