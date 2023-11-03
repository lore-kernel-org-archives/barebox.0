Delivery-date: Fri, 03 Nov 2023 08:38:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyolT-00Gjn9-0n
	for lore@lore.pengutronix.de; Fri, 03 Nov 2023 08:38:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyolO-0000bU-4O
	for lore@pengutronix.de; Fri, 03 Nov 2023 08:38:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yt+vq65BWH+p45PbNcBbrJyvfsyQ8hieQp6Q6+qOUpY=; b=csJTOAUDpCmgoRdSX9LXWiY+ta
	xgeBAgphD8V9E/TzvIR7WgtKB0Ypk0Zt++5c0r63893HUbtLUiKdprwbbY9cwKtplu8RawnxMQllV
	r9RVuUp/SYcKJ2ThDGPvypKNS2M+vHvoiW3nff9gim4cEYU5yErZ5uIbF8WLMi+b0CLcl0EdX38nB
	7P62vHKu/4iDBymswGPD+V2hw/u6N7xWX4/yHrSYR9fjX9S1lPb1sXXF9/Ei1mAu227ly83GPaKHL
	H/ZgX5b3izrbL0D4zKcMp6b8Ba4Mejfb5LxFnWCbWDmlfNTxUCBtrixPhjnWR1BPoIhDAebJRkAzA
	IPnhpY4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qyok7-00AtlS-0d;
	Fri, 03 Nov 2023 07:37:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qyok0-00Atkg-2L
	for barebox@lists.infradead.org;
	Fri, 03 Nov 2023 07:37:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qyojz-0000Mw-I6; Fri, 03 Nov 2023 08:37:15 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qyojz-006GKu-5c; Fri, 03 Nov 2023 08:37:15 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qyojz-0009jS-3Q; Fri, 03 Nov 2023 08:37:15 +0100
Date: Fri, 3 Nov 2023 08:37:15 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231103073715.GN3359458@pengutronix.de>
References: <20231101120738.3766156-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231101120738.3766156-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231103_003716_760905_8D2C6617 
X-CRM114-Status: GOOD (  21.75  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: stm32mp: define stm32_serial_putc for use with
 pbl_set_putc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 01, 2023 at 01:07:38PM +0100, Ahmad Fatoum wrote:
> Unlike other debug_ll headers, such as i.MX's or AT91, the STM32MP1 header
> only defined PUTC_LL, but no function suitable for use with
> pbl_set_putc.
> 
> Remedy that, so PBL entry points can benefit from CONFIG_PBL_CONSOLE and
> while at it, add the missing header that defines BIT().
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/mach/stm32mp/debug_ll.h | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/mach/stm32mp/debug_ll.h b/include/mach/stm32mp/debug_ll.h
> index 03bb60a239c1..0d88910c1375 100644
> --- a/include/mach/stm32mp/debug_ll.h
> +++ b/include/mach/stm32mp/debug_ll.h
> @@ -5,6 +5,7 @@
>  
>  #include <io.h>
>  #include <mach/stm32mp/stm32.h>
> +#include <linux/bitops.h>
>  
>  #define DEBUG_LL_UART_ADDR	STM32_UART4_BASE
>  
> @@ -18,13 +19,18 @@
>  
>  #define USART_ISR_TXE	BIT(7)
>  
> -static inline void PUTC_LL(int c)
> +static inline void stm32_serial_putc(void *ctx, int c)
>  {
> -	void __iomem *base = IOMEM(DEBUG_LL_UART_ADDR);
> +	void __iomem *base = IOMEM(ctx);
>  
>  	writel(c, base + TDR_OFFSET);
>  
>  	while ((readl(base + ISR_OFFSET) & USART_ISR_TXE) == 0);
>  }
>  
> +static inline void PUTC_LL(int c)
> +{
> +	stm32_serial_putc(IOMEM(DEBUG_LL_UART_ADDR), c);
> +}
> +
>  #endif /* __MACH_STM32MP1_DEBUG_LL_H */
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


