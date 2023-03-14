Delivery-date: Tue, 14 Mar 2023 14:52:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc555-00EbUs-F7
	for lore@lore.pengutronix.de; Tue, 14 Mar 2023 14:52:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc554-0004FH-Qb
	for lore@pengutronix.de; Tue, 14 Mar 2023 14:52:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t6bXi1lFrvMaVuBGpwxlZLRu2IH+YiGC996mBFJkUX8=; b=N6jDd4zgfja1nzhVDyE23nK73S
	LdeRfYf6+2ySRtFnatMuCkHDAS4al0yDWW/md5Jl5rrGb8rljdj/57kEG1tctJPOLcC5lsNTpTuov
	4I7oj95y8wKSgjkllg5Xj8MTp9K70VSeSulj4b4oj0d7gffyQObVhaT6ffc5u5P0Jq8tgsqnJeVUw
	BKu+rWcIPlXW9opqx++BD2zpc1NmPbM6W5zJEQ+/eQ0XJ2ISwY2+czQk4ibuMR/G6KHAawVDj1uhq
	z/fFCvKx3GXxnnqSLc8R453t3IqRtprvvIykue7KSvckDpTU1KNI7+3HCG3id6vlHooUpdXYN2qrS
	yuHPbFXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc53p-00ALyd-0t;
	Tue, 14 Mar 2023 13:51:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc53m-00ALxk-11
	for barebox@lists.infradead.org;
	Tue, 14 Mar 2023 13:51:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pc53k-00043T-78; Tue, 14 Mar 2023 14:51:24 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pc53j-00045Y-Ct; Tue, 14 Mar 2023 14:51:23 +0100
Date: Tue, 14 Mar 2023 14:51:23 +0100
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230314135123.GI7446@pengutronix.de>
References: <BL0PR07MB5665108F4F12614684A2569BECB99@BL0PR07MB5665.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL0PR07MB5665108F4F12614684A2569BECB99@BL0PR07MB5665.namprd07.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_065126_351555_300649F4 
X-CRM114-Status: GOOD (  20.88  )
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
Subject: Re: [PATCH v3 0/2] Initial LS1021-IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Renaud,

On Mon, Mar 13, 2023 at 02:43:26PM +0000, Renaud Barbier wrote:
> After the acceptance of the architected timer, the LS1021A support is sent
> again as two patches.
> 
> The LS1021A-IOT is NXP ARMv7 Layerscape evaluation board.
> 
> These patches provide a basic board support with:
> 	- DDR3
> 	- UART
> 	- boot from SPI
> 
> The code is ported from NXP U-boot 2021-04.
> 
> Renaud Barbier (2):
>   ARM: add LS1021A to Layerscape machine support
>   ARM: Layerscape: Add LS1021A IOT board support

Applied with some changes. First I rebased on current -next which means
renaming arch/arm/mach-layerscape/include/mach/ to
include/mach/layerscape/. Then setting CONFIG_ARCH_TEXT_BASE shouldn't
be needed. Also I renamed back some layerscape_ prefixes to ls1046a_ and
ls1021a_. Please check the result in current -next.

Sascha

> 
>  arch/arm/boards/Makefile                      |   1 +
>  arch/arm/boards/ls1021aiot/Makefile           |   3 +
>  arch/arm/boards/ls1021aiot/board.c            |  47 +++
>  arch/arm/boards/ls1021aiot/lowlevel.c         | 120 ++++++
>  arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg    |  11 +
>  .../boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg |   8 +
>  arch/arm/boards/ls1021aiot/start.S            |  11 +
>  arch/arm/boards/ls1046ardb/lowlevel.c         |   2 +-
>  arch/arm/boards/tqmls1046a/board.c            |   2 +-
>  arch/arm/boards/tqmls1046a/lowlevel.c         |   2 +-
>  arch/arm/configs/layerscape_v7_defconfig      |  94 +++++
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/fsl-ls1021a-iot.dts              |  77 ++++
>  arch/arm/mach-layerscape/Kconfig              |  14 +
>  arch/arm/mach-layerscape/Makefile             |   9 +-
>  arch/arm/mach-layerscape/boot.c               |  11 +-
>  arch/arm/mach-layerscape/errata.c             |  76 +++-
>  .../mach-layerscape/include/mach/debug_ll.h   |   5 +-
>  .../arm/mach-layerscape/include/mach/errata.h |   2 +
>  .../mach-layerscape/include/mach/fsl_epu.h    |  67 +++
>  .../mach-layerscape/include/mach/layerscape.h |   7 +-
>  .../mach-layerscape/include/mach/lowlevel.h   |   1 +
>  arch/arm/mach-layerscape/include/mach/xload.h |   4 +
>  arch/arm/mach-layerscape/lowlevel-ls102xa.c   | 389 ++++++++++++++++++
>  arch/arm/mach-layerscape/ls102xa_stream_id.c  |  55 +++
>  arch/arm/mach-layerscape/restart.c            |  30 ++
>  arch/arm/mach-layerscape/xload-qspi.c         |  43 +-
>  arch/arm/mach-layerscape/xload.c              |  20 +-
>  images/Makefile.layerscape                    |   9 +
>  include/soc/fsl/immap_lsch2.h                 | 171 +++++++-
>  30 files changed, 1255 insertions(+), 37 deletions(-)
>  create mode 100644 arch/arm/boards/ls1021aiot/Makefile
>  create mode 100644 arch/arm/boards/ls1021aiot/board.c
>  create mode 100644 arch/arm/boards/ls1021aiot/lowlevel.c
>  create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_pbi.cfg
>  create mode 100644 arch/arm/boards/ls1021aiot/ls102xa_rcw_sd_qspi.cfg
>  create mode 100644 arch/arm/boards/ls1021aiot/start.S
>  create mode 100644 arch/arm/configs/layerscape_v7_defconfig
>  create mode 100644 arch/arm/dts/fsl-ls1021a-iot.dts
>  create mode 100644 arch/arm/mach-layerscape/include/mach/fsl_epu.h
>  create mode 100644 arch/arm/mach-layerscape/lowlevel-ls102xa.c
>  create mode 100644 arch/arm/mach-layerscape/ls102xa_stream_id.c
>  create mode 100644 arch/arm/mach-layerscape/restart.c
> 
> -- 
> 2.27.0
> 
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


