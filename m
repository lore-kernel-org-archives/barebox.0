Delivery-date: Tue, 20 May 2025 14:30:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHM6b-000pjR-1T
	for lore@lore.pengutronix.de;
	Tue, 20 May 2025 14:30:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHM6a-00016W-SS
	for lore@pengutronix.de; Tue, 20 May 2025 14:30:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V41VYev0rl8VfFtthB2bg7MUbXeAeoV7da2fVzuG55Y=; b=r4xiLSwBrAvHdBB9nwcOI/7FL7
	xW6QI92rucBxWeF9wyglUvtYoQifUXSGklpPu4h/BoR/9yJecQOxHGoal7Uy3H/xGbAqqGa0cf3F9
	m1PQ69bfLdSUmKr3OsGDmTsuj94ZYbI8vq0+3BOZ2rOSxR11mVZMoOgXwWLi1nAqrttnS/mJtcL62
	sdgqfbg7CNjR0kUBXscWxxA7W+/kWQN4jZ2hJWZoRUPMmo/AJNns31ykXyukmpOELY6pe4uwANKEe
	t4/WNEDVnU4Q0pMJU65EKdJctwg7Yi2hAA2zKjuL4jKyJIDntY0jiKQPwko9W1WofwjrT8MZn9NKR
	Ta40x+xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHM6C-0000000Cric-3IkI;
	Tue, 20 May 2025 12:29:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHM6A-0000000Crhq-0Dhe
	for barebox@lists.infradead.org;
	Tue, 20 May 2025 12:29:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1uHM68-0000wF-PB; Tue, 20 May 2025 14:29:32 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uHM68-000PMd-1w;
	Tue, 20 May 2025 14:29:32 +0200
Received: from rhi by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uHM68-00GUFw-1e;
	Tue, 20 May 2025 14:29:32 +0200
Date: Tue, 20 May 2025 14:29:32 +0200
From: Roland Hieber <r.hieber@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <1747744156-e08557b230f005e12053606c@pty>
References: <20250520121738.42686-1-a.fatoum@pengutronix.de>
 <20250520121738.42686-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250520121738.42686-2-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_052934_093444_C6D2AF94 
X-CRM114-Status: GOOD (  18.66  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 2/2] ARM: omap: fix cpu_is_omap on
 CONFIG_ARM_MULTIARCH configurations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, May 20, 2025 at 02:17:38PM +0200, Ahmad Fatoum wrote:
> Normally, <mach/omap/generic.h> would only be included if we are running
> on some OMAP SoC. This doesn't hold true anymore with CONFIG_ARM_MULTIARCH
> or CONFIG_BOARD_ARM_GENERIC_DT, because we could have CONFIG_ARCH_AM33XX
> enabled, but running on some other SoC, which the header doesn't know about.
> 
> This cpu_type scheme is only used on one other SoC and that's the i.MX
> and there, there is a final #ifdef clause to fix this, so follow suit.
> 
> Reported-by: Roland Hieber <r.hieber@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks!

Tested-by: Roland Hieber <rhi@pengutronix.de>

> ---
>  include/mach/omap/generic.h | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/include/mach/omap/generic.h b/include/mach/omap/generic.h
> index 2961c530bc93..9802087bf295 100644
> --- a/include/mach/omap/generic.h
> +++ b/include/mach/omap/generic.h
> @@ -56,6 +56,15 @@ extern unsigned int __omap_cpu_type;
>  # define cpu_is_am33xx()	(0)
>  #endif
>  
> +#if defined(CONFIG_ARCH_MULTIARCH) || defined(CONFIG_BOARD_ARM_GENERIC_DT)
> +# ifdef omap_cpu_type
> +#  undef omap_cpu_type
> +#  define omap_cpu_type __omap_cpu_type
> +# else
> +#  define omap_cpu_type 0
> +# endif
> +#endif
> +
>  #ifdef omap_cpu_type
>  #define cpu_is_omap()			(omap_cpu_type > 0)
>  #else
> -- 
> 2.39.5
> 
> 
> 

-- 
Roland Hieber, Pengutronix e.K.          | rhi@pengutronix.de          |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |


