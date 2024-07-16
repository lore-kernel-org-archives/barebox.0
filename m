Delivery-date: Tue, 16 Jul 2024 13:10:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTg4U-005QIB-3B
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 13:10:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTg4U-00067l-BW
	for lore@pengutronix.de; Tue, 16 Jul 2024 13:10:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/lYVX6htb9LL3s052ObT7wDPvr56uPOpmG8hKx3PI9U=; b=MjNcJnHadNcO7jdFYmed+9cInd
	2JqQXsoyQhTFyhh6zWcJ4t2NbAw5T9z5VtLpCiKtAKTCst/mdUqJfyHISoVP5V3GKw8Qx6RXGmBHB
	qwhLwDaI/3DEHbp/IP3t7552UL5qBGrSWdBMBdpgi/vpWmwCpThOveY/hvQp43Yydj/zGc296wIWj
	cnxq/dp9YGtZvN9tHComHaZHAONGWJijCLDt5Yfq13k2dDYhfTYQMXIxFx1V32rwgxBFWs/uam5hI
	095D/7fjVmULb1ePbAliaqfaaNmVobuSpUU1dKvwXjR5O3zSl3U2d+rUgkYxho8GO6ylNcOqsQ5Hh
	Ji4Ikjjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTg3p-0000000A8yc-3jhM;
	Tue, 16 Jul 2024 11:09:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTg3m-0000000A8xk-1ict
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 11:09:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTg3j-0005v6-4f
	for barebox@lists.infradead.org; Tue, 16 Jul 2024 13:09:27 +0200
Message-ID: <99f688d3-f0ad-4206-a746-3af755c20e22@pengutronix.de>
Date: Tue, 16 Jul 2024 13:09:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20240703190226.686987-1-a.fatoum@pengutronix.de>
 <52824a89-78d9-413a-b65b-3c3a064e7968@pengutronix.de>
Content-Language: en-US
In-Reply-To: <52824a89-78d9-413a-b65b-3c3a064e7968@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_040930_487709_CA414928 
X-CRM114-Status: GOOD (  16.90  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] sandbox: lds: fix "ELF has a LOAD segment with RWX
 permissions" warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 15.07.24 08:04, Ahmad Fatoum wrote:
> On 03.07.24 21:02, Ahmad Fatoum wrote:
>> With binutils 2.39+, the barebox build started emitting this warning.
>> On platforms other than sandbox, we disable this warning by passing --no-warn-rwx
>> to ld as we don't care for ELF attributes as they aren't used anyway.
>>
>> On sandbox, however, the ELF attributes matter, so disabling the warning
>> completely felt wrong. Looking more into it now, we can mark the
>> .barebox_rodata section in the linker file snippet we have in sandbox as
>> READONLY and the warning disappears, so let's do that instead.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Please dismiss this patch. The new BAREBOX_CLASSES addition to RO_DATA_SECTION
> makes the section not const anymore, so this would crash on the first class
> addition. I'll send a v2 later.

This is further complicated by REAONLY being new in GCC 11 apparently.
I need to find out which version of GNU ld that is and how we could
check whether READONLY is supported..

> 
>> ---
>>  arch/sandbox/board/barebox.lds.S | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
>> index ab2801f3d207..de8552dba0ac 100644
>> --- a/arch/sandbox/board/barebox.lds.S
>> +++ b/arch/sandbox/board/barebox.lds.S
>> @@ -5,7 +5,7 @@
>>  SECTIONS
>>  {
>>  	. = ALIGN(64);
>> -	.barebox_rodata : {
>> +	.barebox_rodata (READONLY) : {
>>  		RO_DATA_SECTION
>>  	}
>>  }
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



