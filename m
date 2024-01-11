Delivery-date: Thu, 11 Jan 2024 08:36:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNpbx-00Cfii-0o
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 08:36:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNpbw-0008KU-Lc
	for lore@pengutronix.de; Thu, 11 Jan 2024 08:36:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=emR/D7eZ9HOeKePFX1v4ldFMW7fLKPp4nXq/C3QyNCo=; b=vulFCssdllIuNIkN19qNh8XMip
	kncSGTGFXa3L3Yajr7iaQ43l3PpU+bfQOL4mSo5vu51FLpS+miBzT0qCHZi9mVLmQBWcRaZ6IxiIx
	VCGbtUgKOJVzl9XmWNk6RnOdFtcKPL8eXuE1BTZmf5sc8qHnzeDAY8z+iW4siQPyOS0VdBgnnyT82
	FNFpkIn5ra2UBxJkxfPCIMCZmRYPmItvm1nCkz582ee1wk9KbrWX9PJRkSL98tYNsUoUHdtP9RomL
	zVuRAB6uU868tuH9iArwqeEupC/BQL8sX22nNh64KlFUoq4D1mSa6Mnsx2OTPRn0i3UbV0ks/WXf5
	oLVQ7NTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNpar-00GJjX-1V;
	Thu, 11 Jan 2024 07:35:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNpan-00GJh2-0C
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 07:35:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNpal-00084E-RV; Thu, 11 Jan 2024 08:35:07 +0100
Message-ID: <ec7acc57-c91b-4697-88bf-04942d9be615@pengutronix.de>
Date: Thu, 11 Jan 2024 08:35:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org
References: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
 <20240102170100.1596372-3-a.fatoum@pengutronix.de>
 <20240108112958.3b582cbb@ERD993>
 <48a6551d-b6a9-45de-bcca-71599b39a1ba@pengutronix.de>
 <20240108121709.0f40c768@ERD993> <20240108134848.5ed633d4@ERD993>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240108134848.5ed633d4@ERD993>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_233509_097360_4EC86B7D 
X-CRM114-Status: GOOD (  16.79  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 2/7] nvmem: bsec: correct regmap's max_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Robin,

On 08.01.24 13:48, Robin van der Gracht wrote:
> On Mon, 8 Jan 2024 12:17:09 +0100
> Robin van der Gracht <robin@protonic.nl> wrote:
> 
> ...
>>>
>>> barebox@Linux Automation MC-1 board:/ ls -l /dev/stm32-bsec 
>>> crw-------            384 /dev/stm32-bsec  
>>
>> Thats more like it. I'll apply the full series and recheck.
> 
> This works as expected. Thanks.
> 
> Minor note:
> 
> As you mention in your patch notes:
> "struct regmap::max_register is in units of struct regmap::reg_stride"

Argh. I see now that my wording was ambiguous. I meant to say is that max_register
is a multiple of regmap::reg_stride, but one could understand the commit message
the other way...

> This used to be the value of the maximum register number (index).
> The doc in include/linux/regmap.h line 33 mentions 'index'. Maybe that
> needs some mentioning of stride as well..

regmap is expressive enough to support a scheme where register numbers
increase by 1, but values by 4. This would have been the proper way to
register the regmap. Alas, I didn't do it this way when I first added the
bsec driver, so we'll have to live with this.

> 
> Regardless:
> Tested-by: Robin van der Gracht <robin@protonic.nl>

Thanks. I just Cc'd you on a documentation patch.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



