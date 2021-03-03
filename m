Delivery-date: Wed, 03 Mar 2021 18:43:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHVWX-0008SW-JR
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 18:43:01 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHVWW-0002lb-4y
	for lore@pengutronix.de; Wed, 03 Mar 2021 18:43:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RlUyc7ERcL6rhDQfD5BDiQ7vycvGULU3Kzac9RSwlGk=; b=cEXfFI/V13TYMVv3d6tWdOCAE
	DyYNIJP2VtbOK8cHXw0xTIzaTNkbF66qGKJjl44lI4MIbvXFQnDt6PXItu6GzM9bClgtuL2nCKtnl
	M2NGH6FvF5nviSIMc3DQ935ACsoTRZsWFvEM0Tbq7fsv0TwZk/Q8wlyxKzHHWbciEX7yNkKeXqPzu
	QI1GQ/hB+XJ51QRduz4hoMenX1kLDrYde7n5GAaa5KpkrmeUN4RUzUnqVyfITRUEKfiuPX8a8snRP
	Je4+GUZAjmFST8u8Nb57R3laT3lZavTw4em7KFQQRyeJqkIW/7NNxPpX8zORA1qbpsVMknJMWkz+o
	zbnwoOdTQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHVUw-005qcD-HA; Wed, 03 Mar 2021 17:41:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSvv-005Fh7-N8
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 14:57:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=A7l8VC7jDgm0ylv4EVUjgJRqi7c5L61b/3c2kXevsIg=; b=SuDEDUr86fkWep2mmsROcFtLGd
 0UWn+G/jUs/n5+N90eUI8Y+vuHnnh/8IUXLZ/mOPT8EDYr8KV+cxfoRY9xKVmH8MJ0lhTl+e9OFCg
 FoEYQKUjWUCFKX7EMf5UPj2vsWIvFu/uqCzQoJNxXpvYo6zUrRe1rQpXZfpV5sKkmZgWsPAOegEWO
 vNdn/VMTxR2d8B+bkgA9DxfPqWzga+iycUiD3Pqmci1nTXSdsRdj02oD8poNtWqzyRvjSWl40LUA8
 mS5PwrBaEYoT+N0/Wkr6HybbPVFf4fMR5L4bHkjPCNFDBsmMdQn34A24F74EeFGvj0owrGhXFczsK
 7Ta4nA+w==;
Received: from mib.mailinblack.com ([137.74.84.110])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHNtB-0021nH-Vw
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 09:33:54 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id F10131A72E8
 for <barebox@lists.infradead.org>; Wed,  3 Mar 2021 09:33:46 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLT8T58V;
 Wed, 03 Mar 2021 09:33:46 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id BEAB11A72E2;
 Wed,  3 Mar 2021 09:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 9373E27E0847;
 Wed,  3 Mar 2021 10:33:46 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id S7mPCoqaWuDI; Wed,  3 Mar 2021 10:33:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1617A27E083D;
 Wed,  3 Mar 2021 10:33:46 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 1617A27E083D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614764026;
 bh=A7l8VC7jDgm0ylv4EVUjgJRqi7c5L61b/3c2kXevsIg=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=HKlxobHC9UbBhNRr+HTJLEhSOqYSBpMm7r+SFn7+w/CX4XysGP58vm5AFzhXr/SPN
 o+w6fqgmC4na8nsogsYxSLnTWE/tOwn4EdbSh3I6nQatR561xK3oXNfeH9WPvzW7kV
 2+mpmO2n+vDXg6sjUvzOoSEGb1u1ukVu/W614EzY=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id dnWdtmiaJspW; Wed,  3 Mar 2021 10:33:46 +0100 (CET)
Received: from [192.168.1.22]
 (aclermont-ferrand-157-1-38-93.w90-42.abo.wanadoo.fr [90.42.165.93])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id B769E27E0708;
 Wed,  3 Mar 2021 10:33:45 +0100 (CET)
To: Lucas Stach <l.stach@pengutronix.de>, Jules Maselbas <jmaselbas@kalray.eu>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20210301155851.12463-1-jmaselbas@kalray.eu>
 <20210301155851.12463-3-jmaselbas@kalray.eu>
 <04c18498-970c-9a69-ebf7-97bf85d2f961@pengutronix.de>
 <595cae1711b8bdc79876371194cadd772f8646e6.camel@pengutronix.de>
 <20210302105827.GD9273@tellis.lin.mbt.kalray.eu>
 <927983935004c68be871fe2182b0e33fd0dff381.camel@pengutronix.de>
From: Yann Sionneau <ysionneau@kalray.eu>
Message-ID: <df2f974e-74f5-6054-8b68-03bcad091aad@kalray.eu>
Date: Wed, 3 Mar 2021 10:33:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <927983935004c68be871fe2182b0e33fd0dff381.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_093354_809728_2CEF12A6 
X-CRM114-Status: GOOD (  19.77  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] kvx: Implement dma handling primitives
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 03/03/2021 10:14, Lucas Stach wrote:

> Hi Jules,
>
> Am Dienstag, dem 02.03.2021 um 11:58 +0100 schrieb Jules Maselbas:
>> Hi Lucas and Ahmad,
>>
>> On Tue, Mar 02, 2021 at 11:14:09AM +0100, Lucas Stach wrote:
>>> Am Dienstag, dem 02.03.2021 um 09:37 +0100 schrieb Ahmad Fatoum:
>>>> Hello Jules, Yann,
>>>>
>>>> On 01.03.21 16:58, Jules Maselbas wrote:
>>>>> From: Yann Sionneau <ysionneau@kalray.eu>
>>>> Some comments inline. I am not a cache cohereny expert, so take
>>>> it with a grain of salt.
>>>>
>>>>> +static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
>>>>> +{
>>>>> +	void *ret = xmemalign(PAGE_SIZE, size);
>>>>> +
>>>>> +	if (dma_handle)
>>>>> +		*dma_handle = (dma_addr_t)(uintptr_t)ret;
>>>>> +
>>>>> +	return ret;
>>>>> +}
>>>> This would imply that the CPU barebox is booting is coherent with all
>>>>
>>>> devices that barebox needs to access. Is that the case?
>>>>
>>>> (See below)
>>>>
>> This is bogus, memory is not coherent with all devices, this should be
>> handled by the mmu, which is currently not supported in our barebox port.
>> Using this can lead to coherency issues. We can either drop this
>> function, so that is leads to an error at link time, or add a call to
>> BUG for a runtime error.
>>
>> Right now we aren't using any driver that require dma_alloc_coherent,
>> but we use drivers that requires dma_alloc and dma_map_single instead.
> I would vote for a BUILD_BUG_ON_MSG in this function, so you get a
> compile time error and you can state what needs to be done in order to
> get rid of the failure.

If we define the function and put a BUILD_BUG_ON_MSG() inside, I am 
guessing that all builds will fail, right?

But we only want the builds that actually call this function to fail.

Maybe we can just define dma_alloc_coherent() as being a macro, to 
BUILD_BUG_ON_MSG.

Like:

#define dma_alloc_coherent(a, b) BUILD_BUG_ON_MSG(1, "dma_alloc_coherent 
is not supported yet on KVX. You would need to add MMU support to be 
able to map uncached pages")

What do you think?

>
>>>>> +/*
>>>>> + * The implementation of arch should follow the following rules:
>>>>> + *		map		for_cpu		for_device	unmap
>>>>> + * TO_DEV	writeback	none		writeback	none
>>>>> + * FROM_DEV	invalidate	invalidate(*)	invalidate	invalidate(*)
>>>>> + * BIDIR	writeback	invalidate	writeback	invalidate
>>>>> + *
>>>>> + * (*) - only necessary if the CPU speculatively prefetches.
>>>>> + *
>>>>> + * (see https://lkml.org/lkml/2018/5/18/979)
>>>>> + */
>>>>> +
>>>>> +void dma_sync_single_for_device(dma_addr_t addr, size_t size,
>>>>> +				enum dma_data_direction dir)
>>>>> +{
>>>>> +	switch (dir) {
>>>>> +	case DMA_FROM_DEVICE:
>>>>> +		kvx_dcache_invalidate_mem_area(addr, size);
>>> Why do you need to explicitly invalidate, but not flush? Even if the
>>> CPU speculatively prefetches, the coherency protocol should make sure
>>> to invalidate the speculatively loaded lines, right?
>> Since we don't have a coherent memory, here we need to invalidate L1
>> dcache to let the CPU see deivce's writes in memory.
>> Also every write goes through the cache, flush is not required.
> Ah, if all your caches are write-through that makes sense. Can you add
> a comment somewhere stating that this implementation assumes WT caches
> on KVX? This way we can avoid the confusion Ahamd and myself fell into
> when glancing over the code.
>
> Regards,
> Lucas
>
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

