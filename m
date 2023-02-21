Delivery-date: Tue, 21 Feb 2023 08:45:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNKm-00Dd6J-05
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 08:45:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNKk-0003XD-OX
	for lore@pengutronix.de; Tue, 21 Feb 2023 08:45:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m5eEkw16iqXwAuu7huo4LffsiwG0LrDheHSaiccannM=; b=WHy2/CDxBd4R2DhPc80H+5IF5W
	fa62bHI/WagWn8LSTtgn8JWOdk9KwGxj0OUMfcvgG7MO3s0C8Pt39W3xuuKARB9TFkVuVIzpMI7lZ
	eZqTyS1EjhkR129wVe8xjB3cKiFbPXpP+yGE0Y82WW7b2vUiuCW8ULs++xe+AaEmy+o+RmnNJ4UY/
	ETYGFpG0O2nKQbnppxu0+PTvAKxzg0w6mhnoOxs+ge3K7muvrL80ZZ045qEqymSIEJQVoAmyPgqrp
	nuQ7bOyRwjMrilj9qqtyaBWUCM8s7WPOKm/NRLbctywcGRc5BbsQtm8arVbStNB7GkD2kQS6Ohu8v
	kj6HnQ3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNJY-006vhQ-MV; Tue, 21 Feb 2023 07:43:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNJU-006vgf-CA
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 07:43:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUNJR-0003Oc-41; Tue, 21 Feb 2023 08:43:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUNJQ-000899-Oc; Tue, 21 Feb 2023 08:43:44 +0100
Date: Tue, 21 Feb 2023 08:43:44 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230221074344.GV10447@pengutronix.de>
References: <20230221070749.1130753-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230221070749.1130753-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_234348_430399_59CE7A56 
X-CRM114-Status: GOOD (  17.19  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: add missing header to <mach/rockchip.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Feb 21, 2023 at 08:07:49AM +0100, Ahmad Fatoum wrote:
> The header uses error codes, so include the appropriate header.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/arm/mach-rockchip/include/mach/rockchip.h | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-rockchip/include/mach/rockchip.h b/arch/arm/mach-rockchip/include/mach/rockchip.h
> index ff8b1109f858..16a691ee8c0a 100644
> --- a/arch/arm/mach-rockchip/include/mach/rockchip.h
> +++ b/arch/arm/mach-rockchip/include/mach/rockchip.h
> @@ -3,6 +3,8 @@
>  #ifndef __MACH_ROCKCHIP_H
>  #define __MACH_ROCKCHIP_H
>  
> +#include <errno.h>
> +
>  #ifdef CONFIG_ARCH_RK3188
>  int rk3188_init(void);
>  #else
> -- 
> 2.38.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


