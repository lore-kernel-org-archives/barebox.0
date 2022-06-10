Delivery-date: Fri, 10 Jun 2022 09:56:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzZUu-009nih-QR
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 09:56:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzZUt-0001F2-Iu
	for lore@pengutronix.de; Fri, 10 Jun 2022 09:56:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/W5S/C/v/40oYDk29dkDK3cKUuJuEJYmpn8+8wKqdbc=; b=vNF/06+G6Z8R7r9Hron7Rqe2jh
	ydKy8kH62tT9FvSlcbtbSgqHQtMxQk/sQgGeejaqV+8jx15Aj8pago141M3VdgwasybrVMOf5t4WI
	IIPoFo+w+9DFShAkcod3ZrIIwtah78y1koquV/o5ruhY5fFuVSASDSYOWSKGUL0UcGByMnzObi5mg
	TM59pfYLv13+XTNdfEk+FtnJXcntYjkmucMnHWabkNTa4TdMII2U2EBlh0043fkrTaJGHe9fNFJde
	8zUVL3YQdujk88lm0WWi1lj1XQJRm8A7NOfkBVR7vUPUhi3tkDy1ieq634oKZtSpBrjhQqjXhJjmL
	VUnNpryQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZTh-006ae9-VK; Fri, 10 Jun 2022 07:54:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZTd-006adP-BB
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 07:54:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzZTc-00014W-47; Fri, 10 Jun 2022 09:54:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzZTb-0007lQ-Q9; Fri, 10 Jun 2022 09:54:39 +0200
Date: Fri, 10 Jun 2022 09:54:39 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220610075439.GG1615@pengutronix.de>
References: <20220610054051.4911-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220610054051.4911-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_005441_421103_577B7866 
X-CRM114-Status: GOOD (  17.13  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/8] Misc fixes part II
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 10, 2022 at 08:40:42AM +0300, Alexander Shiyan wrote:
> Unsorted various fixes for the barebox.
> 
> Alexander Shiyan (8):
>   ARM: optee-early: Fix 'memcpy' implicit declaration
>   ata: ahci: Fix format string
>   gui: image_renderer: Fix empty prototype for image_renderer_image()
>   ARM: vexpress: Add missing "noreturn" attribute to restart function
>   ARM: versatile: Add missing "noreturn" attribute to restart function
>   lib: logo: Ignore more generated files
>   mtd: nand: orion: Disallow driver compile for ARMv4T
>   commands: Add CONSOLE dependency for EDIT command

Applied, thanks

Sascha

> 
>  arch/arm/lib32/optee-early.c   |  1 +
>  arch/arm/mach-versatile/core.c |  2 +-
>  arch/arm/mach-vexpress/reset.c |  2 +-
>  commands/Kconfig               |  1 +
>  drivers/ata/ahci.c             | 10 +++++-----
>  drivers/mtd/nand/Kconfig       |  2 +-
>  include/gui/image_renderer.h   |  5 ++++-
>  lib/logo/.gitignore            | 15 +++++----------
>  8 files changed, 19 insertions(+), 19 deletions(-)
> 
> -- 
> 2.32.0
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

