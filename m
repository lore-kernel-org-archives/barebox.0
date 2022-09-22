Delivery-date: Thu, 22 Sep 2022 10:05:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obHCq-00C0vQ-HY
	for lore@lore.pengutronix.de; Thu, 22 Sep 2022 10:05:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obHCo-0000Dt-ON
	for lore@pengutronix.de; Thu, 22 Sep 2022 10:05:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IEL1thhgS5NWTL8rg8B/qNpCEYrGEV/ryQSplLYElok=; b=gDJZDKNSPCBVc1KScqqL6Aoz46
	sSn48Qy8pzqTWzMQ77SjoblHU2TT5qNjHIZX1yZGPbJD5/gYQ10xG1LFt6bUrXUM5ZvWG5v5u8PaD
	uSes1Euv0+9xZNDBQv2/zZQg8lTpnxAjZG3Ib3eP062DjQJpa0DpD+f1NIaVhUyxF3jVMn4agGKod
	mKvwPKBu8LmLNduft5zfZjQ20dB+kEoNAg03daTg+EzR1p2e1LpMpH6wJea8DDneAM4FxLPPy9xRj
	YvGvvff3zvi2ZQIVLbK53e1d6NyQi7qMjo9lr9p4wZDGVjVjNgkmyjc+T4GjSTh8HlEuHhFc2Sm3C
	3j2Co9YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obHBK-00E0Nt-FG; Thu, 22 Sep 2022 08:03:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obHBE-00E0MY-Tt
	for barebox@lists.infradead.org; Thu, 22 Sep 2022 08:03:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1obHBC-00089e-0X; Thu, 22 Sep 2022 10:03:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1obHBB-0000GD-Ji; Thu, 22 Sep 2022 10:03:29 +0200
Date: Thu, 22 Sep 2022 10:03:29 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
Message-ID: <20220922080329.GG986@pengutronix.de>
References: <20220919113948.991245-1-michael.riesch@wolfvision.net>
 <20220919113948.991245-2-michael.riesch@wolfvision.net>
 <20220921094649.GC986@pengutronix.de>
 <223f9b7c-a95a-7847-503d-e51cb2abaf64@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <223f9b7c-a95a-7847-503d-e51cb2abaf64@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_010333_005473_549E240C 
X-CRM114-Status: GOOD (  43.91  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/7] soc: rockchip: add driver for rockchip io domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Sep 21, 2022 at 01:49:49PM +0200, Michael Riesch wrote:
> Hi Sascha,
> 
> On 9/21/22 11:46, Sascha Hauer wrote:
> > On Mon, Sep 19, 2022 at 01:39:42PM +0200, Michael Riesch wrote:
> >> The IO domains in Rockchip SoCs need to be configured to match the
> >> corresponding bank voltage. In Linux this is achieved by means of a
> >> platform driver that reads the voltage value of the supplies and
> >> configures the bits in the general register file (GRF) accordingly.
> >> Port this driver to barebox to provide support for the Rockchip
> >> RK356x SoCs.
> >>
> >> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> >> ---
> >>  drivers/soc/Kconfig              |   1 +
> >>  drivers/soc/Makefile             |   1 +
> >>  drivers/soc/rockchip/Kconfig     |  17 +++
> >>  drivers/soc/rockchip/Makefile    |   6 +
> >>  drivers/soc/rockchip/io-domain.c | 223 +++++++++++++++++++++++++++++++
> >>  5 files changed, 248 insertions(+)
> >>  create mode 100644 drivers/soc/rockchip/Kconfig
> >>  create mode 100644 drivers/soc/rockchip/Makefile
> >>  create mode 100644 drivers/soc/rockchip/io-domain.c
> > 
> > There's nothing in this driver that makes sure it is probed before the
> > users of the io domains. What happens when the users are probed before
> > the io domain driver?
> 
> Correct. Unfortunately, the situation is quite the same in the kernel.
> Only recently there was a discussion as to how to resolve this issue
> [0]. While the RFC in [0] was received well there is no mainline
> solution to this problem. I would suggest that the mainline kernel
> solution is adopted once there is one.
> 
> In the mean time we could
>  - accept that it just works for some reason (TM)
>  - leave the magic bits in the low-level initialization to be on the
>    safe side

Decided for this solution for now.

I added the following as a reminder that there's still something
to do.

Sascha

---------------------------8<---------------------------

>From 502c4e819b80a6ccaefbce4af4c55b830b7e2c73 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2022 09:56:57 +0200
Subject: [PATCH] ARM: Rockchip: Add FIXME comment to io domain setup

We have a io-domain driver for rockchip boards which correctly
configures the io domain voltages, but currently there is no way
to make sure the io-domain driver is probed before its consumers.

To be on the safe side keep the io domain setup in the lowlevel code
for now, but add a comment that it should be removed once this issue
is resolved.

To solve this issue we need a phandle from the consumers to the io
domain node. We could add this in barebox locally, but decided to
wait until the upstream dts files have them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/radxa-rock3/lowlevel.c               | 4 ++++
 arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c | 4 ++++
 arch/arm/boards/rockchip-rk3568-evb/lowlevel.c       | 4 ++++
 3 files changed, 12 insertions(+)

diff --git a/arch/arm/boards/radxa-rock3/lowlevel.c b/arch/arm/boards/radxa-rock3/lowlevel.c
index 2a449c17ae..a62f60dff8 100644
--- a/arch/arm/boards/radxa-rock3/lowlevel.c
+++ b/arch/arm/boards/radxa-rock3/lowlevel.c
@@ -17,6 +17,10 @@ static noinline void rk3568_start(void)
 	/*
 	 * Enable vccio4 1.8V and vccio6 1.8V
 	 * Needed for GMAC to work.
+	 * FIXME: This is done by the io-domain driver as well, but there
+	 * currently is no mechanism to make sure the driver gets probed
+	 * before its consumers. Remove this setup once this issue is
+	 * resolved.
 	 */
 	writel(RK_SETBITS(0x50), 0xfdc20140);
 
diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
index f79f975080..4336d99365 100644
--- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
@@ -18,6 +18,10 @@ static noinline void rk3568_start(void)
 	/*
 	 * set iodomain vccio6 to 1.8V needed for GMAC1 to work.
 	 * vccio4 (gmac0/switch) needs to stay at 3v3 (default)
+	 * FIXME: This is done by the io-domain driver as well, but there
+	 * currently is no mechanism to make sure the driver gets probed
+	 * before its consumers. Remove this setup once this issue is
+	 * resolved.
 	 */
 	//set bit 6 in PMU_GRF_IO_VSEL0 for vccio6 1v8
 	writel(RK_SETBITS(BIT(6)), PMU_GRF_IO_VSEL0);
diff --git a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
index 363639d21b..9ab436135c 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
@@ -18,6 +18,10 @@ static noinline void rk3568_start(void)
 	/*
 	 * Enable vccio4 1.8V and vccio6 1.8V
 	 * Needed for GMAC to work.
+	 * FIXME: This is done by the io-domain driver as well, but there
+	 * currently is no mechanism to make sure the driver gets probed
+	 * before its consumers. Remove this setup once this issue is
+	 * resolved.
 	 */
 	writel(RK_SETBITS(0x50), 0xfdc20140);
 
-- 
2.30.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


