Delivery-date: Fri, 09 Dec 2022 20:03:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3if5-00GNpc-IC
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 20:03:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3if4-0002Tu-Ub
	for lore@pengutronix.de; Fri, 09 Dec 2022 20:03:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GmUxxkYHYfGDm6r8T/1dwgLFX3Q06kBaaYu7SV1xYM0=; b=Bs3e/d01jHeuxon+8wP1+fMu9W
	Xuj6LmjxajMfct8gb88+XM7akWOb+KghD1QpwqTZB4JiQ0eY+IhWuweWERrenLVgdorEr+mkkP6Sf
	FFtEtbhWiiVNQuOugkbKYHZ94S8jvHR0akakUl8wdL6We29hKRGIWVVSow0EP2oO1vGvdJaqoxCpE
	5ZHH6UPN9YI3b1+7pUZsN/8ort3sVL2mo9DLT/Ojv6y3dWKii+2yd5LSfbfzGSc94PSgqCry1hI7j
	Ke2UTrwDX9g2XjHNzVdHqpRYg1RVJ+Y57BnqPLnTxeOqtWycllLNnPTuR/hVsRX3XXolioQp5NlIg
	8tlSLypA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3id6-00AY1d-NA; Fri, 09 Dec 2022 19:01:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3id1-00AXxz-O4
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 19:01:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1p3icz-00024j-GW; Fri, 09 Dec 2022 20:01:45 +0100
Message-ID: <c4595d56-6284-4f03-e553-2f76cc8e7aa6@pengutronix.de>
Date: Fri, 9 Dec 2022 20:01:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
Cc: Lucas Stach <lst@pengutronix.de>
References: <BL0PR07MB5665EA1D980C39F834845849EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <9bb964dc-3c24-7c70-b007-759c3aa85511@pengutronix.de>
 <BL0PR07MB5665C80785AAEF796F499985EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <BL0PR07MB5665C80785AAEF796F499985EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221209_110147_811575_9515C0D3 
X-CRM114-Status: GOOD (  15.92  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: PCIE on LS1021A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 09.12.22 19:58, Renaud Barbier wrote:
> 
> 
>> That's great. Do you have the patches public somewhere?
> 
> I do have support for theLS1021A-IOT. The machine support is living in its own mach-ls102x (as u-boot did).
> I would need to review the code and prepare patches.  I will ask my manager when I can spend time doing that.,

Even if you don't get around yet to submit them formally for inclusion,
it's good to know where they are if someone wants to continue work
on them.

I still highly recommend you post your LPAE patches to the mailing list
when you done implementing them.


>> Does Linux PCIe works when booted with U-Boot? At least the LS1046A has some special PCIe fixups. I am not sure how applicable these are to the LS1021A.
> Not sure why but Linux does not start in my U-boot. I need to fix that.

Or add LPAE to barebox ;)

Cheers,
Ahmad
 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



