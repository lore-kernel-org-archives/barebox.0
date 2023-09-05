Delivery-date: Tue, 05 Sep 2023 14:29:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdVBE-004vff-DT
	for lore@lore.pengutronix.de; Tue, 05 Sep 2023 14:29:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdVBC-0007lv-2C
	for lore@pengutronix.de; Tue, 05 Sep 2023 14:29:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3dSFimIW7l93oI1hUtfqdMJm0W3NvMWI7m0xNr6mmwQ=; b=nlpylccKn7QZH0dpFyHgOD1jrb
	QVy0jzEBgdFiVvm+NYSKfu2Hmz2X/W1crnj2SxdXB67nXsBRBe5a0kFjxilbQ8uEqWyWg0IodNRD0
	CdKJ7LRScRgKJCvMZk1tNG63klp1T/NACkhA0T/dDCEmRdrpSp3HDAh6LcbqwG22mUjU75iR1cIbV
	qDEEa445OWqEyyfUlmgCn+KPZcA35ARGXBBe/ukzyiFW6g9i327pe3l8cwVVt6UuqZCx4uivDeZ1f
	2uAir1a4COowaZvHntRQN044h0G0eVdvCuVEq9vuc/WiW1sp890gLOd8/7sZ2bp6nV7XwVRTqTmep
	52k0khYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdVA8-0060bG-2Z;
	Tue, 05 Sep 2023 12:28:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdVA5-0060ae-0L
	for barebox@lists.infradead.org;
	Tue, 05 Sep 2023 12:28:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1qdVA3-00071k-QC; Tue, 05 Sep 2023 14:28:03 +0200
Message-ID: <8b79c33c-95be-d24f-c144-0a8aed460927@pengutronix.de>
Date: Tue, 5 Sep 2023 14:27:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US, de-DE
To: Sascha Hauer <sha@pengutronix.de>
Cc: patchwork-jzi@pengutronix.de,
 Barebox Mailing List <barebox@lists.infradead.org>
References: <20230829-crc32_in_pbl-v2-1-8a0a575b360a@pengutronix.de>
 <20230904081944.GB189379@pengutronix.de>
 <930ff968-e07b-d427-4253-a433435e26b8@pengutronix.de>
 <20230905122636.GM189379@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
In-Reply-To: <20230905122636.GM189379@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_052805_137850_78FF1C23 
X-CRM114-Status: GOOD (  16.88  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] crypto: crc32: make crc32 available in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 9/5/23 14:26, Sascha Hauer wrote:
> On Tue, Sep 05, 2023 at 09:57:21AM +0200, Johannes Zink wrote:
>> Hi Sascha,
>>
>> On 9/4/23 10:19, Sascha Hauer wrote:
>>> On Tue, Aug 29, 2023 at 04:38:32PM +0200, Johannes Zink wrote:
>>>> crc32 may be required in PBL for checking data integrity. Add it to PBL
>>>> when CONFIG_CRC32 is enabled.
>>>>
>>>> To save some memory use a slower-but-smaller variant of the crc32 algorithm
>>>> in the PBL.
>>>
>>> I've just sent an alternative patch series. Please check if that works
>>> for you.
>>
>> What did you base the series on? Maybe I am holding it wrong, but it does
>> neither apply on v2023.07.1 which I use in my customer project nor on
>> upstream/next.
> 
> It's already included in next. I had to re-order the patches though
> because my original order caused some compile failures in between.
> 

I see, thanks. I will pick and test the patches on my customer hardware in the 
next few days.

Johannes

> Sascha
> 
> 

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



