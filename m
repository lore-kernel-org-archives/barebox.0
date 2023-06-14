Delivery-date: Wed, 14 Jun 2023 11:17:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Mcw-006Rhg-81
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 11:17:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Mct-0004Ip-IA
	for lore@pengutronix.de; Wed, 14 Jun 2023 11:17:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OXD0wGAf8Z1LqdompKRtzwMhSS1UgvYsC8oJ8Dk9pzc=; b=KjRuqUzJDHPdk6eI1VHtF+ct8C
	w+cda7LkTC3vp1AKJ49xubRzUIrrxFe5PatdFBsJbmTp1XYjt+LgfBK46LvA2cd1yehRjKS+MgBYC
	FNIS+LfTKEM5cRq2wG9urWry7LIFNc0WixLtww0qpeH3YH1scClnnewT+B/s7gZJaACCYEGdolEFj
	wJN3DLyKoTxs6BwbKyGO+rb7Ep7+34a+Th34nWrq04N23ANdWWdh3p27TaVv553W7+N8zlk/LmGH8
	qZjwrV3U+OYpIr8qEQ3QaTPQRkAyxgIOCS5fUliztxGMcVztgqviGZdUb7KZ4SsoiPpX23OFqQcVH
	9xhodFaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Mbo-00B1my-0E;
	Wed, 14 Jun 2023 09:16:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Mbk-00B1m0-2g
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 09:16:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q9Mbj-0004Ai-DY; Wed, 14 Jun 2023 11:16:03 +0200
Message-ID: <1354e9e9-4e6c-1af3-782b-6dbb96ceb099@pengutronix.de>
Date: Wed, 14 Jun 2023 11:16:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox@lists.infradead.org
References: <20230614080919.1716578-1-yegorslists@googlemail.com>
 <833c4f35-2fe1-ede5-a305-d2d600c84e8b@pengutronix.de>
 <CAGm1_kvTSO=+7rmxFvm_hYJkcA8Ng+usXHTzQjVkjDRTBKP9SA@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAGm1_kvTSO=+7rmxFvm_hYJkcA8Ng+usXHTzQjVkjDRTBKP9SA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_021604_872219_6D20F4C9 
X-CRM114-Status: GOOD (  24.91  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH][RFC] lib: zstd: resolve maybe-uninitialized warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 14.06.23 11:11, Yegor Yefremov wrote:
> Hi Ahmad,
> 
> On Wed, Jun 14, 2023 at 10:55 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> Hello Yegor,
>>
>> On 14.06.23 10:09, yegorslists@googlemail.com wrote:
>>> From: Yegor Yefremov <yegorslists@googlemail.com>
>>>
>>> Perform memset() at the very beginning of the ZSTD_getFrameParams()
>>> routine.
>>
>> I saw this too a while back and I came to the conclusion that this
>> is a false positive. I wasn't able to reproduce this with
>> GCC 12, but saw it with GCC 11 IIRC.
> 
> You're right. I could reproduce it with GCC 10 but not 12. So, the
> patch can be dropped.

Kernel doesn't have this issue, because they did a wholesale sync
with upstream zstd a while back. We should be doing that for barebox
as well and extend zstd support to PBL and kernel images (currently
only available for ubifs and squashfs).

I attempted this last year:

  https://lore.barebox.org/barebox/20220713100922.1880282-1-a.fatoum@pengutronix.de/

But it had to be reverted because it caused regressions. Might be worth
giving it another shot and fix the issues with v1.

I don't know when I will get around to it, but if you are really
determined to fix the warning, this would be one way forward :-)

Thanks,
Ahmad

> 
> Yegor
> 
>> Cheers,
>> Ahmad
>>
>>>
>>> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
>>> ---
>>>  lib/zstd/decompress.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/lib/zstd/decompress.c b/lib/zstd/decompress.c
>>> index 19bf712881..78df7d660a 100644
>>> --- a/lib/zstd/decompress.c
>>> +++ b/lib/zstd/decompress.c
>>> @@ -207,6 +207,7 @@ static size_t ZSTD_frameHeaderSize(const void *src, size_t srcSize)
>>>  size_t ZSTD_getFrameParams(ZSTD_frameParams *fparamsPtr, const void *src, size_t srcSize)
>>>  {
>>>       const BYTE *ip = (const BYTE *)src;
>>> +     memset(fparamsPtr, 0, sizeof(*fparamsPtr));
>>>
>>>       if (srcSize < ZSTD_frameHeaderSize_prefix)
>>>               return ZSTD_frameHeaderSize_prefix;
>>> @@ -214,7 +215,6 @@ size_t ZSTD_getFrameParams(ZSTD_frameParams *fparamsPtr, const void *src, size_t
>>>               if ((ZSTD_readLE32(src) & 0xFFFFFFF0U) == ZSTD_MAGIC_SKIPPABLE_START) {
>>>                       if (srcSize < ZSTD_skippableHeaderSize)
>>>                               return ZSTD_skippableHeaderSize; /* magic number + skippable frame length */
>>> -                     memset(fparamsPtr, 0, sizeof(*fparamsPtr));
>>>                       fparamsPtr->frameContentSize = ZSTD_readLE32((const char *)src + 4);
>>>                       fparamsPtr->windowSize = 0; /* windowSize==0 means a frame is skippable */
>>>                       return 0;
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



