Delivery-date: Wed, 11 Jun 2025 11:24:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPHh1-0066ZA-1s
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 11:24:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPHh0-0003Uf-Tf
	for lore@pengutronix.de; Wed, 11 Jun 2025 11:24:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OYiJdfIC2wjdK60SisRWdp2mBgtaLvKBiXb4IJzr+FY=; b=xpZlmjyu7n+xCTuzMEz+8zVfCC
	Qqeo4pxU/LgD7eLc6qgxrANB44hf6eJxe144nA4qI6LQ0XRJ4Chz/w3+4q7gRGoPIsaJFj2+8L1DX
	10lTqFAfTaLTZKNkiBzQUcFpyJ/dA9ZZm8StSfIAo6cmw8upTOum7LRrP1pPrngRXWrg4yMYYSdYX
	47zs5RjEupiYwDp+WZkLbjSE3MoaT4hCBrSCVZEFhwZ2CWMybLA6wBPQWTcVDhc5pgy6Yaoaj3O1k
	ndSVVyetBDx8uJJYPIIRurNtdt3T128fU8f4s6IQJf5VCdavPTVMhidPyI309ePQHIzmNKqMCB+f4
	c2D1cVZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPHgl-00000009Sbb-0Liv;
	Wed, 11 Jun 2025 09:24:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPGEw-00000009A4Y-33iY
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 07:51:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uPGEv-0004wY-Ed; Wed, 11 Jun 2025 09:51:17 +0200
Message-ID: <0f0b7b94-c434-43e5-bbcb-bd3d23ee584e@pengutronix.de>
Date: Wed, 11 Jun 2025 09:51:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250611063910.754462-1-a.fatoum@pengutronix.de>
 <aEkp4dL0rDnzBj0F@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aEkp4dL0rDnzBj0F@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_005118_773256_AFDD587D 
X-CRM114-Status: GOOD (  20.66  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] of: fdt: fix overflowing in dt_struct_advance
 arguments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 6/11/25 09:01, Sascha Hauer wrote:
> On Wed, Jun 11, 2025 at 08:39:10AM +0200, Ahmad Fatoum wrote:
>> While dt_struct_advance was taking care to check its arguments don't
>> overflow their type, the addition of len (that is read from the FDT)
>> to a constant was already overflowing before the function was called.
>>
>> Move all additions with untrusted input into the function to fix this.
>>
>> This resolves crashes detected by libfuzzer when the digest functions
>> were ultimately called with a length of -1 == 0xffffffff.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/of/fdt.c | 20 ++++++++++++--------
>>  1 file changed, 12 insertions(+), 8 deletions(-)
> 
> This conflicts with https://lore.kernel.org/all/20250605112607.1970520-2-a.fatoum@pengutronix.de/
> which is currently not in master. So it's all or nothing.

Please apply both to master.

Thanks,
Ahmad

> 
> Sascha
> 
>>
>> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
>> index 84a36c77bbf0..f2f4aa03de2d 100644
>> --- a/drivers/of/fdt.c
>> +++ b/drivers/of/fdt.c
>> @@ -33,11 +33,15 @@ static inline bool __dt_ptr_ok(const struct fdt_header *fdt, const void *p,
>>  }
>>  #define dt_ptr_ok(fdt, p) __dt_ptr_ok(fdt, p, sizeof(*(p)), __alignof__(*(p)))
>>  
>> -static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, uint32_t size)
>> +static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, uint32_t size,
>> +					 uint32_t increment)
>>  {
>>  	if (check_add_overflow(dt, size, &dt))
>>  		return 0;
>>  
>> +	if (check_add_overflow(dt, increment, &dt))
>> +		return 0;
>> +
>>  	dt = ALIGN(dt, 4);
>>  	if (dt > f->off_dt_struct + f->size_dt_struct)
>>  		return 0;
>> @@ -229,7 +233,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
>>  			}
>>  
>>  			dt_struct = dt_struct_advance(&f, dt_struct,
>> -					sizeof(struct fdt_node_header) + len + 1);
>> +					sizeof(struct fdt_node_header) + 1, len);
>>  			if (!dt_struct) {
>>  				ret = -ESPIPE;
>>  				goto err;
>> @@ -262,7 +266,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
>>  
>>  			node = node->parent;
>>  
>> -			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
>> +			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE, 0);
>>  			if (!dt_struct) {
>>  				ret = -ESPIPE;
>>  				goto err;
>> @@ -287,7 +291,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
>>  			}
>>  
>>  			dt_struct = dt_struct_advance(&f, dt_struct,
>> -					sizeof(struct fdt_property) + len);
>> +					sizeof(struct fdt_property), len);
>>  			if (!dt_struct) {
>>  				ret = -ESPIPE;
>>  				goto err;
>> @@ -305,7 +309,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
>>  			break;
>>  
>>  		case FDT_NOP:
>> -			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
>> +			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE, 0);
>>  			if (!dt_struct) {
>>  				ret = -ESPIPE;
>>  				goto err;
>> @@ -776,7 +780,7 @@ int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, con
>>  				return 0;
>>  
>>  			dt_struct = dt_struct_advance(&f, dt_struct,
>> -					sizeof(struct fdt_node_header) + 1);
>> +					sizeof(struct fdt_node_header), 1);
>>  			if (!dt_struct)
>>  				return 0;
>>  
>> @@ -803,7 +807,7 @@ int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, con
>>  				return 0;
>>  
>>  			dt_struct = dt_struct_advance(&f, dt_struct,
>> -						      sizeof(struct fdt_property) + len);
>> +						      sizeof(struct fdt_property), len);
>>  			if (!dt_struct)
>>  				return 0;
>>  
>> @@ -813,7 +817,7 @@ int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, con
>>  			return fdt_string_is_compatible(fdt_prop->data, len, compat, compat_len);
>>  
>>  		case FDT_NOP:
>> -			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
>> +			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE, 0);
>>  			if (!dt_struct)
>>  				return 0;
>>  			break;
>> -- 
>> 2.39.5
>>
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



