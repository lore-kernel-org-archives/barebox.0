Delivery-date: Fri, 27 Jun 2025 21:05:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVEOD-00BiVs-2y
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 21:05:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVEOD-0006iW-0K
	for lore@pengutronix.de; Fri, 27 Jun 2025 21:05:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lPVP7xMQrUPEmfZuDs7bMY54FryGtCsqiNbLsWlWLCA=; b=zValciqzrJ7ehkWfcfQZ+Josjk
	qSQrcAPn8uVwfbNTTNpN0pZuocdT3QGIn7rHR5xPhmqZpuOJUZ2501wk1YLIwbwmpJLiLcveO/t7g
	9S0h47hlQ0AqAI4UarfPkmiXhCOl7nW9Ob8f0vVs3b5JKeyCNvAL6/2BXus4b+T9IjWLaQPuLPsW8
	q+AGYxFKsn9HIqG2+0RFbH+ZlmJ4KfMOqSK1izPHLyQxPT3+KddhW2pHDrSbnzTBTt7zo+JW1xg9U
	fFkzTbAy7CHtPD62V23zx97QqlOLXLE9/u80n+vnNVHIFgIpLLHckrX8hBKYrKjayUs29QH7OSNkj
	DE8gbkiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVENe-0000000FZ5q-0R8H;
	Fri, 27 Jun 2025 19:05:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVD2h-0000000FQU0-2u28
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 17:39:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uVD2g-0005Mq-A4; Fri, 27 Jun 2025 19:39:14 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uVD2g-005ebZ-0O;
	Fri, 27 Jun 2025 19:39:14 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uVD2g-003erX-03;
	Fri, 27 Jun 2025 19:39:14 +0200
Date: Fri, 27 Jun 2025 19:39:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aF7XQWe6JZkCObTq@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
 <20250627-arm-optee-early-helper-v1-9-4b098e8ac7cd@pengutronix.de>
 <70a40a96-4468-4869-8ef6-f3ad4b27c36f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <70a40a96-4468-4869-8ef6-f3ad4b27c36f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_103915_732374_8354F0F3 
X-CRM114-Status: GOOD (  25.71  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/14] ARM: i.MX: add imx6_can_access_tzasc()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jun 27, 2025 at 05:33:19PM +0200, Ahmad Fatoum wrote:
> On 6/27/25 16:07, Sascha Hauer wrote:
> > On ARMv7 there is no direct way to detect if we are in the secure or non
> > secure world. Add a imx6_can_access_tzasc() for this purpose. When
> > accessing the TZASC triggers a data abort then we are in the non secure
> > world. This function can be used later to detect if we have to load
> > OP-TEE or not.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/tzasc.c | 16 ++++++++++++++++
> >  include/mach/imx/tzasc.h  |  1 +
> >  2 files changed, 17 insertions(+)
> > 
> > diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
> > index ed20ad8803a2e91b67b5d8c3ab1a4265c4228ec7..63f01cbaa6d4a8fbf47b9683ca840ee64f908cfc 100644
> > --- a/arch/arm/mach-imx/tzasc.c
> > +++ b/arch/arm/mach-imx/tzasc.c
> > @@ -13,6 +13,8 @@
> >  #include <linux/sizes.h>
> >  #include <mach/imx/imx8m-regs.h>
> >  #include <io.h>
> > +#include <abort.h>
> > +#include <asm/barebox-arm.h>
> >  
> >  /*******************************************************************************
> >   *                         TZC380 defines
> > @@ -329,6 +331,20 @@ bool imx6ul_tzc380_is_bypassed(void)
> >  	return !(readl(&gpr[9]) & MX6_GPR_TZASC1_EN);
> >  }
> >  
> 
> How about dropping the panic and just failing the build:
> 
> #ifdef CONFIG_ARM_EXCEPTIONS_PBL
> 
> > +bool imx6_can_access_tzasc(void)
> > +{
> > +	if (!IS_ENABLED(CONFIG_ARM_EXCEPTIONS_PBL))
> > +		panic("%s only works with CONFIG_ARM_EXCEPTIONS_PBL\n", __func__);
> > +
> > +	arm_pbl_init_exceptions();
> > +
> > +	data_abort_mask();
> > +
> > +	readl(IOMEM(MX6_TZASC1_BASE));
> > +
> > +	return !data_abort_unmask();
> > +}
> 
> #else
> 
> bool imx6_can_access_tzasc(void)
> 	__compiletime_error("function called without CONFIG_ARM_EXCEPTIONS_PBL ");
> 
> #endif

At the moment tzasc.c is obj-y, so failing the build would make
CONFIG_ARM_EXCEPTIONS_PBL mandatory for i.MX.

We could introduce a config symbol for the TZASC code and select
CONFIG_ARM_EXCEPTIONS_PBL from there.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


