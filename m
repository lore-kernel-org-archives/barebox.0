Delivery-date: Mon, 12 Aug 2024 14:12:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdTuA-008qwi-1u
	for lore@lore.pengutronix.de;
	Mon, 12 Aug 2024 14:12:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdTu9-00034o-Vg
	for lore@pengutronix.de; Mon, 12 Aug 2024 14:12:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hWOuw2/BixWZgwMfHY4JJJwICTwNc1SJa6rGPwcVD1E=; b=PyLcEgXbxWbl7dq50EP8gPMdf9
	VftbnxQaJCQH5+2rzcvJ3MKnVYb+u1D4+sD62L2a7qHrVno27Z10xP8yJyk0Hm3TmFqhtP0uFaPF+
	k0m0byLu8hTdUv1PZQ+sXYR9zFguHBoN/kijAjRZ2/s7Tux/HWzJYzVxgW0s2bqUN9CexBuAscts7
	kJYDg6Dbut2HUb/NQI8nWQ+hUGU3x2gnjN/bXV2fhOUd5dDxuw7HSUnqrKJ/nlENyzAIn2Y3214uv
	p1HoVkVPJEyuYxnI6vUB/CabuenuRrFLceyoyLxYz5zkH9lUwaQ7gZzNVUsjGBf381XCRnajXAjYv
	pUDpPqPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdTtW-00000000E1v-3ryF;
	Mon, 12 Aug 2024 12:11:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdTs9-00000000Dce-0OmG
	for barebox@lists.infradead.org;
	Mon, 12 Aug 2024 12:10:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdTs6-0002rf-I2; Mon, 12 Aug 2024 14:09:58 +0200
Message-ID: <b56071b2-e46c-4feb-aaf2-ec35f26ccfa0@pengutronix.de>
Date: Mon, 12 Aug 2024 14:09:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: giorgio.nicole@arcor.de, barebox@lists.infradead.org
References: <48fe5dbe42e14b518a86e25bf21e4425@arcor.de>
Content-Language: en-US
Cc: Christian Melki <christian.melki@t2data.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <48fe5dbe42e14b518a86e25bf21e4425@arcor.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_051001_231790_ADA09E8D 
X-CRM114-Status: GOOD (  19.96  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: barebox on EFI bios and secure boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Giorgio,

On 08.08.24 11:45, giorgio.nicole@arcor.de wrote:
> I use barebox to boot a linux kernel on an Intel atom based PC with an EFI bios and this just works.
> 
> Now I wanted to configure the bios to enable the secure boot mode: this means I tried to write some
> EFI variables (db, dbx, KEK, PK); for this I used the efitools utils (efi-updatevar for example) but it didn't
> worked: I always get an 'Invalid argument' error.

In this case, neither barebox or the kernel are signed, right?

> After some unsuccessful tries I booted the linux kernel directly from the bios, without barebox and in this
> case the efi-updatevar tool worked as expected; so I suppose that starting barebox has some kind of effect
> on the persistent store for the efi vars.

I am not familiar with UEFI secure boot, so I don't know if there is some lock
down happening here or what could cause this.

Some things to try:

 - Are other variables writable?
 - Can you write this variable from barebox? wecho -o /efivars/your-variable
   or memcpy -d /efivars/some-variable

> Does anyone have similar issues or a suggestion about what can be checked to fix this ???

Christian (CC'd) mentioned a while ago that he had a secure booting UEFI system.
I asked him on IRC and he mentioned using lockdown.efi for lock down back then.

Hope this helps and let me know how it goes.

Cheers,
Ahmad

> 
> thank you,
> 
> giorgio
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


