Delivery-date: Fri, 03 Mar 2023 15:45:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY6fI-007dSZ-Am
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 15:45:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY6fH-0004hm-UL
	for lore@pengutronix.de; Fri, 03 Mar 2023 15:45:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K4vyf4rELf0ZFv0R8h8gve7Dcp/MC4r3gDgLxLhROdI=; b=gPI7Ap/7pC/ceVFQ0Cu2v/GWtf
	VIyEGIQ8c3QPyb3sZK1KGws1gndN1eWf5y7z8MSLbI38/3ymw0LZJhdmKcasMtJQtxNARZKEUqIJ1
	XFgj/OUXuXVjESBhOKUz4tC/38ldxBDg73tpctpXHiygHng6zry2g+vREULLl7h51oPYsHlzI5aU8
	oXPpuMX1kdrO4tNXSWjLWBSGx/NQfcGpd+Y/ZPXRmlGHlari43RvzCu79tISwa+R0YArPxDhmoCCI
	H1g5QHzKKRFNGXrRBnhN/vak7yyX9VcoqRqOYtL3JXPd6C/b+wZEtLbI9ewH7hYG1EYk5W2kUuxs3
	NfdRA0ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY6dt-006dSs-8s; Fri, 03 Mar 2023 14:44:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY6do-006dST-6g
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 14:44:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pY6dk-0004PY-LZ; Fri, 03 Mar 2023 15:44:08 +0100
Message-ID: <a7f439cb-a08f-c65c-3e69-04b97fd37ebe@pengutronix.de>
Date: Fri, 3 Mar 2023 15:44:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <BL0PR07MB56653CD55ED2742BBC7561CCECAD9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <e4698412-74a8-e308-3021-23bf21ce2646@pengutronix.de>
 <BL0PR07MB56650B290C9598A267BFF8A3ECB39@BL0PR07MB5665.namprd07.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <BL0PR07MB56650B290C9598A267BFF8A3ECB39@BL0PR07MB5665.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_064412_294318_2046BA35 
X-CRM114-Status: GOOD (  19.84  )
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
Subject: Re: Subject: [PATCH 1/3] ARM:lib32: add architected timer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 03.03.23 10:23, Renaud Barbier wrote:
>> On 01.03.23 17:59, Renaud Barbier wrote:
>>> Subject: [PATCH 1/3] ARM:lib32: add architected timer
>>>
>>> In preparation for the introduction of the LS1021A support, add a
>>> specific timer support based on the LS1046A support so that delays can
>>> be used in the PBL.
>>>
>>> Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
>>> ---
>>>  arch/arm/lib32/Makefile |  1 +
>>>  arch/arm/lib32/pbl.c    | 17 +++++++++++++++++
>>>  include/clock.h         |  2 ++
>>>  3 files changed, 20 insertions(+)
>>>  create mode 100644 arch/arm/lib32/pbl.c
>>>
>>> diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile index
>>> 82507fffc0..1be8d70c45 100644
>>> --- a/arch/arm/lib32/Makefile
>>> +++ b/arch/arm/lib32/Makefile
>>> @@ -31,6 +31,7 @@ extra-y += barebox.lds
>>>  pbl-y        += lib1funcs.o
>>>  pbl-y        += ashldi3.o
>>>  pbl-y        += div0.o
>>> +pbl-y        += pbl.o
>>
>> I think we need a CFLAGS_pbl.o := -march=armv7-a here, otherwise this would
>> break builds of non-ARMv7 platforms.
>>
>> See arm_architected_timer.o in drivers/clocksource. Also, perhaps you should
>> rename the file to arm_architected_timer.c as well?
>>
>>
> 
> Would something like below makes sense in arch/arm/lib32/Makefile:
> 
> pbl-$(CONFIG_CLOCKSOURCE_ARM_ARCHITECTED_TIMER) += arm_architected_timer.o
> ifeq ($(CONFIG_CPU_32v7),y)
> CFLAGS_arm_architected_timer.o := -march=armv7-a
> endif
If you try to compile this for CPU_32v6, you will get an assembler error.
That's why you need to explicitly set -march=armv7-a for everything that
would not work otherwise. Of course if you are on v6 and try to execute
a function containing the unallowed instructions, you get an exception,
but that shouldn't happen as you wouldn't register a clocksource on such
a platform.

In your case, you could just change it to pbl-$(CONFIG_CPU_32v7) += arm_architected_timer.o



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



