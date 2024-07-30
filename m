Delivery-date: Tue, 30 Jul 2024 13:08:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYkiS-004RVy-2R
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 13:08:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYkiS-0003q7-1h
	for lore@pengutronix.de; Tue, 30 Jul 2024 13:08:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0q5293vIpqO3hDTe+HsdaeHDUZXUZfDVDUxOGjW+9Mw=; b=z4wl5ZawFmiv5Gysemgvmajg9H
	b8MJh7kiN6FSWoMS0R9CQINzkeq5FEZQoBNUx0k0ui7bsZQZZwvmGEYIh4N7bgyJI+BNcxIoApOxG
	IoQw0aHuiERBK4My+QSloh6ZNGlTqUkTwH+i7r6foxlbUhfHKXAAhDAAMIfcO/Y9d17Vh206Kpp8F
	RJaN38weL0JB018ijWf4GhaAL3uVw803AEKYVwIUvjIzJYy1cNqAxJsDOob1uK/QeW2qBtQ2nvk95
	1cPdI/v+36EQgxIjGY1M/9pWrtbd5KayzeCvpqW94V0je6Rn1BvykaqPhMmTe8R/AwjIOlc47pedY
	XZ8UW2kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYkhq-0000000EqNv-3PMF;
	Tue, 30 Jul 2024 11:07:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYkho-0000000EqNT-0FP3
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 11:07:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYkhm-0003nq-PA; Tue, 30 Jul 2024 13:07:46 +0200
Message-ID: <161df271-140c-4263-a3dc-18c5261043c0@pengutronix.de>
Date: Tue, 30 Jul 2024 13:07:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yann Sionneau <ysionneau@kalrayinc.com>, barebox@lists.infradead.org
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
 <20240730071929.2016537-6-a.fatoum@pengutronix.de>
 <4d94da30-d6f4-4a3a-93a9-4ef3a0cdcb32@kalrayinc.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <4d94da30-d6f4-4a3a-93a9-4ef3a0cdcb32@kalrayinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_040748_116775_09F53AAE 
X-CRM114-Status: GOOD (  15.78  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 05/10] mci: describe more command structure in mci.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 30.07.24 11:25, Yann Sionneau wrote:
> Hello Ahmad,
> 
> Le 7/30/24 à 09:19, Ahmad Fatoum a écrit :
>> This introduces no functional change, but adds a number of definitions
>> that will come in handy when adding erase support in a later commit.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>   include/mci.h | 61 ++++++++++++++++++++++++++++++++++++++++++++++++++-
>>   1 file changed, 60 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/mci.h b/include/mci.h
>> index 4f1ff9dc57c8..610040937ee5 100644
>> --- a/include/mci.h
>> +++ b/include/mci.h
>>
>> +/*
>> + * Card Command Classes (CCC)
>> + */
>> +#define CCC_BASIC        (1<<0)    /* (0) Basic protocol functions */
>> +                    /* (CMD0,1,2,3,4,7,9,10,12,13,15) */
>> +                    /* (and for SPI, CMD58,59) */
>> +#define CCC_STREAM_READ        (1<<1)    /* (1) Stream read commands */
>> +                    /* (CMD11) */
>> +#define CCC_BLOCK_READ        (1<<2)    /* (2) Block read commands */
>> +                    /* (CMD16,17,18) */
>> +#define CCC_STREAM_WRITE    (1<<3)    /* (3) Stream write commands */
>> +                    /* (CMD20) */
>> +#define CCC_BLOCK_WRITE        (1<<4)    /* (4) Block write commands */
>> +                    /* (CMD16,24,25,26,27) */
>> +#define CCC_ERASE        (1<<5)    /* (5) Ability to erase blocks */
>> +                    /* (CMD32,33,34,35,36,37,38,39) */
>> +#define CCC_WRITE_PROT        (1<<6)    /* (6) Able to write protect blocks */
>> +                    /* (CMD28,29,30) */
>> +#define CCC_LOCK_CARD        (1<<7)    /* (7) Able to lock down card */
>> +                    /* (CMD16,CMD42) */
>> +#define CCC_APP_SPEC        (1<<8)    /* (8) Application specific */
>> +                    /* (CMD55,56,57,ACMD*) */
>> +#define CCC_IO_MODE        (1<<9)    /* (9) I/O mode */
>> +                    /* (CMD5,39,40,52,53) */
>> +#define CCC_SWITCH        (1<<10)    /* (10) High speed switch */
>> +                    /* (CMD6,34,35,36,37,50) */
>> +                    /* (11) Reserved */
>> +                    /* (CMD?) */
>> +
> 
> Why not use BIT(xx)? Maybe this is copy paste from Linux and you want to keep it easy to synchronize?

Exactly.
 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



