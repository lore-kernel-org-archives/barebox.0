Delivery-date: Tue, 07 Dec 2021 10:14:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWYj-0008Fc-AM
	for lore@lore.pengutronix.de; Tue, 07 Dec 2021 10:14:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWYh-0002QU-Um
	for lore@pengutronix.de; Tue, 07 Dec 2021 10:14:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BALVOY/apyy3MnhMtc4CA2MMdSSQVo+xljcZjPNsoS0=; b=Mk2tcx4uQuKbOzczC7B064Hfgl
	9deHmP//evaDMBq2+ItMqK+xxia6Po5kgtZCYVQE8sQ0xzFA6AdMtTjAKgyF5ELkp5Gd7fg5rAXMR
	pz/+R0dINsfWYJGxXJxMONdHTmXWQmjRGajlM7GnVqsyWi2WTo5tcGGZxAjPpmHOrjb/vspCe/aY7
	1A2m4lJ6sZSf9a/v/jb9wXk3sc2w57yVgkptbQC5iY5luGJLeMRlysGk7Ut5freLkEFtDlPvR9Ssg
	kSGdKrGRd2DO0vNFvyBC5ciItJlt5blajOxJDjAFlYGDbJLDK3ToNl+AmZmqi/+2AHAPygdfK69cq
	VwhNcVTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muWX5-007kFg-Hk; Tue, 07 Dec 2021 09:13:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muWVR-007jZl-QL
 for barebox@lists.infradead.org; Tue, 07 Dec 2021 09:11:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWVQ-0001e2-Dn; Tue, 07 Dec 2021 10:11:24 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWVQ-0003mH-31; Tue, 07 Dec 2021 10:11:24 +0100
Date: Tue, 7 Dec 2021 10:11:24 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211207091124.GK28260@pengutronix.de>
References: <20211125160657.3828643-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211125160657.3828643-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:11:14 up 292 days, 12:35, 143 users,  load average: 0.36, 0.31,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_011125_907048_A50B8241 
X-CRM114-Status: GOOD (  24.91  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] RISC-V: virt: add DEBUG_LL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Nov 25, 2021 at 05:06:57PM +0100, Ahmad Fatoum wrote:
> While we have PBL console support, console isn't available during early
> barebox startup. Implement DEBUG_LL for Qemu RISC-V Virt to make such
> early debugging easier.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/riscv/Kconfig.socs           |  1 +
>  arch/riscv/include/asm/debug_ll.h | 10 ++++++++--
>  common/Kconfig                    |  5 +++++
>  3 files changed, 14 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index bd4a44a575ef..b12c795041b0 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -18,6 +18,7 @@ config SOC_VIRT
>  	select RISCV_S_MODE
>  	select BOARD_RISCV_GENERIC_DT
>  	select HAS_CACHE
> +	select HAS_ASM_DEBUG_LL
>  	help
>  	  Generates an image tht can be be booted by QEMU. The image is called
>  	  barebox-dt-2nd.img
> diff --git a/arch/riscv/include/asm/debug_ll.h b/arch/riscv/include/asm/debug_ll.h
> index a3b9c1c4bcfb..d01b4f09b8e1 100644
> --- a/arch/riscv/include/asm/debug_ll.h
> +++ b/arch/riscv/include/asm/debug_ll.h
> @@ -17,13 +17,19 @@
>  #if defined CONFIG_DEBUG_ERIZO
>  #define DEBUG_LL_UART_ADDR	0x90000000
>  #define DEBUG_LL_UART_CLK       (24000000 / 16)
> +#define DEBUG_LL_UART_SHIFT	2
> +#define DEBUG_LL_UART_IOSIZE32
>  #elif defined CONFIG_DEBUG_STARFIVE
>  #define DEBUG_LL_UART_ADDR	0x12440000
>  #define DEBUG_LL_UART_CLK       (100000000 / 16)
> -#endif
> -
>  #define DEBUG_LL_UART_SHIFT	2
>  #define DEBUG_LL_UART_IOSIZE32
> +#elif defined CONFIG_DEBUG_RISCV_VIRT
> +#define DEBUG_LL_UART_ADDR	0x10000000
> +#define DEBUG_LL_UART_CLK       (58982400  / 16)
> +#define DEBUG_LL_UART_SHIFT	0
> +#define DEBUG_LL_UART_IOSIZE8
> +#endif
>  
>  #define DEBUG_LL_UART_BPS       CONFIG_BAUDRATE
>  #define DEBUG_LL_UART_DIVISOR   (DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
> diff --git a/common/Kconfig b/common/Kconfig
> index f4120b2083ee..ab6258d90f40 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1402,6 +1402,11 @@ config DEBUG_STARFIVE
>  	depends on SOC_STARFIVE
>  	select DEBUG_LL_NS16550
>  
> +config DEBUG_RISCV_VIRT
> +	bool "RISC-V Virt ns16550 port"
> +	depends on SOC_VIRT
> +	select DEBUG_LL_NS16550
> +
>  config DEBUG_SIFIVE
>  	bool "SiFive serial0 port"
>  	depends on SOC_SIFIVE
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

