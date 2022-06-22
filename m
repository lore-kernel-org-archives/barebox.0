Delivery-date: Wed, 22 Jun 2022 09:28:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3un2-00AFpe-AN
	for lore@lore.pengutronix.de; Wed, 22 Jun 2022 09:28:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3un2-0007Ac-8a
	for lore@pengutronix.de; Wed, 22 Jun 2022 09:28:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bpOE4du0vOuh5Ivg4Fz2QzX2GVMP5lXyrt3f3cqxfis=; b=IfDg0EmtQeB2mlcQSsTte3W88A
	s7Id3/otw+ca0zI+D0yOD7qdNMQ0+IiTHQP+wQl+iGIHELzNomIDiUVok8wwQbvwWld3yAbzfMpzT
	2RIYc1OYaH0jVCmf1hj4Ye/lqJUUq4YBzeiupaXFPJCBt8Ugys8VIEkB5oQ7gg7sfhD0HOssKHB/8
	ZadTgaGLg5KK5hXB2wcTH0nuVqg7Ltnno8jdtuAZABS5Gz1pi9rA0n6yoEZqzJaSANMD8hNhmHvnt
	B3KaZ2hY/6GW7ucbSdkX9Q6PIONIzVRuGwKBad9NoZUddnfUeqD28T670gzNCNbzpdESLyZFpINOt
	tOd2g6bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3ulI-0093rH-EG; Wed, 22 Jun 2022 07:26:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3ulD-0093pu-KQ
	for barebox@lists.infradead.org; Wed, 22 Jun 2022 07:26:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o3ulC-00073H-E2; Wed, 22 Jun 2022 09:26:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o3ulC-0000FJ-1t; Wed, 22 Jun 2022 09:26:46 +0200
Date: Wed, 22 Jun 2022 09:26:46 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20220622072646.GU1615@pengutronix.de>
References: <20220621083637.33660-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220621083637.33660-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_002647_704929_E298E25A 
X-CRM114-Status: GOOD (  18.05  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] arm: rockchip: radxa-rock3: enable deep probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 21, 2022 at 10:36:37AM +0200, Michael Riesch wrote:
> Enable deep probe support on the Radxa ROCK3 boards.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  arch/arm/boards/radxa-rock3/board.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/radxa-rock3/board.c b/arch/arm/boards/radxa-rock3/board.c
> index 30ad594d0a..aef5ec5df6 100644
> --- a/arch/arm/boards/radxa-rock3/board.c
> +++ b/arch/arm/boards/radxa-rock3/board.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  #include <bootsource.h>
>  #include <common.h>
> +#include <deep-probe.h>
>  #include <init.h>
>  #include <mach/bbu.h>
>  
> @@ -50,3 +51,5 @@ static struct driver_d rock3_board_driver = {
>  	.of_compatible = rock3_of_match,
>  };
>  coredevice_platform_driver(rock3_board_driver);
> +
> +BAREBOX_DEEP_PROBE_ENABLE(rock3_of_match);
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


