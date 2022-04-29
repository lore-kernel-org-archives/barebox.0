Delivery-date: Fri, 29 Apr 2022 09:16:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkKru-001l9V-BS
	for lore@lore.pengutronix.de; Fri, 29 Apr 2022 09:16:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkKrr-0007aK-Oe
	for lore@pengutronix.de; Fri, 29 Apr 2022 09:16:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KbbRhLekoB939uysFreorYh0iTXhwXLKxh8PXmPP8I0=; b=XWbknENAgkz8Kz/bfc3Ulr57/T
	OBZRhBy1CZPj+ufLY2fBEl+ULMvJ8APus+V/USQ969RTckO3faqkr3vXO4sjAPjXXLUwKeG4YlaCI
	Ii8hBnSKBWRYJ83lVUDNWQk0Aemgy1lSfZ0MuUHaw5tgS83ErMjYN8emj8YN0L7ejKPNLGp4x59Kv
	rSruTg6y71hvfXcSM/BWSdsuI9YYxB4aksPJDAIkgRUuK3HrdcQRq/4ktHNhNJ9XctOauaYQScuWt
	B6+qkKkKBPwHkMn3rZYZKgmDmh6nbj72NyNxYTDqht0c36FmyBkAHHWM/7KAgASemoMpEgsaAHlxy
	xH7+118A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkKqZ-009wZV-Nd; Fri, 29 Apr 2022 07:15:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkKqU-009wYk-Rx
 for barebox@lists.infradead.org; Fri, 29 Apr 2022 07:15:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nkKqT-0007G6-05; Fri, 29 Apr 2022 09:15:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nkKqS-00042Z-NT; Fri, 29 Apr 2022 09:15:16 +0200
Date: Fri, 29 Apr 2022 09:15:16 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220429071516.GP4012@pengutronix.de>
References: <20220426070440.12471-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220426070440.12471-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:14:54 up 29 days, 19:44, 77 users,  load average: 0.18, 0.16, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_001518_939854_632FC517 
X-CRM114-Status: GOOD (  20.27  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3] arm: boards: Add support for MYIR MYD-AM335X
 Development Board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 26, 2022 at 10:04:40AM +0300, Alexander Shiyan wrote:
> The MYD-AM335X Development Board designed by MYIR is a high-performance
> ARM Evaluation Module (EVM) using the MYC-AM335X CPU module as the core
> controller board. It is based on up to 1GHz Texas Instruments (TI)
> Sitara AM335x family of ARM Cortex-A8 Microprocessors (MPUs) that deliver
> high DMIPs at a low cost while also delivering optional 3D graphics
> acceleration and key peripherals.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/boards/Makefile                      |   1 +
>  arch/arm/boards/myirtech-x335x/Makefile       |   3 +
>  arch/arm/boards/myirtech-x335x/board.c        |  44 +++++++
>  .../defaultenv-myirtech-x335x/boot/nand       |   4 +
>  .../defaultenv-myirtech-x335x/nv/boot.default |   1 +
>  arch/arm/boards/myirtech-x335x/lowlevel.c     | 115 ++++++++++++++++++
>  arch/arm/configs/am335x_mlo_defconfig         |   1 +
>  arch/arm/configs/omap_defconfig               |   3 +-
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/am335x-myirtech-myd.dts          |  47 +++++++
>  arch/arm/mach-omap/Kconfig                    |   6 +
>  .../arm/mach-omap/include/mach/am33xx-clock.h |   1 +
>  .../mach-omap/include/mach/am33xx-silicon.h   |   2 +
>  images/Makefile.am33xx                        |   8 ++
>  14 files changed, 236 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boards/myirtech-x335x/Makefile
>  create mode 100644 arch/arm/boards/myirtech-x335x/board.c
>  create mode 100644 arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/boot/nand
>  create mode 100644 arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default
>  create mode 100644 arch/arm/boards/myirtech-x335x/lowlevel.c
>  create mode 100644 arch/arm/dts/am335x-myirtech-myd.dts

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

