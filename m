Delivery-date: Fri, 08 May 2026 17:04:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wLMkb-002OmI-1t
	for lore@lore.pengutronix.de;
	Fri, 08 May 2026 17:04:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wLMkW-0008PE-K8
	for lore@pengutronix.de; Fri, 08 May 2026 17:04:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J8eQqN63R+YxH2CSxsO+/P7qJm69umw9zLc4Gp2EAZo=; b=KFqL+jysyt3e6ZhlG0oKTunilo
	5QTeqtf7aAbNM5qtGErKp/VslW/xnqI8v/QaQuA+NWOaMtAxB1tdArzPBdvQ93tLWMU9ZOjaqmqek
	hcT7aDb/5v+GzNL25TPfyNy50shWrl8SbYXfVzzi4sYlMf07riG5H/qTxjq8F9OD2RnHQk+gviz2p
	9fyUEBf07jwOhQpd/Y9EmrmijD6QLcJgjGvLuEUnGrLvfbgqrUcgh/cohspktJDBk02YBz4yK6BdD
	MIgqNv45oMeG3KvIcZegyX6UJKsMrVWG2s3gvqaPf3hThfR6b1wa23S9HttLOnL8FFOB+l01DnzFs
	e8drELtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLMjE-00000006lQZ-0MVL;
	Fri, 08 May 2026 15:03:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLMjC-00000006lQE-1bkT
	for barebox@bombadil.infradead.org;
	Fri, 08 May 2026 15:02:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=J8eQqN63R+YxH2CSxsO+/P7qJm69umw9zLc4Gp2EAZo=; b=glULpVKGvBBs1hwb/27Wn0ITSy
	txpP/+OstIj+LPRgcyWSYlpvuA2gPuHAWWaPiMv3d9jh2WW/SiL2iAm1PMUG2ACH+bx3LbihM1zlz
	G6JAzPcrw05uU2zy6fYZGnoogbRIvTWvufZtaf15kebtJgwuhqEfQ5quK0u2d/XU00cr1z10pZE7E
	L9cBjZPcKYVUpkHPI1tAmWOOIhf4sC3ygAhyAbEX6O/he3nEQUptsoun4AWZh7G8E6t52gW+WpMu7
	zCpbcspbgXQbnNnVTcgujYAZivIw0RqAjaLN6MDjG1Jl6Zs3iXgKaxUfaNGikga1lJ7Cz8YN9Dugb
	gbxL4Neg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLMj9-00000006cbq-00Ix
	for barebox@lists.infradead.org;
	Fri, 08 May 2026 15:02:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wLMj8-0007AF-PS; Fri, 08 May 2026 17:02:54 +0200
Message-ID: <5e35b08e-2230-4783-b6af-0cfd1507e404@pengutronix.de>
Date: Fri, 8 May 2026 17:02:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260508-v2025-11-0-topic-riotboard-v1-0-42e6134c3de6@pengutronix.de>
 <20260508-v2025-11-0-topic-riotboard-v1-2-42e6134c3de6@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260508-v2025-11-0-topic-riotboard-v1-2-42e6134c3de6@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_160255_424918_59E29EDF 
X-CRM114-Status: GOOD (  24.10  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX: riotboard: rewrite lowlevel.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 5/8/26 4:43 PM, Fabian Pflug wrote:
> Make use of the imx6q_barebox_entry instead of calling
> barebox_arm_entry directly, which allows us to profit from optional
> OP-TEE loading in this function.

maybe change commit message title to

ARM: i.MX: riotboard: switch to imx6q_barebox_entry

?

> Always setup UART, in case OP-TEE gets integrated, which will crash if
> the UART is not configured correctly and debug is enabled.
> Since now a bit more functions are called, we use
> relocate_to_current_adr instead of get_runtime_offset.
> 
> This should not change behaviour of current implementations, but makes
> way for OP-TEE implementations.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  arch/arm/boards/embest-riotboard/lowlevel.c | 37 ++++++++++++++++++-----------
>  1 file changed, 23 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/boards/embest-riotboard/lowlevel.c
> index f1b37c2aa0..e44fb3582e 100644
> --- a/arch/arm/boards/embest-riotboard/lowlevel.c
> +++ b/arch/arm/boards/embest-riotboard/lowlevel.c
> @@ -11,26 +11,35 @@
>  #include <asm/cache.h>
>  #include <asm/mmu.h>
>  #include <mach/imx/imx6.h>
> +#include <mach/imx/iomux-mx6.h>
> +#include <mach/imx/esdctl.h>
>  
>  extern char __dtb_imx6s_riotboard_start[];
>  
> -ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
> +static noinline void setup_riotboard_uart(void)
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
> -		/*
> -		 * CONFIG_DEBUG_IMX6Q_UART=y
> -		 * CONFIG_DEBUG_IMX_UART_PORT=2
> -		 */
> -		writel(0x4, 0x020e016c);
> -		imx6_ungate_all_peripherals();
> -		imx6_uart_setup_ll();
> -		putc_ll('a');
> +		pbl_set_putc(imx_uart_putc, IOMEM(MX6_UART2_BASE_ADDR));
> +		putc_ll('>');
>  	}
> -
> -	fdt = __dtb_imx6s_riotboard_start + get_runtime_offset();
> -	barebox_arm_entry(0x10000000, SZ_1G, fdt);

Move

  imx6q_barebox_entry(__dtb_imx6s_riotboard_start);

here.

> +}
> +
> +ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
> +{
> +	imx6_cpu_lowlevel_init();
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	setup_riotboard_uart();

Rename to continue_imx6s_riotboard() or similar.

> +
> +	imx6q_barebox_entry(__dtb_imx6s_riotboard_start);

Illegal reference to global variable in function that does relocation,
move it into the noinline function above.

Cheers,
Ahmad

>  }
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



