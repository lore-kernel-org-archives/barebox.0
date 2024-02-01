Delivery-date: Thu, 01 Feb 2024 09:49:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVSlO-00FMzC-0w
	for lore@lore.pengutronix.de;
	Thu, 01 Feb 2024 09:49:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVSlO-0001tG-UM
	for lore@pengutronix.de; Thu, 01 Feb 2024 09:49:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fI2+SmCt/9R1JiNNCIE9/wnzQtOwaenojPUbIPYvyak=; b=LUJkStB6RILSdK1qVQmvgt0l2z
	m4UXirUF6z+I6g4etSUatHXcDMdtxrAb/BDUIwsOaQKJstK2PAcIT0KGYE2rvtancTZBUx+FYrCLY
	a8mQvgS0xeW71lLrX1zclqHVeFamZBDB0yVVajA+sVAtGvIFkmA1gMaxFOy3aD55Ab62WFit0F4t5
	nZpt3mURHW6rC0AeJ5ZdCqoiQV7ei9yYNCbV/LXDFwead0liBl/f+HSaSmHTSd8uDjfw+c0u76Em4
	PTOH5nUPIo5L91DC0FZHJUfBSggVYr3ObZWBkpmeycKax3Y2pAUZ5aUMZyIzI6+OaW2jDCoz8L68q
	5xoGgqHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVSkt-000000079K2-3019;
	Thu, 01 Feb 2024 08:49:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVSkq-000000079JN-0nGf
	for barebox@lists.infradead.org;
	Thu, 01 Feb 2024 08:49:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rVSko-0001pa-Ap; Thu, 01 Feb 2024 09:49:02 +0100
Message-ID: <64705b99-a903-4ca7-820b-6695336946eb@pengutronix.de>
Date: Thu, 1 Feb 2024 09:49:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20240131-fix-fdt-memory-safety-v1-0-3d3a2c797eec@pengutronix.de>
 <20240131-fix-fdt-memory-safety-v1-2-3d3a2c797eec@pengutronix.de>
 <20240201074746.GH406126@pengutronix.de>
Content-Language: en-US, de-DE
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20240201074746.GH406126@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_004904_262768_A677B51A 
X-CRM114-Status: GOOD (  19.99  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] of: fdt: fix oob writes with large ftd properties
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 01.02.24 08:47, Sascha Hauer wrote:
> 
> In the subject: s/ftd/fdt/
> 

Applied.

> Sascha
> 
> On Wed, Jan 31, 2024 at 05:57:00PM +0100, Stefan Kerkmann wrote:
>> OOB writes can be triggered when fdt->dt_size * 2 is still smaller than
>> the property for which memory should be allocated. This can happen under
>> rare circumstances when editing a fdt with the of_property command and a
>> property is larger than 128k in size.
>>
>> This happend when editing a FIT image (which is a ftd) with the
>> of_property command and the Kernel image was around 8M in size.
>>
>> The simplified call chain is the following:
>>
>> of_property -> of_flatten_dtb -> create new fdt with 64k in size (this is
>> fixed) -> __of_flatten_dtb -> attempt to copy kernel image (8M) ->
>> fdt_ensure_space -> allocate only 128k for fdt->dt -> memcopy 8M into fdt->dt
>> buffer -> crash
>>
>> The fix is to grow fdt->dt to hold at least the new property. The power
>> of 2 increment is untouched to keep the same behaviour otherwise.
>>
>> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
>> ---
>>   drivers/of/fdt.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
>> index 4f79a6120f..1f24ed0bbc 100644
>> --- a/drivers/of/fdt.c
>> +++ b/drivers/of/fdt.c
>> @@ -399,6 +399,10 @@ static int fdt_ensure_space(struct fdt *fdt, int dtsize)
>>   		previous = fdt->dt;
>>   		new_size = fdt->dt_size * 2;
>>   
>> +		while (new_size <= dtsize) {
>> +			new_size *= 2;
>> +		}
>> +
>>   		if ((fdt->dt = memalign_realloc(previous, fdt->dt_size,
>>   						new_size)) == NULL) {
>>   			free(previous);
>>
>> -- 
>> 2.39.2
>>
>>
> 

Cheers
Stefan

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |


