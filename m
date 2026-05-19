Delivery-date: Tue, 19 May 2026 15:16:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPKJK-001VW7-39
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 15:16:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPKJK-0003xT-9Y
	for lore@pengutronix.de; Tue, 19 May 2026 15:16:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kRsYDnxVDfWsRHCk2Y/MwTw6n2UC+NjfP4Jz5C7RPjE=; b=a5CvsjqvbA9fjVzd7rcL+6hfcQ
	wEUbkpTD5BQq5Xg2rW3RfqcjMKyRtRcK7OOt6lPeWMwQ26Vsysf2hUlWEQBcAJFkwkOeg/XOenn+F
	Y86WFOAfgVTonhRWrA3+sMYMQ0PlTMWyJp2o/S3P71dUQ1PeTwXfmiqeCSvyH2wG8i1H234MqKiJ0
	njVhhjQiM3rtoc13GNH3B34SKbIVHUkkpwUz9IGWqgXt+bTeOcKIlKjEnDM9GaQ3S7wBP8amN+GnO
	Dzr+WgIZQDdn+Rj1PaIZiJfuEeaPZXOC9vJsK7/Pjx85hXnL+f2HXCvXk8GvylaWgmX8yu9d0Nx/v
	7KN/TQ8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPKJ3-00000001blb-3d7j;
	Tue, 19 May 2026 13:16:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPKJ0-00000001bkU-3Mab
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 13:16:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPKIz-0003uF-5q; Tue, 19 May 2026 15:16:17 +0200
Message-ID: <eae337cc-a6b0-4e65-9d58-5a88f67fe34d@pengutronix.de>
Date: Tue, 19 May 2026 15:16:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <E1wPKH9-0000000HJbn-1VAn@pty.whiteo.stw.pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <E1wPKH9-0000000HJbn-1VAn@pty.whiteo.stw.pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_061618_847199_362BE9CF 
X-CRM114-Status: GOOD (  22.38  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fs: ubifs: zero initialize allocated inode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 5/19/26 3:14 PM, Sascha Hauer wrote:
> On 2026-05-19 15:03, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 5/19/26 2:44 PM, Sascha Hauer wrote:
>>> UBIFS uses kmem_cache_alloc() to allocate an ubifs_inode. The memory
>>> returned from kmem_cache_alloc() is not zeroed. ubifs_alloc_inode()
>>> zeroes all fields in the ubifs_inode except the embedded struct inode.
>>> In Linux this is done in the kmem_cache constructor function which calls
>>> inode_init_once(). In barebox we have the constructor function as well,
>>> but we don't have an equivalent of inode_init_once(), so the constructor
>>> is empty.  zero the inode in the constructor instead so that barebox
>>> gets a zeroed inode.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>  fs/ubifs/super.c | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
>>> index 45037b42ea..4022270d4c 100644
>>> --- a/fs/ubifs/super.c
>>> +++ b/fs/ubifs/super.c
>>> @@ -1128,6 +1128,7 @@ static void kill_ubifs_super(struct super_block *s)
>>>   */
>>>  static void inode_slab_ctor(void *obj)
>>>  {
>>> +	memset(obj, 0, sizeof(struct inode));
>>
>> This works because inode is the first member of struct ubifs_inode, but
>> I would prefer to avoid depending on that as it might change with a
>> future update.
>>
>> Can't we just zero all of struct ubifs_inode here to be on the safe side?
> 
> That was my first approach as well, but I was afraid this could be lost
> on an UBIFS update.
> 
> I could treat obj as a struct ubifs_inode and zero the inode member
> instead.

Yes, that would work too.

> 
> That would have prevented the bug I introduced with the JFFS2 patch as
> well.
> 
> Sascha
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



