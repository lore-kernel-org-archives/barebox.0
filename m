Delivery-date: Tue, 18 Oct 2022 11:18:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okikE-00CUOO-K8
	for lore@lore.pengutronix.de; Tue, 18 Oct 2022 11:18:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okikC-0007iZ-6I
	for lore@pengutronix.de; Tue, 18 Oct 2022 11:18:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6tHqNoeyMmzxONXT8AUAtuB6NMvzu3eHJ3xli8x7c1k=; b=UknJL11xmuaGPIT1JyifgGHjF8
	H2Dpep7utkGDpVQfH7JXxPG1FH4NFDC+8E4SdVRJ6ZoNjXlbn+3M2xGI+CyVz93abcpKOeEDZgE/z
	wTHbVR4Z1UtmzSj+DU0qx/DuCzi8dEJondPWiO+/QGnLnN4SR9D4X0W6FZayJ9iOu7cQS7CoZ+HEM
	aFG4CWlboWQXg5rGUyIeeuGOFeRGuX6Ifd0ZW06nlNebI/2z9RRhnC5CGwHz7CPcdhBoeF1NmX41e
	1NWDjg1yQS20QAtZEDXSCxpZoc41egV+ejQR0kGf86plePVKTyGw2s9dsU7POHqOkubDECPkKLC7w
	zXoSr7DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okiis-004pEO-6o; Tue, 18 Oct 2022 09:17:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okiik-004pBn-Me
	for barebox@lists.infradead.org; Tue, 18 Oct 2022 09:17:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okiij-0007Wz-B8; Tue, 18 Oct 2022 11:17:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okiij-0008WC-3s; Tue, 18 Oct 2022 11:17:09 +0200
Date: Tue, 18 Oct 2022 11:17:09 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221018091709.GS6702@pengutronix.de>
References: <20221017070702.1457936-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221017070702.1457936-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_021710_754988_C4FD7FCA 
X-CRM114-Status: GOOD (  26.47  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: i.MX7: replace hardcoded UART clocking defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 17, 2022 at 09:07:01AM +0200, Ahmad Fatoum wrote:
> We currently have the clock defines for 1-3, but lack 4-6.
> Add generic defines that can be used for all of 1-6 and
> start using them in the header.
> 
> The old defines are not used outside the file, so drop them.
> Out-of-tree users can just move the number into the parenthesis:
> 
> 	IMX7_CCM_CCGR_UART1 -> IMX7_CCM_CCGR_UART(1)
> 	IMX7_UART1_CLK_ROOT ->  IMX7_UART_CLK_ROOT(1)
> 
> Consulting the data sheet also showed that IMX7_UART_CLK_ROOT__OSC_24M
> is the same value for all UARTs, so we omit the argument there.
> 
> No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../arm/mach-imx/include/mach/imx7-ccm-regs.h | 25 ++++++++-----------
>  1 file changed, 10 insertions(+), 15 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
> index aecf9a26d017..89a41156cd6a 100644
> --- a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
> @@ -3,24 +3,17 @@
>  #ifndef __MACH_IMX7_CCM_REGS_H__
>  #define __MACH_IMX7_CCM_REGS_H__
>  
> -#define IMX7_CCM_CCGR_UART1		148
> -#define IMX7_CCM_CCGR_UART2		149
> -#define IMX7_CCM_CCGR_UART3		150
> -
>  #define IMX7_CLOCK_ROOT_INDEX(x)	(((x) - 0x8000) / 128)
>  
>  /*
>   * Taken from "Table 5-11. Clock Root Table" from i.MX7 Dual Processor
>   * Reference Manual
>   */
> -#define IMX7_UART1_CLK_ROOT		IMX7_CLOCK_ROOT_INDEX(0xaf80)
> -#define IMX7_UART1_CLK_ROOT__OSC_24M IMX7_CCM_TARGET_ROOTn_MUX(0b000)
> -
> -#define IMX7_UART2_CLK_ROOT		IMX7_CLOCK_ROOT_INDEX(0xb000)
> -#define IMX7_UART2_CLK_ROOT__OSC_24M IMX7_CCM_TARGET_ROOTn_MUX(0b000)
>  
> -#define IMX7_UART3_CLK_ROOT		IMX7_CLOCK_ROOT_INDEX(0xb080)
> -#define IMX7_UART3_CLK_ROOT__OSC_24M IMX7_CCM_TARGET_ROOTn_MUX(0b000)
> +/* 1 <= n <= 6 */
> +#define IMX7_CCM_CCGR_UART(n)		(148 + (n) - 1)
> +#define IMX7_UART_CLK_ROOT(n)		IMX7_CLOCK_ROOT_INDEX(0xaf80 + (n - 1) * 0x80)
> +#define IMX7_UART_CLK_ROOT__OSC_24M	IMX7_CCM_TARGET_ROOTn_MUX(0b000)
>  
>  /* 0 <= n <= 190 */
>  #define IMX7_CCM_CCGRn_SET(n)	(0x4004 + 16 * (n))
> @@ -39,16 +32,18 @@
>  #define IMX7_CCM_CCGR_SETTINGn_NEEDED_RUN_WAIT(n)	IMX7_CCM_CCGR_SETTINGn(n, 0b10)
>  #define IMX7_CCM_CCGR_SETTINGn_NEEDED(n)		IMX7_CCM_CCGR_SETTINGn(n, 0b11)
>  
> +/* UART counting starts for 1, like in the datasheet/dt-bindings */
> +
>  static inline void imx7_early_setup_uart_clock(void)
>  {
>  	void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR);
>  
>  	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
> -	       ccm + IMX7_CCM_CCGRn_CLR(IMX7_CCM_CCGR_UART1));
> -	writel(IMX7_CCM_TARGET_ROOTn_ENABLE | IMX7_UART1_CLK_ROOT__OSC_24M,
> -	       ccm + IMX7_CCM_TARGET_ROOTn(IMX7_UART1_CLK_ROOT));
> +	       ccm + IMX7_CCM_CCGRn_CLR(IMX7_CCM_CCGR_UART(1)));
> +	writel(IMX7_CCM_TARGET_ROOTn_ENABLE | IMX7_UART_CLK_ROOT__OSC_24M,
> +	       ccm + IMX7_CCM_TARGET_ROOTn(IMX7_UART_CLK_ROOT(1)));
>  	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
> -	       ccm + IMX7_CCM_CCGRn_SET(IMX7_CCM_CCGR_UART1));
> +	       ccm + IMX7_CCM_CCGRn_SET(IMX7_CCM_CCGR_UART(1)));
>  }
>  
>  #endif
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


