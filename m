Delivery-date: Wed, 31 Jul 2024 09:20:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ3dK-004j3i-0I
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 09:20:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ3dJ-0007MW-Es
	for lore@pengutronix.de; Wed, 31 Jul 2024 09:20:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sOXI5fruWMNgvYI8uwm3CjM2Oyd9/CL5A3qbUbqxcxg=; b=IrOdQ3h1OBmuxaSC3Yl+KRh4ed
	tty7Cr0LkQFobOpbjbg26fWtc+Ts24cVIyirkEFEYYIxA9zh6u1AAA0tnsYTK+/OCW1Ml/5aexowx
	zoEwQ0V1yplXuGGKQGShRc/mSXiaK4d7JaNOSb0VcuOFiUf4OfV2OiQrKsEvE11iDjBxesbpA3MGy
	rKVpuvSPjoBRK4/yn66qZA+ArQ+jQg8HYxTDZD6mcvvH0MRiq971Dx3kP7Dk76MZExdeVCFvOkzfq
	42u6hzSYVs64i4b7B3jYvcos9GT8XOMus5B7Q8tCQ7Jz2bunAlLQaT7oo3KDWLhBlVpYSZcsOZFa4
	w2swB+1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3cq-000000006CC-18MI;
	Wed, 31 Jul 2024 07:19:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3cm-000000006Bc-2Qsg
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 07:19:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3cl-0007Fz-99; Wed, 31 Jul 2024 09:19:51 +0200
Message-ID: <fd9cbac7-64c1-4bef-b6e7-a2495abef83a@pengutronix.de>
Date: Wed, 31 Jul 2024 09:19:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
 <20240730071929.2016537-7-a.fatoum@pengutronix.de>
 <Zqiv4ROuyhUNQz4p@pengutronix.de>
 <30067938-201b-4488-b435-011ac90c7fd3@pengutronix.de>
Content-Language: en-US
In-Reply-To: <30067938-201b-4488-b435-011ac90c7fd3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_001952_654098_29EAF59D 
X-CRM114-Status: GOOD (  21.46  )
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
Subject: Re: [PATCH 06/10] mci: core: use CONFIG_MCI_WRITE, not
 CONFIG_BLOCK_WRITE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello again,

On 30.07.24 13:08, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 30.07.24 11:18, Sascha Hauer wrote:
>> On Tue, Jul 30, 2024 at 09:19:25AM +0200, Ahmad Fatoum wrote:
>>> There's a more specific CONFIG_MCI_WRITE that's so far only used to
>>> remove write support for in the Atmel MCI driver. We should use the same
>>> symbol also to remove support in the MCI core instead of relying on its
>>> parent CONFIG_BLOCK_WRITE option.
>>
>> Currently CONFIG_MCI_WRITE has no relation to CONFIG_BLOCK_WRITE.
>> Having CONFIG_MCI_WRITE enabled and CONFIG_BLOCK_WRITE disabled doesn't
>> make sense. Shouldn't CONFIG_MCI_WRITE depend on CONFIG_BLOCK_WRITE?
>>
>> Also having CONFIG_BLOCK_WRITE enabled and CONFIG_MCI_WRITE disabled
>> allows you to support writing to block devices that are not MCI devices.
>> Given that the vast majority of block devices are actually MCI devices
>> this seems rather exotic.
>>
>> Maybe we should drop CONFIG_MCI_WRITE and replace it with
>> CONFIG_BLOCK_WRITE, or just have
>>
>> config MCI_WRITE
>> 	bool
>> 	default y if BLOCK_WRITE
> 
> This works for me. I can do this for v2.

I looked into this and MCI_WRITE selects DISK_WRITE, which selects
BLOCK_WRITE. BLOCK_WRITE has no prompt. I'd prefer to keep this as-is.

> 
> 
>>
>> Sascha
>>
>>>
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> ---
>>>  drivers/mci/mci-core.c | 8 +++-----
>>>  1 file changed, 3 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
>>> index f6f8a6adabb9..3a5fb0330700 100644
>>> --- a/drivers/mci/mci-core.c
>>> +++ b/drivers/mci/mci-core.c
>>> @@ -1801,8 +1801,8 @@ static int mci_blk_part_switch(struct mci_part *part)
>>>   *
>>>   * This routine expects the buffer has the correct size to read all data!
>>>   */
>>> -static int __maybe_unused mci_sd_write(struct block_device *blk,
>>> -				const void *buffer, sector_t block, blkcnt_t num_blocks)
>>> +static int mci_sd_write(struct block_device *blk,
>>> +			const void *buffer, sector_t block, blkcnt_t num_blocks)
>>>  {
>>>  	struct mci_part *part = container_of(blk, struct mci_part, blk);
>>>  	struct mci *mci = part->mci;
>>> @@ -2179,9 +2179,7 @@ static int mci_check_if_already_initialized(struct mci *mci)
>>>  
>>>  static struct block_device_ops mci_ops = {
>>>  	.read = mci_sd_read,
>>> -#ifdef CONFIG_BLOCK_WRITE
>>> -	.write = mci_sd_write,
>>> -#endif
>>> +	.write = IS_ENABLED(CONFIG_MCI_WRITE) ? mci_sd_write : NULL,
>>>  };
>>>  
>>>  static int mci_set_boot(struct param_d *param, void *priv)
>>> -- 
>>> 2.39.2
>>>
>>>
>>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



