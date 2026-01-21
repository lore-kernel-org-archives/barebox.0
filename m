Delivery-date: Wed, 21 Jan 2026 10:14:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viUIC-003i5X-2g
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 10:14:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viUIB-0000Wc-PA
	for lore@pengutronix.de; Wed, 21 Jan 2026 10:14:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=abDhZHRuTqqDxdbTmEfQBvrRRNpbTDQX7ZqBDo+eU2E=; b=H31HD7/2P/EG7PcZ8zxsAr6Gl0
	goBDkVyFqzvzPLr56Oe3O+s/QXiFRFV3qXL6+RtKenYFs6Ae246JL8MBwSzJaHjdgxwy776xXSYyH
	Ab3BFAjn86eaCs7SN44WPpBL9eaq+wOpd8qRWvaHCG8jp/oZJImd3UP0egYLV75p+5OAnZf6gss5t
	6gb96W0YjrgfHVU4SyiH5jOjwF5V4HAQUO0Yw4lt5Bsa41qPRVPQjUiQuNMSDZhja7S752+kYeRoX
	aaS1s9fTkqkGlu0M/QFtVBMVvP9f+TUgESZPE+LNd1eWHTmwHjRptrkhDMGS/37rbgGwfgZEeJU0r
	4TDPehCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viUHd-00000005AKu-1BHZ;
	Wed, 21 Jan 2026 09:13:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viUHa-00000005AJG-0q8v
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 09:13:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viUHX-0000NC-6S; Wed, 21 Jan 2026 10:13:43 +0100
Message-ID: <2b6f48d1-7258-40f1-9fa3-8f2f399f4bb6@pengutronix.de>
Date: Wed, 21 Jan 2026 10:13:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20260120-android-image-v1-0-820595a1b8a4@pengutronix.de>
 <20260120-android-image-v1-2-820595a1b8a4@pengutronix.de>
 <758e79dc-56df-491c-919f-906cdb91c56c@pengutronix.de>
 <aXCJwR366e11cIMM@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aXCJwR366e11cIMM@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_011346_240849_3AA213A7 
X-CRM114-Status: GOOD (  29.09  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] bootm: add generic android image handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 1/21/26 09:09, Sascha Hauer wrote:
> On Tue, Jan 20, 2026 at 04:04:37PM +0100, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 1/20/26 3:55 PM, Sascha Hauer wrote:
>>> +	if (kernel)
>>> +		bootm_data.os_file = kernel;
>>> +
>>> +	if (initrd)
>>> +		bootm_data.initrd_file = initrd;
>>> +
>>> +	close(fd);
>>> +
>>> +	ret = bootm_boot(&bootm_data);
>>
>> Two quick comments:
>>
>> I think this feature will not be usable when
>> CONFIG_BOOTM_OFTREE_FALLBACK is disabled, which is a shame, because I
>> think normal deployments should disable that option to avoid unexpected
>> fallback behavior.
>>
>> Here the fallback is expected though. Would it be possible to change
>> this, so the barebox oftree is passed along explicitly to avoid falling
>> into the fallback?
> 
> When a user chooses to disable CONFIG_BOOTM_OFTREE_FALLBACK to avoid
> using the internal device tree as a fallback then this decision should
> be universally honoured. Explicitly inserting the internal device tree
> in special cases contradicts this.
> 
> Note that I have used this feature with a FIT image which carries its
> own device tree, so I wasn't affected.
> 
> We currently only support version 1 of the Android image format. Since
> version 2 the image can also embed a device tree which can be passed
> with the --dtb option to the fastboot command, so the solution to
> address your concerns should be adding support for version 2.
> 
> I would consider this a future enhancement though.

Ah, didn't consider that you can just boot FIT images this way.
Then I also think it's ok keeping it as-is.

>> On a related note, this will probably trigger a warning on every boot if
>> the barebox device tree has a state node. Maybe we could mark dupes of
>> the barebox device tree as such (maybe set device_node::dev to a special
>> value?!), so we can skip the warning?
> 
> You mean this warning?
> 
> dev_warn(&state->dev, "Warning: Kernel devicetree contains state node, replacing it\n");
> 
> We could mark it as duplicate as you suggested. Another possibility
> would be to delete state nodes while duplicating the internal device tree.

Oh, I like the second suggestion, thanks.

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


