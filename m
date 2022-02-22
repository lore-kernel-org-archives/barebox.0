Delivery-date: Tue, 22 Feb 2022 12:16:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMT9p-006mcU-35
	for lore@lore.pengutronix.de; Tue, 22 Feb 2022 12:16:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMT9n-00085Q-Dr
	for lore@pengutronix.de; Tue, 22 Feb 2022 12:16:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdjANaKTRyoSvO+AZgaXS934BtpmZHNM8ftjmy402bc=; b=LsBsCAfETp/ky3
	h6jepKTkLbtP/Jnn0WBV4M/xndP8NDbb76SOsTV4bcvbfVAYGaMazFqZiN1e+lnihFSCT8ehBFGkM
	o+Y6YPFu1aIN3EIEUWH9ilG9f4nY3SuGSZnXXoMmzi3G8N96u0uK17vUVzAyQnRMunKxVUWLj8SpW
	tjB2IQZv1GN7oI3JIH0kv1TWH9FveT/MrgYZn6cyehr4iWfClGmcPmJOCv7KyisvkfI9QLybxVn2h
	+JcLcELRFc7auepDXoWWlsd2fdpkjVWPLXwEw2CC71YZNUFgVz4AdEYrx52U9v6qD5vTaEcBS4hGQ
	caR6Ggw2dNXPkg2DSVlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMT8W-009Mu1-19; Tue, 22 Feb 2022 11:15:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMT8P-009MsE-Mt
 for barebox@lists.infradead.org; Tue, 22 Feb 2022 11:15:11 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nMT8O-0007jc-EL; Tue, 22 Feb 2022 12:15:08 +0100
Message-ID: <1f96058d-fb82-c834-08ae-8b9915201286@pengutronix.de>
Date: Tue, 22 Feb 2022 12:15:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Juergen Borleis <jbe@pengutronix.de>, barebox@lists.infradead.org
References: <20220222104859.44391-1-jbe@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220222104859.44391-1-jbe@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_031509_800478_5F526C3F 
X-CRM114-Status: GOOD (  18.28  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] ARM: webasto-ccbv2: consider the available memory
 size for optee
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 22.02.22 11:48, Juergen Borleis wrote:
> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>

Not that I object, but why does it matter?
It's a heuristic anyway. The only reason why it needs two entry
points is a limitation of the build system (only DCD table differs
here, but barebox build needs a distinct entry point for each
image).

Cheers,
Ahmad

> ---
>  arch/arm/boards/webasto-ccbv2/lowlevel.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
> index 32117b0..84de271 100644
> --- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
> +++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
> @@ -32,7 +32,7 @@ static void configure_uart(void)
>  
>  }
>  
> -static void noinline start_ccbv2(u32 r0)
> +static void noinline start_ccbv2(u32 r0, unsigned long memSize)
>  {
>  	int tee_size;
>  	void *tee;
> @@ -48,7 +48,7 @@ static void noinline start_ccbv2(u32 r0)
>  	 */
>  	if(IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE)
>  	   && !(r0 > MX6_MMDC_P0_BASE_ADDR
> -	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + SZ_512M)) {
> +	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + memSize)) {
>  		get_builtin_firmware(ccbv2_optee_bin, &tee, &tee_size);
>  
>  		memset((void *)OPTEE_OVERLAY_LOCATION, 0, 0x1000);
> @@ -70,7 +70,7 @@ ENTRY_FUNCTION(start_imx6ul_ccbv2_256m, r0, r1, r2)
>  	setup_c();
>  	barrier();
>  
> -	start_ccbv2(r0);
> +	start_ccbv2(r0, SZ_256M);
>  }
>  
>  ENTRY_FUNCTION(start_imx6ul_ccbv2_512m, r0, r1, r2)
> @@ -84,5 +84,5 @@ ENTRY_FUNCTION(start_imx6ul_ccbv2_512m, r0, r1, r2)
>  	setup_c();
>  	barrier();
>  
> -	start_ccbv2(r0);
> +	start_ccbv2(r0, SZ_512M);
>  }


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

