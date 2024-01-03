Delivery-date: Wed, 03 Jan 2024 15:10:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL1xT-0023uH-1q
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 15:10:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL1xS-00031p-H8
	for lore@pengutronix.de; Wed, 03 Jan 2024 15:10:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3BwXbMdcIANVEgVZrXs6JQB6J5WDyHbRQmodSynyY64=; b=TUlKTMYNHNHfIyqgHszEnzXTQQ
	cDPpCvYCgQTWztgTGBBymlGNM/QYVVGz40FR/ClL5iJ0JXCidZjj0ty9w7O3gubLvLzWMtsigPGIi
	yUk+58epKXtAMCwj3SglzBzyARmRLx65ND1WUEgQyJSv3UDcWR5nHVcb5HJGudn6HGF3ONZF4vdng
	wn2ZvALiPuqhixiCPs0pPc9dGG29HO3jOkGN1V+okOfVHaGUJ1WGxSaeiHsUZes2FmIEDpVgf/rSp
	4rDpuG/EfFZsOxM0PXiA61URl62dbNMwNu30MpJ1iD13Udnm8IDMkh+17JLvVVRx23HUdDXV8Ul1P
	6Bgr7d5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1wI-00B44I-1G;
	Wed, 03 Jan 2024 14:09:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1wF-00B42w-0q
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 14:09:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rL1wD-0002ch-SS; Wed, 03 Jan 2024 15:09:41 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rL1wD-0008Yy-FD; Wed, 03 Jan 2024 15:09:41 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rL1wD-00A4ft-CJ; Wed, 03 Jan 2024 15:09:41 +0100
Date: Wed, 3 Jan 2024 15:09:41 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240103140941.GI1318922@pengutronix.de>
References: <20240103101324.2628829-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103101324.2628829-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_060943_294576_4317A060 
X-CRM114-Status: GOOD (  22.26  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] lib: stackprotector: adjust Kconfig text for
 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 03, 2024 at 11:13:24AM +0100, Ahmad Fatoum wrote:
> The reference to kernel panic is taken from the original Linux Kconfig
> help text. Leaving it as-is may be confusing, so adjust it for barebox.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  lib/Kconfig.hardening | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
> index f14b256a7d91..7f74d0d98a9c 100644
> --- a/lib/Kconfig.hardening
> +++ b/lib/Kconfig.hardening
> @@ -30,7 +30,7 @@ config STACKPROTECTOR_STRONG
>  	  the value just before actually returning.  Stack based buffer
>  	  overflows (that need to overwrite this return address) now also
>  	  overwrite the canary, which gets detected and the attack is then
> -	  neutralized via a kernel panic.
> +	  neutralized via a barebox panic.
>  
>  	  Functions will have the stack-protector canary logic added in any
>  	  of the following conditions:
> @@ -78,7 +78,7 @@ config PBL_STACKPROTECTOR_STRONG
>  	  the value just before actually returning.  Stack based buffer
>  	  overflows (that need to overwrite this return address) now also
>  	  overwrite the canary, which gets detected and the attack is then
> -	  neutralized via a kernel panic.
> +	  neutralized via a barebox panic.
>  
>  	  Functions will have the stack-protector canary logic added in any
>  	  of the following conditions:
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


