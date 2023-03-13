Delivery-date: Mon, 13 Mar 2023 15:00:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiis-0067Iw-Ey
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 15:00:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiis-0000LU-1I
	for lore@pengutronix.de; Mon, 13 Mar 2023 15:00:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x6Z30TYetbW0knTwVCEX90GmjpIli93HuWPxJA8jelA=; b=WN78Ds28N5RP1R/ih9LuXSZ+1R
	6qmURZblTa8kq0LclDh3UvhOauriajrF/2LEIBYBc3En/Xs/hbe/LSpRQDFl82RBtKYX47hTu139b
	O0Y9mTAQ3OMvZlToD5ONLvEvJDi+SNELjTk7jP1seaCirkzy0tKQgQ2XM13zX+zTEjfTHFKUNde4W
	5E3cUSE14Kv9W4dv24cyus7cyCt0z5c7iYPatnx8S4+mJW0EoL2wCiIqg5WFq+rAZrpLnOpd1K89J
	LfvBZwM7u/mNtkKyQXr8TobZq1ONnvu/W19BF/lYND8UWcqD6jtlAKMM8T/IpXbrdc8n8bJrKOQ4l
	WuCgPqSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbihU-0061NH-Td; Mon, 13 Mar 2023 13:58:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbihP-0061KY-J9
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 13:58:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pbihN-0008QZ-VH; Mon, 13 Mar 2023 14:58:50 +0100
Message-ID: <ca5b298f-c6e9-ee94-7152-98d3961c397a@pengutronix.de>
Date: Mon, 13 Mar 2023 14:58:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230312162928.2110697-1-m.felsch@pengutronix.de>
 <4069572b-56f9-c63d-bb04-90e583fe9ea4@pengutronix.de>
 <20230313134922.d4xvhcibk76mkgb6@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230313134922.d4xvhcibk76mkgb6@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_065851_668102_1A88C714 
X-CRM114-Status: GOOD (  22.92  )
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
Subject: Re: [PATCH] ARM: dts: i.MX8MP: remove memory node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 13.03.23 14:49, Marco Felsch wrote:
> On 23-03-13, Ahmad Fatoum wrote:
>> On 12.03.23 17:29, Marco Felsch wrote:
>>> since commit f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles") we
>>> make use of the esdctl driver. This cause the below error since barebox
>>> try to add the memory twice.
>>>
>>> | imx-esdctl 3d400000.memory-controller@3d400000.of: probe failed: Device or resource busy
>>> | initcall imx_esdctl_driver_init+0x0/0x2c failed: No such device
>>
>> Starting with commit 0a78ac84e9fe ("memory: fuse overlapping memory banks"),
>> this should not be leading to errors. Can you increase debugging in
>> common/resource.c and see why you run into this error?
> 
> I did this and saw that memory bank ram0 is added added twice:
>  - first by generic of
>  - 2nd by esdctl

See the first loop in barebox_add_memory_bank(). If you add
two overlapping IORESOURCE_MEM banks, the function will not
return an error. I think there might be a problem if you run
into an error. 

> 
> Regards,
>    Marco
> 
> 
>>
>>
>>>
>>> Remove the memory node to fix this.
>>>
>>> This behaviour was seen on a i.mx8mp-evk but the
>>> imx8mp-tqma8mpql-mba8mpxl also has a memory node and includes the
>>> barebox.dtsi.
>>>
>>> Fixes: f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles")
>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>>> ---
>>>  arch/arm/dts/imx8mp-evk.dts                | 2 ++
>>>  arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts | 2 ++
>>>  2 files changed, 4 insertions(+)
>>>
>>> diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.dts
>>> index 0acc3731d5..c7e1f35d2d 100644
>>> --- a/arch/arm/dts/imx8mp-evk.dts
>>> +++ b/arch/arm/dts/imx8mp-evk.dts
>>> @@ -30,6 +30,8 @@
>>>  	};
>>>  };
>>>  
>>> +/delete-node/ &{/memory@40000000};
>>> +
>>>  &ethphy1 {
>>>  	reset-assert-us = <15000>;
>>>  	reset-deassert-us = <100000>;
>>> diff --git a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
>>> index 6e81f58e27..bf23e40489 100644
>>> --- a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
>>> +++ b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
>>> @@ -24,6 +24,8 @@
>>>  	};
>>>  };
>>>  
>>> +/delete-node/ &{/memory@40000000};
>>> +
>>>  &usdhc2 {
>>>  	#address-cells = <1>;
>>>  	#size-cells = <1>;
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



