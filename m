Delivery-date: Thu, 07 Nov 2024 09:45:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8y8p-005rA6-09
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 09:45:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8y8p-00071S-Nz
	for lore@pengutronix.de; Thu, 07 Nov 2024 09:45:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qzCbE7XO2F4UCqkYSviY+gEkpTtVYyytiUQDH7CaQqk=; b=BKPigJIQiz58qfM/S+mI/E+tfg
	xNHf3Mv04Rf9SvWhB2HKFAFM0sqqi24rJOZNpXWETrKgtqzlcCAkZIFEKAuUl1NIbJoTRvOrrs2jD
	0dLZ2JQTZlt890i45E/ceEsG50Xb9y4KkxF9NyOAhkLvbTu27ot6T1S/Mqx4uHzIZqulIChqXcSJu
	orkxOMOhiEvicVrMLQzn0tqKRGRjRZwMjjaa6rHTM7rsnLdBtzpBpzlt+Bh2oTjQhS7SXHdP/Gq61
	uTLviSpvN8vwqUlxW0BXzW+mYabNVr3yoHBmleQUEjHivqzOJZ15GnniQvJwLeIy4BbyyPuw1KvVG
	b98pv5Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8y8B-00000006AEH-1HZr;
	Thu, 07 Nov 2024 08:44:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8y5p-000000069oV-3FxU
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 08:42:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1t8y5m-0006p9-5B; Thu, 07 Nov 2024 09:42:14 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1t8y5l-002Qu9-2s;
	Thu, 07 Nov 2024 09:42:13 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1t8y5l-001NlV-2b;
	Thu, 07 Nov 2024 09:42:13 +0100
Date: Thu, 7 Nov 2024 09:42:13 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Robin van der Gracht <robin@protonic.nl>
Message-ID: <20241107084213.aay4u2vzwbbxlbfa@pengutronix.de>
References: <20241106185724.2526-1-a.fatoum@pengutronix.de>
 <20241106185724.2526-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241106185724.2526-4-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_004217_839201_F9053A6C 
X-CRM114-Status: GOOD (  15.99  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/6] ARM: Rockchip: fix clang warning about passing
 32-bit register operand
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 24-11-06, Ahmad Fatoum wrote:
> clangd warns that "Value size does not match register size specified by
> the constraint and modifier".
> 
> Promote the subtraction result to unsigned long to fix this.
> 
> The 16 is likely unnecessary, but I am hesitant to remove it without testing.

Is it worth to add a comment like: /* TODO: check if 16 is necessary */ ?

Regards,
  Marco

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-rockchip/atf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> index 1e1861191c99..4c16ec3bc66a 100644
> --- a/arch/arm/mach-rockchip/atf.c
> +++ b/arch/arm/mach-rockchip/atf.c
> @@ -59,7 +59,7 @@ static unsigned long load_elf64_image_phdr(const void *elf)
>  										\
>  	/* Setup an initial stack for EL2 */                                    \
>  	asm volatile("msr sp_el2, %0" : :                                       \
> -			"r" (SOC##_BAREBOX_LOAD_ADDRESS - 16) :                 \
> +			"r" ((ulong)SOC##_BAREBOX_LOAD_ADDRESS - 16) :		\
>  			"cc");                                                  \
>  										\
>  	bl31_entry(bl31, optee_load_address,                                    \
> -- 
> 2.39.5
> 
> 
> 


