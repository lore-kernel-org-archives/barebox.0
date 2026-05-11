Delivery-date: Mon, 11 May 2026 15:49:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMR0l-000ZWX-2U
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 15:49:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMR0h-0006BS-8X
	for lore@pengutronix.de; Mon, 11 May 2026 15:49:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rmz1dlt6bKWfBPsSsIGM3JENzqKmy0HMldKCMzz0sd0=; b=FRD/2aQ/aLVR9sjmu89CYlR2D6
	72NgbMvKf23xpwC6DeojwRsCHKz1pB9+4yIA6SgyYnwn9cnsz5QwdfOOQYs2/FLUohgLIoDmWtkM7
	zZeTyVVxryTIA0rjrz/enzbXDQXEb3bkzvA0Sdo28IJk/qkF82LrfaOpOYDo1ebxJmxNWBOvxJpQW
	3XbQxUzAc74N5x9IUGz3iS4k0YBEIUtqMsRzknGnOVo1JCEggtEhzggtpZDUTJ+KMKXvSQGFOcqnl
	z84vxsdw7WL2nGcxvJSsLByqc4k/FqJVJK5+skfV6oEf8KymPUs2CAUPwB0/w2hPqcBPdk5fRH+oq
	hGxhukdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR0N-0000000Dofc-1cQC;
	Mon, 11 May 2026 13:49:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR0L-0000000DofR-2qnb
	for barebox@bombadil.infradead.org;
	Mon, 11 May 2026 13:49:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=Rmz1dlt6bKWfBPsSsIGM3JENzqKmy0HMldKCMzz0sd0=; b=kMf58rufdNGUNVMAG8gR4XNc/Q
	EhYKAJEEthZhHWlm9azBE37cBQ/0E8k8kple/TgLRW43TA0YauZvj2L0XPZzs4470CPsV5+W7wD+0
	NvQH3LFwWaHEwmy1VFvde0mpV2bYAL5E10Wm1iOoDuONxEReEjOtxHhmVp0eH96RYZuFrYh/OrDMX
	eHL7xG1PQ9/lYFyTcQvP21633VfS0PuFB2VM6r9h6bZv2jo107+53/PuESOuS7TBqoDAsyTWQ1Nxb
	N6AHKsq5LvU6QqK5S+ElfMuA8RqJk20j2rC1YmNd0wJulSLrgqVMcmDmFfvQAhD5wUBEkd2CoTtbe
	j5xY6VfA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR0H-00000008G7R-2RG8
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 13:49:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wMR0E-00065T-LM; Mon, 11 May 2026 15:48:58 +0200
Message-ID: <fbe6e09e-4b21-4638-8254-1c46a75b5c91@pengutronix.de>
Date: Mon, 11 May 2026 15:48:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260511-v2025-11-0-topic-riotboard-v2-0-788bf85842bd@pengutronix.de>
 <20260511-v2025-11-0-topic-riotboard-v2-2-788bf85842bd@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260511-v2025-11-0-topic-riotboard-v2-2-788bf85842bd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_144901_638817_DB1B6705 
X-CRM114-Status: GOOD (  13.89  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: i.MX: riotboard: switch to
 imx6q_barebox_entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 5/11/26 3:32 PM, Fabian Pflug wrote:
> Make use of the imx6q_barebox_entry instead of calling
> barebox_arm_entry directly, which allows us to profit from optional
> OP-TEE loading in this function.
> Always setup UART, in case OP-TEE gets integrated, which will crash if
> the UART is not configured correctly and debug is enabled.
> Since now a bit more functions are called, we use
> relocate_to_current_adr instead of get_runtime_offset.
> 
> This should not change behaviour of current implementations, but makes
> way for OP-TEE implementations.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Minor comment below:

> -ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
> +static noinline void continue_imx6s_riotboard(void)
>  {
> -	void *fdt;
> +	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
>  
> -	imx6_cpu_lowlevel_init();
> +	writel(0x4, iomuxbase + 0x016c);
> +
> +	imx6_ungate_all_peripherals();
> +	// if uart ist not set-up, then OP-TEE will fail if debugging is enabled.
> +	imx6_uart_setup(IOMEM(MX6_UART2_BASE_ADDR));
>  
>  	if (IS_ENABLED(CONFIG_DEBUG_LL)) {

This if claude can be removed.

> -		/*
> -		 * CONFIG_DEBUG_IMX6Q_UART=y
> -		 * CONFIG_DEBUG_IMX_UART_PORT=2
> -		 */
> -		writel(0x4, 0x020e016c);
> -		imx6_ungate_all_peripherals();
> -		imx6_uart_setup_ll();
> -		putc_ll('a');
> +		pbl_set_putc(imx_uart_putc, IOMEM(MX6_UART2_BASE_ADDR));

This is useful to have independently of DEBUG_LL

> +		putc_ll('>');

This is already a no-op if !IS_ENABLED(CONFIG_DEBUG_LL)

Cheers,
Ahmad

>  	}
>  
> -	fdt = __dtb_imx6s_riotboard_start + get_runtime_offset();
> -	barebox_arm_entry(0x10000000, SZ_1G, fdt);
> +	imx6q_barebox_entry(__dtb_imx6s_riotboard_start);
> +}
> +
> +ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
> +{
> +	imx6_cpu_lowlevel_init();
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	continue_imx6s_riotboard();
>  }
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



