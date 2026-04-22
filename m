Delivery-date: Wed, 22 Apr 2026 11:47:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFUBX-00F3TP-0D
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 11:47:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFUBW-0004z4-CE
	for lore@pengutronix.de; Wed, 22 Apr 2026 11:47:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HD+drGgzVpxUGx17vWpMd7AfjrH044w8s4Ek1+e8haQ=; b=Mp632NCbXs2j80P/PJJcqbuC1q
	WEDqMn3ozQxPbJPO//HQ0ALArOpZQ81n1xWmNPITMQWNZ7wcfFKBF5Q1sTAIcMK20W+ca+hSWHrM1
	3M0OipBc2H80tlkoe1wOG2cK5Ox9OxldenTequdWfnUHeEkOsBce2dB7mAuh9WUuaJerWXrVhhb6P
	Z1d09yLX0gGEWsA2/nhRwhRl0rZS67rkEWbCSsfcoNLe8v7+CYW8TmlC/zelc/6WfwLCrOpofBa4Y
	Skk/k5obNr8/eG6TY5+qmrY/uroAxjgTY32j89xdJkIm3FbfZ3A7Z01GtYBpAFAemennHF0HFYru+
	J/ZuTOVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFUB3-00000009ssu-0clB;
	Wed, 22 Apr 2026 09:47:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFUB1-00000009ssK-1hSC
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 09:47:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wFUAy-0004sV-Cb; Wed, 22 Apr 2026 11:47:20 +0200
Message-ID: <9349d9e9-efe5-48d4-95c0-56f322611b3c@pengutronix.de>
Date: Wed, 22 Apr 2026 11:47:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Fabian Pflug <f.pflug@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20260415-v2026-03-0-topic-soc_bin_id-v2-0-81fab6ba5de0@pengutronix.de>
 <20260415-v2026-03-0-topic-soc_bin_id-v2-2-81fab6ba5de0@pengutronix.de>
 <aeh8E8taV-bxPoK_@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <aeh8E8taV-bxPoK_@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_024723_472914_5F5AAECD 
X-CRM114-Status: GOOD (  21.89  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] i.MX: HAB: update text for HABV4_CSF_UNLOCK_UID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2026-04-22 09:43, Sascha Hauer wrote:
> Hi Fabian,
> 
> On Wed, Apr 15, 2026 at 01:10:22PM +0200, Fabian Pflug wrote:
>> With the establishment of global.soc_uid_hex, there is no need to look
>> for the serial number and reverse it.
>>
>> Also some SoC's will have 128-bit UID's, so the hint to 64-bit is not
>> correct and should be removed.
>>
>> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
>> ---
>>   arch/arm/mach-imx/Kconfig | 11 +++--------
>>   1 file changed, 3 insertions(+), 8 deletions(-)
>>
>> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
>> index 2e4d1ac80a..cb77d0d5b6 100644
>> --- a/arch/arm/mach-imx/Kconfig
>> +++ b/arch/arm/mach-imx/Kconfig
>> @@ -918,17 +918,12 @@ config HABV4_CSF_UNLOCK_UID
>>   	depends on HABV4 && HABV4_CSF_UNLOCK_FIELD_RETURN
>>   	string "CSF Unlock UID"
>>   	help
>> -	  Device specific 64-bit UID required to unlock the field-return
>> +	  Device specific UID required to unlock the field-return
>>   	  feature. This value must match the per device UNIQUE_ID fuses.
>>   
>>   	  The below example shows the expected format. The UNIQUE_ID is
>> -	  printed during boot by barebox:
>> -	    i.MX___ unique ID: 7766554433221100
>> -	  or it can be queried by Linux via:
>> -	    - cat /sys/devices/soc0/serial_number
>> -	      7766554433221100
> 
> I don't think we should remove this. For some people it might be more
> convenient to read the SoC UID from Linux or to parse it from the
> barebox console log.

If instructions of reversing /sys/devices/soc0/serial_number are kept, I
suggest to indicate that it's Linux' that prints them in reverse on
i.MX. `drivers/soc/imx/soc-imx8m.c` and `soc-imx.c` flat out present the
SoC UID in reverse order, at least consistently across i.MX SoCs.

There is an unambiguous order of the byteorder in the registers; and for
reasons beyond my comprehension (inattention?) it was chosen for the
kernel to print them uid[16],uid[15],uid[14],... Although the vendor
seems to do the obvious and expect uid[0],uid[1],uid[2],...

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


