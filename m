Delivery-date: Fri, 27 Jun 2025 17:45:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVBGU-00BfWl-0N
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 17:45:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVBGT-0003wM-Ii
	for lore@pengutronix.de; Fri, 27 Jun 2025 17:45:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xUOJliGpeC3549gMcnE5GYHHyP7xZ0+Vodml29mfU2I=; b=VD3AGunpjsMXEHIFDUJjIkQdxT
	2Z5u1H2z8+T9WUEk7YyCOtv9wW0xEQ5jKEgm+9yIUfk2LK72PiznhoubCvR8C2K0XXiB4yQ/O4O22
	SVYthYXTr6qiQ6QfoXvdMacubF9A3tAL0aihbwF23+UYpYvs7Ixvx8NErBA0f66MXqdpXE/a7sMPn
	FUUPh4B+K9tZ+DXW9SZpwPQyI/emf5yjJKVlUF6bGDYA9pQj7Hzmfg7+9329srr6HnMuDQ9iVbjaQ
	e/CwCeCAOXNt4yaIhcCfR2REwuqGTPB5tdABZHiUa4Y/7CR/4LIEBZu/9+vYMUIf+3QWU4/0j7b2f
	0b9qPukA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVBG1-0000000F9H2-2klt;
	Fri, 27 Jun 2025 15:44:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAtO-0000000F3zu-1bQg
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 15:21:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uVAtN-00041a-85; Fri, 27 Jun 2025 17:21:29 +0200
Message-ID: <1d607097-6024-4ac3-a31e-840d83855511@pengutronix.de>
Date: Fri, 27 Jun 2025 17:21:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
 <20250627-arm-optee-early-helper-v1-14-4b098e8ac7cd@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250627-arm-optee-early-helper-v1-14-4b098e8ac7cd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_082130_427041_DCD35A2B 
X-CRM114-Status: GOOD (  15.44  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 14/14] ARM: i.MX: tqma6ulx: use ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 6/27/25 16:08, Sascha Hauer wrote:
> The first thing the tqma6ulx lowlevel code does is setting up the stack.
> Use ENTRY_FUNCTION_WITHSTACK() which is specifically for this purpose.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/boards/tqma6ulx/lowlevel.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boards/tqma6ulx/lowlevel.c b/arch/arm/boards/tqma6ulx/lowlevel.c
> index da67e67537167096477de2b905ee5c42c653c3af..57639f8a84e7680c4ee0608abf31ae8b6f1cfd28 100644
> --- a/arch/arm/boards/tqma6ulx/lowlevel.c
> +++ b/arch/arm/boards/tqma6ulx/lowlevel.c
> @@ -92,13 +92,10 @@ static void noinline start_mba6ulx(void)
>  	imx6ul_barebox_entry(fdt);
>  }
>  
> -ENTRY_FUNCTION(start_imx6ul_mba6ulx, r0, r1, r2)
> +ENTRY_FUNCTION_WITHSTACK(start_imx6ul_mba6ulx, 0x00910000, r0, r1, r2)
>  {
> -
>  	imx6ul_cpu_lowlevel_init();
>  
> -	arm_setup_stack(0x00910000);
> -
>  	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
>  		imx6_uart_setup_ll();
>  		putc_ll('>');
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



