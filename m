Delivery-date: Tue, 30 Apr 2024 23:11:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1ukp-00B8QS-2g
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 23:11:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1ukp-00083G-80
	for lore@pengutronix.de; Tue, 30 Apr 2024 23:11:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bwRf7iDgNdgn3CzJEoaL8sAqIe0d9QssFyfOjR4JxDE=; b=oRNPrTNa06obPdAiFABDqmptGh
	OtUjSxw8jsOwJCcmSJVC1QRNgwQI7FhGmeakYOAHdqtvgIlMulxlM67Z/mKK24lHNYONXxOBZN98t
	ofokwIkBKFKPcGyrCg2JjoQYGQfvArHLCzdGzc/YXI/awMLJQDoL45lx4lnzKkPTyoiSGMuJKU95d
	ncNGSaRnp0dRyM54yjZf3pYfcc/aCguqaz85Dvg+98Zx2JTiXylT2XiFJIpS/Md0xkiPUEp6hwqN7
	yWs2R+9UpE+PKIaIo1pD55Meu6tDspOD2D9j2WECXAASyWb+knECYEsNYE0NZV3yKerQKJgVdCkLY
	a+OXRvEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1ukE-00000007wQZ-1bM7;
	Tue, 30 Apr 2024 21:10:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1ukA-00000007wQ6-3dI5
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 21:10:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1s1uk7-0007sS-Qp
	for barebox@lists.infradead.org; Tue, 30 Apr 2024 23:10:27 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1s1uk7-00FEHu-EO
	for barebox@lists.infradead.org; Tue, 30 Apr 2024 23:10:27 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1s1uk7-004FVy-1A
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 23:10:27 +0200
Date: Tue, 30 Apr 2024 23:10:27 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20240430211027.w6ks4esmht25c7df@pengutronix.de>
References: <20240430112941.3207284-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240430112941.3207284-1-m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_141030_931618_F98B4DC8 
X-CRM114-Status: GOOD (  16.26  )
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
Subject: Re: [PATCH 1/2] ARM: aarch64: fix scr_el3 register setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 24-04-30, Marco Felsch wrote:
> The current code moved '1' as immediate into x0 and does OR with
> BIT(10). This doesn't look right since it will set the scr_el3 to 0.
> 
> Instead read the scr_el3 and OR the interessting bits to fix this. The
> interessting bits are taken from the current U-Boot implementation.

please ignore this message which is complete off, my head tricked me :/

I will fix this in v2. But still, I'm out of glue regarding the 64-bit
EL2 setting. We set this since the very beginning but without mentioning
the reason. Therefore I would like to drop it and align our code with
U-Boot.

Regards,
  Marco

> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/cpu/lowlevel_64.S | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/cpu/lowlevel_64.S b/arch/arm/cpu/lowlevel_64.S
> index ed00c8c47057..1f5a0b73f8b3 100644
> --- a/arch/arm/cpu/lowlevel_64.S
> +++ b/arch/arm/cpu/lowlevel_64.S
> @@ -10,8 +10,8 @@ ENTRY(arm_cpu_lowlevel_init)
>  	switch_el x1, 3f, 2f, 1f
>  
>  3:
> -	mov	x0, #1			/* Non-Secure EL0/1 */
> -	orr	x0, x0, #(1 << 10)	/* 64-bit EL2 */
> +	mrs	x0, scr_el3
> +	orr	x0, x0, #0xf			/* SCR_EL3.NS|IRQ|FIQ|EA */
>  	msr	scr_el3, x0
>  	msr	cptr_el3, xzr
>  
> -- 
> 2.39.2
> 
> 
> 


