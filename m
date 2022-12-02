Delivery-date: Fri, 02 Dec 2022 09:47:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11i1-008Ken-FQ
	for lore@lore.pengutronix.de; Fri, 02 Dec 2022 09:47:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11i0-0002BU-OE
	for lore@pengutronix.de; Fri, 02 Dec 2022 09:47:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JSYweul7Y3GFTtukGWKA76ZtTGL6iilzoD2ENwyLI3Q=; b=c7PdgM+c1/1jUhCKW76U03j5Vm
	hXOYeMNmBTdKfsd4gluWwCcQOLIYTgDJNTLata1ZOeunAgnrBugROhJ3YG7qpzyQ1hvFIoBFOwB+p
	jTpbzIcvzGpUHiHpqsCbMEXoLn/3qgtJI0elSQkU41Emtbl7106hLu8o8inTyLxB+sUJeOOjBp1PZ
	O3vR+IlCB85Aa/cGGhXUAIhMHuA2NUD9og2PIfZHM6CcU5SeBdzNqOJVcsbqjg7dqAqGsx5/AEW3H
	988QlzEPG8gIZDiTL7XRa+3xxM35ygyzg2FI9rwVbhMfO+FmuqVd9uOdGVJWPQD+97KOjyZlYgpEI
	RCxZqnXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11ga-00EePX-DV; Fri, 02 Dec 2022 08:46:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11gW-00EeNs-Ef
	for barebox@lists.infradead.org; Fri, 02 Dec 2022 08:46:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11gU-00026F-0Z; Fri, 02 Dec 2022 09:46:14 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11gT-0006AZ-PQ; Fri, 02 Dec 2022 09:46:13 +0100
Date: Fri, 2 Dec 2022 09:46:13 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221202084613.GK29728@pengutronix.de>
References: <20221101180643.244270-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221101180643.244270-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221202_004616_509606_AF374C63 
X-CRM114-Status: GOOD (  17.81  )
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
Subject: Re: [PATCH 0/5] ARM: i.MX8M: implement bootrom log viewing command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Nov 01, 2022 at 07:06:38PM +0100, Ahmad Fatoum wrote:
> The ROM event log of the i.MX8M* can help with debugging boot
> failures as it lists various information about boot mode, image,
> fallback and recovery as well as timestamps when some actions along
> the boot process occurred.
> 
> This adds a new bootrom -l command that supports reading this out.
> 
> Ahmad Fatoum (5):
>   ARM: asm: set aside new arm_mem_scratch space
>   ARM: i.MX8M: esdctl: export imx8m_barebox_earlymem_size
>   ARM: i.MX8M: define imx8mX_scratch_space() helper
>   ARM: i.MX8M: support saving BootROM event log before clobbering OCRAM
>   ARM: i.MX8M: implement bootrom log viewing command

Applied, thanks

Sascha

> 
>  arch/arm/include/asm/barebox-arm.h          |   7 +
>  arch/arm/mach-imx/Kconfig                   |   4 +
>  arch/arm/mach-imx/Makefile                  |   1 +
>  arch/arm/mach-imx/atf.c                     |   3 +
>  arch/arm/mach-imx/bootrom-cmd.c             | 220 ++++++++++++++++++++
>  arch/arm/mach-imx/esdctl.c                  |  11 +-
>  arch/arm/mach-imx/include/mach/esdctl.h     |   3 +
>  arch/arm/mach-imx/include/mach/imx8m-regs.h |   8 +
>  arch/arm/mach-imx/include/mach/romapi.h     |  11 +
>  arch/arm/mach-imx/include/mach/xload.h      |  11 +
>  arch/arm/mach-imx/romapi.c                  |  26 +++
>  arch/arm/mach-imx/xload-common.c            |  10 +
>  commands/Kconfig                            |   8 +
>  13 files changed, 320 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/mach-imx/bootrom-cmd.c
> 
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


