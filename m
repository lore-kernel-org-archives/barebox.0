Delivery-date: Thu, 03 Feb 2022 11:18:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFZBk-004aq3-7o
	for lore@lore.pengutronix.de; Thu, 03 Feb 2022 11:18:04 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFZBj-0002qY-2y
	for lore@pengutronix.de; Thu, 03 Feb 2022 11:18:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JxZTGSq2+3zNs8St/AePZSwRBPeF/TWVp6+35GFz5Lo=; b=PRngR4Rh7cu8CU6OfQtrCfcNJV
	9nxnsmkwYiCx3nfyrxzSpX9O7avMbLDL552feKfMZxAdEW8cIeTDq7iIvvmjepXagJsnay2gBKvpZ
	ofadMv+mQKjwpEtka8PkUEDsJGfGlUffmmF5uUNO9R+0dAMZFpJar1i6DfH/wh9sqsMrD9/+U46iF
	gyCEO1NDZLohMAe1z152QkKHvT98qsXU9km++pO/cmW9hTJPfN+JANZE3/lY/IAr729an8nuAi74s
	FYBm2o8z+Pf/uhFH0UcO75/LzIr3vT0ZQm47YZ4UHPj13FXs5xx8NKOLZcs+DwVmSaBTxYpVeSPjE
	uUE/cTyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFZAa-000mAp-Of; Thu, 03 Feb 2022 10:16:52 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFZAU-000m7x-9x
 for barebox@lists.infradead.org; Thu, 03 Feb 2022 10:16:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nFZAT-0002cD-1n; Thu, 03 Feb 2022 11:16:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nFZAS-0000oD-Oi; Thu, 03 Feb 2022 11:16:44 +0100
Date: Thu, 3 Feb 2022 11:16:44 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220203101644.GL23490@pengutronix.de>
References: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:16:28 up 54 days, 19:02, 81 users,  load average: 0.05, 0.09, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_021646_370927_FB3FB254 
X-CRM114-Status: GOOD (  15.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/12] clk: add STM32F429 clock driver support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 31, 2022 at 08:57:13AM +0100, Ahmad Fatoum wrote:
> and use the occasion to provide a whole bunch of clk_hw helpers to
> make future clock driver ports easier.
> 
> Ahmad Fatoum (12):
>   string: define new memdup_array
>   clk: composite: add clk_hw registration functions
>   clk: divider: add clk_hw registration functions
>   clk: fixed-factor: add clk_hw registration functions
>   clk: clk-fixed: add clk_hw registration functions
>   clk: define clk_hw_register
>   clk: mux: add clk_hw registration functions
>   clk: mux: export clk_mux_round_rate
>   clk: implement of_clk_add_hw_provider
>   clk: gate: add clk_hw registration functions
>   ARM: stm32mp: allow driver reuse for STM32 MCUs
>   clk: add clock driver for stm32f4 and stm32f7

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

