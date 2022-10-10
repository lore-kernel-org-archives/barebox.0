Delivery-date: Mon, 10 Oct 2022 09:12:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohmxG-0036Hf-MY
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 09:12:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohmxE-0000vH-KZ
	for lore@pengutronix.de; Mon, 10 Oct 2022 09:12:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J7GCv1o0ayvMHfeMAyiRu5EkSe8W+pO8ZKEwhkIf4hk=; b=JNd6MZ5AwiNihDDSLDCCbAlefp
	5fTzj3NLYVEMhdJxUodmfRLr15jjaoo5cm7VnZpz2ScdwUGcq/UXJIao1UAdBRyw4ilNhp0rUn20u
	r7QlmCuuwWYbwB7IbdjFNaKCKRDivZHQuCzCTcx/uXqN27XM4dhgLmFhIvP1VKRs9CkiJ3FFvqFjG
	0r16I0ujarvv7pSvjOVrGjx9Oi+mSbJqwXhHjyYn9sSZSIHBC0CIJp2lmgS8UK3M0JbOYui4GJfrd
	815LrvSfpMh+r5XXsTzXu5JxnkaON64t6B0GvbUFHvF3preqiTd2Mx/MCfr2vqdOSY2SoZzVywb40
	Y1AB8G2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmw5-00HL2P-3P; Mon, 10 Oct 2022 07:10:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmvv-00HKyg-1V
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 07:10:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ohmvt-0000LX-M7; Mon, 10 Oct 2022 09:10:37 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ohmvt-00068H-GN; Mon, 10 Oct 2022 09:10:37 +0200
Date: Mon, 10 Oct 2022 09:10:37 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de
Message-ID: <20221010071037.GE986@pengutronix.de>
References: <20221010063430.2107824-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221010063430.2107824-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_001039_128436_C64E0780 
X-CRM114-Status: GOOD (  23.33  )
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
Subject: Re: [PATCH master v2] ARM: i.MX7: enable caches when booted over USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 10, 2022 at 08:34:30AM +0200, Ahmad Fatoum wrote:
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
> v1 -> v2:
>   - don't drop arm arm_cpu_lowlevel_init as cortex_a7_lowlevel_init
>     does not call it (Marco)
> ---
>  arch/arm/mach-imx/cpu_init.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
> index ea3621541979..3f16ca70ce26 100644
> --- a/arch/arm/mach-imx/cpu_init.c
> +++ b/arch/arm/mach-imx/cpu_init.c
> @@ -49,6 +49,7 @@ void imx6ul_cpu_lowlevel_init(void)
>  
>  void imx7_cpu_lowlevel_init(void)
>  {
> +	cortex_a7_lowlevel_init();
>  	arm_cpu_lowlevel_init();
>  	imx_cpu_timer_init(IOMEM(MX7_SYSCNT_CTRL_BASE_ADDR));
>  }
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


