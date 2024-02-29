Delivery-date: Thu, 29 Feb 2024 10:18:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfcYe-00FD5l-28
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 10:18:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfcYc-0007ow-Dr
	for lore@pengutronix.de; Thu, 29 Feb 2024 10:18:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BC7qwYgqK3/n3Ntr+rF0+hWy2JW7UIedT3jOFGx266w=; b=JRyZvgDrFW4ZHpBAb8qL+1gypv
	tOaA3SRXSuhTlS19hinW0S2LdVi03MhIwTrhU9+MgL2LlFpcO8w8fQD1d8BF+beefrlGZq05RbpK4
	t1zTZaQTQtIcH+yT5HEBDPkCc68BrGCMCJpqPOKudQDfwHAWNt2lho78utAPys1GdsLiHVvkug0zq
	TpJ5YEYh1uMoNjOvFRZ/H5JrcuRGsftilE/G41yVO2f6XZ1qFsvbYxe90tlgOG7957aG+OC7DfBjm
	1lPCRVXo6A8vgnvv7LEpb2Em+oqBtufdbXMMyAzfzzmfUh031iP0oPd4PmJQ0QcyBvqbYHDpV+nhI
	MZv9/JhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfcY2-0000000CqAh-3nrn;
	Thu, 29 Feb 2024 09:17:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfcXz-0000000Cq9u-3lWW
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 09:17:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfcXx-0007ge-8P; Thu, 29 Feb 2024 10:17:45 +0100
Message-ID: <cd591f96-026f-4fc8-8f26-f572143b32e7@pengutronix.de>
Date: Thu, 29 Feb 2024 10:17:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240228180319.2739412-1-a.fatoum@pengutronix.de>
 <20240229091020.6fdnglwbla75hpn3@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240229091020.6fdnglwbla75hpn3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_011747_974590_E2E9C663 
X-CRM114-Status: GOOD (  19.59  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] optee: don't warn about missing OP-TEE header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 29.02.24 10:10, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 24-02-28, Ahmad Fatoum wrote:
>> OP-TEE header is checked once in PBL, saved into scratch area after
>> verification and then checked again in barebox proper.
>>
>> The check in PBL fails silently, but the check in barebox proper that
>> should always follow, because the header isn't written to the scratch
>> area is printed with error log level.
>>
>> Printing an error in either case is wrong though as using a raw OP-TEE
>> binary without header is a valid use case and the OP-TEE header may
>> also be missing when barebox is chainloaded from a running barebox.
>>
>> Therefore reduce the message to debug log level.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/optee.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/common/optee.c b/common/optee.c
>> index 34667f1f51e0..a8a43554e757 100644
>> --- a/common/optee.c
>> +++ b/common/optee.c
>> @@ -14,8 +14,8 @@ int optee_verify_header(const struct optee_header *hdr)
>>  		return -EINVAL;
> 
> Shouldn't be the fix:
> 
> 	if (IS_ERR_OR_NULL(hdr))
> 		return -EINVAL;
> 
> to fail silently.

hdr is a valid pointer for me, but it doesn't point at a header, which causes
me to get an error message.

Thanks,
Ahmad

> 
> Regards,
>   Marco
> 
>>  
>>  	if (hdr->magic != OPTEE_MAGIC) {
>> -		pr_err("Invalid header magic 0x%08x, expected 0x%08x\n",
>> -			   hdr->magic, OPTEE_MAGIC);
>> +		pr_debug("Invalid header magic 0x%08x, expected 0x%08x\n",
>> +			 hdr->magic, OPTEE_MAGIC);
>>  		return -EINVAL;
>>  	}
>>  
>> -- 
>> 2.39.2
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



