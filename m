Delivery-date: Fri, 12 May 2023 13:17:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQlu-00F2or-Id
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:17:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQls-0006lU-Kx
	for lore@pengutronix.de; Fri, 12 May 2023 13:17:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8b5ueelJgcjqhUiNGgRfxDxbY68KaweziJOZXAQ6y6s=; b=SaVdo8ibuPI3ZpSpqfuce3ONr3
	klzHCwiE2f5SmH4QlBdzXD7gGQVe+wr+iCjrn5Hlc2/rM3ZB8P5JPZAUwe73h6PHQjfIUlZGEebBX
	tC4bEEyKm/qkJVyCO1yRt1FDnh7sUy6v5djNZUcXz8oxcRPk6H2+DKTZtAPVn5F2vLxetROLBXMHB
	z2FogYhxGW0L1pEmuBIT4XS2+3KECq+Jzny+DvCoOCqohx/zri9FOdmncZL+vJxK+v7VHM2RXVs3b
	b7MfE0y2T1aKYvrfYRI8BsEMo8oh11sKKYV08UqusSR43dEgPqtyToejRSguewvfMu+33qSAE7Hal
	PWXEOC4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQks-00BmjS-0C;
	Fri, 12 May 2023 11:16:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQkq-00Bmj9-0H
	for barebox@bombadil.infradead.org;
	Fri, 12 May 2023 11:16:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=8b5ueelJgcjqhUiNGgRfxDxbY68KaweziJOZXAQ6y6s=; b=cKlMRC14RpOBFHXC9ZsMTfDc+t
	e/DXBQbZECD4/KfOTnzwJmNOVa+Z/PFDz/EwD39F9t+db246DAFBSBINnuBGuS068FPhfkVTcKSru
	RB34I8HfsNCAv0tweWMghd39QjlI5QYBfx+kNq5R1bSXPxYAXCLLZhN108ZbWLH3r7dMLVFp2u/7b
	fSgqQydWspBe2AQ9SSchSJzyQyu4IhzwuAsX2s45AyEHyFz4V/DTCzOesEd6hEyA9H4ejaAVQpKlk
	utHR9kTTNR8NFK2ZBdBaHSMtSCZrbu3jnLz7KZ5rc0+ZAv1bMbtJRnCb+jOUjmXS3yvUDUCsQGPbJ
	1OxwNJHw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQkm-0098Ds-2p
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:16:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQkl-0006ZR-UY; Fri, 12 May 2023 13:16:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQkl-00033H-8X; Fri, 12 May 2023 13:16:03 +0200
Date: Fri, 12 May 2023 13:16:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230512111603.GN29365@pengutronix.de>
References: <20230512023838.1255762-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230512023838.1255762-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_121605_065950_A82113D1 
X-CRM114-Status: GOOD (  18.60  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] powerpc: Kconfig: fix reference to unknown symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 12, 2023 at 05:38:38AM +0300, Antony Pavlov wrote:
> In Kconfig files, the symbols don't have a CONFIG_ prefix.
> Fix an unknown Kconfig symbol introduced in d3b8a88d34
> ("treewide: rename CONFIG_HAS_ARCH_SJLJ to CONFIG_ARCH_HAS_SJLJ").
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/powerpc/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
> index 4ae6d423af..ba875767b2 100644
> --- a/arch/powerpc/Kconfig
> +++ b/arch/powerpc/Kconfig
> @@ -8,7 +8,7 @@ config PPC
>  	select HAS_CACHE
>  	select GENERIC_FIND_NEXT_BIT
>  	select OFTREE
> -	select CONFIG_ARCH_HAS_SJLJ
> +	select ARCH_HAS_SJLJ
>  	default y
>  
>  choice
> -- 
> 2.39.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


