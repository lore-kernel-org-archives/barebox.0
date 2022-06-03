Delivery-date: Fri, 03 Jun 2022 09:19:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx1aT-001YNO-SY
	for lore@lore.pengutronix.de; Fri, 03 Jun 2022 09:19:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx1aS-000797-6p
	for lore@pengutronix.de; Fri, 03 Jun 2022 09:19:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/hDKeIwuHJFpOhR2crR5i4JI5gllmoHaa8OeJ0hUjPU=; b=ZD4xG0YXwzxa26X6QO/dcBMeEG
	ubc+5K900nF/VSlM/QNS6TcslLSg/xRa3u9L+NdvAV3GLxbYBBv4NfbkgDWkqZ53eoG3r1LHvv8d7
	1JOXk8RF+qtbP3awQcqTKnolANLYFzM1sLTK3t7T1wxStxUaT8WQRJHWPugDID0DkqEE19BTwluWg
	yuJZNf+qUEj8MHQZug1iLhMMU4xfWKbYop0SFpkoI04vyK4Pb6hXDAdxtz9nrnu7qVPnWq6xu2P3f
	j3nLZd/GJNy6letqAZsefr6WalWiuM78Q9qaAZdNuHDfBWuphUXqZadMqDD+m9pzBPusq6zd/P0iL
	9l9QIBXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1Z6-006G79-Dk; Fri, 03 Jun 2022 07:17:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1Z2-006G6R-6K
	for barebox@lists.infradead.org; Fri, 03 Jun 2022 07:17:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nx1Z0-00073Z-Oh; Fri, 03 Jun 2022 09:17:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nx1Z0-0006fr-Fo; Fri, 03 Jun 2022 09:17:42 +0200
Date: Fri, 3 Jun 2022 09:17:42 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220603071742.GH1615@pengutronix.de>
References: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_001744_269373_508FF468 
X-CRM114-Status: GOOD (  23.23  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] ARM: stm32mp: bbu: add FIP update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 02, 2022 at 11:01:26AM +0200, Ahmad Fatoum wrote:
> STM32MP1 BootROM boots from GPT partition fsbl1 or fsbl2 on SD-Card and
> from boot partition on eMMC. Recent TF-A without legacy image support will
> then look in a GPT partition named fip in the user area.
> 
> With recent patches[1], TF-A will also check offset SZ_256K in the boot
> partition to see if the FIP is there.
> 
> Add a barebox_update handler that covers these scenarios.
> 
> The TF-A patches are not yet upstream, but have all maintainer ACKs and
> will likely be part of TF-A v2.8.
> 
> [1]: https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/15332
> 
> Ahmad Fatoum (7):
>   bbu: move barebox_update eMMC boot handling into common code
>   bbu: use free(NULL) to simplify function cleanup
>   bbu: add flag for enabling eMMC boot ack
>   bbu: export bbu_std_file_handler for use in custom handlers
>   filetype: differentiate between STM32MP FSBL and SSBL images
>   ARM: stm32mp: bbu: add FIP update handler
>   fastboot: support TF-A FSBL and FIP images for barebox update

Applied, thanks

Sascha

> 
>  arch/arm/mach-imx/imx-bbu-internal.c     |  48 +-----
>  arch/arm/mach-stm32mp/Makefile           |   1 +
>  arch/arm/mach-stm32mp/bbu.c              | 197 +++++++++++++++++++++++
>  arch/arm/mach-stm32mp/include/mach/bbu.h |  18 ++-
>  arch/arm/mach-stm32mp/stm32image.c       |   2 +-
>  common/bbu.c                             | 100 ++++++++++--
>  common/filetype.c                        |  15 +-
>  include/bbu.h                            |   7 +
>  include/filetype.h                       |   3 +-
>  9 files changed, 327 insertions(+), 64 deletions(-)
>  create mode 100644 arch/arm/mach-stm32mp/bbu.c
> 
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

