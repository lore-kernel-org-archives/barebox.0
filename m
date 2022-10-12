Delivery-date: Wed, 12 Oct 2022 14:33:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiavo-0065Zg-AG
	for lore@lore.pengutronix.de; Wed, 12 Oct 2022 14:33:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiavl-00019O-O5
	for lore@pengutronix.de; Wed, 12 Oct 2022 14:33:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xb5q/tvjwMb9VHBKaRKDHR1r7iHlDmbXnCGG+3mfnR8=; b=bdiC9OQuMAi3zxUFYjrqSwzLhu
	l2SKWrlZNJYt1CEsg0HcCCT2pLPvLP89drIH5fuQvc/5kt1tQifb0QTSKbKfUE7Xxub6Sv0WFVls/
	3LvTpyEtEnJuTXyQ5cmuMm1+ICntpiw+SpWLi3ptajImBijvEwBPGnLRbtjSun7JIKRNBWLgf5h0C
	Dhf5iJMz4ZsRvoZ4R9LFCuHft8z0l8yF88gvBz97yEcDs02SNHyfvJYt3As/IbHGxYJI1pHPSRNJt
	htSDDtf2dYhCox4BJE975vchodsfMOowCEBuAEyMN2EYVFtHcWSDcqCjaXYnQ4Xc8WkZgxWS8DoFM
	inOjYjyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiauC-007z9s-S9; Wed, 12 Oct 2022 12:32:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiau7-007z8U-9s
	for barebox@lists.infradead.org; Wed, 12 Oct 2022 12:32:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oiau5-00013R-D5; Wed, 12 Oct 2022 14:32:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oiau4-0005ho-Uq; Wed, 12 Oct 2022 14:32:04 +0200
Date: Wed, 12 Oct 2022 14:32:04 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Johannes Zink <j.zink@pengutronix.de>,
	Lars Pedersen <lapeddk@gmail.com>,
	Bruno Thomsen <bruno.thomsen@gmail.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>
Message-ID: <20221012123204.GB6702@pengutronix.de>
References: <20221010074834.2361014-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221010074834.2361014-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_053207_408486_F910EC50 
X-CRM114-Status: GOOD (  27.00  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX7: don't hardcode UART1 in
 imx7_early_setup_uart_clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 10, 2022 at 09:48:34AM +0200, Ahmad Fatoum wrote:
> imx7_early_setup_uart_clock() has a very generic sounding name, but so
> far only set up clocks for UART1. This can lead board code authors
> astray that intend to user a different UART for DEBUG_LL.
> 
> This issue affects board code for kamstrup-mx7-concentrator, meerkat96
> and zii-imx7d-dev, which use UART4, UART6 and UART2 respectively.
> 
> As I don't have this boards available to test and clock changes may have
> adverse effect elsewhere, we have all existing users setup UART1 as
> before, but note with a comment that this may not be the original
> author's intention.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> I have CC'd authors of the three likely misconfigured boards,
> in case they want to fix them and test.
> ---
>  arch/arm/boards/ac-sxb/lowlevel.c             |  2 +-
>  .../boards/freescale-mx7-sabresd/lowlevel.c   |  2 +-
>  .../kamstrup-mx7-concentrator/lowlevel.c      |  3 ++-
>  arch/arm/boards/meerkat96/lowlevel.c          |  3 ++-
>  arch/arm/boards/zii-imx7d-dev/lowlevel.c      |  3 ++-
>  .../arm/mach-imx/include/mach/imx7-ccm-regs.h | 21 +++++++++----------
>  6 files changed, 18 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm/boards/ac-sxb/lowlevel.c b/arch/arm/boards/ac-sxb/lowlevel.c
> index a910555f9bd7..a26454968304 100644
> --- a/arch/arm/boards/ac-sxb/lowlevel.c
> +++ b/arch/arm/boards/ac-sxb/lowlevel.c
> @@ -93,7 +93,7 @@ extern char __dtb_z_ac_sxb_start[];
>  
>  static inline void setup_uart(void)
>  {
> -	imx7_early_setup_uart_clock();
> +	imx7_early_setup_uart_clock(1);
>  
>  	imx7_setup_pad(MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX);
>  
> diff --git a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
> index a8733d62091f..6d393bf2b10e 100644
> --- a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
> @@ -17,7 +17,7 @@ extern char __dtb_imx7d_sdb_start[];
>  
>  static inline void setup_uart(void)
>  {
> -	imx7_early_setup_uart_clock();
> +	imx7_early_setup_uart_clock(1);
>  
>  	imx7_setup_pad(MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX);
>  
> diff --git a/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
> index 4a9eae80d153..511f01757c46 100644
> --- a/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
> +++ b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
> @@ -17,7 +17,8 @@ extern char __dtb_z_imx7d_flex_concentrator_mfg_start[];
>  
>  static inline void setup_uart(void)
>  {
> -	imx7_early_setup_uart_clock();
> +	/* FIXME: Below UART4 is muxed, not UART1 */
> +	imx7_early_setup_uart_clock(1);
>  
>  	imx7_setup_pad(MX7D_PAD_SAI2_TX_BCLK__UART4_DCE_TX);
>  
> diff --git a/arch/arm/boards/meerkat96/lowlevel.c b/arch/arm/boards/meerkat96/lowlevel.c
> index 1c9baeacfb2a..e65726ef1c27 100644
> --- a/arch/arm/boards/meerkat96/lowlevel.c
> +++ b/arch/arm/boards/meerkat96/lowlevel.c
> @@ -14,7 +14,8 @@ extern char __dtb_z_imx7d_meerkat96_start[];
>  
>  static void setup_uart(void)
>  {
> -	imx7_early_setup_uart_clock();
> +	/* FIXME: Below UART6 is muxed, not UART1 */
> +	imx7_early_setup_uart_clock(1);
>  	imx7_setup_pad(MX7D_PAD_SD1_WP__UART6_DCE_TX);
>  	imx7_uart_setup_ll();
>  	putc_ll('>');
> diff --git a/arch/arm/boards/zii-imx7d-dev/lowlevel.c b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
> index 7579a2a8a050..0e316b602436 100644
> --- a/arch/arm/boards/zii-imx7d-dev/lowlevel.c
> +++ b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
> @@ -23,7 +23,8 @@ extern char __dtb_z_imx7d_zii_rmu2_start[];
>  
>  static inline void setup_uart(void)
>  {
> -	imx7_early_setup_uart_clock();
> +	/* FIXME: Below UART2 is muxed, not UART1 */
> +	imx7_early_setup_uart_clock(1);
>  
>  	imx7_setup_pad(MX7D_PAD_UART2_TX_DATA__UART2_DCE_TX);
>  
> diff --git a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
> index aecf9a26d017..0ef0742bb65d 100644
> --- a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
> @@ -39,16 +39,15 @@
>  #define IMX7_CCM_CCGR_SETTINGn_NEEDED_RUN_WAIT(n)	IMX7_CCM_CCGR_SETTINGn(n, 0b10)
>  #define IMX7_CCM_CCGR_SETTINGn_NEEDED(n)		IMX7_CCM_CCGR_SETTINGn(n, 0b11)
>  
> -static inline void imx7_early_setup_uart_clock(void)
> -{
> -	void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR);
> -
> -	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
> -	       ccm + IMX7_CCM_CCGRn_CLR(IMX7_CCM_CCGR_UART1));
> -	writel(IMX7_CCM_TARGET_ROOTn_ENABLE | IMX7_UART1_CLK_ROOT__OSC_24M,
> -	       ccm + IMX7_CCM_TARGET_ROOTn(IMX7_UART1_CLK_ROOT));
> -	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
> -	       ccm + IMX7_CCM_CCGRn_SET(IMX7_CCM_CCGR_UART1));
> -}
> +/* UART counting starts for 1, like in the datasheet/dt-bindings */
> +#define imx7_early_setup_uart_clock(uart) do { \
> +	void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR); \
> +	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0), \
> +	       ccm + IMX7_CCM_CCGRn_CLR(IMX7_CCM_CCGR_UART ## uart)); \

You could do:

#define IMX7_CCM_CCGR_UART(n)	(148 + (n))		/* 0 <= n <= 5 */
#define IMX7_UART_CLK_ROOT(n)	(0xaf80 + (n) * 0x80)	/* 0 <= n <= 5 */

to avoid converting this into a macro.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


