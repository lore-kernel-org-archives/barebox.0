Delivery-date: Thu, 22 Jan 2026 15:21:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vivYW-0049O3-12
	for lore@lore.pengutronix.de;
	Thu, 22 Jan 2026 15:21:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vivYV-0003iD-6X
	for lore@pengutronix.de; Thu, 22 Jan 2026 15:21:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r38vzdsJU1CCqsDUgy6C5KlSZvCdHEl8iTu/d4d8bVg=; b=Wgn03dRf1q743Q
	JASBeqb4Ryc3p/8wNG1okV2bFwJy7hw/FhGCTKJQSYE+jrpEdz1atEwkgXwLFRIh/Ontr59dv8/tW
	yqBfntZFLtawkIyu6cfVZn7TJIxFnwcKvw4Ru4SQ9mcIj517eJwQhe+Jt3auCQ0+qCgi3ftIDUnwK
	Zcjux8cQ0pCR+mpS2AP9q+9ymNcHeHiQ1uN9HoI3ns25DlvylXv03BgaY/1Scl+/SSeJC94s2kvrg
	IprW2GnlUsEU+QlbdDAvT+rSKWWU8bm/mRo0B24onVfnUi2nZIcsbexMvH5D5RSAo1iLNSmHwDooV
	01FGlxrqCXxagwjSptOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivY2-00000007ELb-0QP8;
	Thu, 22 Jan 2026 14:20:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivXz-00000007EJO-0sN5
	for barebox@lists.infradead.org;
	Thu, 22 Jan 2026 14:20:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vivXx-0003aU-Pw; Thu, 22 Jan 2026 15:20:29 +0100
Message-ID: <e9f91822-3732-45bb-b6ba-5d2356593da5@pengutronix.de>
Date: Thu, 22 Jan 2026 15:20:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-18-8f0625ac5471@pengutronix.de>
 <45729455-5317-40d3-a052-eb62688dfda3@pengutronix.de>
 <20260118195824.5vfg755fnkee4vyu@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260118195824.5vfg755fnkee4vyu@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_062031_251679_31BC5ACA 
X-CRM114-Status: GOOD (  23.19  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 18/23] security: optee: add optee_extract_fdto helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 1/18/26 8:58 PM, Marco Felsch wrote:
> On 26-01-15, Ahmad Fatoum wrote:
>> Hello Marco,
>>
>> On 11/10/25 9:34 PM, Marco Felsch wrote:
>>> Add a helper to extract the added OP-TEE FDT overlay fragments from the
>>> FDT provided via arg2 during the boot phase into a dedicated buffer.
>>>
>>> The dedicated overlay buffer can be used later on by the PBL code to
>>> apply the overlay to the barebox runtime DTB and to the kernel DTB.
>>>
>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>>> ---
>>>  include/tee/optee.h |  6 ++++++
>>>  security/optee.c    | 44 ++++++++++++++++++++++++++++++++++++++++++++
>>>  2 files changed, 50 insertions(+)
>>>
>>> diff --git a/include/tee/optee.h b/include/tee/optee.h
>>> index 10e829c04f8832c4c04771800f1963e25f425482..679662a6e6944da59d24d6268ebcf5dff19d0980 100644
>>> --- a/include/tee/optee.h
>>> +++ b/include/tee/optee.h
>>> @@ -37,6 +37,7 @@ int optee_verify_header (const struct optee_header *hdr);
>>>  
>>>  void optee_set_membase(const struct optee_header *hdr);
>>>  int optee_get_membase(u64 *membase);
>>> +int optee_extract_fdto(const void *fdt, void *fdto, unsigned int fdto_sz);
>>>  
>>>  #else
>>>  
>>> @@ -49,6 +50,11 @@ static inline int optee_get_membase(u64 *membase)
>>>  	return -ENOSYS;
>>>  }
>>>  
>>> +static inline int optee_extract_fdto(const void *fdt, void *fdto, unsigned int fdto_sz)
>>> +{
>>> +	return 0;
>>> +}
>>> +
>>>  #endif /* CONFIG_HAVE_OPTEE */
>>>  
>>>  #ifdef __PBL__
>>> diff --git a/security/optee.c b/security/optee.c
>>> index 422bc1c90924ba8ab266b1aa8d06e52c819d2010..3750bb6f496af990d77f3629b470b174dd7a7c7a 100644
>>> --- a/security/optee.c
>>> +++ b/security/optee.c
>>> @@ -5,7 +5,9 @@
>>>  #include <tee/optee.h>
>>>  #include <linux/printk.h>
>>>  #include <linux/errno.h>
>>> +#include <linux/libfdt.h>
>>>  #include <linux/limits.h>
>>> +#include <pbl.h>
>>>  
>>>  static u64 optee_membase = U64_MAX;
>>>  
>>> @@ -60,3 +62,45 @@ void optee_set_membase(const struct optee_header *hdr)
>>>  	optee_membase = (u64)hdr->init_load_addr_hi << 32;
>>>  	optee_membase |= hdr->init_load_addr_lo;
>>>  }
>>> +
>>> +int optee_extract_fdto(const void *fdt, void *fdto, unsigned int fdto_sz)
>>> +{
>>> +	int err;
>>> +	int subnode;
>>> +
>>> +	err = fdt_check_header(fdt);
>>> +	if (err) {
>>> +		pr_err("Invalid device tree blob: %s\n", fdt_strerror(err));
>>> +		return err;
>>> +	}
>>> +
>>> +	err = fdt_create_empty_tree(fdto, fdto_sz);
>>> +	if (err) {
>>> +		pr_err("Failed to initialize OP-TEE FDTO space: %s\n", fdt_strerror(err));
>>> +		return err;
>>> +	}
>>> +
>>> +	fdt_for_each_subnode(subnode, fdt, 0) {
>>> +		const char *name;
>>> +		int len;
>>> +
>>> +		name = fdt_get_name(fdt, subnode, &len);
>>> +		if (!name) {
>>> +			pr_warn("Failed to query FDT node name: %s\n", fdt_strerror(len));
>>> +			continue;
>>> +		}
>>> +
>>> +		if (strncmp(name, "fragment@", 9) != 0) {
>>> +			pr_debug("Skip node %s\n", name);
>>> +			continue;
>>> +		}
>>> +
>>> +		err |= fdt_copy_node(fdt, fdto, "/", name);
>>
>> Aren't these sequential error codes? OR'ing them will produce a
>> non-sensical error code if there are different error codes returned.
> 
> That's true.
> 
>> Better change to:
>>
>> 	ret = fdt_copy_node(fdt, fdto, "/", name);
>> 	if (ret)
>> 		err = ret;
> 
> Hm, but this would hide previous errors too. Of course we could break
> the loop in the error case. I will add this to the v2.

Any valid error code is better than OR-ing multiple invalid error codes.
I am fine wither either early exit or just returning a single error.

Cheers,
Ahmad

> 
>> with err being initialized as zero.
> 
> Sure.
> 
> Regards,
>   Marco
> 
>>
>>> +	}
>>> +
>>> +	/* Clear the FDTO memory to not supply incomplete overlays */
>>> +	if (err)
>>> +		memset(fdto, 0, fdto_sz);
>>> +
>>> +	return err;
>>> +}
>>>
>>
>> -- 
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



