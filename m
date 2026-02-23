Delivery-date: Mon, 23 Feb 2026 12:09:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuToP-004o2U-1n
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:09:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuToP-0005co-6y
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:09:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SUiJxCPswrDl5JfWqTcm/xtuaSZyLQBmafQiz/AzQ1I=; b=jeHPBkCtPND8dz+m9nuBFkzxuu
	H8lQr6BdV43XRjyooBSuLj3z2SPLWnTXFcKakNC7zTeIrG3HODnM8NTsCy52NvBa4TPckc74qRKsl
	NsuSLpVNLPL4a0d5a+2NWAkb/HB7uUSDD8mP5hcRLqQdT0YYBrATddMSKrHXynCQ7+9EHiGv73q5Y
	QgX+ywyLbzpzXptoWn4pH5d1Ki9XhffvmlMM5XDdmrH1sVIpneTbWHRWbVHCkSBVs492ZeqRNC0j6
	CPwkJZgk+BnopSYt9hA4t9wC4+hmNfCpwLH8RIPgycMz7rkYf7xmXvDBCL/4z0knykMNTbozJfFPm
	04Y4lGmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTo1-00000000823-0hgk;
	Mon, 23 Feb 2026 11:08:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTny-0000000081g-29SX
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:08:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vuTnv-0005Zi-5t; Mon, 23 Feb 2026 12:08:43 +0100
Message-ID: <286d9d1a-7349-4fef-a65e-d2e70f9031d9@barebox.org>
Date: Mon, 23 Feb 2026 12:08:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20260209090911.3561875-1-a.fatoum@barebox.org>
 <20260209090911.3561875-3-a.fatoum@barebox.org>
 <aZw0qQVz1mX1l8nV@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@barebox.org>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aZw0qQVz1mX1l8nV@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_030846_636732_FBFE9C3D 
X-CRM114-Status: GOOD (  12.90  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] blspec: sort entries according to specification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 2/23/26 12:06 PM, Sascha Hauer wrote:
> On Mon, Feb 09, 2026 at 10:08:52AM +0100, Ahmad Fatoum wrote:

>> +static int blspec_compare(struct list_head *list_a, struct list_head *list_b)
>> +{
>> +	struct bootentry *be_a = container_of(list_a, struct bootentry, list);
>> +	struct bootentry *be_b = container_of(list_b, struct bootentry, list);
>> +	struct blspec_entry *a, *b;
>> +	const char *a_version, *b_version;
>> +	int r;
>> +
>> +	/* The boot entry providers are called one by one and passed an empty
>> +	 * list that's aggregated later, so we should only be encountering
>> +	 * bootloader spec entries here.
>> +	 */
>> +	DEBUG_ASSERT(is_blspec_entry(be_a) && is_blspec_entry(be_b));

[sni[]

>> +
>> +#ifdef DEBUG
>> +#define DEBUG_ASSERT(expr)	BUG_ON(!(expr))
>> +#else
>> +#define DEBUG_ASSERT(expr)	((void)(expr))
>> +#endif
> 
> Is this change intentional here?

Yes, DEBUG_ASSERT is used within this patch.

Cheers,
Ahmad

> 
> Sascha
> 
>> +
>>  #endif
>> diff --git a/include/boot.h b/include/boot.h
>> index e6309b65a0c3..fdc108b7a21d 100644
>> --- a/include/boot.h
>> +++ b/include/boot.h
>> @@ -24,6 +24,8 @@ struct bootentry {
>>  };
>>  
>>  int bootentries_add_entry(struct bootentries *entries, struct bootentry *entry);
>> +void bootentries_add_entry_sorted(struct bootentries *entries, struct bootentry *entry,
>> +				  int (*compare)(struct list_head *, struct list_head *));
>>  
>>  struct bootentry_provider {
>>  	const char *name;
>> -- 
>> 2.47.3
>>
>>
>>
> 



