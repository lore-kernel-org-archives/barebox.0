Delivery-date: Wed, 19 Mar 2025 16:46:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvcm-001VmO-25
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 16:46:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvcl-0004m0-GX
	for lore@pengutronix.de; Wed, 19 Mar 2025 16:46:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MYGfnr8sYTJkPtDux0Ll8QiV1YGj09E8iuoAIbpACPY=; b=TV6EG/MdrXnudlQKBsIEy55Zuo
	MUhS69/2gwHpKKFKI3M1qODY6yFXr5bR5mZY9vYrgC7CCo2GNu1/65W6idGzHSKpWRo3/dpxCV1sb
	w0UVe+c09P4mrVPB49jtjSVle9KXdJgzOdtx5foV+vFr37eAevFwb/POAn3AsdUSruidHW5DGpmC6
	wkQ8V6OvTHOQ1QGrbnHs5rfi2Cf5RKpwpdvMAs+YjWhuuM8GmKXE6Ux5sScqhCXjYuChEgrBpqfeu
	vbyJwQFyISFMOgvNJndGD/W0lOTsNWeR7mqYEqk58Ibn7hGN+nK1DwJMQ2NqFWNWzlv3hQ8e18MZF
	SDF9bXlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvcN-00000009RXS-1Ty0;
	Wed, 19 Mar 2025 15:46:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvXb-00000009Q32-43M5
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 15:41:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuvXa-0002yP-Mw; Wed, 19 Mar 2025 16:41:10 +0100
Message-ID: <d8abf87b-2cda-4b21-ad76-f51ac888e300@pengutronix.de>
Date: Wed, 19 Mar 2025 16:41:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
 <20250312-rpmb-v1-4-0f213382a3f3@pengutronix.de>
 <9c66b31b-a79c-4a07-a03f-119c7c3dadc7@pengutronix.de>
 <Z9lZ8Q4bhUnuur1X@pengutronix.de> <Z9riy3YWmESSdii7@pengutronix.de>
 <29edc564-8919-40d3-b4ac-d0e622a92bcd@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <29edc564-8919-40d3-b4ac-d0e622a92bcd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_084112_005095_0E239851 
X-CRM114-Status: GOOD (  16.95  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/9] mci: add RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 3/19/25 16:34, Ahmad Fatoum wrote:
> 
> 
> On 3/19/25 16:29, Sascha Hauer wrote:
>> On Tue, Mar 18, 2025 at 12:33:05PM +0100, Sascha Hauer wrote:
>>> On Mon, Mar 17, 2025 at 04:18:32PM +0100, Ahmad Fatoum wrote:
>>>> Hello Sascha,
>>>>
>>>> On 3/12/25 13:16, Sascha Hauer wrote:
>>>>> +
>>>>> +int mci_rpmb_route_frames(struct mci *mci, void *req, unsigned long reqlen,
>>>>> +			  void *rsp, unsigned long rsplen)
>>>>> +{
>>>>> +	/*
>>>>> +	 * Whoever crafted the data supplied to this function knows how to
>>>>> +	 * format the PRMB frames and which response is expected. If
>>>>> +	 * there's some unexpected mismatch it's more helpful to report an
>>>>> +	 * error immediately than trying to guess what was the intention
>>>>> +	 * and possibly just delay an eventual error which will be harder
>>>>> +	 * to track down.
>>>>> +	 */
>>>>> +	void *rpmb_data = NULL;
>>>>> +	int ret;
>>>>> +
>>>>> +	mci_blk_part_switch(mci->rpmb_part);
>>>>> +
>>>>> +	if (!IS_ALIGNED((uintptr_t)req, ARCH_DMA_MINALIGN)) {
>>>>
>>>> Even if alignment happens to be correct, there is no guarantee that
>>>> there is no other data sharing a cache line.
>>>
>>> reqlen is expected to be a single block of 512 bytes, so indeed when req
>>> is aligned then the end is cacheline aligned as well. We could check
>>> reqlen as well, but I actually never ran into this case, so we can just
>>> return an error for now as you suggested.
>>
>> I was wrong here. the request is placed directly behind a 6 byte struct,
>> so it's guaranteed to be unaligned. We always have to copy it.
>>
>> The response might be unaligned as well, but must be aligned to pass it
>> to the mmc layer. In my tests the response was always aligned, but
>> better safe than sorry, so I'll add an alignment check here as well,
>> this time including a check for the length.

Sorry about the empty mail. Can we have a generic helper for this?

Maybe dma_map_buf_is_aligned or something like that, preferably with a
device argument from the outset.

Cheers,
Ahmad

> 
> 
> 
>>
>> Sascha
>>
> 



