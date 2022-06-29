Delivery-date: Wed, 29 Jun 2022 09:11:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RrB-000xdK-0m
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 09:11:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RrD-0003q0-13
	for lore@pengutronix.de; Wed, 29 Jun 2022 09:11:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uMlBQhTYF42jRoUnu5KpKdd44BaSynb1cvmzEcu3Moc=; b=tj4OLvZDLhphzmhsj0uL0kvwck
	CrsghzX3E7bN8MksAsrAM3GyOcUOVfXLB15QULYEwVpbkA/BPbudPQenH2fWxI3sTKEzIgQukdQ05
	FubpjQPie5tE4+per3DADDNhgXla2/+bAqSkOzO1u9lHe5XYMNdGPhBB1tK+7PaF0qYWh07bR9XsB
	daxkS/0KKSe88dIgtWbQ3Fykxn4wyFLARuP3OQ2zrGj2YNQklAtLW81n9w4ts8CoVTHbrYoFBq9ND
	GlNmiOw3o4Ibxj7r0DSotUssXBMFAO3FW84a95p6g7E8UC7yXxB6ZaZ2RojpyHaS2Two9L/4IUlJx
	TMxRf1wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Rq2-00A0lw-Nv; Wed, 29 Jun 2022 07:10:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Rpx-00A0kX-Cy
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 07:10:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6Rpw-0003At-6C; Wed, 29 Jun 2022 09:10:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6Rpv-0002E9-Rj; Wed, 29 Jun 2022 09:10:07 +0200
Date: Wed, 29 Jun 2022 09:10:07 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220629071007.GM19026@pengutronix.de>
References: <20220627102500.18427-1-eagle.alexander923@gmail.com>
 <20220627102500.18427-3-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220627102500.18427-3-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_001009_477467_95BD0790 
X-CRM114-Status: GOOD (  18.35  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/8] ARM: bcm2835: Drop uneeded headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 27, 2022 at 01:24:54PM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/mach-bcm283x/core.c | 9 ---------
>  1 file changed, 9 deletions(-)
> 
> diff --git a/arch/arm/mach-bcm283x/core.c b/arch/arm/mach-bcm283x/core.c
> index f2528cf1f1..bcf2ecb204 100644
> --- a/arch/arm/mach-bcm283x/core.c
> +++ b/arch/arm/mach-bcm283x/core.c
> @@ -17,19 +17,10 @@
>   */
>  
>  #include <common.h>
> -#include <init.h>
> -
> -#include <linux/clk.h>
> -#include <linux/clkdev.h>
> -#include <linux/err.h>
> -
>  #include <io.h>
>  #include <asm/armlinux.h>
>  #include <linux/sizes.h>
> -
> -#include <mach/platform.h>
>  #include <mach/core.h>
> -#include <linux/amba/bus.h>

This one no longer applies, the file looks completely different now. I
didn't track if the content went somewhere else and the patch should be
applied on another file no. If so, please resend.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


