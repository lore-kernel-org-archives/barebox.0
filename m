Delivery-date: Wed, 03 Dec 2025 13:01:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQlYF-007VBY-2d
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 13:01:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQlYF-0008Us-73
	for lore@pengutronix.de; Wed, 03 Dec 2025 13:01:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vrm8qM1LLdNW6W3f8hsF9pw5lbV041bLQB5siMDwCuw=; b=T3C5iFHaISluZVvWTULyGIODY9
	BS+rsylBGTjTIFavTw+Pjj4UAoENNBv4WR4e2Q2jv9Q47GNDTVEeW6ZQEqyxj/567QRAxR0avHnZt
	9XOUmRUO2ahMuuU1NpU2SEu6Se2TO4XwqQeWgYOjb1ceix3eeHzzRec60ZKfHsOA4ynF9fjlzQT9U
	OljcYTQLIuUn9nrWY0fKo5aHA55rZcBBaUwdUm/6x6WiF4I9P8DFMXPrnPqjn6iikFEAhljToCCJb
	IXZO2nuoekkcLyv6jchvYuBvS9QFJWalp7W+JF5689T0jAJ2fcKIPLrXYadgloa1p7vAlQLRgX68i
	ItRern9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQlXp-00000006XCt-3GNU;
	Wed, 03 Dec 2025 12:01:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQlXn-00000006XCY-31WI
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 12:01:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQlXl-0008MR-UC; Wed, 03 Dec 2025 13:01:14 +0100
Message-ID: <61c7405c-7d00-474a-8c9a-37b818965ad1@pengutronix.de>
Date: Wed, 3 Dec 2025 13:01:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20251202-base64-bounds-v2-0-34d3716c3f55@pengutronix.de>
 <20251202-base64-bounds-v2-1-34d3716c3f55@pengutronix.de>
 <aS_76uN2baGiGPdu@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aS_76uN2baGiGPdu@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_040115_767434_37A64289 
X-CRM114-Status: GOOD (  22.83  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] lib: base64: Fix out-of-bounds potential by
 respecting dst_len
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 12/3/25 9:59 AM, Sascha Hauer wrote:
> On Tue, Dec 02, 2025 at 10:22:44AM +0100, Jonas Rebmann wrote:
>> __decode_base64 generally writes the input in 3 bytes increments,
>> corresponding to 4 bytes increments in the base64 input buffer. This
>> means that in order to respect dst_len as the size of the output buffer,
>> the case of exceeding dst_len within a loop iteration must be
>> considered.
>>
>> In such a case, refrain from writing the last one or two bytes if that
>> write would be past dst_len.
>>
>> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
>> ---
>>  lib/base64.c | 10 +++++-----
>>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> I wonder if we should switch to the kernel functions from lib/base64.c
> instead. They look much more straight forward than the busybox based
> implementation.

Just need to take care to support base64url, which is needed for the
JSON web token support.

Cheers,
Ahmad

> 
> Sascha
> 
>>
>> diff --git a/lib/base64.c b/lib/base64.c
>> index d5ab217528..3e29f0a56c 100644
>> --- a/lib/base64.c
>> +++ b/lib/base64.c
>> @@ -163,19 +163,19 @@ static int __decode_base64(char *p_dst, int dst_len, const char *src, bool url)
>>  		 */
>>  		if (count > 1)
>>  			*dst++ = six_bit[0] << 2 | six_bit[1] >> 4;
>> -		if (count > 2)
>> +		if (count > 2 && dst_len > 1)
>>  			*dst++ = six_bit[1] << 4 | six_bit[2] >> 2;
>> -		if (count > 3)
>> +		if (count > 3 && dst_len > 2)
>>  			*dst++ = six_bit[2] << 6 | six_bit[3];
>> +		/* last character was "=" */
>> +		if (count != 0)
>> +			length += min(count - 1, dst_len);
>>  		/*
>>  		 * Note that if we decode "AA==" and ate first '=',
>>  		 * we just decoded one char (count == 2) and now we'll
>>  		 * do the loop once more to decode second '='.
>>  		 */
>>  		dst_len -= count-1;
>> -		/* last character was "=" */
>> -		if (count != 0)
>> -			length += count - 1;
>>  	}
>>  ret:
>>  	p_dst = dst;
>>
>> -- 
>> 2.51.2.535.g419c72cb8a
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



