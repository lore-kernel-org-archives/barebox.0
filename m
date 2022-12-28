Delivery-date: Wed, 28 Dec 2022 12:15:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pAUOr-00BWeZ-Cc
	for lore@lore.pengutronix.de; Wed, 28 Dec 2022 12:15:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pAUOn-0003RN-4z
	for lore@pengutronix.de; Wed, 28 Dec 2022 12:15:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I2vgKuctrlxJBDAv9TTCO3S9xuIm9BzCtobFFORAbwI=; b=Gw7q80nY31Pms7mmoyEAnu4oyy
	AB6r9aoQecS3rGyeu+sk73Rlu+Usa/UQe2slGu+0+JU8OoJLrWkCE2DGTdGv+KaC581CZlBxj2tdg
	eGiFTd+eMsb/3uun41BLfBpDBMBJPykQrSsoTrv9QBHkLuL7jj5Q8mKEAjtI1BtS5th1RgY+abqgS
	JUsTAlmbF3tdpcrRtpwcohgVcj7D/f4oJ5ekWRKk8HC3ud3sjOolp2UxiE+3n6u9u1BwPkbhfolC2
	OTz0P9OBER15dT4BXafKDavUFw9PgnQcyaPKpXV0gT9hc7iz0/jbEpDGgnFHN+So7BpsParsgQb24
	OZgPNDIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAUNI-004LVV-Do; Wed, 28 Dec 2022 11:13:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAUN0-004LQE-7G
	for barebox@lists.infradead.org; Wed, 28 Dec 2022 11:13:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pAUMu-0003Fx-Ie; Wed, 28 Dec 2022 12:13:08 +0100
Message-ID: <dc92fe10-26bb-5c5d-efa9-4f557cd83b5d@pengutronix.de>
Date: Wed, 28 Dec 2022 12:13:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org
References: <20221214105831.844421-1-a.fatoum@pengutronix.de>
 <Y6rIcs6xsavNUtot@ravnborg.org>
 <4b535e4b-688c-4837-4953-4de558c8cd1d@pengutronix.de>
 <Y6wehj862Z+p/3f/@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Y6wehj862Z+p/3f/@ravnborg.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221228_031325_202428_7F8F5F04 
X-CRM114-Status: GOOD (  34.84  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/11] ARM: at91: sama5d4: add basic Wifx L1 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sam,

On 28.12.22 11:46, Sam Ravnborg wrote:
>>> The DT file in patch 11 looks like a file that would be a good linux
>>> kernel candidate - but I guess this is for someone else to do.
>>
>> It's on the bucket list, but first barebox, DistroKit and then eventually
>> upstreaming the kernel DT.
> Hopefully there is a fist stage bootloader somewhere in the todo list.
> I really like how this works with PBL and multi image - it is very elegant
> in barebox and then at91bootstrap is no longer required.

I tried to get first stage support on SD working with SAMA5D4, but the
same code that works on SAMA5D3, doesn't for D4 and I didn't have time
to debug this yet. Will probably need a logic analyzer to verify the
assumptions we had with with the D3 hold on D4 too (SD card bus width
configured, SD card frequency, ... etc.).

NAND isn't on my roadmap though, I will use at91bootstrap for that.

>>> I look forward to the day where the remaining three sama5d boards are all
>>> multi-board and DT-enabled. This patch-set brings us a step closer.
>>
>> I don't have the boards, that are not yet DT-enabled, but I guess due
>> diligence is done if we verify that the DT-enabled drivers work on some
>> other SAMA5 board, which already has DT support. Now, with the NAND
>> driver I ported for this, there remain three drivers that I have so
>> far not tested:
>>
>> LCD, PWM and USB (Both Host/Gadget).
>>
>> If you tell me, that all these already work just fine for some SAMA5 with
>> DT (or that they didn't work at all for SAMA5 without DT), I can send the
>> patch series switching the remaining boards to multi-image.
> 
> I have a sama5d4 eXplained board - but the display no longer works.
> I will try to take a look at DT enabling the board if I find time.
> We can revisit what to do then, if you do not beat me to it before.

The only D4 board I have doesn't have a display, so I am not likely to
do anything here soon.

>>> Do you know if there is a way to read bootsource from an at91sam92XX
>>> CPU / ROMBOOT code?
>>
>> I just observed that the info is in r4 on all SAMA5 SoCs. Maybe that's
>> the case for the older SoCs too?
> Looking at at91bootstrap I do not have high hopes.
> Only the sama5 chips have this code enabled.
> (Looked at v3.9.3 - which is the latest with at91sam9x support).

It used to be enabled only for SAMA5D3 although D4 and D2 shared the same
mechanism. I wouldn't take absence in at91bootstrap as indication.

I'd suggest to just stick:

	register u32 r4 asm("r4");
	puthex_ll(r4);

into your board's naked entry point and see for yourself.

Cheers,
Ahmad


> 
> 	Sam
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



