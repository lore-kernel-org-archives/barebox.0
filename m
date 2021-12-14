Delivery-date: Tue, 14 Dec 2021 07:59:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mx1mD-0060cV-Ba
	for lore@lore.pengutronix.de; Tue, 14 Dec 2021 07:59:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mx1mB-0002Gz-QE
	for lore@pengutronix.de; Tue, 14 Dec 2021 07:59:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ia9Lb/NLM1FfmM30Ep76i8abl+TpYOSvSXv4eu/hxLo=; b=mxkZTv6DZidP2aRWwLG0ZR/KTv
	hAeJP1P6PESS8SbdKRIn8Jt+LUzV5l0FO/bB1dmbBZ/ssLBBG2fzfAAfMqjtIzg0DBnGjFhhEyoav
	awjBZ8WUkMV3ZsiYERNyTwbztKEUUd+qZVKXJOd+WyfoZjD/uOwqo0GVT7nHX1Vm8TBWufuFd66MH
	bSae/Z0C+il+eA66jyqRnOa7aknejygJbSTpu+sh0D7Y4wGNFt4P0RhG42gPKYD1aUCB4BfZeigaH
	ujMu903CMZg2DGeiZxBVRQP3bUoVjH5iHibw0tmCTXXrk/RnpAMmfIPEjeft3koVbER045cQCuByY
	rrXaiXWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx1kM-00ClrI-04; Tue, 14 Dec 2021 06:57:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx1kH-00Clqj-1J
 for barebox@lists.infradead.org; Tue, 14 Dec 2021 06:57:07 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mx1kD-0002Di-H0; Tue, 14 Dec 2021 07:57:01 +0100
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20211209105708.3517684-1-a.fatoum@pengutronix.de>
 <20211213222808.GL6003@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <6780849f-e1f9-fdae-ffb6-02cdde4cdb55@pengutronix.de>
Date: Tue, 14 Dec 2021 07:57:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211213222808.GL6003@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_225705_118479_170B8EB0 
X-CRM114-Status: GOOD (  20.52  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] vsprintf: add support for printing raw buffers as hex
 (%*ph)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 13.12.21 23:28, Sascha Hauer wrote:
> On Thu, Dec 09, 2021 at 11:57:06AM +0100, Ahmad Fatoum wrote:
>> Import from Linux support for printing buffers as a hex string
>> with a certain separator. For larger buffers consider using
>> print_hex_dump(). Examples:
>>
>>   %*ph	00 01 02  ...  3f
>>   %*phC	00:01:02: ... :3f
>>   %*phD	00-01-02- ... -3f
>>   %*phN	000102 ... 3f
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  lib/Kconfig    |  3 +++
>>  lib/vsprintf.c | 50 ++++++++++++++++++++++++++++++++++++++++++++++++++
>>  2 files changed, 53 insertions(+)
>>
>> diff --git a/lib/Kconfig b/lib/Kconfig
>> index 718033e56e64..27e7bea6852f 100644
>> --- a/lib/Kconfig
>> +++ b/lib/Kconfig
>> @@ -166,6 +166,9 @@ config PRINTF_UUID
>>  config PRINTF_WCHAR
>>  	bool
>>  
>> +config PRINTF_HEXSTR
>> +	bool
> 
> So hexdumps are silently ignored when this option is disabled. Not sure
> if this should really be configurable, but I think when it is
> configurable it should be default y to avoid surprises.

It will be printed as a raw pointer when the option is disabled.
There's no code in-tree that uses this format specifier yet,
so I prefer to not make this the default and increase binary size.

Cheers,
Ahmad

> 
> Sascha
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

