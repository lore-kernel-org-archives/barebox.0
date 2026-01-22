Delivery-date: Thu, 22 Jan 2026 15:19:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vivXQ-0049Mw-27
	for lore@lore.pengutronix.de;
	Thu, 22 Jan 2026 15:19:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vivXP-0003Ud-Lj
	for lore@pengutronix.de; Thu, 22 Jan 2026 15:19:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+zsvI9VJVpAtkQ2+c1N+jhAlZOv+YCdC5T/5E/fQ/cY=; b=P9RPCmEcnLgVHH
	wntCS1gZcwtsRJl7U9ldByNo1cOcJ7aOLxEFexvdtP3owkoN462iweJbkRb6mvrbAdAXzoXHcES37
	S0PYpUlPxASs9IQYeqtYtkdIxCiWGOdKAVLA0GK9rCYZUD6BhgXjtDX4ge3ougSr4ED9cLgfV1M+m
	FswrVGUeRlBuHiRKy0+wXMYr3LxXnUU5iLzCqWNbhwqrAXPM+/3m3p+lkJIlwVdOo0kgRBoXjoF2Y
	zLBb4pJNBvCnJWSg7fOtKlaxZHlAJ03VQob1NvehtgJQ+GgG0qcvJhhKeD3mS6M0oJONA/7uRhz7R
	rBAWsTMxRWIFkiGSQVBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivWy-00000007E9b-3AzF;
	Thu, 22 Jan 2026 14:19:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivWv-00000007E8C-3kw9
	for barebox@lists.infradead.org;
	Thu, 22 Jan 2026 14:19:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vivWt-0003OJ-W5; Thu, 22 Jan 2026 15:19:24 +0100
Message-ID: <95f6b90e-743d-429e-8301-3b893b9754e6@pengutronix.de>
Date: Thu, 22 Jan 2026 15:19:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-16-8f0625ac5471@pengutronix.de>
 <443e12f3-b1fb-402c-bd49-223fecafcc57@pengutronix.de>
 <20260118195336.7alv33wz3nrvpqsr@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260118195336.7alv33wz3nrvpqsr@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_061925_936684_A58C7D53 
X-CRM114-Status: GOOD (  22.30  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
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
Subject: Re: [PATCH 16/23] pbl: fdt: add fdt_copy_node helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 1/18/26 8:53 PM, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 26-01-15, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 11/10/25 9:34 PM, Marco Felsch wrote:
>>> Add a helper to copy a node from a src FDT into a dest FDT. The helper
>>> is used later on by OP-TEE because OP-TEE appends FTD overlay fragements
>>> into the provided FTD.
>>
>> Does this correctly handle the case of a node already existing in the
>> base DT further down the tree or does it add a new node with the same name?
> 
> I think this is done by:
> 
> 	node = fdt_add_subnode(dest_fdt, dest_node, name);
> 	if (node == -FDT_ERR_EXISTS) {
> 		node = fdt_subnode_offset(dest_fdt, dest_node, name);
> 		if (node == -FDT_ERR_NOTFOUND)
> 			return -FDT_ERR_INTERNAL;
> 	}
> 
>> I am not convinced we need such a function in the PBL, but I will read
>> along.
> 
> This function is used to split the overlay-fragments from the
> barebox-pbl passed FDT which are added by OP-TEE. The reason for doing
> this was to not cause any issue during the of_overlay_apply_tree() call
> because we have added an odd FDT overlay.
> 
> Therefore I'm going to extract the FDTO fragments first.

Why can't this be done in barebox proper?

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
> 
>> Cheers,
>> Ahmad
>>
>> -- 
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



