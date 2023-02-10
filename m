Delivery-date: Fri, 10 Feb 2023 10:47:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQPzk-002oJk-DA
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 10:47:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQPzh-0006MY-HV
	for lore@pengutronix.de; Fri, 10 Feb 2023 10:47:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dodexMPpc0ynf6XcNSSYQtmn1eakMEZwHw32hEry/00=; b=RwA0t62wedHUUCSi0Un7fPJYIG
	aYTD2QNZ6w0qVomUe8zTsDjyOXDXIfWZpvPFtxTpGPWxNzPTLXqEV5tcHo6Bt5QxeUNDPe8qjdTrn
	K3Cg7zC3nPuCoGqHf8RSqSdUoHsV6aPH4TEkDtN0B1Re/Py2KEdInyYWLhr7IRvqUnbpPr7KiknLV
	rYEYb/Q7vq+ykJ/j9BTB2I/u88z+DNgR8CKbtemxx4DcaJpo5HveVorsFaHRJKanR8wd40kOHgKzY
	Et8zCj7NPfuqjOxNfZKk5i34y8xqDaH00hA9+QECsxL4DeoctSM/S6mgS8/T4P0EFxKfzDSzvlph2
	iA/SWftw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQPyV-0058HX-D7; Fri, 10 Feb 2023 09:45:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQPyQ-0058Fo-9A
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 09:45:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pQPyO-0005ut-Be; Fri, 10 Feb 2023 10:45:40 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pQPyO-0003iO-4z; Fri, 10 Feb 2023 10:45:40 +0100
Date: Fri, 10 Feb 2023 10:45:40 +0100
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230210094540.GT10447@pengutronix.de>
References: <20230208133519.1114700-1-l.stach@pengutronix.de>
 <20230208133519.1114700-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230208133519.1114700-2-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_014542_339465_A92E5B51 
X-CRM114-Status: GOOD (  17.42  )
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
Subject: Re: [PATCH v2 2/2] ARM: i.MX8MP: add initial Polyhex DEBIX Model A
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 08, 2023 at 02:35:19PM +0100, Lucas Stach wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> The Polyhex DEBIX Model A is an i.MX8MP based Rpi form factor board.
> This commit imports the v6 of the Linux device tree[1], and the timings
> from the vendor U-Boot[2] and combines it with existing barebox i.MX8MP
> support.
> 
> [1]: https://lore.kernel.org/all/20221213152024.2638377-4-dan.scally@ideasonboard.com/
> [2]: https://github.com/debix-tech/uboot/blob/lf_v2021.04/board/freescale/imx8mp_evk/lpddr4_timing.c
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> [lst: cleaned up WIP patch]
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                      |    1 +
>  arch/arm/boards/polyhex-debix/Makefile        |    4 +
>  arch/arm/boards/polyhex-debix/board.c         |   48 +
>  .../flash-header-polyhex-debix.imxcfg         |    7 +
>  arch/arm/boards/polyhex-debix/lowlevel.c      |  138 ++
>  arch/arm/boards/polyhex-debix/lpddr4-timing.c | 1849 +++++++++++++++++
>  arch/arm/dts/Makefile                         |    1 +
>  .../arm/dts/imx8mp-debix-model-a-upstream.dts |  506 +++++
>  arch/arm/dts/imx8mp-debix-model-a.dts         |   68 +
>  arch/arm/mach-imx/Kconfig                     |   10 +
>  images/Makefile.imx                           |    5 +
>  11 files changed, 2637 insertions(+)
>  create mode 100644 arch/arm/boards/polyhex-debix/Makefile
>  create mode 100644 arch/arm/boards/polyhex-debix/board.c
>  create mode 100644 arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
>  create mode 100644 arch/arm/boards/polyhex-debix/lowlevel.c
>  create mode 100644 arch/arm/boards/polyhex-debix/lpddr4-timing.c
>  create mode 100644 arch/arm/dts/imx8mp-debix-model-a-upstream.dts
>  create mode 100644 arch/arm/dts/imx8mp-debix-model-a.dts

Added this board to imx_v8_defconfig while applying.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


