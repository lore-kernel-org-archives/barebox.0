Delivery-date: Mon, 04 Nov 2024 13:07:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7vrw-004jXD-38
	for lore@lore.pengutronix.de;
	Mon, 04 Nov 2024 13:07:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7vrx-000255-Hy
	for lore@pengutronix.de; Mon, 04 Nov 2024 13:07:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KZt7ixDsGJRuvuQCrd5CHNzvGVG2kRTibpZ97cBigBM=; b=LtlhSsDSfHmdCwGaZUMtnduWBv
	0Yfliihs0lY9DF2jcZgDpfU1i92iblS0w5Wu9n8W/83hG7jGtfhgZgkjvOdTUymGd0a5QF8lWqLhv
	hzCLlfxlEq1kWI2L1D6JBruMany/HyUxaqUOvVbPU/LdTAHbaW7H/qpP6xSeB9YFFtucRVA17RYf4
	joPQM3LrWadQoEX/vnZ7gTLcp1dljMGfCof4vSnA+I9qaTUA4diQ/TB02nwl5Piajr1Dvvxdt420T
	zypKfEAr6ufv8d5gznL1ppdvpFHsqgs6uHuH6PBjzhLIpUyjg4Ai+a+CMSmZX2tGmbjYn4Dqf+ako
	zN/9Id/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vrT-0000000DdpK-1RtV;
	Mon, 04 Nov 2024 12:07:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vfz-0000000Dbwq-2aYJ
	for barebox@lists.infradead.org;
	Mon, 04 Nov 2024 11:55:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t7vfy-00009X-F9; Mon, 04 Nov 2024 12:55:18 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t7vfy-001yQg-0h;
	Mon, 04 Nov 2024 12:55:18 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t7vfy-00DTFE-0Q;
	Mon, 04 Nov 2024 12:55:18 +0100
Date: Mon, 4 Nov 2024 12:55:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Cc: barebox@lists.infradead.org
Message-ID: <Zyi2JpuQYAb_yHCW@pengutronix.de>
References: <20241102144342.2464331-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241102144342.2464331-1-johannes.schneider@leica-geosystems.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_035519_683574_CBE774ED 
X-CRM114-Status: GOOD (  24.63  )
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
Subject: Re: [PATCH v2] common: add custom autoboot_abort_key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sat, Nov 02, 2024 at 03:43:42PM +0100, Johannes Schneider wrote:
> Extend the autoboot_abort_key handling to alow custom
> abort keys.
> 
> Allowed values to set in the env/nv/autoboot_abort_key
> are any single ascii charater corresponding to the desired keyboard
> key, or the strings 'any' or 'ctrl-c'
> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  common/startup.c | 53 ++++++++++++++++++++++++++++--------------------
>  1 file changed, 31 insertions(+), 22 deletions(-)
> 
> diff --git a/common/startup.c b/common/startup.c
> index 47b70a7..125bcf1 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -93,11 +93,7 @@ static int load_environment(void)
>  }
>  environment_initcall(load_environment);
>  
> -static int global_autoboot_abort_key;
> -static const char * const global_autoboot_abort_keys[] = {
> -	"any",
> -	"ctrl-c",
> -};
> +static char *global_autoboot_abort_key;
>  static int global_autoboot_timeout = 3;
>  
>  static const char * const global_autoboot_states[] = {
> @@ -187,24 +183,22 @@ enum autoboot_state do_autoboot_countdown(void)
>  	menu_exists = stat(MENUFILE, &s) == 0;
>  
>  	if (menu_exists) {
> -		printf("\nHit m for menu or %s to stop autoboot: ",
> -		       global_autoboot_abort_keys[global_autoboot_abort_key]);
>  		abortkeys = "m";
> -	} else {
> -		printf("\nHit %s to stop autoboot: ",
> -		       global_autoboot_abort_keys[global_autoboot_abort_key]);
>  	}
>  
> -	switch (global_autoboot_abort_key) {
> -	case 0:
> +	if (!global_autoboot_abort_key ||
> +	    !strcmp(global_autoboot_abort_key, "any"))
>  		flags |= CONSOLE_COUNTDOWN_ANYKEY;
> -		break;
> -	case 1:
> +	else if (!strcmp(global_autoboot_abort_key, "ctrl-c"))
>  		flags |= CONSOLE_COUNTDOWN_CTRLC;
> -		break;
> -	default:
> -		break;
> -	}
> +	else
> +		abortkeys = xasprintf("%s%s",
> +		                      (abortkeys)?abortkeys:"",
> +		                      global_autoboot_abort_key);

This memory is never freed. I converted it into a static array while
applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


