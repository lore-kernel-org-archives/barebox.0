Delivery-date: Tue, 07 Oct 2025 16:35:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v68mp-005HHZ-2B
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 16:35:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v68mp-0002yO-1M
	for lore@pengutronix.de; Tue, 07 Oct 2025 16:35:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1F0l1om0P8WGc1JrgBhdn9b72rVHgI296Dv+FRX9fcU=; b=xREbp3luobXP97UzoNlBE/1fti
	NYXncS4uUJ6KLGNlNpBpHT6uKJs/zYCl05OonCIxCO6mJduEqrrz+Eep/PZGrzVlrkH6P26aRGqGu
	4/tApo/4pnheT1jwUYnbQC055YtCaSs3cHTfvFrwEmcwPQVu5P5e4lgFVlv+AJB9dFcC/7NWLTiVv
	oMo/xrNanwONBavErdWFfKqQqCgaGtbfnJEH9ibw3JbCs/YeMV8y/o3TkIwgJcfoCI8daBJnMWjIj
	S6D5vsFQzKXL4f3xdjVessKK1Vii5xgBN6tbjT1col07qup5AhjJwBwnKd6g/90sFcM5Lewl61vPX
	slA00cXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v68mM-00000002CIf-4AR0;
	Tue, 07 Oct 2025 14:35:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v68mJ-00000002CHy-45V0
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 14:35:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v68mG-0002tE-Jh; Tue, 07 Oct 2025 16:34:56 +0200
Message-ID: <424bb6ad-573f-4e04-8d8a-e51f2dff5a77@pengutronix.de>
Date: Tue, 7 Oct 2025 16:34:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, chalianis1@gmail.com
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
References: <20251007005955.1427990-1-chalianis1@gmail.com>
 <20251007005955.1427990-3-chalianis1@gmail.com>
 <aOUY4c06GbpbTSyt@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aOUY4c06GbpbTSyt@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_073500_018945_576D1E7A 
X-CRM114-Status: GOOD (  29.83  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 03/10] tlsf: support on-demand requesting memory from
 external store
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 10/7/25 3:42 PM, Sascha Hauer wrote:
> On Mon, Oct 06, 2025 at 08:59:48PM -0400, chalianis1@gmail.com wrote:
>> From: Chali Anis <chalianis1@gmail.com>
>>
>> barebox running under an operating system (or nearly one like UEFI) does
>> not have control over all the memory and should not hog too much memory
>> upfront as that can interfere with other applications, e.g. EFI drivers
>> or the EFI firmware itself.
>>
>> To accommodate this use case, allow TLSF to dynamically request more
>> memory from an external store via tlsf_register_store().
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
>> Signed-off-by: Chali Anis <chalianis1@gmail.com>
>> ---
>>  common/tlsf.c  | 29 ++++++++++++++++++++++++++++-
>>  include/tlsf.h |  1 +
>>  2 files changed, 29 insertions(+), 1 deletion(-)
>>
>> diff --git a/common/tlsf.c b/common/tlsf.c
>> index 4ee53a9b2f20..636b57b1c642 100644
>> --- a/common/tlsf.c
>> +++ b/common/tlsf.c
>> @@ -159,6 +159,9 @@ typedef struct control_t
>>  	/* Empty lists point at this block to indicate they are free. */
>>  	block_header_t block_null;
>>  
>> +	void (*request_store)(tlsf_t, size_t);
>> +
>> +
> 
> This breaks compilation on 32bit platforms.
> 
> The reason is we have this directly under the definition of control_t:
> 
> tlsf_static_assert(sizeof(control_t) % ALIGN_SIZE == 0);
> 
> I fixed it up as follows.

Fixup looks good, thanks.

> It looks odd to me that we have to manually align the struct size each
> time we add a field to this struct. Isn't there something better?

Maybe we could hack something together with alignment or a union, but in
the end it would not be applicable to block_header_t, which is
intentionally overlayed in a misaligned manner as prev_phys_block is
part of the previous allocation...

The asserts at least work :-)

Cheers,
Ahmad

> 
> Sascha
> 
> ---------------------------8<------------------------------
> From 11fcc69bbc41954d5e28a3b082dc39171bd6cdc0 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Tue, 7 Oct 2025 15:39:38 +0200
> Subject: [PATCH] fixup! tlsf: support on-demand requesting memory from
>  external store
> 
> ---
>  common/tlsf.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/common/tlsf.c b/common/tlsf.c
> index 636b57b1c6..c4ba8259b2 100644
> --- a/common/tlsf.c
> +++ b/common/tlsf.c
> @@ -161,11 +161,9 @@ typedef struct control_t
>  
>  	void (*request_store)(tlsf_t, size_t);
>  
> -
>  	/* Bitmaps for free lists. */
>  	unsigned int fl_bitmap;
>  	unsigned int sl_bitmap[FL_INDEX_COUNT];
> -	u32 : BYTES_TO_BITS(ALIGN_SIZE - sizeof(size_t));
>  
>  	/* Head of free lists. */
>  	block_header_t* blocks[FL_INDEX_COUNT][SL_INDEX_COUNT];

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



