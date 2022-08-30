Delivery-date: Tue, 30 Aug 2022 11:03:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSx9X-001XRl-Ab
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 11:03:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSx9V-0001JF-M1
	for lore@pengutronix.de; Tue, 30 Aug 2022 11:03:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9r/qDu56MAm/Zvs5ODtUCEKVhMLBfM8JsxmJv/tikfQ=; b=osP1tUe4I40ZLRJx2ZKYFO+mv6
	bDUmC/6AT7mlgAPbzIPKc+FsD4Ae2k/I4PW+dZaNA/xG3ik7ruyHjHj5CW430OJaHMKaBCedIRnc3
	EMRpnQKAbVJw1xquGKR4+Zkv+ysKNuKEgfohs4bcYjLOffSirfA7yQQ5o2AVSmXiMOWrrPqs+KfdG
	C6UaR6upugPvEzXmjSc3+95Q1QPKmP24hhp2+T6CnM3BL7SJsb2ah9jE97gVEou9Sn6OXNa8QXvM/
	0x0JBcF0UW0dQv+ecfBK153lPCgAMpeI8aMiWe4OGJD/r/WraLswP10vYju5yvf94MqiVquSajuF3
	6/2X4rAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSx89-00FPnw-Tc; Tue, 30 Aug 2022 09:01:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSx7v-00FPkf-6J
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 09:01:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oSx7t-0001CQ-7m; Tue, 30 Aug 2022 11:01:41 +0200
Message-ID: <00e24660-40bf-fbc9-da73-bd2b43f30615@pengutronix.de>
Date: Tue, 30 Aug 2022 11:01:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220830075045.1052357-1-a.fatoum@pengutronix.de>
 <20220830081038.w7ouzgodhqltw2cz@pengutronix.de>
 <50c079c4-8cb6-5027-39f6-2936af2c3969@pengutronix.de>
 <20220830082935.a4wvhzqynk2262ga@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220830082935.a4wvhzqynk2262ga@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_020143_356224_6B9668DF 
X-CRM114-Status: GOOD (  22.84  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: dts: i.MX8MM: describe feature controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 30.08.22 10:29, Marco Felsch wrote:
> On 22-08-30, Ahmad Fatoum wrote:
>> Hello Marco,
>>
>> On 30.08.22 10:10, Marco Felsch wrote:
>>> Hi Ahamd,
>>>
>>> On 22-08-30, Ahmad Fatoum wrote:
>>>> Now with i.MX8M feature controller driver support available, have the
>>>> OCOTP provide feature control on the i.MX8MM to ensure the kernel DT
>>>> does not cause Linux to access the VPU and its power domains,
>>>> when barebox knows them to be unavailable.
>>>>
>>>> This is needed because the upstream kernel imx8mm.dtsi only
>>>> describes the full-featured SoC, which can lead to hangs when
>>>> instantiating drivers for hardware that's unavailable in a
>>>> less-featureful variant of the SoC.
>>>>
>>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>> ---
>>>> v1 was RFC patch 10/10 of:
>>>> https://lore.barebox.org/barebox/20220818051955.2088238-11-a.fatoum@pengutronix.de/T/#u
>>>>
>>>> Patches 01-08 are still applicable, this replaces the approach in v1
>>>> with a standalone feature controller with having the OCOTP as feature
>>>> controller, like is done for i.MX8MN in patch 08/10 of above referenced
>>>> series.
>>>> ---
>>>>  arch/arm/dts/imx8mm.dtsi | 52 ++++++++++++++++++++++++++++++++++++++++
>>>>  1 file changed, 52 insertions(+)
>>>>
>>>> diff --git a/arch/arm/dts/imx8mm.dtsi b/arch/arm/dts/imx8mm.dtsi
>>>> index cdf212820594..1e81d03d6b84 100644
>>>> --- a/arch/arm/dts/imx8mm.dtsi
>>>> +++ b/arch/arm/dts/imx8mm.dtsi
>>>> @@ -1,10 +1,18 @@
>>>>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>>> +
>>>> +#include <dt-bindings/features/imx8m.h>
>>>> +
>>>>  / {
>>>>  	aliases {
>>>>  		gpr.reboot_mode = &reboot_mode_gpr;
>>>>  	};
>>>>  };
>>>>  
>>>> +feat: &ocotp {
>>>> +	#feature-cells = <1>;
>>>> +	barebox,feature-controller;
>>>> +};
>>>
>>> Why not just appending the node like:
>>>
>>> / {
>>> 	aliases {
>>> 		gpr.reboot_mode = &reboot_mode_gpr;
>>> 	};
>>>
>>> 	feat: ocotp {
>>> 		#feature-cells = <1>;
>>> 		barebox,feature-controller;
>>> 	};
>>> };
>>
>> Yours adds a new /ocotp node while my patch gives the existing
>> node pointed at by &ocotp an additional label and extends it.
> 
> This should extend the ocotp node as well or would it be a new node
> due to the new label? To me it locked very strange, therefore I asked. I
> never noticed that: "new_label: &old_label {}" is even possible.

It would be a new node, because the ocotp isn't at top level, but
instead at /soc@0/bus@30000000/efuse@30350000. Instead of using the
full path, I used the &ocotp label and instead of using &ocotp everywhere,
I add an additional &feat alias to better convey that the ocotp acts
as a feature controller.

I intend to upstream this and will likely just use the ocotp label
directly then, but having the &feat label here for now allows easily
trying out other providers as mentioned in my previous mail.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>> I prefer the additional label, because it gives us flexibility
>> in future if upstream decides that there should be a dedicated
>> feature controller. In that case we would only need to move
>> the label instead of touching all references. see RFC patch 10/10
>> referenced above.
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> Regards,
>>>   Marco
>>>
>>>> +
>>>>  &pgc_otg1 {
>>>>  	barebox,allow-dummy;
>>>>  };
>>>> @@ -24,3 +32,47 @@
>>>>  		mode-serial = <0x00000010>, <0x40000000>;
>>>>  	};
>>>>  };
>>>> +
>>>> +&A53_1 {
>>>> +	barebox,feature-gates = <&feat IMX8M_FEAT_CPU_DUAL>;
>>>> +};
>>>> +
>>>> +&A53_2 {
>>>> +	barebox,feature-gates = <&feat IMX8M_FEAT_CPU_QUAD>;
>>>> +};
>>>> +
>>>> +&A53_3 {
>>>> +	barebox,feature-gates = <&feat IMX8M_FEAT_CPU_QUAD>;
>>>> +};
>>>> +
>>>> +&gpc {
>>>> +	barebox,feature-gates = <&feat 0>;
>>>> +};
>>>> +
>>>> +&vpu_g1 {
>>>> +	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
>>>> +};
>>>> +
>>>> +&vpu_g2 {
>>>> +	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
>>>> +};
>>>> +
>>>> +&vpu_blk_ctrl {
>>>> +	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
>>>> +};
>>>> +
>>>> +&pgc_vpumix {
>>>> +	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
>>>> +};
>>>> +
>>>> +&pgc_vpu_g1 {
>>>> +	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
>>>> +};
>>>> +
>>>> +&pgc_vpu_g2 {
>>>> +	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
>>>> +};
>>>> +
>>>> +&pgc_vpu_h1 {
>>>> +	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
>>>> +};
>>>> -- 
>>>> 2.30.2
>>>>
>>>>
>>>>
>>>
>>
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


