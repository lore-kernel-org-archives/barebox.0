Delivery-date: Wed, 10 Dec 2025 11:59:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTHuY-009swt-2o
	for lore@lore.pengutronix.de;
	Wed, 10 Dec 2025 11:59:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTHuX-0006Is-VL
	for lore@pengutronix.de; Wed, 10 Dec 2025 11:59:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AznLd6r6MUcc2mMxZyozoVkNyovsDOwtdkGIrJTePtk=; b=GK8aRGZHAdNhn6EQbi7TuUb2gM
	aNhl8JX0bDYAwf6sW19K1ItYfDl+taJSmh+/upp/NstSk+uKgFnlD4dZ3j/MiUphg7yTubt7J0vT3
	fVu5/m23JwZKeidQRvvDaYFOMSNUjnRFW2OgGJ3mhev6BbkvcrfvKvx4gJwGXelfYLVarKSV59rhl
	8BHnEiaSMfgUwJiUkNanm9/SGQIOyklxrb1g63thzMlolr4l3gKIIkKxPw/q6JNPWJn0vAPraVrm+
	43bIMIsVMNl//v5H3mGvmIVDNDvHPsn86VLTyhh381+K6BaKEqxrR5R0H0aXr4UcHF2cfTEi7v1WV
	RG09O3BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTHty-0000000FM9O-1niY;
	Wed, 10 Dec 2025 10:58:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTHtv-0000000FM93-36Fp
	for barebox@lists.infradead.org;
	Wed, 10 Dec 2025 10:58:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vTHtu-0006Dt-4Y; Wed, 10 Dec 2025 11:58:30 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vTHtt-004wXC-35;
	Wed, 10 Dec 2025 11:58:29 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vTHtt-00GwbA-2n;
	Wed, 10 Dec 2025 11:58:29 +0100
Date: Wed, 10 Dec 2025 11:58:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aTlSVX2BuZAUAwrC@pengutronix.de>
References: <20251208-v2025-11-0-topic-optee-imx6-start-v1-0-0907128cdb8f@pengutronix.de>
 <20251208-v2025-11-0-topic-optee-imx6-start-v1-3-0907128cdb8f@pengutronix.de>
 <aTkj-yfL7NNF44LP@pengutronix.de>
 <2c967c46271642aca2c1a17a7d986db0a0046b1b.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2c967c46271642aca2c1a17a7d986db0a0046b1b.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_025831_940572_1ED63C81 
X-CRM114-Status: GOOD (  39.54  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] ARM: i.MX6: load optee in PBL before barebox proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Dec 10, 2025 at 10:20:18AM +0100, Fabian Pflug wrote:
> Hey :)
> 
> On Wed, 2025-12-10 at 08:40 +0100, Sascha Hauer wrote:
> > On Mon, Dec 08, 2025 at 10:28:40AM +0100, Fabian Pflug wrote:
> > > This patch uses the space in the scratch memory to hand over to OP-TEE
> > > for device-tree overlays. If OP-TEE is configured with CFG_DT_ADDR=,
> > > then it will write its devicetree-overlay into the address and it will
> > > be picked up and applied by barebox.
> > > 
> > > This allows for generic OP-TEE loading for i.MX6 devices without changes
> > > to the board or lowlevel code.
> > > 
> > > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > > ---
> > >  arch/arm/mach-imx/esdctl.c | 49 +++++++++++++++++++++++++++++++++++++++++++---
> > >  common/Kconfig             |  1 +
> > >  firmware/Kconfig           |  8 ++++++++
> > >  firmware/Makefile          |  1 +
> > >  include/tee/optee.h        |  9 ++++++++-
> > >  5 files changed, 64 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> > > index b9393fba4a..2434844c96 100644
> > > --- a/arch/arm/mach-imx/esdctl.c
> > > +++ b/arch/arm/mach-imx/esdctl.c
> > > @@ -6,6 +6,7 @@
> > >  #include <common.h>
> > >  #include <io.h>
> > >  #include <errno.h>
> > > +#include <firmware.h>
> > >  #include <linux/sizes.h>
> > >  #include <init.h>
> > >  #include <of.h>
> > > @@ -30,6 +31,7 @@
> > >  #include <mach/imx/imx7-regs.h>
> > >  #include <mach/imx/imx9-regs.h>
> > >  #include <mach/imx/scratch.h>
> > > +#include <mach/imx/tzasc.h>
> > >  #include <tee/optee.h>
> > >  
> > >  struct imx_esdctl_data {
> > > @@ -976,18 +978,59 @@ void __noreturn imx53_barebox_entry(void *boarddata)
> > >  static void __noreturn
> > >  imx6_barebox_entry(unsigned long membase, void *boarddata)
> > >  {
> > > -	barebox_arm_entry(membase,
> > > -			  imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR)),
> > > -			  boarddata);
> > > +	ulong memsize = imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR));
> > > +
> > > +	if (IS_ENABLED(CONFIG_FIRMWARE_IMX6_OPTEE) &&
> > > +	    IS_ENABLED(CONFIG_PBL_OPTEE) && imx6_can_access_tzasc()) {
> > > +		void *fdto;
> > > +		unsigned int fdto_size;
> > > +		int tee_size;
> > > +		void *tee;
> > > +
> > > +		get_builtin_firmware(imx6_optee_bin, &tee, &tee_size);
> > > +
> > > +		ulong endmem = arm_mem_barebox_image_end(membase + memsize);
> > > +		imx_init_scratch_space(endmem, 1);
> > > +		imx_scratch_get_optee_fdto(&fdto, &fdto_size);
> > > +		if (!fdto_size) {
> > > +			pr_warn("No space configured for OP-TEE devicetree\n");
> > > +			fdto = NULL;
> > > +		}
> > > +
> > > +		start_optee_early(fdto, tee);
> > > +		if (fdto_size)
> > > +			handoff_data_add(HANDOFF_DATA_BL32_DT_OVL, fdto,
> > > +					 fdto_size);
> > > +	}
> > > +
> > > +	barebox_arm_entry(membase, memsize, boarddata);
> > >  }
> > >  
> > >  void __noreturn imx6q_barebox_entry(void *boarddata)
> > >  {
> > > +	if (IS_ENABLED(CONFIG_FIRMWARE_IMX6_OPTEE) &&
> > > +	    IS_ENABLED(CONFIG_PBL_OPTEE) && imx6_can_access_tzasc()) {
> > > +		if (imx6q_tzc380_is_bypassed())
> > > +			panic("TZC380 is bypassed, abort OP-TEE loading\n");
> > > +
> > > +		/* Add early non-secure TZASC region1 to pass DTO */
> > > +		imx6q_tzc380_early_ns_region1();
> > > +	}
> > > +
> > >  	imx6_barebox_entry(MX6_MMDC_PORT01_BASE_ADDR, boarddata);
> > >  }
> > >  
> > >  void __noreturn imx6ul_barebox_entry(void *boarddata)
> > >  {
> > > +	if (IS_ENABLED(CONFIG_FIRMWARE_IMX6_OPTEE) &&
> > > +	    IS_ENABLED(CONFIG_PBL_OPTEE) && imx6_can_access_tzasc()) {
> > > +		if (imx6ul_tzc380_is_bypassed())
> > > +			panic("TZC380 is bypassed, abort OP-TEE loading\n");
> > > +
> > > +		/* Add early non-secure TZASC region1 to pass DTO */
> > > +		imx6ul_tzc380_early_ns_region1();
> > > +	}
> > > +
> > >  	imx6_barebox_entry(MX6_MMDC_PORT0_BASE_ADDR, boarddata);
> > >  }
> > >  
> > > diff --git a/common/Kconfig b/common/Kconfig
> > > index c42dc88ccf..20012cdc2c 100644
> > > --- a/common/Kconfig
> > > +++ b/common/Kconfig
> > > @@ -322,6 +322,7 @@ config SCRATCH_FDTO_SIZE
> > >  	hex
> > >  	default 0x0
> > >  	default 0x4000 if PBL_EARLY_FDT_LOAD
> > > +	default 0x4000 if FIRMWARE_IMX6_OPTEE
> > >  	prompt "Scratch FDTO size"
> > >  	help
> > >  	  The size of possible FDT overlay areas used by BL3x binaries to store
> > > diff --git a/firmware/Kconfig b/firmware/Kconfig
> > > index a97a1e0dd3..3e4245989c 100644
> > > --- a/firmware/Kconfig
> > > +++ b/firmware/Kconfig
> > > @@ -49,6 +49,14 @@ config FIRMWARE_IMX93_ATF
> > >  config FIRMWARE_AGILEX5_ATF
> > >  	bool
> > >  
> > > +config FIRMWARE_IMX6_OPTEE
> > > +	bool "install OP-TEE on i.MX6 boards"
> > > +	depends on PBL_OPTEE
> > > +	help
> > > +	  This enables OP-TEE loading and starting on i.MX6. Place the OP-TEE binary
> > > +	  in CONFIG_EXTRA_FIRMWARE_DIR/imx6-optee.bin. If this is enabled, then
> > > +	  the OP-TEE will automagically be loaded during boot.
> > 
> > automatically please.
> > 
> > > -int start_optee_early(void* fdt, void* tee);
> > > +int start_optee_early(void *fdt, void *tee);
> > >  int imx6q_start_optee_early(void *fdt, void *tee, void *data_location,
> > >  			    unsigned int data_location_size);
> > >  int imx6ul_start_optee_early(void *fdt, void *tee, void *data_location,
> > >  			     unsigned int data_location_size);
> > >  
> > > +#else
> > > +
> > > +static inline int start_optee_early(void *fdt, void *tee)
> > > +{
> > > +	return -ENOSYS;
> > > +}
> > 
> > Is this needed?
> 
> 
> Without it, I get
> | /patch/to/barebox/arch/arm/mach-imx/esdctl.c: In function 'imx6_barebox_entry':
> | /patch/to/barebox/arch/arm/mach-imx/esdctl.c:1000:17: error: implicit declaration of function 'start_optee_early' [-
> Werror=implicit-function-declaration]
> |  1000 |                 start_optee_early(fdto, tee);
> |       |                 ^~~~~~~~~~~~~~~~~
> 
> during compile.
> 
> That leaves three choices:
> * Add a -ENOSYS to header
> * disable compiling esdctl.c for barebox
> * wrap call to start_optee_early in esdctl.c with #ifdef
> 
> Is there an error with esdctl being compiled for non-PBL?

esdctl.c is needed for non-PBL. Keep it like it is with returning
-ENOSYS. I was just curious.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


