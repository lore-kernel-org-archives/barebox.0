Delivery-date: Thu, 20 Oct 2022 15:29:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olVcS-001oHC-Lm
	for lore@lore.pengutronix.de; Thu, 20 Oct 2022 15:29:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olVcP-00037A-5l
	for lore@pengutronix.de; Thu, 20 Oct 2022 15:29:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eo5JuycirAXx5WBhp1PX/9LrUSTN0G35xPOLHFFP+vM=; b=DtBOx5HSxqm9/a/aVmmFBHHdvf
	wdGZ7PhRctfCY31NNV0KM8UjNiov3H83FMzOClxnyQqsk2kZNSCQLbBV4RthbZc+gYSTpifmy/0tq
	PwSxM8y95us2aJEgvKbqCBOoIIR5jkvJ+hn1nha42CfExcEj/aiiP41laOT/+RYjSrsbC3FCRKxRl
	LPkQDH1v3DE3u4IdN68ZfMJIzkI3geO+Pdn7Vpk9tY7m1dpfDTLjOOVBoaLuRacscS+agqksGe4Cr
	5recleuzbu9jgQl6tSX2LtN7oaKwhqVRqQzvLgaz5xR87gW/pAr23alZEUdqdHTVDtQqlbUA9niL9
	qwrf9I7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olVaG-00FS1b-8g; Thu, 20 Oct 2022 13:27:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olVKf-00FIYF-Av
	for barebox@lists.infradead.org; Thu, 20 Oct 2022 13:11:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1olVKb-0000CS-9L; Thu, 20 Oct 2022 15:11:29 +0200
Message-ID: <d6ac086e-f289-d2f8-65a2-e5ada0bfb033@pengutronix.de>
Date: Thu, 20 Oct 2022 15:11:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org,
 Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
References: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
 <20221014085453.GJ6702@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221014085453.GJ6702@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_061133_432059_BC4D81E5 
X-CRM114-Status: GOOD (  17.60  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/9] tlsf: use 8-byte alignment for normal malloc
 allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 14.10.22 10:54, Sascha Hauer wrote:
> On Tue, Oct 04, 2022 at 05:53:58PM +0200, Ahmad Fatoum wrote:
>> TLSF currently uses only 4-byte alignment on 32-bit platforms, which isn't
>> enough for ldrd/strd on ARMv7. This series reworks TLSF a bit, so we always
>> have at least 8 byte alignment.  dlmalloc already has 8 byte alignment
>> minimum, so nothing to do there.
>>
>> While this fixes real issues like what Enrico ran into, I'd suggest we only
>> this be taken into next only after v2022.10.0 is tagged, so this can get
>> some more testing exposure in the mean time.
>>
>> Ahmad Fatoum (9):
>>   test: include <linux/printk.h>
>>   tlsf: use bselftest for testing ffs/fls
>>   tlsf: ensure malloc pool is aligned
>>   tlsf: fix sizeof(size_t) == sizeof(void *) assumption
>>   tlsf: decouple maximum allocation size from sizeof(size_t)
>>   tlsf: use 8-byte alignment for normal malloc allocations
>>   common: malloc: ensure alignment is always at least 8 byte
>>   test: self: refactor to allow alignment check
>>   test: self: malloc: fix memory leaks
> 
> Applied, thanks

Please drop series again. Reported breaking boot on i.MX6Q.
Need to revisit.

> 
> Sascha
> 
>>
>>  common/Kconfig        |  5 +++
>>  common/dlmalloc.c     |  3 ++
>>  common/dummy_malloc.c |  2 +-
>>  common/tlsf.c         | 72 ++++++++++++++++-----------------
>>  include/bselftest.h   |  1 +
>>  test/self/malloc.c    | 92 ++++++++++++++++++++++++++++++++-----------
>>  6 files changed, 114 insertions(+), 61 deletions(-)
>>
>> -- 
>> 2.30.2
>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


