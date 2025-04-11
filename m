Delivery-date: Fri, 11 Apr 2025 09:31:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38r6-00B9lW-2p
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:31:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38r5-0002et-HS
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:31:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t8HZwlSh+8q0IHFX4ueSzaetA+684LHgqW1fD38MbrI=; b=L+iWgf6X5vMOsb6DJ6lDENf1Pl
	/SBMjfOFqZhJ42vXZt77OMuuFAKuvp/DueS+9lIPiII2nbIpU0pLpvhgBE5xtUtMiQ4RUOG9hhjxw
	3VoRD+ZeH1rUQDViEXbd5Q4A94e7hy1A2HxBe7UPYrCqcy3vu97Y2GnVU7fmFvTsrGkqBoNhuhwWO
	vA+l1MD7SGrOw38dR2rH61jpTKECXKhxYD/gmwUwvScj6LWekqps7fptokwmk4sAYUEbtTdQUIQ4j
	yUHa0upZyUcXCpK2T2LWrEt/kVJhC1G+PF6KhQrttaNlMqBNNMtWhx4opFZQEozs5nJkKIP1Ew9vV
	Lu1ma5Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38qJ-0000000Cs2K-1gQ5;
	Fri, 11 Apr 2025 07:30:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38Zq-0000000CpYZ-3Aje
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:13:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u38Zp-00074h-7w; Fri, 11 Apr 2025 09:13:25 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u38Zp-004OaG-0C;
	Fri, 11 Apr 2025 09:13:25 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u38Zo-00CBSp-38;
	Fri, 11 Apr 2025 09:13:24 +0200
Date: Fri, 11 Apr 2025 09:13:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z_jBFLN1_fRtqeti@pengutronix.de>
References: <20250410112530.2711299-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250410112530.2711299-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_001326_793014_E1FC6C55 
X-CRM114-Status: GOOD (  21.92  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! bootsource: add optional read of
 /chosen/bootsource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Apr 10, 2025 at 01:25:30PM +0200, Ahmad Fatoum wrote:
> bootsource: read out /chosen/bootsource earlier
> 
> While late initcall is early enough for shell scripts to see a correct
> $bootsource, it's usually too late for board code.
> 
> As device trees are registered in core_initcall usually, let's parse the
> property at postcore time instead.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c | 17 ++++++++---------
>  1 file changed, 8 insertions(+), 9 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 324565068771..8184b284099e 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -3592,29 +3592,28 @@ const char *of_get_machine_compatible(void)
>  }
>  EXPORT_SYMBOL(of_get_machine_compatible);
>  
> -static void of_init_bootsource(void)
> +static int of_init_early_vars(void)
>  {
>  	struct device_node *bootsource;
>  
>  	if (!IS_ENABLED(CONFIG_BAREBOX_DT_2ND))
> -		return;
> +		return 0;
>  
>  	bootsource = of_find_node_by_chosen("bootsource", NULL);
> -	if (!bootsource)
> -		return;
> +	if (bootsource)
> +		bootsource_of_node_set(bootsource);
>  
> -	bootsource_of_node_set(bootsource);
> +	return 0;
>  }
> +postcore_initcall(of_init_early_vars);
>  
> -static int of_init_vars(void)
> +static int of_init_late_vars(void)
>  {
>  	const char *name;
>  
>  	name = of_get_machine_compatible();
>  	barebox_set_hostname_no_overwrite(name ?: "barebox");
>  
> -	of_init_bootsource();
> -
>  	return 0;
>  }
> -late_initcall(of_init_vars);
> +late_initcall(of_init_late_vars);
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


