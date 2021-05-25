Delivery-date: Tue, 25 May 2021 07:27:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPbg-0007At-9z
	for lore@lore.pengutronix.de; Tue, 25 May 2021 07:27:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPbf-0006ki-BC
	for lore@pengutronix.de; Tue, 25 May 2021 07:27:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JrKshPcCE9dq5NvuUa+ZnKzNb9w5djX3cRW8ZcrxlqM=; b=GatMZtkOAo92eo6ml8X8QlT3ag
	NTOnNh54pmZpdAGnOrTY6rEPuCep9djUj8IepZ0KXnE6rANS8ZqUlb7VaGGiE30ey67X4tvN7SgEY
	LSxyCqYkjI+SNYrtMFlc65jSSkTDust6Gyrhg9VpTmKQyU1x5evnUKxEFdF8ImY3tKTpjX9sML5Z1
	dtA4ZuckrO3GdiEa8ajKGpeuoVcyIsRWLIzLZlJfVk2j+4YNOwXGhN2d8zOPadY1wu8jozzLpt0cr
	/7ieUc8sKymCUFLVExRba5P3vTykSlkrKNwHxfTPi7pFnZTI8NmDzmUyON7MXEriOgXfXhIGTgBSM
	dIc6Q9Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llPaX-003QXT-2M; Tue, 25 May 2021 05:26:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llPaS-003QWc-1c
 for barebox@lists.infradead.org; Tue, 25 May 2021 05:26:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llPaQ-0006di-Fe; Tue, 25 May 2021 07:26:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llPaQ-000722-6o; Tue, 25 May 2021 07:26:38 +0200
Date: Tue, 25 May 2021 07:26:38 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210525052638.GL19819@pengutronix.de>
References: <20210522143431.824057-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210522143431.824057-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:25:28 up 96 days,  8:49, 77 users,  load average: 0.13, 0.12, 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_222640_124067_760ABF5A 
X-CRM114-Status: GOOD (  17.54  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: imx: Replace license and copyright boilerplate by
 SPDX identifiers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, May 22, 2021 at 04:34:31PM +0200, Uwe Kleine-K=F6nig wrote:
> Converts the files that licensecheck can determine to be licensed under
> GPL-2.0-only or GPL-2.0-or-later and also convert their copyright
> statements to SPDX.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-imx/boot.c                  | 13 +------------
>  arch/arm/mach-imx/cpu_init.c              | 15 ++-------------
>  arch/arm/mach-imx/esdctl-v4.c             | 18 ++++--------------
>  arch/arm/mach-imx/esdctl.c                | 18 ++++--------------
>  arch/arm/mach-imx/external-nand-boot.c    | 13 +------------
>  arch/arm/mach-imx/iim.c                   | 13 +++----------
>  arch/arm/mach-imx/imx-bbu-external-nand.c | 14 +++-----------
>  arch/arm/mach-imx/imx-bbu-internal.c      | 14 +++-----------
>  arch/arm/mach-imx/imx.c                   | 13 +------------
>  arch/arm/mach-imx/imx1.c                  | 13 +------------
>  arch/arm/mach-imx/imx21.c                 | 13 +------------
>  arch/arm/mach-imx/imx25.c                 | 13 +------------
>  arch/arm/mach-imx/imx27.c                 | 13 +------------
>  arch/arm/mach-imx/imx31.c                 | 13 +------------
>  arch/arm/mach-imx/imx35.c                 | 13 +------------
>  arch/arm/mach-imx/imx50.c                 | 13 +------------
>  arch/arm/mach-imx/imx51.c                 | 13 +------------
>  arch/arm/mach-imx/imx53.c                 | 13 +------------
>  arch/arm/mach-imx/imx6-mmdc.c             | 16 +++-------------
>  arch/arm/mach-imx/imx6.c                  | 13 +------------
>  arch/arm/mach-imx/imx7.c                  | 13 +------------
>  arch/arm/mach-imx/imx8m.c                 | 13 +------------
>  arch/arm/mach-imx/nand.c                  | 13 +------------
>  arch/arm/mach-imx/src.c                   | 10 ++--------
>  arch/arm/mach-imx/vf610.c                 | 13 +------------
>  arch/arm/mach-imx/xload-gpmi-nand.c       | 11 +----------
>  arch/arm/mach-imx/xload-imx-nand.c        | 14 ++------------
>  27 files changed, 44 insertions(+), 320 deletions(-)

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

