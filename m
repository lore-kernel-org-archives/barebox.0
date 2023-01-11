Delivery-date: Wed, 11 Jan 2023 10:12:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFX9a-008h3r-3A
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 10:12:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFX9Y-00031s-21
	for lore@pengutronix.de; Wed, 11 Jan 2023 10:12:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q/2IRWnx2FF3sP1hYkGs11as1rFzQy2qVp9NgObMmic=; b=E2o4cZn+xqncUGJwgveGdJxazv
	Ter3MnDa08vUJ7f/YgL/wi0L09Qi0y1gYrdTv1mOX5T9wJuJp7n+7DnE7tqxbAUIjDbR9qxiysKoW
	bKH5y04hewo4piGbsrlUPrcS5apPPk1cbPdPEBzhhEUK4VJUPoJ69/rUW+Z1Cb7xO+zJVE0i2AFeR
	XAmsR7CdRoLMeUPxfupJiWqdcKe564VIcVuakrG0McravjyjCjsKxpr6q9lqnh6QI0PcdwAwV1sTZ
	4Afw6PdBpuykZuU6sFFRg81QYeR2ZmJdJgN8YoLh2LWpx+krvQn8fP0Ws95dfiBfEQ+ZuuGjSD8JY
	odkNLP0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFX8D-00AUVr-L4; Wed, 11 Jan 2023 09:10:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFX88-00AUV1-LZ
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 09:10:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFX84-0002a5-Gp; Wed, 11 Jan 2023 10:10:40 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFX84-0003I1-9q; Wed, 11 Jan 2023 10:10:40 +0100
Date: Wed, 11 Jan 2023 10:10:40 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230111091040.GK24755@pengutronix.de>
References: <20230111075940.922817-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230111075940.922817-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_011044_722535_447B8A07 
X-CRM114-Status: GOOD (  28.68  )
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
Subject: Re: [PATCH 0/7] ARM: i.MX8M: add optional CAAM init in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 11, 2023 at 08:59:33AM +0100, Ahmad Fatoum wrote:
> While the CAAM is TrustZone aware, Linux and OP-TEE drivers are not
> necessarily so:
> 
>   - Linux running in normal world will attempt to set up RNG
>     via DECO, which can be restricted to secure world
> 
>   - (Some versions of) OP-TEE may depend on RNG being set up by BL2
> 
> While the proper solution would be to teach their drivers how to
> instantiate the RNG via SHs, we'll want to support existing firmware, so
> take the easy way out and just set up RNG4 SH0 and SH1 in barebox.
> 
> We already do that for the i.MX6, but the setup there happens in barebox
> proper. For security reasons, we want to install OP-TEE as early as
> possible while running the prebootloader, so we replicate the setup for
> PBL. This has been tested with the i.MX8MM and i.MX8MN. On the i.MX8MN
> in particular imx-optee used to hang for me while doing its crypto init,
> because it assumed a setup RNG. This is resolved now by this series.
> 
> Note that barebox itself does not yet benefit from this setup and that
> the barebox proper driver for CAAM is unaffected by this change.
> I verified it continues to work on an i.MX6Q as this series had some
> changes to the CAAM MMIO accessors.
> 
> Ahmad Fatoum (7):
>   ARM: i.MX8M: bootrom: access OCRAM directly if running in EL3
>   crypto: caam - sync 64-bit accessors with Linux
>   crypto: caam - add job ring accessors from Linux
>   crypto: caam - make command constants unsigned
>   crypto: caam - implement early PBL init
>   common: add new CONFIG_HAVE_OPTEE symbol
>   ARM: i.MX8M: init CAAM when CONFIG_FSL_CAAM_RNG_PBL_INIT

Applied, thanks

Sascha

> 
>  arch/arm/mach-imx/Kconfig                   |   1 +
>  arch/arm/mach-imx/Makefile                  |   4 +-
>  arch/arm/mach-imx/atf.c                     |  10 +
>  arch/arm/mach-imx/bootrom-cmd.c             |  14 +-
>  arch/arm/mach-imx/include/mach/imx8m-regs.h |   3 +
>  arch/arm/mach-imx/include/mach/romapi.h     |   4 +
>  arch/arm/mach-imx/romapi.c                  |  24 +-
>  common/Kconfig                              |   7 +-
>  drivers/crypto/Makefile                     |   2 +-
>  drivers/crypto/caam/Kconfig                 |   3 +
>  drivers/crypto/caam/Makefile                |   1 +
>  drivers/crypto/caam/ctrl.c                  |   6 +
>  drivers/crypto/caam/desc.h                  |  43 +-
>  drivers/crypto/caam/detect.h                |  19 +
>  drivers/crypto/caam/pbl-init.c              | 491 ++++++++++++++++++++
>  drivers/crypto/caam/regs.h                  | 272 ++++++++---
>  include/soc/fsl/caam.h                      |  17 +
>  include/zero_page.h                         |   2 +-
>  18 files changed, 834 insertions(+), 89 deletions(-)
>  create mode 100644 drivers/crypto/caam/detect.h
>  create mode 100644 drivers/crypto/caam/pbl-init.c
>  create mode 100644 include/soc/fsl/caam.h
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


