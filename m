Delivery-date: Wed, 04 Oct 2023 10:27:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnxEF-004g2N-78
	for lore@lore.pengutronix.de; Wed, 04 Oct 2023 10:27:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnxED-0004Jj-Vl
	for lore@pengutronix.de; Wed, 04 Oct 2023 10:27:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=67r5tbew+ukTs/++FiFRhVv5rIkdRiendyV/XvIQebU=; b=XSFsy8F4V/8x1l1+b9lqPZKuvT
	lrbmtb7PIgn7EfOyD94o6ftou6NgK2fOjvNXQ4hpTHLWHaBKWJ6R3l+Hu0RDIvCk66Ehtzas77xur
	q2E86+zRilUTVaHTpWfXn7WFt6T73k4C0jTk/7YdQaqCvpTyHCkzNoyUbaPndaztEOd69TbuRoI+b
	YEkU5UXPpfm2F1tbAZKgF06nWYEpv9dsf0WSDy392sSUlvszEg5LBmK0d1fwFF4RyR7IuPphZnV9A
	kwnMtlC9gkSWaCZFASH8FvCz9UFehmWVsEyjyG5UOF7y4hKRhLMOXAnlQth+9WEgxmJE5Iv8CbXnP
	T3tDt2Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnxD2-00GoCy-1Z;
	Wed, 04 Oct 2023 08:26:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnxD0-00GoCV-2b
	for barebox@bombadil.infradead.org;
	Wed, 04 Oct 2023 08:26:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=67r5tbew+ukTs/++FiFRhVv5rIkdRiendyV/XvIQebU=; b=OY3hRFot5YFNZ5MW3CCoNum7kO
	IZMmnWD0Pu1fi1x72bwjIBj8vtjnwAfMB1ZQSSvCdooG6idH9qzN+M3Sj/uZWDt65fgDBkHicOa8o
	MBQvoQgsHI+RDaUppxJBxZJBEiu6Hl/7pXWolJ2IwWrcJSQvtkNUczKDuk696sBKTg8X1//umbVJV
	uXLHs1XOIQFhI288l84ug0aiIsvGwbS0UO4q0/zxjMEb1KnarFB/9uCG8XH2Wa5wGW2N3P5AmWOTt
	2izV/gnmrR7JOzVxc3X2PLkRksGdpDkGFfcBLQaEvzj7o8i3pchkjHQ+t2+o2VGMwBacfK46VPEjy
	z26APYtg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnxCA-00Ablu-38
	for barebox@lists.infradead.org;
	Wed, 04 Oct 2023 08:26:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qnxCB-0003tq-QD; Wed, 04 Oct 2023 10:25:27 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qnxCB-00Az1K-Ct; Wed, 04 Oct 2023 10:25:27 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qnxCB-00CjAA-AU; Wed, 04 Oct 2023 10:25:27 +0200
Date: Wed, 4 Oct 2023 10:25:27 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, wsa@kernel.org
Message-ID: <20231004082527.GA3033385@pengutronix.de>
References: <20230926183835.2617909-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230926183835.2617909-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_092530_214940_A885163A 
X-CRM114-Status: GOOD (  23.85  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] ARM: at91: add first DT support for Calao usb/tny
 boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Sep 26, 2023 at 08:38:30PM +0200, Ahmad Fatoum wrote:
> We have a lot of defconfigs for ARM9 AT91 boards, that we want to get
> rid off after migrating the boards to at91_multi_defconfig.
> 
> Thanks to a temporarily donated Calao USB-A9G20 by Wolfram, we start by
> switching the Calao boards to DT.
> 
> This is not yet a complete replacement:
> 
>   - We use the legacy NAND driver instead of the newly backported driver
>     that Linux uses with the hardware, presumably without issues
> 
>   - OHCI hangs during probe, so it's disabled for now
> 
>   - A barebox with comparative functionality to the non-DT version
>     exceeds the 256K partition size
> 
> These can be resolved separately though, so add here first DT support.
> 
> Ahmad Fatoum (5):
>   Revert "mtd: nand: drop DT support in legacy driver"
>   ARM: at91: add SDRAMC driver for memory detection
>   ARM: at91: at91sam9_rst: add DT support for at91sam9260
>   ARM: at91: sam9260: don't build non-DT device support when unneeded
>   ARM: at91: add first DT support for Calao usb/tny boards

Applied, thanks

Sascha

> 
>  arch/arm/boards/Makefile              |   1 +
>  arch/arm/boards/calao/Makefile        |   4 +
>  arch/arm/boards/calao/board.c         |  13 ++++
>  arch/arm/boards/calao/lowlevel.c      |  30 ++++++++
>  arch/arm/configs/at91_multi_defconfig |   4 +-
>  arch/arm/dts/Makefile                 |   3 +
>  arch/arm/dts/at91sam9260.dtsi         |  33 ++++++++
>  arch/arm/dts/at91sam9g20.dtsi         |   2 +
>  arch/arm/dts/calao_nand.dtsi          |  48 ++++++++++++
>  arch/arm/dts/tny_a9260.dts            |   4 +
>  arch/arm/dts/tny_a9g20.dts            |   4 +
>  arch/arm/dts/usb_a9260.dts            |   4 +
>  arch/arm/dts/usb_a9g20.dts            |   4 +
>  arch/arm/mach-at91/Kconfig            |  13 ++++
>  arch/arm/mach-at91/Makefile           |   3 +-
>  arch/arm/mach-at91/at91sam9_rst.c     |  18 ++++-
>  arch/arm/mach-at91/sdramc.c           |  47 ++++++++++++
>  drivers/mtd/nand/Kconfig              |   8 +-
>  drivers/mtd/nand/atmel/legacy.c       | 104 +++++++++++++++++++++++++-
>  images/Makefile.at91                  |   9 +++
>  include/mach/at91/at91sam9260.h       |   1 +
>  include/mach/at91/at91sam9_sdramc.h   |   4 +
>  include/mach/at91/at91sam9g45.h       |   1 +
>  23 files changed, 353 insertions(+), 9 deletions(-)
>  create mode 100644 arch/arm/boards/calao/Makefile
>  create mode 100644 arch/arm/boards/calao/board.c
>  create mode 100644 arch/arm/boards/calao/lowlevel.c
>  create mode 100644 arch/arm/dts/at91sam9260.dtsi
>  create mode 100644 arch/arm/dts/at91sam9g20.dtsi
>  create mode 100644 arch/arm/dts/calao_nand.dtsi
>  create mode 100644 arch/arm/dts/tny_a9260.dts
>  create mode 100644 arch/arm/dts/tny_a9g20.dts
>  create mode 100644 arch/arm/dts/usb_a9260.dts
>  create mode 100644 arch/arm/dts/usb_a9g20.dts
>  create mode 100644 arch/arm/mach-at91/sdramc.c
> 
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


