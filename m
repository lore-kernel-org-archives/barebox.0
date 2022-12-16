Delivery-date: Fri, 16 Dec 2022 09:47:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p66NR-005V1b-2t
	for lore@lore.pengutronix.de; Fri, 16 Dec 2022 09:47:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p66NQ-0001p6-Ac
	for lore@pengutronix.de; Fri, 16 Dec 2022 09:47:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X6kR0Kz2pzy/8aGbN9kJXM0Kqa/+w4Becs0w9cGOZYQ=; b=yxVwUkrQpW/wqQfFcoYw7Awrhc
	CGKc60zGK19YDCeUxU/rDd3B1/YndWZNuM1UpmIBVegEv+LaWVfyvAzwrol9no1nxK8d+9+gPuMEJ
	5RZ3QCiwx88SMNaDwnxfczi8qy2d9TyxDk7D7f0mwn1CnxYBx6hM6ieHZcPjw81+dhtLt11lO6iSH
	giW/9TWkH4gYDNaxU8pjnIL++P2M1/SRbXqZ6+koeSXJb+sh8M99zHqp2xlQMLF1aWziYO7Z7Zv3B
	IdeB7/z00xUeuKQK70054vWkNZQLAyT4OAUzErvALbte0KinWeJmbVJzvB0QFOtFQBGkIJiYlM0tL
	rlkFdpJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p66Ln-00DfkP-7t; Fri, 16 Dec 2022 08:45:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p66Li-00Dfin-TR
	for barebox@lists.infradead.org; Fri, 16 Dec 2022 08:45:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p66Lf-0001b8-SJ; Fri, 16 Dec 2022 09:45:43 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p66Lf-0002R1-6l; Fri, 16 Dec 2022 09:45:43 +0100
Date: Fri, 16 Dec 2022 09:45:43 +0100
To: Matthias Feser <m.feser@kbs-gmbh.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221216084543.GH11668@pengutronix.de>
References: <3454916a.1d9106b.748ad6.4d5c@kbs-gmbh.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3454916a.1d9106b.748ad6.4d5c@kbs-gmbh.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_004547_003367_17A1640A 
X-CRM114-Status: GOOD (  34.33  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: AM335x DDR3 initialization / timing violation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 15, 2022 at 10:54:00AM +0100, Matthias Feser wrote:
> Hi, 
> 
> we are using the AM3352 processor in combination with a single 512MB
> Micron DDR3 chip running the barebox bootloader in our products for
> several years now. A minor amount of boards (around 5 of 2000) fail
> the production test, because they do not boot properly after warm
> reset. In such cases the MLO is loaded, initializes the EMIF and then
> crashes after a certain amount of accesses to the DDR3. After a cold
> reset all of these boards run stable and produce no errors when
> running a deep RAM test. 
> 
> I am currently in discussion with a TI employee about this topic. He
> told me that the bootloader should detect a warm reset and EMIF should
> not be reinitialized, because DDR3 is automatically put into
> self-refresh on warm reset. So far he hasn’t told me what the
> desired init sequence actually is. From what I have observed while
> debugging, at least the EMIF clock has to be enabled and CKE brought
> high. Unfortunately the TRM does not give guidance about this.
> 
> Our board initialization code is very similar to other AM335x based
> boards like beaglebone (400MHz DDR clock), which effectively always
> initializes the EMIF in the same way by calling am335x_sdram_init(),
> no matter if cold or warm reset has brought up the processor. From
> investigating the signals DDR_RESET and DDR_CKE with an oscilloscope,
> I can tell that even with this same init code the hardware behaves
> differently in both reset cases.
> 
> On cold reset both DDR_RESET and DDR_CKE remain low until
> initialization, and there is a delay of roughly 436us between the
> rising edges of DDR_RESET and DDR_CKE. After warm reset DDR_RESET is
> high and DDR_CKE is low. EMIF initialization results in a short pulse
> on DDR_RESET with 5us low phase and there is only about 38us delay
> between the rising edges of DDR_RESET and DDR_CKE.
> Both cases violate the DDR3 specification, according to which the
> delay between the rising edges of DDR_RESET and DDR_CKE has to be
> 500us min.
> 
> In am33xx_config_sdram() a value of 0x2800 is written to
> EMIF4_SDRAM_REF_CTRL. TI recommends a value of 0x3100 during
> initialization, which is used in u-boot EMIF initialization code and
> does not violate the DDR3 specification. I think barebox EMIF init
> code requires some revision.
> 
> I also wonder why EMIF4_SDRAM_CONFIG, REF_CTRL and REF_CTRL_SHADOW are
> accessed twice when regs->zq_config is not zero (see code snippet
> below taken from barebox 2022.12.0). Is there any reason behind this?

The code is from U-Boot.

> 
>                 if (regs->zq_config) {
>                                /*
>                                * A value of 0x2800 for the REF CTRL will give us
>                                * about 570us for a delay, which will be long enough
>                                * to configure things.
>                                */
>                                writel(0x2800, emif4 + EMIF4_SDRAM_REF_CTRL);
>                                writel(regs->zq_config, emif4 + EMIF4_ZQ_CONFIG);
>                                writel(regs->sdram_config, CM_EMIF_SDRAM_CONFIG);
>                                writel(regs->sdram_config, emif4 + EMIF4_SDRAM_CONFIG);
>                                writel(regs->sdram_ref_ctrl, emif4 + EMIF4_SDRAM_REF_CTRL);
>                                writel(regs->sdram_ref_ctrl, emif4 + EMIF4_SDRAM_REF_CTRL_SHADOW);
>                 }
> 
>                 writel(regs->sdram_ref_ctrl, emif4 + EMIF4_SDRAM_REF_CTRL);
>                 writel(regs->sdram_ref_ctrl, emif4 + EMIF4_SDRAM_REF_CTRL_SHADOW);
>                 writel(regs->sdram_config, emif4 + EMIF4_SDRAM_CONFIG);
> 

The second access to EMIF4_SDRAM_REF_CTRL goes down to U-Boot commit
1c382ead7a00 ("am33xx: Update DDR3 EMIF configuration sequence"). This
commit also introduces the 0x2800 value we still find in barebox.

The 0x2800 value was removed in fc46bae2ae38 ("arm: am437x: Enable
hardware leveling for EMIF"). In this commit we also see the value
0x3100 for the first time.

I can't say much more to this, except that I am happy to accept patches
to clean that up.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


