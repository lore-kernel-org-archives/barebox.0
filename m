Delivery-date: Thu, 05 May 2022 10:15:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWds-002VI5-Dq
	for lore@lore.pengutronix.de; Thu, 05 May 2022 10:15:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWdq-00024C-P6
	for lore@pengutronix.de; Thu, 05 May 2022 10:15:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SDuMfAqV/bHJYsHz4IQ6a7X7z3SkU+fEZzyhphJhaBE=; b=MJcvRdTPGWlKc5Fc2s+LQMM2iX
	/fa/Lj74mW4rsHEiPrpwJGNWnlCB6I25Nlt1n3QHsBosQWPsp8OIJ6m9A4YAqJhtvHSjTnS7s/ITM
	SYIRstO14aojmig9qJgptHTWmrjLnHC3rnTx8NW1JwMVnDUOTPTUvQZHv96X/uJdcJbvWoZdv002J
	W4QvloAZQ6npRWHIx3Z3cE/dcdhhnW6eaiTKbj1XZ8mEuDLCQ17Z6jErP3F7zfMoJgW9kAOnz3NBu
	r83/s23XyWB4x8GAxx3qoOQBZ0JCtdDvBVVZ8H4ULb0GxpKJ0hL3m53SI56i9/v/HKXeT0Y3iUaKi
	VR/zKBNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWce-00Eby7-BU; Thu, 05 May 2022 08:14:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWcb-00Ebxg-Mf
 for barebox@bombadil.infradead.org; Thu, 05 May 2022 08:14:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=W7Dqg/H4ymbo63miMkGgeCidFZ4m9oWmviFU96Q1KyY=; b=hqeeMAEoiUo78dinBGiizBpfxU
 yuKtjyk+AvV04QHbkHsM4qurpu4PfjCtK1uwlToanj7XwUstpDK0eXtX9me4tOvr1aT3ID7ViUdMV
 fRC8Z5MDFciePHELT7a6EepqPyTNGRnTz6OaJ+LA0uxXyUKd3iJeZ+G/xvCJTdh7w6mGfJbdO0bsL
 xgmGe5wzixtqDnA/v1anWJaKmgGrbE0jzwh7nKByHSWRLKZaETAAAnCgcmFtHz63cL7F81YvNbYUv
 9nfhn6EhYYKGqxYT5nBgtMKRxSUNU8QWOfH83PlGSC6JBrpItFDvVWAekHUonEFel6Bd2TNvgwWMZ
 16iREqLg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWcV-00BJhk-C7
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:13:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmWcU-0001vE-0a; Thu, 05 May 2022 10:13:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmWcT-0004NN-Nn; Thu, 05 May 2022 10:13:53 +0200
Date: Thu, 5 May 2022 10:13:53 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220505081353.GL4012@pengutronix.de>
References: <20220505073604.15065-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220505073604.15065-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:04:18 up 35 days, 20:33, 85 users,  load average: 0.26, 0.63, 0.47
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_091355_651675_0124CCEE 
X-CRM114-Status: GOOD (  20.78  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: OMAP: debug_ll: Use Kconfig UART base address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Alexander,

On Thu, May 05, 2022 at 10:36:04AM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/boards/afi-gf/lowlevel.c            |  2 +-
>  arch/arm/boards/beagle/lowlevel.c            |  2 +-
>  arch/arm/boards/beaglebone/lowlevel.c        |  2 +-
>  arch/arm/boards/myirtech-x335x/lowlevel.c    |  2 +-
>  arch/arm/boards/phytec-som-am335x/lowlevel.c |  2 +-
>  arch/arm/boards/vscom-baltos/lowlevel.c      |  2 +-
>  arch/arm/boards/wago-pfc-am35xx/lowlevel.c   |  2 +-
>  arch/arm/mach-omap/include/mach/debug_ll.h   | 43 ++++++++++++--------
>  8 files changed, 33 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
> index de40f6c5af..9e86b29b2d 100644
> --- a/arch/arm/boards/afi-gf/lowlevel.c
> +++ b/arch/arm/boards/afi-gf/lowlevel.c
> @@ -230,7 +230,7 @@ static noinline int gf_sram_init(void)
>  
>  	am33xx_uart_soft_reset((void *)AM33XX_UART2_BASE);
>  	am33xx_enable_uart2_pin_mux();
> -	omap_uart_lowlevel_init((void *)AM33XX_UART2_BASE);
> +	omap_uart_lowlevel_init();

I don't think removing the base address from omap_uart_lowlevel_init()
is a step forward. CONFIG_DEBUG_LL is only one possible usecase for this
function, another one is for regular early console with pbl_set_putc().

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

