Delivery-date: Fri, 18 Jun 2021 02:05:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lu20f-0007X5-T0
	for lore@lore.pengutronix.de; Fri, 18 Jun 2021 02:05:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lu20f-00015f-05
	for lore@pengutronix.de; Fri, 18 Jun 2021 02:05:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+arNskekVk5z+HtktQCqLXsk3lsJeCkvBlFYT7hVCBg=; b=TppRnrZyfjEVg0
	PVsE8+p2OSDdf8bia+fS21mpx6Gw7Ze5apnXoDsl81XBfmmklhVV2ECqs/2tVNIW1ysPw1Tgz34Rq
	gjacmnMhA6KGcA+NOtaWY0Gu50vS6Vzl8L1mbHbx6vRb/vA8ovMSzbX/QNB3vLjaf6CcjVfbp081D
	7UQ0o+U0PO68ERunPkZ63wajYssHglVbKgKngH9QN8bD63Avvl/LXtXOyvjrnxSqEsRETNwPS2tGA
	LyCy/Gaet44EA2trzvorgbPeYGlIgrf5Tl4WIViY/SOuAFT9LMQhS0M5CRF91Bl6eRwPhbbvUQ1W6
	Et9bgSZjic9oZMF3cMUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lu1yo-00C9XB-H0; Fri, 18 Jun 2021 00:03:26 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lu1yj-00C9W8-7e
 for barebox@lists.infradead.org; Fri, 18 Jun 2021 00:03:22 +0000
Received: by mail-lf1-x136.google.com with SMTP id j2so13365299lfg.9
 for <barebox@lists.infradead.org>; Thu, 17 Jun 2021 17:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ytRKsuSOWg5KJq8Jo8sIvR0hpDenKqbNqdtSV9PAth8=;
 b=oNi9XrzMgxjMk69p6KS9pgjcNWKgB3eMEypXpelV6Oc6vCVvsSMknlVu4RrNV4fNwZ
 Tnw4LGjM8kdQmw0QsisFqaAEJ45zloUj6Tr+2KGmm0SYhVDBem+FmGyi11cOQRTePFFN
 BGbaaN+o0KcI2MPgy5TG7lKDSv99BSOVUoESQrqJVQOjBvK6mCr5JE00eBSup2s6NuZI
 JJL4cP6NdL7oDPI5RemgHCuZXNINtatgr2jlgQR69uL2MVPQA3rkVeZ9ylLB6zuSwkeS
 vtXYM/ErHG3MoNvnHi/2s3Sn3GVtEsfT0otmumI0Pw/yTERmF89lVLyaQF/AVURU4Hck
 ENOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ytRKsuSOWg5KJq8Jo8sIvR0hpDenKqbNqdtSV9PAth8=;
 b=fLTM5J6M0UcI/GZPdyIOX9ycLbK1tO0Ob+nIcws8jJZ8tHSLPtGxAgrpbCcGRY/RIn
 n19CC4wR2StbOwXEmYFBtDMKHlKDKih/TtXR3/jyxsZlIBa7j6lZcs/0oqwo/pO90fPZ
 ZiCDIeCoDLV3gE/Axu3nebPOCO/qiM9xU2gGwPmhafA4GppuTuRK91v9TgF8tykUeCCq
 ltj4lx2RjSv5mJRiM1fpHjTf4naYoukSrU4ovWv7khY60HBGVMvMYvI7iO4u9n+U4x63
 Q4jKswF1ucaqC9EuqCudcz0C31ZUo1x6DOcNyI3Rxv0uojlS9kZu25RwrZqqoxZGR97K
 UCeA==
X-Gm-Message-State: AOAM533atK1XMi9zdl2PtRqMEpKZ+CmmhFWaJmkTeVcM6Fyj5Ya+BLzG
 aWa5J8KIN1A1UPRIJaSqmES2kzrZ0hSXMBg4WJwJMA==
X-Google-Smtp-Source: ABdhPJw7NffoAnaWitImuFLMNvwpMTLZzW9MuZIJVnrHwbrv6gp1Tz+Lg46GpLYLZZkKdtvULxL2XfNC7gSlER77Q4E=
X-Received: by 2002:a05:6512:751:: with SMTP id
 c17mr679285lfs.605.1623974591434; 
 Thu, 17 Jun 2021 17:03:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210617092303.241349-1-r.czerwinski@pengutronix.de>
In-Reply-To: <20210617092303.241349-1-r.czerwinski@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Thu, 17 Jun 2021 17:03:00 -0700
Message-ID: <CAMHeXxNHnqwoBx7w_Hchrp4ZAM9PPtrgu1q0A5k-YW-1-W31gw@mail.gmail.com>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_170321_447387_36F5B52D 
X-CRM114-Status: GOOD (  15.38  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: imx: add support for TQMa6UL SoM on MBa6ulxl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 17, 2021 at 2:25 AM Rouven Czerwinski
<r.czerwinski@pengutronix.de> wrote:
> +
> +static void setup_uart(void)
> +{
> +       void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
> +
> +       imx6_ungate_all_peripherals();
> +
> +       imx_setup_pad(iomuxbase, MX6_PAD_UART1_TX_DATA__UART1_DCE_TX);
> +       imx_setup_pad(iomuxbase, MX6_PAD_UART1_RX_DATA__UART1_DCE_RX);

>From what I can tell, imx_setup_pad() will program the conf register
with 0.  Not a more typical value like 0x1b0b1 that is in most dts
files.  Does this actually work?  It seems like one needs to OR in the
pad conf value to the pinmux config constant to actually program this
correctly.

> +       imx6_uart_setup((void *)MX6_UART1_BASE_ADDR);
> +       pbl_set_putc(imx_uart_putc, (void *)MX6_UART1_BASE_ADDR);
> +
> +       pr_debug("\n");

Do you actually get the output from this?  I'm trying to add a new
imx6ul board and it seems like one needs a delay between the uart
setup and the uart actually working to output data.  Or perhaps this
is just my board.

> +static void noinline start_mba6ulx(void)
> +{
> +       setup_uart();

Why setup uart when LL_DEBUG is not enabled?  This dts should have
this working without any extra setup.

> +
> +       imx6ul_barebox_entry(__dtb_z_imx6ul_mba6ulx_start);
> +}
> +
> +ENTRY_FUNCTION(start_imx6ul_mba6ulx, r0, r1, r2)
> +{
> +
> +       imx6ul_cpu_lowlevel_init();
> +
> +       arm_setup_stack(0x00910000);
> +
> +       if (IS_ENABLED(CONFIG_DEBUG_LL)) {
> +               imx6_uart_setup_ll();

Don't you need the muxing and other code in setup_uart() for this to work?

> +               putc_ll('>');
> +       }
> +
> +       relocate_to_current_adr();
> +       setup_c();
> +       barrier();
> +
> +       start_mba6ulx();

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

