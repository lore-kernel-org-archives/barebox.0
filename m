Delivery-date: Fri, 08 Jul 2022 10:26:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9jJz-00AIEF-Az
	for lore@lore.pengutronix.de; Fri, 08 Jul 2022 10:26:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9jK0-0005jb-RB
	for lore@pengutronix.de; Fri, 08 Jul 2022 10:26:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oswbOISQEKPFC5gEzsHN4NSuoW3ScfMCMQcFPnmbI+g=; b=ky6A0RWtCrCVimTou8hStwEDWw
	b4KgTeDK8xwVF66KvHfJEyjPWlX7F7z3z3JflfNnJseTVYJCYiaAwtGWQm7Zb0PEkzLt0YdGHiWL5
	EDwplKEvU/rq2qgtz8L3F5rrXQRW2Glb0jJZiL3aptZkn6guvRo34HZZr0vD0Zb8oMZ/InILtkSfq
	Omg8IitC/SWBwFNZ1M7UY/41KetIXD8OXPV7rLhCbmjgUvY2Yo1dmodwGKNzcl2BsH2xxyD/Gd1B/
	O7H0dYNDvHls3H+l6mt710AXZfFeICkklF++SUjHPB50jSJrl7AGxL/RxIDirR9sKsq+fdYYUMzk8
	6yDh8sBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9jIS-002W3s-QI; Fri, 08 Jul 2022 08:25:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9jI6-002W0B-6C
	for barebox@lists.infradead.org; Fri, 08 Jul 2022 08:24:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o9jI4-0005By-JW; Fri, 08 Jul 2022 10:24:44 +0200
Message-ID: <b3c4ab3e-59d9-6fbc-1a3e-85161ef9a8c1@pengutronix.de>
Date: Fri, 8 Jul 2022 10:24:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Steffen Trumtrar <str@pengutronix.de>, barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
References: <20220708062411.711639-1-str@pengutronix.de>
 <20220708062411.711639-3-str@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220708062411.711639-3-str@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_012446_312398_2B8C34E4 
X-CRM114-Status: GOOD (  19.08  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 3/5] ARM: socfpga: achilles: use
 ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 08.07.22 08:24, Steffen Trumtrar wrote:
> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> Use the newer function ENTRY_FUNCTION_WITHSTACK.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/boards/reflex-achilles/lowlevel.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
> index 162cd58c58..0fc94fc2b1 100644
> --- a/arch/arm/boards/reflex-achilles/lowlevel.c
> +++ b/arch/arm/boards/reflex-achilles/lowlevel.c
> @@ -31,12 +31,16 @@
>  
>  extern char __dtb_z_socfpga_arria10_achilles_start[];
>  
> -static noinline void achilles_start(void)
> +#define ARRIA10_STACKTOP	ARRIA10_OCRAM_ADDR + SZ_256K
> +
> +ENTRY_FUNCTION_WITHSTACK(start_socfpga_achilles_xload, ARRIA10_STACKTOP, r0, r1, r2)
>  {
>  	int pbl_index = 0;
>  	int barebox = 0;
>  	int bitstream = 0;
>  
> +	arm_cpu_lowlevel_init();
> +	arm_setup_stack(ARRIA10_OCRAM_ADDR + SZ_256K);

Only safe to call in a naked function. Drop it as you are now using
ENTRY_FUNCTION_WITHSTACK, which does setup for you.

>  
>  	relocate_to_current_adr();
>  	setup_c();
> @@ -75,13 +79,6 @@ static noinline void achilles_start(void)
>  	arria10_start_image(barebox);
>  }
>  
> -ENTRY_FUNCTION(start_socfpga_achilles_xload, r0, r1, r2)
> -{
> -	arm_cpu_lowlevel_init();
> -	arm_setup_stack(ARRIA10_OCRAM_ADDR + SZ_256K);
> -	achilles_start();
> -}
> -
>  ENTRY_FUNCTION(start_socfpga_achilles, r0, r1, r2)
>  {
>  	void *fdt;
> @@ -91,7 +88,7 @@ ENTRY_FUNCTION(start_socfpga_achilles, r0, r1, r2)
>  	barebox_arm_entry(0x0, SZ_2G + SZ_1G, fdt);
>  }
>  
> -ENTRY_FUNCTION(start_socfpga_achilles_bringup, r0, r1, r2)
> +ENTRY_FUNCTION_WITHSTACK(start_socfpga_achilles_bringup, ARRIA10_STACKTOP, r0, r1, r2)
>  {
>  	void *fdt;
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


