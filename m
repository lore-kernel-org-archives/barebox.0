Delivery-date: Thu, 12 Mar 2026 09:30:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0bRG-00Al3Q-37
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 09:30:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0bRH-0006pv-9d
	for lore@pengutronix.de; Thu, 12 Mar 2026 09:30:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eE2x5arEewgWACeLNV3xHpncR63VeN0E1Jskk5zosxA=; b=daj73YPQ7FJAa5Y1z1DZtpYChN
	DhEZ9u9A7atJTgpE7lmFjqFsPe5jZxzsvXajS/CXDejBODnby+32AWQ2hS6vuBzbjKADJJwGLLLhX
	1F2w0GfnKyLD9I85DggQ95r++CPdtETNrCn6jTVoef1xyxzT9eu7zx0q4XBFf1A/vAGKjW04Qih04
	wRo/qrAf6dGaCA0qK9vnEXPYnT693GjbBXvH/A8oSdhDeVoi4Y7PnqVyjk/7IlL01+Z56Z5TGqZs3
	gGfyxQ+wxhnsf0RDnH8fn4XpHQNZhsRwCWzHB83N1VO0cMwRGGkYByfvthDTctITsqfA/WKdi7Zwf
	MtapG2CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0bQl-0000000DeBH-2O67;
	Thu, 12 Mar 2026 08:30:07 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0bQi-0000000DeAC-4AGa
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 08:30:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:in-reply-to:from:references:cc:to:
	 subject:mime-version:date:message-id:from;
	bh=eE2x5arEewgWACeLNV3xHpncR63VeN0E1Jskk5zosxA=;
	b=GS59mLqHQhbnFD9eU5FrmjsmZtcdngM2dfg/84C8Uun5MBBlTtBu2AOrjOSPCLWzyRS2FPPeX95XP
	 aDyiZ8uxn55m3hf9f1lN6cznyB2LHqF13Og+M+1DH0X2C6hxF5QNNMHXNNXOyMNrmo//LRU0THt+ks
	 e3i7Cgy9fZuIOnpHIO/IwPOCsbCb/n253dS8nFHumnWjj9GfEcLzLMfzSmI9NmqRGtGJB2UDlyTwJ4
	 OCg76sPZQCkpGLMia5t1NQnIi7o5FzFdtIDgrzNH9Bc90phFTJ9erd8Kq5F4hcpH1BOi0XH0VW3mgC
	 Aj3aTLQXWUcJzxQURfm6oO5BfiTdKIA==
X-MSG-ID: a7ba1742-1ded-11f1-b533-0050568164d1
Message-ID: <04d4e7fb-1c17-4a85-9dbe-433dd52fc4bf@protonic.nl>
Date: Thu, 12 Mar 2026 09:29:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michael Tretter <m.tretter@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20260311100347.3761707-1-s.hauer@pengutronix.de>
 <abFAW56rE6Pr6xIz@pengutronix.de>
Content-Language: en-US, nl-NL
From: Robin van der Gracht <robin@protonic.nl>
Organization: Protonic Holland
In-Reply-To: <abFAW56rE6Pr6xIz@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_013005_213244_ABE93B20 
X-CRM114-Status: GOOD (  10.36  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: rk-usb-loader: push header first
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Michael,

On 3/11/26 11:13, Michael Tretter wrote:
> On Wed, 11 Mar 2026 11:03:47 +0100, Sascha Hauer wrote:
>> From: Michael Tretter <m.tretter@pengutronix.de>
>>
>> Board that have secure boot enabled need the image header to be able
>> to verify the signature. Boards with secure boot disabled still work
>> with this patch as tested on a RK3588 board.
> I'm not against adding this to the rk-usb-loader, but maybe add some
> comment that this change is based on a wild guess and works by chance. I
> still don't know, how the ROM code or the USB protocol works and if it
> is really correct or necessary to send the entire header.
Right, add it to the list ;)

I already have this change to my repo so I think its great that this 
gets mainlined.

Tested-By: Robin van der Gracht <robin.van.der.gracht@protonic.nl>

- Robin


