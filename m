Delivery-date: Thu, 30 Nov 2023 09:03:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8c1L-00E9Pi-0j
	for lore@lore.pengutronix.de;
	Thu, 30 Nov 2023 09:03:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8c1L-0007oY-6S
	for lore@pengutronix.de; Thu, 30 Nov 2023 09:03:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZbMzg+9wdJm0tw4JCWys3C8IO73QJ9hB/smNyYON/6w=; b=DlgYTF1+y4Hb2RmKF13+sNmByL
	0q5fyiTowi1+SrEF5yDhhRoxWTYiQopcCWwMDyCwD2O95VGpuIjSe8w8xZ1hVYZHjZkyrQacuDrE6
	fkKNrSi84CaGjNkt7QygQlwde37t5GpM2VBUH635PGXXynW9zH8S6hbQqycYB127kZ4piqHrsaNS6
	pTszsltsEhKft/vidr74ySPVZUgCQGIZpkeXNXMyaFaXTklBsRhiP4sLWRMdN1CBi1rrc39zx7ylE
	7y8vi5F0gVYG6FK4SDPnkLyDT3YZHb9PQKGv2VgwMpnrKHnE8e17fA6nIS32h9ryI3NWlgqmtanYp
	BwzfnsBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8bzt-00A9ba-3B;
	Thu, 30 Nov 2023 08:02:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8bzq-00A9aj-3A
	for barebox@lists.infradead.org;
	Thu, 30 Nov 2023 08:02:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8bzp-0007VX-IE; Thu, 30 Nov 2023 09:02:05 +0100
Message-ID: <f58ea40c-6457-4469-8604-e0de8ea37d3a@pengutronix.de>
Date: Thu, 30 Nov 2023 09:02:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
 <20231127063559.2205776-4-a.fatoum@pengutronix.de>
 <20231129091219.GK977968@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231129091219.GK977968@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_000207_020317_6372BCEE 
X-CRM114-Status: GOOD (  26.28  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/8] deep-probe: skip on-demand platform dev creation for
 nodes without compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 29.11.23 10:12, Sascha Hauer wrote:
> On Mon, Nov 27, 2023 at 07:35:54AM +0100, Ahmad Fatoum wrote:
>> of_device_create_on_demand won't create a new device if the device tree
>> node already has a device associated. What it will do however, is to
>> create devices for all parent nodes in the device tree if they don't
>> already exist. This is unnecessary and clutters the device list
>> with nodes that won't ever be matched as they lack a compatible anyway.
>> For example a reference to scmi_reg11 in below snippet:
>>
>>   &{scmi/protocol@17} {
>>       reg = <0x17>;
>>       regulators {
>>           #address-cells = <0x1>;
>>           #size-cells = <0x0>;
>>           scmi_reg11: regulator@0 {
>>               reg = <0x0>;
>>               regulator-name = "reg11";
>>           };
>>       };
>>   };
>>
>> will result in creation of a device for the regulators node that serves
>> no purpose whatsoever:
>>
>>   `-- firmware.of
>>      `-- firmware:scmi.of
>>         `-- scmi_dev0
>>            `-- firmware:scmi:protocol@17:regulators.of
>>
>> Avoid this by creating devices on demand only if they have a compatible.
> 
> How will this change affect the device hierarchy? When a parent device
> node doesn't have a compatible, will the child device then be a child
> of its grandparent, or will it just have no parent at all?

It will have the platform bus as parent. I am not sure how this can happen in
a working setup. If the parent has no compatible, that means that the grandparent
needs to populate it by driver. Grandparent device is created first, so only
case it wouldn't match is if driver is missing in which case, it's game over anyway.

Cheers,
Ahmad

> 
> Sascha
> 
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/of/platform.c | 8 +++++---
>>  1 file changed, 5 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
>> index 9e592d567cae..9ba4438812c1 100644
>> --- a/drivers/of/platform.c
>> +++ b/drivers/of/platform.c
>> @@ -442,9 +442,6 @@ static struct device *of_device_create_on_demand(struct device_node *np)
>>  	if (!np->dev && parent->dev)
>>  		device_rescan(parent->dev);
>>  
>> -	if (!np->dev)
>> -		pr_debug("Creating device for %pOF\n", np);
>> -
>>  	/* Create all parent devices needed for the requested device */
>>  	parent_dev = parent->dev ? : of_device_create_on_demand(parent);
>>  	if (IS_ERR(parent_dev))
>> @@ -458,6 +455,11 @@ static struct device *of_device_create_on_demand(struct device_node *np)
>>  	if (np->dev)
>>  		return np->dev;
>>  
>> +	if (!of_property_present(np, "compatible"))
>> +		return NULL;
>> +
>> +	pr_debug("Creating device for %pOF\n", np);
>> +
>>  	if (of_device_is_compatible(np, "arm,primecell"))
>>  		dev = of_amba_device_create(np);
>>  	else
>> -- 
>> 2.39.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



