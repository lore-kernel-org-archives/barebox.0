Delivery-date: Mon, 04 Mar 2024 11:30:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh5a3-008Acu-0S
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 11:30:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh5a2-0003ZZ-Ej
	for lore@pengutronix.de; Mon, 04 Mar 2024 11:29:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x0os2WAp64lJFfOVM8N6D46DmcuHpQmiv0qvdIUN8zY=; b=MKKAU+E7uoDcD7wEvPR4ghOHNz
	yibqzvPdq2tSZcmAhouHHqKo/Zr9tWoyxeWhAze41fZVcK3Qq7zYeaqiovLLEY7jjF7Q/ILoWTT85
	gTVS84fyiZMG5hfhB0ja+c8h6HYR7o6kOjthz5SFd9/vCqyBELl0bokGqJ1k+WJKbu0odqUSETXTW
	p0tEACz8y4jRxncdKvfmfqNEgE08QJZy5AR9hljoEWm2V2VQ55maUhGLko1e14kYlEl+LljVS3TeW
	xW/nfBGev+77nWyBxp/bTqch3JxZPlw31QaWGtlk1L0bCcqXXlCsA2zTyHVEovKom9iNegHfa6cGl
	tGeRyb7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh5ZU-00000008bmN-0gIA;
	Mon, 04 Mar 2024 10:29:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4zQ-00000008VGK-01zg
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 09:52:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=x0os2WAp64lJFfOVM8N6D46DmcuHpQmiv0qvdIUN8zY=; b=Xmu3eLb9kXETiyTLSVFsxNLCz2
	kxQhToGlPQNO/jkcj63hSbq9YceUSASp/IYrCM8Q4jAyyDl+G5LxLY6mlOOp2CouJcGmDnKT1Hz/A
	mfLZrsJIMwxKM95qefUsf8EN85UQ+TdgttPQKavcKoOpL17/MWxHauVqE5yWQcNr/MfjU4fWRLRsY
	SCvXEtQoZBUCtW1VhEdaXru18cY3cgTQnEW5yYPsfVj10DLYWz4xJGWeMySn2SpgXxhlQOa5bHXy2
	9yJrfymfRnKmrqOS0RwroKNy6j3qW4wQDI1rJTSHLM1F2U5dMw+rxKanvEIkTNKp/OqohQQCOSnEk
	DbTylVVw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4xP-00000004loH-2uhj
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 09:52:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rh4xO-0003SN-5Q; Mon, 04 Mar 2024 10:50:02 +0100
Message-ID: <56a2ac27-2619-4f2e-8997-70ef77d86644@pengutronix.de>
Date: Mon, 4 Mar 2024 10:50:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240301130445.171385-1-a.fatoum@pengutronix.de>
 <20240301130445.171385-3-a.fatoum@pengutronix.de>
 <ZeWWQpxQeTM9vrw_@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZeWWQpxQeTM9vrw_@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_095204_229947_80A3B8E4 
X-CRM114-Status: GOOD (  21.45  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/4] of: fdt: implement fdt_machine_is_compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 04.03.24 10:37, Sascha Hauer wrote:
> On Fri, Mar 01, 2024 at 02:04:43PM +0100, Ahmad Fatoum wrote:
>> When finding compatible bootloader spec files, barebox will unflatten
>> each DTB in turn, allocating objects for each property and node, only to
>> compare a single property and then free all the allocations again.
>>
>> Given that this operation is repeated for every device tree until a
>> match is found, it's a good idea to be able to compare machine
>> (top-level) compatibles without having to unflatten the whole FDT.
>>
>> Implemnt fdt_machine_is_compatible() that does just that. This
>> intentionally opencodes the device tree iteration as to minimize
>> code and runtime size. Using libfdt without LTO would be slower
>> and bigger.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/of/fdt.c | 95 ++++++++++++++++++++++++++++++++++++++++++++++++
>>  include/of.h     |  3 ++
>>  2 files changed, 98 insertions(+)
>>
>> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
>> index 676b8a5535bf..aa3d2e967acd 100644
>> --- a/drivers/of/fdt.c
>> +++ b/drivers/of/fdt.c
>> @@ -668,3 +668,98 @@ void fdt_print_reserve_map(const void *__fdt)
>>  			return;
>>  	}
>>  }
>> +
>> +static int fdt_string_is_compatible(const char *haystack, int haystack_len,
>> +				    const char *needle, int needle_len)
>> +{
>> +	const char *p;
>> +	int index = 0;
>> +
>> +	while (haystack_len >= needle_len) {
>> +		if (memcmp(needle, haystack, needle_len + 1) == 0)
>> +			return OF_DEVICE_COMPATIBLE_MAX_SCORE - (index << 2);
>> +
>> +		p = memchr(haystack, '\0', haystack_len);
>> +		if (!p)
>> +			return 0;
>> +		haystack_len -= (p - haystack) + 1;
>> +		haystack = p + 1;
>> +		index++;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +bool fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, const char *compat)
>> +{
>> +	uint32_t tag;
>> +	const struct fdt_property *fdt_prop;
>> +	const char *name;
>> +	uint32_t dt_struct;
>> +	const struct fdt_node_header *fnh;
>> +	const void *dt_strings;
>> +	struct fdt_header f;
>> +	int ret, len;
>> +	int expect = FDT_BEGIN_NODE;
>> +	int compat_len = strlen(compat);
>> +
>> +	ret = fdt_parse_header(fdt, fdt_size, &f);
>> +	if (ret < 0)
>> +		return ERR_PTR(ret);
> 
> return false here

Ouch. Thanks for fixing!

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



