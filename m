Delivery-date: Mon, 28 Mar 2022 10:29:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYkkx-008mkg-Iq
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 10:29:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYkkz-0005Mk-Tp
	for lore@pengutronix.de; Mon, 28 Mar 2022 10:29:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xvceUHcO1yiUuAyBtTjfHzYykiDxBJitLbRsT396XHk=; b=npdOlG2keIuoxnvE4IpyvplpTe
	mgM3XijbrL1MuQx8Cp0RlxiwUU7D2aIn5moAi0Dr0zkCY1CqMPe6NFEPSJjiUPlyjgq9imkGZr8bI
	QpNXM07gvCnO2KnM1lxoePLD5UVszfgH8VMbWYeAZ+Q0XO/K9eMvqjCqin1Vlq0JHOJ1aHT+LcqAT
	uKwYyIoXle4D8eH8Fc9n7ZN23PSFzWc4zw/c7doZ7aXI4ASXC4QuBkr7PTwJbbxG80CvBAeMbM6ph
	G+iEgVSg2eGYV4eTUVZeZD+aIKJwZLbwba2b05aJkLiSMrUsTrBjezYrVSbSaehc3Y1TY7EH5+RbI
	7qmVKLBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYkjh-007pQZ-QS; Mon, 28 Mar 2022 08:28:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYkjW-007pOh-H7
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 08:28:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYkjV-0005FT-BO; Mon, 28 Mar 2022 10:28:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYkjV-00041z-2e; Mon, 28 Mar 2022 10:28:13 +0200
Date: Mon, 28 Mar 2022 10:28:13 +0200
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220328082813.GF12181@pengutronix.de>
References: <20220321140856.59479-1-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220321140856.59479-1-jbe@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:28:03 up 107 days, 17:13, 85 users,  load average: 0.11, 0.11,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_012814_592417_BD6F181C 
X-CRM114-Status: GOOD (  22.97  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/3] ARM: webasto-ccbv2: consider the available memory
 size for optee
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 21, 2022 at 03:08:54PM +0100, Juergen Borleis wrote:
> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
> ---
>  arch/arm/boards/webasto-ccbv2/lowlevel.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
> index 32117b0..dfc5c0f 100644
> --- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
> +++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
> @@ -32,7 +32,7 @@ static void configure_uart(void)
>  
>  }
>  
> -static void noinline start_ccbv2(u32 r0)
> +static void noinline start_ccbv2(u32 r0, unsigned long mem_size)
>  {
>  	int tee_size;
>  	void *tee;
> @@ -48,7 +48,7 @@ static void noinline start_ccbv2(u32 r0)
>  	 */
>  	if(IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE)
>  	   && !(r0 > MX6_MMDC_P0_BASE_ADDR
> -	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + SZ_512M)) {
> +	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + mem_size)) {
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
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

