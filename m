Delivery-date: Mon, 21 Oct 2024 13:22:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2qUQ-0072zH-0t
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 13:22:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2qUP-0006VO-Mc
	for lore@pengutronix.de; Mon, 21 Oct 2024 13:22:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YDzR5QpW0suCqH/twJ+u5ter26amcbzjZ2WuyJ6qHL4=; b=qa3ALeaFlgPwkR5p4Eza2PWvg/
	7AOS6l5FSVcGrHXq78oCvvfLH78s6qBgZ5SQSgTB9CGCPqPoAvaBhGDDFupN++dJ8CHm78O5CGsOY
	KW4Vqss3Pe1ySrfILAhrYh9MGlPiwK7VGEZ2RVyY1yzMy34GbnmI9/bYFLGDjuBlc9KmtQ7Qg2TGU
	scgIYtobhMXb8jDX3l2FJOdc/H9rIYTZDDQEP72f6LoqR2dGMBP9OAeZctlIi20WtHvopUc92aC9G
	l//oXVQDoZy05m01bhsrFysogFy0Ng8vK8v/304ZC27MjMxouV8DWZ661hVzdgXl5voD035iTKeRt
	3gq6/N3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2qTp-000000072W5-1rwb;
	Mon, 21 Oct 2024 11:21:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2qT5-000000072O8-2P6Q
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 11:21:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2qT4-0006J3-Cr; Mon, 21 Oct 2024 13:20:58 +0200
Message-ID: <307cd091-188b-4124-bded-7cb8c8913dab@pengutronix.de>
Date: Mon, 21 Oct 2024 13:20:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
 <20241021-arm-layerscape-tfa-v1-2-0980697b6f66@pengutronix.de>
 <f4a3b122-28c3-4e23-aba1-2a41d3c77425@pengutronix.de>
 <ZxY47o0QiqLzn4oc@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZxY47o0QiqLzn4oc@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_042059_643854_B79228D5 
X-CRM114-Status: GOOD (  18.49  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/9] ARM: Layerscape: TQMLS1046a: add support for 8GiB
 variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 21.10.24 13:20, Sascha Hauer wrote:
> On Mon, Oct 21, 2024 at 11:06:47AM +0200, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 21.10.24 09:21, Sascha Hauer wrote:
>>> The tqmls1046a also has a 8GiB DDR variant. This patch adds support for
>>> this variant as an additional image with suffix _8g in the name.
>>>
>>> The 8GiB boards use two different types of DDR chips which can be
>>> distinguished by reading the EEPROM. There is one regular version which
>>> has the string "TQMLS1046A-P2.0201" is the EEPROM. The other one is
>>> possibly only used for Arkona and has the string "TQMLS1046A-CA.0202"
>>> in the EEPROM. There might be other possible strings we are currently
>>> not aware of, we fall back to the P2 variant in this case.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>
>> [snip]
>>
>>> -static int tqmls1046a_mem_init(void)
>>> +static void ls1046a_add_memory(void)
>>>  {
>>> +	u32 cs0_bnds;
>>> +	unsigned long long memsize, lower, upper;
>>
>> Nitpick: u64
>>
>>> +ENTRY_PROC(start_tqmls1046a_8g)
>>> +	mov x3, #STACK_TOP
>>> +	mov sp, x3
>>> +	b tqmls1046a_8g_entry
>>
>> We should be able to migrate these assembly entry points to
>> use ENTRY_FUNCTION_WITHSTACK.
> 
> We could do here. A few patches further down though when adding TF-A
> support the stack address will depend on the exception level which can't
> be covered by ENTRY_FUNCTION_WITHSTACK.

Alright. never mind then. :-)

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


