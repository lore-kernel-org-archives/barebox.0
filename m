Delivery-date: Thu, 31 Oct 2024 08:52:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6PyU-00317k-2Q
	for lore@lore.pengutronix.de;
	Thu, 31 Oct 2024 08:52:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6PyV-0000cT-Dr
	for lore@pengutronix.de; Thu, 31 Oct 2024 08:52:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SBzZAUPjML8G6uoalKH8+/jg/6wnqE3rdq6lENP41yE=; b=LkIJGSbLygKIsIDl74TIyZqU6k
	mul7n6NxBuVLgA+JhDcQu0GClGxhVeNYafATEiU2JuwrLXsHTP/voEdD/GMicNq2njQ5Wb7oh51iS
	WM0LtdcovzG8k/kZv6WKMlqcxtj/haZaKRDY0emnFgxIaoHljooUSWTjHT7Yf5hWbAtIjgYdOItcB
	HAdEpJKRkXbxRXmrNgETBu1PtLQvIlKAuvp4FIiHGso+4LEwtPunrBbExWRzsm70hyIjv+lyohw6k
	PnL5jal+CqM/y7xELgbFAHkbdYI0+j2Ce3hDa+Rfa55m7wxVMijQ7i9IrLAomININ0hUUJUmP9h/T
	+AynC1KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Pxv-00000002rD8-3WBs;
	Thu, 31 Oct 2024 07:51:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Pxs-00000002rBa-2aBR
	for barebox@lists.infradead.org;
	Thu, 31 Oct 2024 07:51:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t6Pxo-0000XT-H4; Thu, 31 Oct 2024 08:51:28 +0100
Message-ID: <888b3ac2-c8ee-4e58-9fba-aa7a4ca036de@pengutronix.de>
Date: Thu, 31 Oct 2024 08:51:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
References: <20241030115407.841758-1-eagle.alexander923@gmail.com>
 <c79699ff-49d9-4cb5-9292-eeb8bdf85702@pengutronix.de>
 <CAP1tNvR_B-Au4k3F2d4s0fqyo-k+bkQh6OOh8LsM6PeJpVaGCg@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvR_B-Au4k3F2d4s0fqyo-k+bkQh6OOh8LsM6PeJpVaGCg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_005132_686326_1C560689 
X-CRM114-Status: GOOD (  14.09  )
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
Subject: Re: [PATCH] Revert "mtd: nand: make interleaved placement optional"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 30.10.24 18:50, Alexander Shiyan wrote:
> Hello.
> 
>>> This reverts commit d1fe68f1b010b83ddd3559ffbfcb70dca68b2563
>>> and ec3b8c646bdc8c2ea0a78923ccb745012eabc097 (as a fixup).
>>>
>>> The message "CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED is disabled"
>>> is always issued, regardless of the MTD ECC layout used, since it
>>> is executed through "fallthrough" from the previous case statement.
>>>
>>> Additionally, if !IS_ENABLED(CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED)
>>> is triggered, the patch calls break, which disables the additional checks.
> ...
>> These config options were added to control barebox size. We need something
>> here, so size conscious users can opt out.
> 
> Well, I hope you understood from the description that it was not done
> entirely correctly.

Yes, but I think there should be a better way than doing a revert.

Cheers,
Ahmad

> 
> Thanks!
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


