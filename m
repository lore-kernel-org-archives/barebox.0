Delivery-date: Mon, 14 Oct 2024 17:35:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0N6E-004JTa-0u
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 17:35:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0N6D-000135-Jt
	for lore@pengutronix.de; Mon, 14 Oct 2024 17:35:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=03NdEW+GVkYPzCPpPEJpJ+MOAE87+eY+/pkQwqClCA0=; b=WsaG3fvlkbtCqtLtLPcNrUa5QQ
	GQdhZZtc4nhtZfecIhn04Rt53JitbS38qk5tfELHu5CGkk2yu24v3UGWlJBKbn55blelajo2KMAaD
	Bfq6IJc1kXpnAKE9aIY12OzwOqACswPEx5+KkwKOlFjkSVVqTPQD0ZRYzbHFpnwIQGiCqz03+MYp9
	8DGu3UmPi8OMZY2Czxttigeu7GvYGHOBwllR8c8kn8VdxoPq3f/J4Z4fClcUr1bXMo7H9fimpjXU9
	JpKfimsZOVhY1pjDdPDRibUGWRj9WeDyUMmx4gNeqyFvjbAlnPvYCHJWSQQkntRJY15Ltm7tkEjwN
	Mu9ASIiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0N5n-00000005fe1-2fE8;
	Mon, 14 Oct 2024 15:34:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Kxo-00000005ESK-2lBQ
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 13:20:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Kxn-0001Bu-3o; Mon, 14 Oct 2024 15:18:19 +0200
Message-ID: <103a1f5c-5d69-4648-81f4-63ab4e2d427b@pengutronix.de>
Date: Mon, 14 Oct 2024 15:18:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Rashidwi <rashidwinter@gmail.com>
References: <20241002160714.2423842-1-a.fatoum@pengutronix.de>
 <Zw0YYLx7CjIEYYfI@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Zw0YYLx7CjIEYYfI@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_061820_738228_1B798DCA 
X-CRM114-Status: GOOD (  20.26  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] uimage: fix CRC32 verification on NFS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 14.10.24 15:10, Sascha Hauer wrote:
> On Wed, Oct 02, 2024 at 06:07:15PM +0200, Ahmad Fatoum wrote:
>> Reading a file over NFS is prone to return short reads as the file
>> content is split over multiple UDP packets and reads won't return
>> more than the number of bytes that have gathered in the FIFO.
>>
>> The uImage verification code didn't account for this and handled neither
>> short reads or the file prematurely ending.
> 
> Short reads shouldn't be a problem in the code you are touching here.
> Have you moved this part to "uimage: use read_full where appropriate"
> and didn't adjust the commit message?

It's a problem, because the CRC was done on `now' bytes, which is how
many bytes the code would like to read, not `ret', which is the actual
number of bytes read.

>> diff --git a/common/uimage.c b/common/uimage.c
>> index 140a08c1e426..c578edae2606 100644
>> --- a/common/uimage.c
>> +++ b/common/uimage.c
>> @@ -272,7 +272,9 @@ int uimage_verify(struct uimage_handle *handle)
>>  		ret = read(handle->fd, buf, now);
>>  		if (ret < 0)
>>  			goto err;
>> -		crc = crc32(crc, buf, now);
>> +		if (!ret)
>> +			break;
> 
> Should we have an extra error message in this case? The information that
> a uImage is shorter than expected might be valuable for the user.

I don't see the need to differentiate between premature end and corrupted
bytes. Both are problems in another layer anyway and people still stuck
using uImage may not like losing extra bytes for an error message anyway.

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


