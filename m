Delivery-date: Fri, 03 Feb 2023 09:04:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNr3P-00CQHZ-LY
	for lore@lore.pengutronix.de; Fri, 03 Feb 2023 09:04:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNr3M-00037P-W2
	for lore@pengutronix.de; Fri, 03 Feb 2023 09:04:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6iGt8Tg8Ti0v63zEVnNo/WBTga0PouzxbMU5CoSNnzw=; b=EjSrOaY1zOqmf3V/yvzwgihKX7
	wZ/P5rIkSV3p4R02SKvQ82QRDGwAJyF8VoJNhXbzl2ehH7fj5rxjdVc2NJ3w2Boxm0pnL/3vYgfN4
	C8LWve8V6IgibBSOiFPOIlk75Q6ltrtWknKzSZwzLo9icEjXiOp6SrA5STBppVlLPnmUDtM6E/1ce
	hy9Q/3jx/m1hYvdjPrr54MgepmBQ5XxMxDz1jPawxHQLlhkQg/tnLDb40fakUpf75WyiS2fTeG7c3
	pxiVJUbp4+YU/nbTJz/gNTWJe4KkU+Dyb9mfsPZjYweVWr4+Zu/lIi+p3aM8H+c1E+rLaLBL9aDUh
	yK5YlEIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNr1z-000uxw-G6; Fri, 03 Feb 2023 08:02:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNr1u-000uwQ-5j
	for barebox@lists.infradead.org; Fri, 03 Feb 2023 08:02:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNr1s-0002z3-KG; Fri, 03 Feb 2023 09:02:40 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNr1s-0006Dz-Cb; Fri, 03 Feb 2023 09:02:40 +0100
Date: Fri, 3 Feb 2023 09:02:40 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20230203080240.GT13319@pengutronix.de>
References: <20230202142000.3544631-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230202142000.3544631-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_000242_232426_99006369 
X-CRM114-Status: GOOD (  20.12  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] RISC-V: virt: riscvemu: fix unit address in node name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 02, 2023 at 03:20:00PM +0100, Ahmad Fatoum wrote:
> The overlay adds a SRAM at address 0x1000, but the unit address was
> still 0, which is confusing. Change it to sram@1000 instead.
> 
> Reported-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/riscv/boards/riscvemu/overlay-of-sram.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/riscv/boards/riscvemu/overlay-of-sram.dts b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
> index 506d45bde9b6..092fb02518b9 100644
> --- a/arch/riscv/boards/riscvemu/overlay-of-sram.dts
> +++ b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
> @@ -9,7 +9,7 @@
>  		__overlay__ {
>  			#address-cells = <2>;
>  			#size-cells = <2>;
> -			sram@0 {
> +			sram@1000 {
>  				compatible = "mtd-ram";
>  				reg = <0 0x1000 0 0x10000>;
>  				#address-cells = <1>;
> @@ -49,7 +49,7 @@ fixed-partitions
>  		__overlay__ {
>  			environment {
>  				compatible = "barebox,environment";
> -				device-path = "/soc/sram@0/partitions/partition@3000";
> +				device-path = "/soc/sram@1000/partitions/partition@3000";
>  			};
>  		};
>  	};
> -- 
> 2.38.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


