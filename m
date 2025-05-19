Delivery-date: Mon, 19 May 2025 06:40:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGsIB-000OpJ-3B
	for lore@lore.pengutronix.de;
	Mon, 19 May 2025 06:40:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGsIB-00044H-DS
	for lore@pengutronix.de; Mon, 19 May 2025 06:39:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+S0KrWoAMEXbLWOPPRjq2KXiVuxhmpnuMXb6ooRGWQc=; b=sja18k5E7w/744
	4qr1hXcMzObT3xqWRf8EdPKh7TfEyojmFcKiqIPOru2YqscCl3l40NFMch4ArvxpYXoetnpm8KVMq
	wtQIcZFnqzxHIuqmZhKHEH4uEHfTproOBQz35x60b+7ZwXAJPbG/C/ZExclVNkszf8LZa9C5Wl+jV
	b2hVTk6ll6lqYbKhG52jcSkwK9wlKQr3R7X8pgJiCM4VhuJ0y0sPxlnLOfjHcgTH5tKIlpYOT9qIj
	jUWFI5jP4MbI/4mQTtB/1tr1sM2Qg+urXXT3Sed8SYftqtN+EvrYD/AghEEbhGC+uls9WLoBYvOvc
	7oD6Ktwe53lgDY+gx8eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGsHV-00000007ydX-2ATP;
	Mon, 19 May 2025 04:39:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGsHR-00000007ybg-3Yaw
	for barebox@lists.infradead.org;
	Mon, 19 May 2025 04:39:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uGsHO-0003wW-2K; Mon, 19 May 2025 06:39:10 +0200
Message-ID: <131a50c8-e87c-44c2-8cce-32726570c072@pengutronix.de>
Date: Mon, 19 May 2025 06:39:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johannes Roith <johannes@gnu-linux.rocks>
References: <20250516171802.33936-1-johannes@gnu-linux.rocks>
 <d6a4cf44-4898-4c9e-9bba-1a22cdd4fe45@pengutronix.de>
 <aCoZWQzb8NbSTXtw@Precision-T3610>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aCoZWQzb8NbSTXtw@Precision-T3610>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_213913_888044_C56ABDF3 
X-CRM114-Status: GOOD (  22.39  )
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
Cc: barebox@lists.infradead.org
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
Subject: Re: [PATCH] Added support for Digilent Cora Z7 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 18.05.25 19:31, Johannes Roith wrote:
> Am Fri, May 16, 2025 at 10:05:49PM +0200 schrieb Ahmad Fatoum:
>>> +static void cora_z7_ps7_init(void)
>>> +{
>>> +	/*
>>> +	 * Read OCM mapping configuration, if only the upper 64 KByte are
>>> +	 * mapped to the high address, it's very likely that we just got control
>>> +	 * from the BootROM. If the mapping is changed something other than the
>>> +	 * BootROM was running before us. Skip PS7 init to avoid cutting the
>>> +	 * branch we are sitting on in that case.
>>> +	 */
>>> +	if ((readl(0xf8000910) & 0xf) != 0x8)
>>
>> Please use a macro for the address and wrap it in IOMEM().
>> Eventually, we will want to enforce addresses to be pointers, so it would
>> be cool for new code to already use the correct types. If you want type
>> checking, just add
>>
>> #include <linux/io.h> at the top of your includes.
>>
> 
> So, it should look like this, right:
> 
> void __iomem *ocm_config = IOMEM(OCM_CFG);

Or just #define OCM_CFG IOMEM(0xf8000910).

> Hmm, good question. In theory most of the code is generic or could be
> implemted in functions in mach-zynq and the lowlevel board just calls
> these functions with the correct arguments, e.g. the DDR init. But
> that way it is quite time consuming to implement. This here is basically
> just copy paste from a Vitis generated code adopted to the coding style of
> barebox.

Ok. If the code is generated anyways, then it's fine to duplicate it IMO.
You could also keep the generated code in a separate file and define
some macros to make changes to it minimal, but this is fine too.

>>> +config MACH_CORA_Z7
>>> +	bool "Digilent Cora Z7"
>>> +	select ARCH_ZYNQ7000
>>
>> Can you enable this in zynq_defconfig?
> 
> Yes, it is selectable in the config.

Add it to the defconfigs (arch/arm/configs) that enable CONFIG_MACH_ZEDBOARD.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


