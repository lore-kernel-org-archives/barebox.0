Delivery-date: Fri, 06 Feb 2026 16:27:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voNjd-009Wds-27
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 16:27:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voNjc-0006Q4-Ks
	for lore@pengutronix.de; Fri, 06 Feb 2026 16:27:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kPrnLoIyL1ixo58vKQBDlh1ouikLVHT5B+3ZfvlmsGk=; b=rcXt9e1++RQp2dF1JguKtUdVIx
	GpfJAb0x/DSKfXQNqPurSuuy151KQIywFUMkyDTdY3hh0AQ6gX0P1/eRc7QIw3F/np7SvxhWU2LHl
	5B5RrOTTHRLUl4X/nS63ujdw1MsacE2XhkiHgquDGIbtiwbQq7YxKoPd/0KWs3G+89gE2K6X/zFq/
	JgBn25YIQ4RMLNv0GXakaUIvjOgtt1glkq3aoq5aWDnaXimTu9uHSQrUyWO2OIXFGl75k6OorRCtu
	IBKfQP863c11DvCkE0leJu+VHcM72vG7x2+ASf6sAqc5bIGBVxn/anloUmSQswa7ryWp64uui5oUL
	BSxO8Q8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voNiy-0000000BVGK-24ji;
	Fri, 06 Feb 2026 15:26:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voNiu-0000000BVFV-1eGt
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 15:26:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1voNiq-0006Kl-NV; Fri, 06 Feb 2026 16:26:16 +0100
Message-ID: <92758958-730e-4c1b-9f8c-669774f904bb@pengutronix.de>
Date: Fri, 6 Feb 2026 16:26:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
 <20260127084546.3751357-10-a.fatoum@pengutronix.de>
 <aXymTDe0IbYjBO2h@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aXymTDe0IbYjBO2h@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_072620_438074_FF664D06 
X-CRM114-Status: GOOD (  19.19  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/15] resource: implement resize_region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/30/26 1:38 PM, Sascha Hauer wrote:
> On Tue, Jan 27, 2026 at 09:39:19AM +0100, Ahmad Fatoum wrote:
>> resize_region allows enlarging or reducing a region end while checking
>> for conflicts. This is less effort than removing a region and
>> reallocating it.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/resource.c      | 45 ++++++++++++++++++++++++++++++++++++++++++
>>  include/linux/ioport.h |  2 ++
>>  2 files changed, 47 insertions(+)
>>
>> diff --git a/common/resource.c b/common/resource.c
>> index e391d268e0bb..39867da63b69 100644
>> --- a/common/resource.c
>> +++ b/common/resource.c
>> @@ -92,6 +92,51 @@ struct resource *__request_region(struct resource *parent,
>>  	return new;
>>  }
>>  
>> +int resize_region(struct resource *res, resource_size_t size)
>> +{
>> +	struct resource *parent;
>> +	struct resource *next;
>> +	resource_size_t newend;
>> +
>> +	if (!res)
>> +		return 0;
>> +	if (!size)
>> +		return release_region(res);
> 
> This frees the resource itself. I am not sure if this is useful. It's an
> invitation for the caller to reference freed memory. I think the caller
> must distinguish between resizing and releasing the resource anyway, so
> he could equally call resize_region() or release_region() directly.

You're right. I did actually have a use after free for 0 size :D

>> +
>> +	if (size == resource_size(res))
>> +		return 0;
>> +
>> +	if (size < resource_size(res)) {
>> +		res->end = res->start + size - 1;
>> +		return 0;
>> +	}
> 
> A resource can have child resources. For completeness we should check if
> the child resources are still inside the now smaller parent resource.

Ok will do.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



