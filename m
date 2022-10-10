Delivery-date: Mon, 10 Oct 2022 07:55:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohllb-0032i4-7m
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 07:55:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohllZ-0005yX-2U
	for lore@pengutronix.de; Mon, 10 Oct 2022 07:55:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dFMFqggTtLYhWKQRZUBMou2/B2WmjxEBLnPFN2nvwtE=; b=e3tBFG7lusqWyWwdimwju0AkoB
	Vm7t+fDt8OwGIvxDfaleuHvKgp7ZfGQ8M75hdTBQUIa4YkQp+XtrsxVnf4WlwTbkVRaEuqyWTA3KC
	/029T74NQNmo1ag2XxSbN8OXDm/+NInyosIyqqRuRfAaWA4Wkv3yIPRBYPKbox6GUS/UFlq+ILEEt
	9RYnREu5idE0QC5hoHlIIb4H8tUU/gwmdxRikrL/dzwYBRGiiy6lYN0koeEe3GCVVfWauo/aOHh6H
	q0LDAgmlWC0RZEZSFPkvtcryNKVCO+sghWjdom7PIsFqpPH3oAB1WzpBDwjy6j7RtoZDwAyWl0TwI
	0fH2Gk1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohlil-00H7yV-Kj; Mon, 10 Oct 2022 05:52:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohlig-00H7xr-MT
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 05:52:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ohlia-0005nh-N5; Mon, 10 Oct 2022 07:52:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ohlia-00080z-Fh; Mon, 10 Oct 2022 07:52:48 +0200
Date: Mon, 10 Oct 2022 07:52:48 +0200
To: Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221010055248.GB986@pengutronix.de>
References: <20220930133702.518949-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220930133702.518949-1-j.zink@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_225254_774389_6371103E 
X-CRM114-Status: GOOD (  25.23  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: i.MX7: enable caches when booted over USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 30, 2022 at 03:37:02PM +0200, Johannes Zink wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> BootROM on the i.MX7 doesn't set the SMP bit when booted
> over serial download. This leads to vastly worse performance
> when doing memory-heavy operations in a USB-booted system,
> as the caches are not utilized. Example running md5sum over
> a 25M image in ramfs:
> 
>   without patch: 10796ms
>   with    patch: 457ms
> 
> This issue isn't unique to the i.MX7, but exists for the i.MX6UL as
> well, which also has the Cortex-A7 as CPU. Like with
> imx6ul_cpu_lowlevel_init(), adapt imx7_cpu_lowlevel_init() to avoid this
> slow down.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  arch/arm/mach-imx/cpu_init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
> index ea36215419..ede2076102 100644
> --- a/arch/arm/mach-imx/cpu_init.c
> +++ b/arch/arm/mach-imx/cpu_init.c
> @@ -49,7 +49,7 @@ void imx6ul_cpu_lowlevel_init(void)
>  
>  void imx7_cpu_lowlevel_init(void)
>  {
> -	arm_cpu_lowlevel_init();
> +	cortex_a7_lowlevel_init();

Why do you remove the call to arm_cpu_lowlevel_init() here?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


