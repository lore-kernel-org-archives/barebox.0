Delivery-date: Mon, 30 Jan 2023 19:19:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYkZ-007sdr-TN
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 19:19:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYkX-0000Ty-5h
	for lore@pengutronix.de; Mon, 30 Jan 2023 19:19:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YCeNR3NkwrUh05SRF+DIPSuDc4l5iAzIfpmP6ge/J78=; b=mHrA/TDIeg7NKQkoXGlofgVAbh
	fbDTEaQY0NTaWqJyWHY6PhgvLqTNj1d0tUSnogH6NQhWuS19dizf5Is2SPwEvp6FNTVKarA1zFqR7
	BQw7icJH7kFQuznRhjmsfR4f04/uVyzrgKwrKoTtJoraqA40FwWnqjV3h207UVCPUtAJNt5P+bLdH
	esuUWCSBSU3F4Xr1FQBxopRRQMiukmLwHcLsWgqR2pKtM3O6Qb10SUpdqFyLA+2SZein/Oyit09ww
	alTKofJOfSlQ85ZvQi2LgW42ft/O4I4JPnnrveRXQJ9ihlk8OX2ex7ZbQ57BvNfSIMmB8oQPFpy8a
	fqEYPYhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMRdH-003AWL-6Q; Mon, 30 Jan 2023 10:43:27 +0000
Received: from out0.migadu.com ([2001:41d0:2:267::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMRdB-003AV4-4X
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 10:43:23 +0000
Date: Mon, 30 Jan 2023 21:42:53 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675075395;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=YCeNR3NkwrUh05SRF+DIPSuDc4l5iAzIfpmP6ge/J78=;
	b=IQ+Tg8cDIQevRrBXGOU8NjR7UhqMZpNkn4+1HkRiuwYeFGpcM/qsBUlZ6mDh+qs0vRgmDW
	ZuQGOkoz0Z6FP7cw4cIU50gtMj3Diyy/Yn1stkWhxgf6MRfRWeysVzdBv+4e5qesNSFkXC
	K+CUczLTo567E/lQmknM7L9LPhU7iIStwy7RdceRWSmPX0YwZJRx9hTAyOLp4HbdNChu8f
	rQbXKscqIEDTH92diuAr11BAxsERx1ie7huHJNMWr6IzB6jQdsQNg/qPbJw1UypGPqL4GR
	c8WaoWx+fsAE0jhXc2BZnTmrU/YpkX9NitxiVMlq0yJ9bekOmmBGcePTRcM8Ww==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9efLdQi++e/ZFOn@novena-choice-citizen>
References: <20230126185643.104049-1-contact@jookia.org>
 <20230130102727.GQ13319@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130102727.GQ13319@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_024322_645604_7C38A623 
X-CRM114-Status: GOOD (  15.29  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] I2C: i.MX: early: Use internal udelay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 30, 2023 at 11:27:27AM +0100, Sascha Hauer wrote:
> This takes around 5 times too long on a i.MX8MM and around 50 times too
> long on a i.MX6Q. This was measured under a regular barebox on the
> shell. In an early environment with MMU disabled it takes 730 times too
> long.

Yikes! I'm glad I broke this in to its own patch then. :)

I did copy this code from these boards:

arch/arm/boards/cm-fx6/lowlevel.c
arch/arm/boards/skov-imx6/lowlevel.c
arch/arm/boards/technexion-wandboard/lowlevel.c
arch/arm/mach-imx/xload-gpmi-nand.c
arch/arm/mach-imx/imx6-mmdc.c (uses 1000 loops)

Maybe it's time for an i.MX6-wide early udelay?
Though this code might break if its timing is already wrong.

> Maybe we could do this:
> 
> static void __udelay(void *base, int us)
> {
> 	int i;
> 
> 	for (i = 0; i < us * 4; i++)
> 		readb(base);
> }
> 
> The time spent for a register read depends on the bus clock which
> doesn't change that much between the different SoCs.

This seems like a better solution if you've tested it, I'm not too sure
how to check this. Would I just then specify the controller as the base?

Though the actual goal of the code is to wait for the controller to bestable.
Maybe there's a better way than a delay?

> 
> Sascha

John.


