Delivery-date: Wed, 10 Dec 2025 10:21:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTGNa-009rbF-1S
	for lore@lore.pengutronix.de;
	Wed, 10 Dec 2025 10:21:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTGNZ-0004hI-Nf
	for lore@pengutronix.de; Wed, 10 Dec 2025 10:21:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2LqxD3kZycKPcgGkptrhbbGVmJJHB23YMMkinadvcPc=; b=vTiO7DH9FKWjVOHYIBlgE7uqmX
	b2EgJnbSoaUXfuA3zINnFTf4sJDFZVlA4tKpH3iemg8UqIiwntL6Tp9ySZtWl4W5o2KDsCl+V9Jno
	eEZJFALnPMd7L4l6BSHUXlcC46C/KDprf/JW3fTazUAMGb4ngGSHP4yhIPYDO6TWIMkquZXfdiQzZ
	YMz7w59IVz/j/s/5FmsvZ2U1z2DRBQPVO7gONF7XrLlEKTTIJWf7W0RNKH7urzbfYQuJJv4guYGN5
	B8i+eNbWmJrU4JLzKyFY+JkKRU/z0rOgMOzi0W+bkRqWDhWzPn9nLkFbXwWrqIow2TO4nrJbWYeh7
	w1L4oUbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTGMz-0000000FHI7-146p;
	Wed, 10 Dec 2025 09:20:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTGMw-0000000FHHh-1RqR
	for barebox@lists.infradead.org;
	Wed, 10 Dec 2025 09:20:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vTGMt-0004bm-0b; Wed, 10 Dec 2025 10:20:19 +0100
Message-ID: <2c967c46271642aca2c1a17a7d986db0a0046b1b.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Date: Wed, 10 Dec 2025 10:20:18 +0100
In-Reply-To: <aTkj-yfL7NNF44LP@pengutronix.de>
References: <20251208-v2025-11-0-topic-optee-imx6-start-v1-0-0907128cdb8f@pengutronix.de>
	 <20251208-v2025-11-0-topic-optee-imx6-start-v1-3-0907128cdb8f@pengutronix.de>
	 <aTkj-yfL7NNF44LP@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_012022_390428_CC6408A1 
X-CRM114-Status: GOOD (  25.58  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] ARM: i.MX6: load optee in PBL before barebox proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hey :)

On Wed, 2025-12-10 at 08:40 +0100, Sascha Hauer wrote:
> On Mon, Dec 08, 2025 at 10:28:40AM +0100, Fabian Pflug wrote:
> > This patch uses the space in the scratch memory to hand over to OP-TEE
> > for device-tree overlays. If OP-TEE is configured with CFG_DT_ADDR=3D,
> > then it will write its devicetree-overlay into the address and it will
> > be picked up and applied by barebox.
> >=20
> > This allows for generic OP-TEE loading for i.MX6 devices without change=
s
> > to the board or lowlevel code.
> >=20
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> > =C2=A0arch/arm/mach-imx/esdctl.c | 49 +++++++++++++++++++++++++++++++++=
++++++++++---
> > =C2=A0common/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
> > =C2=A0firmware/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0 8 ++++++++
> > =C2=A0firmware/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0 1 +
> > =C2=A0include/tee/optee.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=
=C2=A0 9 ++++++++-
> > =C2=A05 files changed, 64 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> > index b9393fba4a..2434844c96 100644
> > --- a/arch/arm/mach-imx/esdctl.c
> > +++ b/arch/arm/mach-imx/esdctl.c
> > @@ -6,6 +6,7 @@
> > =C2=A0#include <common.h>
> > =C2=A0#include <io.h>
> > =C2=A0#include <errno.h>
> > +#include <firmware.h>
> > =C2=A0#include <linux/sizes.h>
> > =C2=A0#include <init.h>
> > =C2=A0#include <of.h>
> > @@ -30,6 +31,7 @@
> > =C2=A0#include <mach/imx/imx7-regs.h>
> > =C2=A0#include <mach/imx/imx9-regs.h>
> > =C2=A0#include <mach/imx/scratch.h>
> > +#include <mach/imx/tzasc.h>
> > =C2=A0#include <tee/optee.h>
> > =C2=A0
> > =C2=A0struct imx_esdctl_data {
> > @@ -976,18 +978,59 @@ void __noreturn imx53_barebox_entry(void *boardda=
ta)
> > =C2=A0static void __noreturn
> > =C2=A0imx6_barebox_entry(unsigned long membase, void *boarddata)
> > =C2=A0{
> > -	barebox_arm_entry(membase,
> > -			=C2=A0 imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR)),
> > -			=C2=A0 boarddata);
> > +	ulong memsize =3D imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR));
> > +
> > +	if (IS_ENABLED(CONFIG_FIRMWARE_IMX6_OPTEE) &&
> > +	=C2=A0=C2=A0=C2=A0 IS_ENABLED(CONFIG_PBL_OPTEE) && imx6_can_access_tz=
asc()) {
> > +		void *fdto;
> > +		unsigned int fdto_size;
> > +		int tee_size;
> > +		void *tee;
> > +
> > +		get_builtin_firmware(imx6_optee_bin, &tee, &tee_size);
> > +
> > +		ulong endmem =3D arm_mem_barebox_image_end(membase + memsize);
> > +		imx_init_scratch_space(endmem, 1);
> > +		imx_scratch_get_optee_fdto(&fdto, &fdto_size);
> > +		if (!fdto_size) {
> > +			pr_warn("No space configured for OP-TEE devicetree\n");
> > +			fdto =3D NULL;
> > +		}
> > +
> > +		start_optee_early(fdto, tee);
> > +		if (fdto_size)
> > +			handoff_data_add(HANDOFF_DATA_BL32_DT_OVL, fdto,
> > +					 fdto_size);
> > +	}
> > +
> > +	barebox_arm_entry(membase, memsize, boarddata);
> > =C2=A0}
> > =C2=A0
> > =C2=A0void __noreturn imx6q_barebox_entry(void *boarddata)
> > =C2=A0{
> > +	if (IS_ENABLED(CONFIG_FIRMWARE_IMX6_OPTEE) &&
> > +	=C2=A0=C2=A0=C2=A0 IS_ENABLED(CONFIG_PBL_OPTEE) && imx6_can_access_tz=
asc()) {
> > +		if (imx6q_tzc380_is_bypassed())
> > +			panic("TZC380 is bypassed, abort OP-TEE loading\n");
> > +
> > +		/* Add early non-secure TZASC region1 to pass DTO */
> > +		imx6q_tzc380_early_ns_region1();
> > +	}
> > +
> > =C2=A0	imx6_barebox_entry(MX6_MMDC_PORT01_BASE_ADDR, boarddata);
> > =C2=A0}
> > =C2=A0
> > =C2=A0void __noreturn imx6ul_barebox_entry(void *boarddata)
> > =C2=A0{
> > +	if (IS_ENABLED(CONFIG_FIRMWARE_IMX6_OPTEE) &&
> > +	=C2=A0=C2=A0=C2=A0 IS_ENABLED(CONFIG_PBL_OPTEE) && imx6_can_access_tz=
asc()) {
> > +		if (imx6ul_tzc380_is_bypassed())
> > +			panic("TZC380 is bypassed, abort OP-TEE loading\n");
> > +
> > +		/* Add early non-secure TZASC region1 to pass DTO */
> > +		imx6ul_tzc380_early_ns_region1();
> > +	}
> > +
> > =C2=A0	imx6_barebox_entry(MX6_MMDC_PORT0_BASE_ADDR, boarddata);
> > =C2=A0}
> > =C2=A0
> > diff --git a/common/Kconfig b/common/Kconfig
> > index c42dc88ccf..20012cdc2c 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -322,6 +322,7 @@ config SCRATCH_FDTO_SIZE
> > =C2=A0	hex
> > =C2=A0	default 0x0
> > =C2=A0	default 0x4000 if PBL_EARLY_FDT_LOAD
> > +	default 0x4000 if FIRMWARE_IMX6_OPTEE
> > =C2=A0	prompt "Scratch FDTO size"
> > =C2=A0	help
> > =C2=A0	=C2=A0 The size of possible FDT overlay areas used by BL3x binar=
ies to store
> > diff --git a/firmware/Kconfig b/firmware/Kconfig
> > index a97a1e0dd3..3e4245989c 100644
> > --- a/firmware/Kconfig
> > +++ b/firmware/Kconfig
> > @@ -49,6 +49,14 @@ config FIRMWARE_IMX93_ATF
> > =C2=A0config FIRMWARE_AGILEX5_ATF
> > =C2=A0	bool
> > =C2=A0
> > +config FIRMWARE_IMX6_OPTEE
> > +	bool "install OP-TEE on i.MX6 boards"
> > +	depends on PBL_OPTEE
> > +	help
> > +	=C2=A0 This enables OP-TEE loading and starting on i.MX6. Place the O=
P-TEE binary
> > +	=C2=A0 in CONFIG_EXTRA_FIRMWARE_DIR/imx6-optee.bin. If this is enable=
d, then
> > +	=C2=A0 the OP-TEE will automagically be loaded during boot.
>=20
> automatically please.
>=20
> > -int start_optee_early(void* fdt, void* tee);
> > +int start_optee_early(void *fdt, void *tee);
> > =C2=A0int imx6q_start_optee_early(void *fdt, void *tee, void *data_loca=
tion,
> > =C2=A0			=C2=A0=C2=A0=C2=A0 unsigned int data_location_size);
> > =C2=A0int imx6ul_start_optee_early(void *fdt, void *tee, void *data_loc=
ation,
> > =C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0 unsigned int data_location_size);
> > =C2=A0
> > +#else
> > +
> > +static inline int start_optee_early(void *fdt, void *tee)
> > +{
> > +	return -ENOSYS;
> > +}
>=20
> Is this needed?


Without it, I get
| /patch/to/barebox/arch/arm/mach-imx/esdctl.c: In function 'imx6_barebox_e=
ntry':
| /patch/to/barebox/arch/arm/mach-imx/esdctl.c:1000:17: error: implicit dec=
laration of function 'start_optee_early' [-
Werror=3Dimplicit-function-declaration]
|  1000 |                 start_optee_early(fdto, tee);
|       |                 ^~~~~~~~~~~~~~~~~

during compile.

That leaves three choices:
* Add a -ENOSYS to header
* disable compiling esdctl.c for barebox
* wrap call to start_optee_early in esdctl.c with #ifdef

Is there an error with esdctl being compiled for non-PBL?

Kind regards
Fabian

>=20
> Sascha


