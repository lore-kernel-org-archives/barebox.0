Delivery-date: Wed, 06 Aug 2025 09:29:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujYaf-007Z6m-2D
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 09:29:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujYaf-0001EQ-4c
	for lore@pengutronix.de; Wed, 06 Aug 2025 09:29:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qg/BpPPakkU0Ox1qyxsU6AfLwVR1bqAHOEesgbhr//I=; b=CrweB7Qmie/7oZQ2fMWdn9GCYp
	Mdb2d7oUk9JioZvB1UzwbQoWZz7rBJNvmPAegS+2DYvM0c1C+fJyefFrhdnlNRg6tRvP2MoEJIiB6
	EH4YGzHrJbW7Ag17TLvGHDvpCg2OmYX+k8vif6+5w+oavXd1plcJM4HVgx/26eYr0tleGkuacOxdX
	S0RHRnsLQ4Gr9XjwPm0HGEJAn45I859FocCCMFIuVgnDJSjyE0vhJ3OYUOjT1h3f36qs3SMKSCkUW
	S7Zsghtv44KadWFx8EPzKb0NvZ3grCZJE8JuCpoCk+VxX4TrXl/IxGLb3sW//q8Vf8QfQrQlcG8BW
	I2IfSSpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujYa2-0000000EVux-3ys3;
	Wed, 06 Aug 2025 07:28:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujYOm-0000000EUfH-1gUN
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 07:17:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1ujYOk-00009q-U1; Wed, 06 Aug 2025 09:17:18 +0200
Message-ID: <da17518d-45f3-4c8c-beb4-b7ca83a314f4@pengutronix.de>
Date: Wed, 6 Aug 2025 09:17:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20250805-fix-dwc3-dr-mode-v1-1-86dda9815c34@pengutronix.de>
 <09f43f65-6eff-40ee-bed8-654564fa932c@pengutronix.de>
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Content-Language: en-US, de-DE
In-Reply-To: <09f43f65-6eff-40ee-bed8-654564fa932c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_001720_441373_C74C4F94 
X-CRM114-Status: GOOD (  18.01  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc3: remove CONFIG_USB_ROLE_SWITCH in condition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 05.08.25 17:55, Ahmad Fatoum wrote:
> On 05.08.25 16:38, Stefan Kerkmann wrote:
>> CONFIG_USB_ROLE_SWITCH is only defined in the kernel and is always
>> undefined in barebox.
>>
>> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Does this fix an annoying warning from the driver?
> 

I do think so. My understanding is that this also coerced the mode to peripheral
even if otg was chosen as `!IS_ENABLED(CONFIG_USB_ROLE_SWITCH)` always evaluated
to true.

> I wondered about this before...
> 
> Cheers,
> Ahmad
> 

Cheers,
Stefan

>> ---
>>  drivers/usb/dwc3/core.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
>> index dfc9c85ad8b70756d8f177d41bd53a7f412afbd9..985213deb4f1c96282138a98bf5e2aa4d65cbca6 100644
>> --- a/drivers/usb/dwc3/core.c
>> +++ b/drivers/usb/dwc3/core.c
>> @@ -70,8 +70,7 @@ static int dwc3_get_dr_mode(struct dwc3 *dwc)
>>  		 * specified or set to OTG, then set the mode to peripheral.
>>  		 */
>>  		if (mode == USB_DR_MODE_OTG && !dwc->edev &&
>> -		    (!IS_ENABLED(CONFIG_USB_ROLE_SWITCH) ||
>> -		     !of_property_read_bool(dwc->dev->of_node, "usb-role-switch")) &&
>> +		    (!of_property_read_bool(dwc->dev->of_node, "usb-role-switch")) &&
>>  		    !DWC3_VER_IS_PRIOR(DWC3, 330A))
>>  			mode = USB_DR_MODE_PERIPHERAL;
>>  	}
>>
>> ---
>> base-commit: 7be8b1bcb8aeb249e9d55f70ccb5ea93711e8efa
>> change-id: 20250805-fix-dwc3-dr-mode-99b4893c2531
>>
>> Best regards,
> 
> 

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |



