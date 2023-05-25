Delivery-date: Thu, 25 May 2023 08:50:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q24nz-00DRXb-Cx
	for lore@lore.pengutronix.de; Thu, 25 May 2023 08:50:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q24nw-0006bA-PA
	for lore@pengutronix.de; Thu, 25 May 2023 08:50:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LMN4aONMGPM2cH2ZshAEe9pr+K/WGnzhJlBYVvqfOdo=; b=m16uzWBQNn21dwS9GPMtZmtm/t
	5d7wE2TQxLsYQvMmr4yrw93jSc4OclN3uw+PbERldYqaYjlC69hXXj5uBuGdadSX1AHUKDfSia53z
	7QDyqG6neA/nM1h+sIPJjknHGZZJDkkCMlkQJv04NWXfy8pFfJiWxWaaQ4DQf9VuN5ORdNBQq5TxG
	IVomcS+DLwyWKxqB9HOkKvINfySl5fMAftom+y7WJzevRTRWgTy5PXVXFpKzMfooTa/fSYRHMj+x+
	fqoZTFbK5g4lugLb3eMsihDQMoC0Y8pef9HrDfDdMS2s5rUcIeIxRTzzVmlKlGSG90VCh5xkpZPQ5
	J1DS+UgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q24ms-00FiN5-1q;
	Thu, 25 May 2023 06:49:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q24mp-00FiMN-1D
	for barebox@lists.infradead.org;
	Thu, 25 May 2023 06:49:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q24mo-0006Dz-4O; Thu, 25 May 2023 08:49:22 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q24mn-0005xb-TQ; Thu, 25 May 2023 08:49:21 +0200
Date: Thu, 25 May 2023 08:49:21 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230525064921.GK17518@pengutronix.de>
References: <20230523094124.3453658-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230523094124.3453658-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_234923_410969_27A75C7C 
X-CRM114-Status: GOOD (  21.60  )
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
Subject: Re: [PATCH master] ARM: rockchip: don't attempt building
 MACH_RADXA_ROCK5 without firmware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 23, 2023 at 11:41:24AM +0200, Ahmad Fatoum wrote:
> Otherwise, multi_v8_defconfig would give errors for users that are only
> interested in using it for qemu-virt64, which requires no external
> firmware to be built into barebox.
> 
> While at it, fix spaces to tabs to be in-line with the rest of the file.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-rockchip/Kconfig | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
> index 38736102d334..a71c4ae35dd9 100644
> --- a/arch/arm/mach-rockchip/Kconfig
> +++ b/arch/arm/mach-rockchip/Kconfig
> @@ -102,9 +102,10 @@ config MACH_RADXA_ROCK3
>  	  Say Y here if you are using a Radxa ROCK3
>  
>  config MACH_RADXA_ROCK5
> -       select ARCH_RK3588
> -       bool "Radxa ROCK5"
> -       help
> +	select ARCH_RK3588
> +	depends on $(success,test -e $(srctree)/arch/arm/boards/radxa-rock5/sdram-init.bin)
> +	bool "Radxa ROCK5"
> +	help
>  	  Say Y here if you are using a Radxa ROCK5
>  
>  config MACH_RADXA_CM3
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


