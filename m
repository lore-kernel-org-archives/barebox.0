Delivery-date: Tue, 28 Oct 2025 11:26:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDguc-00CeaT-0s
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 11:26:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDgub-0003cN-MC
	for lore@pengutronix.de; Tue, 28 Oct 2025 11:26:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JzoYya62oVvj4KhT694AhD5OagqOvNpGX1n0Lr+n9Mc=; b=ahcxru0TSRlFTLkcQh92Xr92AM
	TgsjrMDFIilaFy3D2WkZW5uCZ1oSx5A4YL8PwzpXHdPRgJPw9ROnBjEoo3SjsEqQPbt0zJn5yQTBM
	dfI6erWExcjtfmudYoCZ6TlKMxJPtbzzTcKmsOYdf+h2mmZy3h6178sfEE2kPRFJtgaUu5y0hlEgQ
	NFxmPpdaTEj5JRd5teI1fRF9ZJ+tjgESHLAVZ0R1PBPrxIlYr4qAhU5O+2jGXegCmJXcY6+Wt2LIk
	y12kOFDE207YYqQY6BORaayrnqIoTAB+pct/RjAmlGrwai1Uv02bj2xsqX1aYDVclGFOZxsuIAEb0
	Aw6Zz0Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDgu6-0000000Fl3A-2IfM;
	Tue, 28 Oct 2025 10:26:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDgu0-0000000Fl1U-1h6W
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 10:26:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDgtv-0003Vb-3i; Tue, 28 Oct 2025 11:26:03 +0100
Message-ID: <94867b83-cde8-449f-8ed4-d97855831d09@pengutronix.de>
Date: Tue, 28 Oct 2025 11:26:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
References: <20251027075438.2480311-1-a.fatoum@barebox.org>
 <aQCP95IqfhGo1zJg@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aQCP95IqfhGo1zJg@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_032608_449374_8671245B 
X-CRM114-Status: GOOD (  19.92  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFC 1/3] lib: add talloc for overlaying a tree onto
 allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 10/28/25 10:42 AM, Sascha Hauer wrote:
> On Mon, Oct 27, 2025 at 08:54:32AM +0100, Ahmad Fatoum wrote:
>> +#ifndef __TALLOC_H__
>> +#define __TALLOC_H__
>> +
>> +#include <linux/types.h>
>> +
>> +struct talloc {
>> +	struct talloc *child;
>> +	struct talloc *next;
>> +	union {
>> +		struct talloc *prev;
>> +		struct talloc *parent; /* Valid only when is_first(mem) */
>> +	};
>> +};
> 
> Currently tlsf allocations are 8 byte aligned. On 32bit architectures
> struct talloc will be 12 bytes, so talloc allocations will only have 4
> byte alignment.

Good catch. On 32-bit, there is 4 bytes of unused padding inside TLSF
and feels bad sacrificing 4 more bytes here. :/

Will have to give it a thought.

>> +static void *talloc_ctx_init(struct talloc *hdr, const void *parent)
>> +{
>> +	void *mem;
>> +
>> +	if (!hdr)
>> +		return NULL;
>> +
>> +	memset(hdr, 0, sizeof(*hdr));
>> +
>> +	mem = hdr2mem(hdr);
>> +	talloc_steal(parent, mem);
>> +	return mem;
>> +}
>> +
>> +/**
>> + * talloc_usable_size() - Report the size of the talloation
> 
> s/talloation/tallocation/

Will fix for v2.

> 
>> + *
>> + * @mem: pointer to previously talloc'ed memory chunk.
>> + *
>> + * Return: size of tallocation
>> + */
>> +size_t talloc_usable_size(void *mem)
>> +{
>> +	return malloc_usable_size(mem) - sizeof(struct talloc);
>> +}
>> +EXPORT_SYMBOL(talloc_usable_size);
> 
> This function is unused. Do we need it?

To make it easier to retrofit normal malloc code for talloc, it's useful
to have already, I think.

>> +/**
>> + * talloc_free() - Deallocate a talloc'ed memory chunk and all the chunks depending on it.
>> + *
>> + * @mem: pointer to previously talloc'ed memory chunk.
>> + */
>> +void talloc_free(void *mem)
>> +{
>> +	struct talloc *hdr = mem2hdr(mem);
>> +
>> +	if (ZERO_OR_NULL_PTR(hdr))
>> +		return;
> 
> For correctness I believe you have to check mem here, not hdr.
> 
> (Although the above works as long as sizeof(struct talloc) <= ZERO_SIZE_PTR)

Thanks. This used to be container_of_safe of a flexible data member,
which I dropped in the meantime.

Will fix for v2.

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



