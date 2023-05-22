Delivery-date: Mon, 22 May 2023 12:34:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q12rm-009XnS-1L
	for lore@lore.pengutronix.de; Mon, 22 May 2023 12:34:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q12rj-0003Gm-Ld
	for lore@pengutronix.de; Mon, 22 May 2023 12:34:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m0O0kWTIVUhqYUKWhT2EA/vppBcBJpGZJoEPqzyD1ms=; b=IBuLUVvBwvgByDG9T+kLL0xYkt
	LgBz4cONICkb/RfhNnlNMkH0qPEMSwJ0z0X3sTsOcSYMSyWooC4nQJ6+FwxkIWDnqFNGjyBC91hBQ
	DxkX34ASHgT0dgoDV5UX2KrUuPV1bymYMUO9txHrfxm2FKGRSju7DfYu/3XZ+lcMhXJHs2NAB1Bbb
	/I4dR9i8Eh0hp3EFPZrccZ7yxaTF8J4kLekzrYBFEzhSE+c7GNj2mPw3lVbM7M6114yFbrr8h7d90
	uXwGPI6xLrWywB9C3E+qvJGrAsTdIqVEiqcCvaD7NGkRBHMw9jHVB1RZltXJwWD/MozkMcX+/6LcQ
	TMFvEMEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q12qL-005z08-1O;
	Mon, 22 May 2023 10:32:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q12qI-005yzN-1m
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 10:32:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q12qG-0003C9-Sd; Mon, 22 May 2023 12:32:40 +0200
Message-ID: <19063118-14da-33bf-7e1b-f73b5fd86d3b@pengutronix.de>
Date: Mon, 22 May 2023 12:32:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
 <20230510233711.37345-3-jmaselbas@zdiv.net>
 <1de832ec-33e3-269c-31dc-30662d783d49@pengutronix.de> <ZGdKwXEhlxSVq3fd@tour>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZGdKwXEhlxSVq3fd@tour>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_033242_594157_A6C7E36B 
X-CRM114-Status: GOOD (  19.17  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH 02/11] sunxi: introduce mach-sunxi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 19.05.23 12:09, Jules Maselbas wrote:
> On Thu, May 18, 2023 at 08:46:56PM +0200, Ahmad Fatoum wrote:
>> On 11.05.23 01:37, Jules Maselbas wrote:
>>> +menuconfig SUNXI_MULTI_BOARDS
>>> +	bool "Allwinner boards"
>>> +	select HAVE_PBL_MULTI_IMAGES
>>> +	select RELOCATABLE
>>
>> Just make this the default?
> by putting this into ARCH_SUNXI ?

Just drop the SUNXI_MULTI_BOARDS and select HAVE_PBL_MULTI_IMAGES
and RELOCATABLE directly from ARCH_SUNXI.

>>> +	/* UART0 clock enable */
>>> +	setbits_le32(ccu + CCU_BUS_CLK_GATE3, 1u << 16);
>>> +	/* UART0 release reset */
>>> +	setbits_le32(ccu + CCU_BUS_SOFT_RST4, 1u << 16);
>>
>> Can the pads UART0 uses be muxed otherwise? Is it ok to unconditionally
> To be clear: nothing touches the pin-muxes here, only clock-gate and reset
> for gpio and uart. UART0 isn't muxed by default, it can be either muxed to
> PB8/PB9 or PF2/PF4. To enable UART0 on PB8/PB9 you will to write 0x-----33-
> into PIO PB_CFG1(0x28) register. Which I didn't do here... I think that's
> because the boot ROM has done it... or i am missing something.

I see. Still it's odd that UART0 specific stuff is done in lowlevel init.

>>> diff --git a/include/mach/sunxi/sunxi-pinctrl.h b/include/mach/sunxi/sunxi-pinctrl.h
>>> new file mode 100644
>>> index 0000000000..adb2a24577
>>> --- /dev/null
>>> +++ b/include/mach/sunxi/sunxi-pinctrl.h
>>> @@ -0,0 +1,13 @@
>>> +/* pio aka "allwinner,sun8i-h3-pinctrl" */
>>
>> No include guard?
> ... this file could be merged in "sun50i-regs.h", what do you think ?

Either is fine by me.

Cheers,
Ahmad 



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



