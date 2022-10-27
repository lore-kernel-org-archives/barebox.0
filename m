Delivery-date: Thu, 27 Oct 2022 20:37:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oo7lF-004OlE-2Z
	for lore@lore.pengutronix.de; Thu, 27 Oct 2022 20:37:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oo7lD-0006e6-J6
	for lore@pengutronix.de; Thu, 27 Oct 2022 20:37:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b/H8aAVozfQuOuYxaB/Sx7FjsJrJ8RQG2EYWvM+nYhs=; b=nlH5aGTxD7gL1e0fwEjQQ/31Pd
	dodiOxJSjXxTP1PK+wAiSNWkFT+hzL9TyvkQ9fx/Hk50WXuEhoZOVdpZCBTvjH2rUus0MydHptdLY
	9bkFCLzL/1roDfyKhkCyylA5sH6DmH9PNHFGzkBWNSITEAJkcCAgTI1/9dvReQYzwiPDyn1TfhggQ
	6W+kkozBN560wHfmFy6vDkfzrLmxnXCL/NzOYxueE/kgt2rWk4Hj53t2qVVf3cr8ygix5E5JF81Uo
	WrdN6BInkkJ3EUXqNg9a7cn/Hyt4rGInKrvTgn4Aixs5BVwtQnp6niMh0wARnf5aRtGG8SPyzntWS
	Gf1Sn/zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo7jD-00EXBn-UE; Thu, 27 Oct 2022 18:35:44 +0000
Received: from mail-vs1-xe2a.google.com ([2607:f8b0:4864:20::e2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo7j8-00EXAY-Lk
	for barebox@lists.infradead.org; Thu, 27 Oct 2022 18:35:40 +0000
Received: by mail-vs1-xe2a.google.com with SMTP id 3so2685547vsh.5
        for <barebox@lists.infradead.org>; Thu, 27 Oct 2022 11:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=b/H8aAVozfQuOuYxaB/Sx7FjsJrJ8RQG2EYWvM+nYhs=;
        b=IAFQgQ5Crn0G4stmIYjrnHCVAgtuFVS0ITHE8yop6cebujvhPEXBxIN8Hk2vixF6fn
         nnpGfoeiufEzKg8PNHbLoixHbceTpL8tA3JRg2IrU/8cPuKzqXUdPSqRkPY3t1ajzP4M
         00JPJ0eMo4oEADMZQ0SAfl8W2ukvPVlOOGQ3Us/mPdjjXBsOsdLYB+o5Sjdq42gUNKBx
         bn6FuxTtMWtpi6Wux8qrVLc3t+Dnx4BSzToPOeOnhvmq9gySloljv/O3Ehs02k8EivBm
         CLNdQ1rK8Qpr+sf/EfR3saSRCz8Kq9e2OwXk9NmxNH4XiuBbHyOwAUc55a7C35tZOzu0
         H0Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b/H8aAVozfQuOuYxaB/Sx7FjsJrJ8RQG2EYWvM+nYhs=;
        b=IpZ2gvNVrn+FpC762dOXaXKYJE0nwvKhVm4XN1CcUirwgMxb331MAvuscu8WyA3+mT
         SglJkNo4c2ROwhIOLm/tjThmgRpXxfVce8GDt+NAXEnzJE8fhcl2IVTQ4jFqazijUZsP
         Gm+PSOKBXBtk977NiytxD+S6w6LBLsxcxYX1wwUFmC1MGQA3YrSvYPu/u0HoXL448GJc
         QMSYMkjOO7oGGn4jOztlmcQg3AQ4rFuln8u0rpMuhBCB8/3//KQHoEb3MnlQmQOpXd8Y
         u17FBNVv+wTqBWsb4ZNq1OIiyAIC+qW3FKYbyvurMUMAp6YiZk0czGnUv88TECoNWOJh
         3E/w==
X-Gm-Message-State: ACrzQf16epEkZp6zKM+gukbf8XqbP0xJCzJWgo4E4RyNQK5jILUJVUKk
	qz+s8UXDXbaKlOKMvppgMTTwi+ieGsrrtdw7+MTOd2AiWM0=
X-Google-Smtp-Source: AMsMyM6k/GKy2d7cZIKnpvhlXC7tY9Zp0aZWGI4cP8lpVlYq8SfmDy5Bx2bJl+5uL512PWBxzOWdO9yzGXaCCGk7NUU=
X-Received: by 2002:a05:6102:a88:b0:3a6:842b:4c67 with SMTP id
 n8-20020a0561020a8800b003a6842b4c67mr28836466vsg.63.1666895733476; Thu, 27
 Oct 2022 11:35:33 -0700 (PDT)
MIME-Version: 1.0
References: <20221010074834.2361014-1-a.fatoum@pengutronix.de>
In-Reply-To: <20221010074834.2361014-1-a.fatoum@pengutronix.de>
From: Bruno Thomsen <bruno.thomsen@gmail.com>
Date: Thu, 27 Oct 2022 20:35:17 +0200
Message-ID: <CAH+2xPCAE2eEiyAJnq=pDOxy6EY71h3tDr4tjm2PQ-wtTN8brA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Johannes Zink <j.zink@pengutronix.de>, 
	Lars Pedersen <lapeddk@gmail.com>, Andrey Smirnov <andrew.smirnov@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_113538_749983_F76EDBB8 
X-CRM114-Status: GOOD (  21.28  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX7: don't hardcode UART1 in imx7_early_setup_uart_clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

Den man. 10. okt. 2022 kl. 09.48 skrev Ahmad Fatoum <a.fatoum@pengutronix.de>:
>
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
> -       imx7_early_setup_uart_clock();
> +       imx7_early_setup_uart_clock(1);
>
>         imx7_setup_pad(MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX);
>
> diff --git a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
> index a8733d62091f..6d393bf2b10e 100644
> --- a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
> @@ -17,7 +17,7 @@ extern char __dtb_imx7d_sdb_start[];
>
>  static inline void setup_uart(void)
>  {
> -       imx7_early_setup_uart_clock();
> +       imx7_early_setup_uart_clock(1);
>
>         imx7_setup_pad(MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX);
>
> diff --git a/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
> index 4a9eae80d153..511f01757c46 100644
> --- a/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
> +++ b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
> @@ -17,7 +17,8 @@ extern char __dtb_z_imx7d_flex_concentrator_mfg_start[];
>
>  static inline void setup_uart(void)
>  {
> -       imx7_early_setup_uart_clock();
> +       /* FIXME: Below UART4 is muxed, not UART1 */
> +       imx7_early_setup_uart_clock(1);
>

You are right, this should setup UART4 and not UART1.

Reviewed-by: Bruno Thomsen <bruno.thomsen@gmail.com>

>         imx7_setup_pad(MX7D_PAD_SAI2_TX_BCLK__UART4_DCE_TX);
>
> diff --git a/arch/arm/boards/meerkat96/lowlevel.c b/arch/arm/boards/meerkat96/lowlevel.c
> index 1c9baeacfb2a..e65726ef1c27 100644
> --- a/arch/arm/boards/meerkat96/lowlevel.c
> +++ b/arch/arm/boards/meerkat96/lowlevel.c
> @@ -14,7 +14,8 @@ extern char __dtb_z_imx7d_meerkat96_start[];
>
>  static void setup_uart(void)
>  {
> -       imx7_early_setup_uart_clock();
> +       /* FIXME: Below UART6 is muxed, not UART1 */
> +       imx7_early_setup_uart_clock(1);
>         imx7_setup_pad(MX7D_PAD_SD1_WP__UART6_DCE_TX);
>         imx7_uart_setup_ll();
>         putc_ll('>');
> diff --git a/arch/arm/boards/zii-imx7d-dev/lowlevel.c b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
> index 7579a2a8a050..0e316b602436 100644
> --- a/arch/arm/boards/zii-imx7d-dev/lowlevel.c
> +++ b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
> @@ -23,7 +23,8 @@ extern char __dtb_z_imx7d_zii_rmu2_start[];
>
>  static inline void setup_uart(void)
>  {
> -       imx7_early_setup_uart_clock();
> +       /* FIXME: Below UART2 is muxed, not UART1 */
> +       imx7_early_setup_uart_clock(1);
>
>         imx7_setup_pad(MX7D_PAD_UART2_TX_DATA__UART2_DCE_TX);
>
> diff --git a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
> index aecf9a26d017..0ef0742bb65d 100644
> --- a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
> @@ -39,16 +39,15 @@
>  #define IMX7_CCM_CCGR_SETTINGn_NEEDED_RUN_WAIT(n)      IMX7_CCM_CCGR_SETTINGn(n, 0b10)
>  #define IMX7_CCM_CCGR_SETTINGn_NEEDED(n)               IMX7_CCM_CCGR_SETTINGn(n, 0b11)
>
> -static inline void imx7_early_setup_uart_clock(void)
> -{
> -       void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR);
> -
> -       writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
> -              ccm + IMX7_CCM_CCGRn_CLR(IMX7_CCM_CCGR_UART1));
> -       writel(IMX7_CCM_TARGET_ROOTn_ENABLE | IMX7_UART1_CLK_ROOT__OSC_24M,
> -              ccm + IMX7_CCM_TARGET_ROOTn(IMX7_UART1_CLK_ROOT));
> -       writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
> -              ccm + IMX7_CCM_CCGRn_SET(IMX7_CCM_CCGR_UART1));
> -}
> +/* UART counting starts for 1, like in the datasheet/dt-bindings */
> +#define imx7_early_setup_uart_clock(uart) do { \
> +       void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR); \
> +       writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0), \
> +              ccm + IMX7_CCM_CCGRn_CLR(IMX7_CCM_CCGR_UART ## uart)); \
> +       writel(IMX7_CCM_TARGET_ROOTn_ENABLE | IMX7_UART ## uart ## _CLK_ROOT__OSC_24M, \
> +              ccm + IMX7_CCM_TARGET_ROOTn(IMX7_UART ## uart ## _CLK_ROOT)); \
> +       writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0), \
> +              ccm + IMX7_CCM_CCGRn_SET(IMX7_CCM_CCGR_UART ## uart)); \
> +} while (0)
>
>  #endif
> --
> 2.30.2
>


