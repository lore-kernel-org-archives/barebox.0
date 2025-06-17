Delivery-date: Tue, 17 Jun 2025 11:29:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRScz-008DyL-1T
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 11:29:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRScy-0007tB-Dw
	for lore@pengutronix.de; Tue, 17 Jun 2025 11:29:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KFL00XdNZ64Rx9UFJNx+MvRx++uyRDRZuNP+Sb+BA7M=; b=0BiguJuhcuzKJ6ahLjojfchjNZ
	LL0o9YH31Ko3UvYUXtuz3V8USL9+kmOyNO1ktCZaS+BBD8hnE0KmWB5fXf9KRegcUpo7NzXz7gieK
	bxuP1QF7IRGHYFvZgLEPw4OX1ckQ/SdgbFQmjzk7bSTYBGX8TtUo+uqkyaxXg6Tw9JYqcYkpyZ4j9
	9c8Ax63Q4I/JJS9pl3YoQOcfT+W7T8UdysUbbmnjD288q6uEDqTFYApxUArMS21AVBoevzeA/9XNw
	Xc0hPW0VWAhU8dGzVJc9D+z0rqo7RtbHJIXG+DDcAu2hN8nHiCS+/vBkBo4xqGz4mySnIF8W9ujDF
	65X5Citw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRScS-00000006kTz-1eGW;
	Tue, 17 Jun 2025 09:28:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSSM-00000006iSA-24WP
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 09:18:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uRSSL-0007tS-4Z; Tue, 17 Jun 2025 11:18:13 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uRSSK-003wxU-35;
	Tue, 17 Jun 2025 11:18:12 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uRSSK-001PAD-2j;
	Tue, 17 Jun 2025 11:18:12 +0200
Date: Tue, 17 Jun 2025 11:18:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aFEy1K1jErUcOzrq@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
 <20250605-arm-k3-am62l-v2-30-53257d4b2dd2@pengutronix.de>
 <a0256cdf-a7a5-4fb1-8f3b-fa33ca523ac2@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a0256cdf-a7a5-4fb1-8f3b-fa33ca523ac2@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_021814_717384_2842FF8E 
X-CRM114-Status: GOOD (  27.19  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 30/33] ARM: k3: add AM62l3 EVM board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jun 16, 2025 at 02:03:57PM +0200, Ahmad Fatoum wrote:
> 
> 
> On 6/5/25 14:42, Sascha Hauer wrote:
> > Add support for the AM62l3 EVM board [1]. Currently supported are:
> > 
> > - DRAM
> > - eMMC
> > - SD card
> > - Ethernet
> > - USB
> > 
> > [1] https://www.ti.com/tool/TMDS62LEVM
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/Makefile              |  1 +
> >  arch/arm/boards/am62lx-evm/Makefile   |  1 +
> >  arch/arm/boards/am62lx-evm/lowlevel.c | 37 ++++++++++++++++++++
> >  arch/arm/dts/Makefile                 |  1 +
> >  arch/arm/mach-k3/Kconfig              |  6 ++++
> >  images/Makefile.k3                    | 63 +++++++++++++++++++++++++++++++++--
> >  6 files changed, 107 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> > index 908497cd8b0509bdca01c9ccfbb1501654051bda..ac1fa74d4c03de7a462746cb93a061017cd2b64d 100644
> > --- a/arch/arm/boards/Makefile
> > +++ b/arch/arm/boards/Makefile
> > @@ -5,6 +5,7 @@ obj-$(CONFIG_MACH_ADVANTECH_ROM_742X)		+= advantech-mx6/
> >  obj-$(CONFIG_MACH_AFI_GF)			+= afi-gf/
> >  obj-$(CONFIG_MACH_ANIMEO_IP)			+= animeo_ip/
> >  obj-$(CONFIG_MACH_AM625_SK)			+= am625-sk/
> > +obj-$(CONFIG_MACH_AM62LX_EVM)			+= am62lx-evm/
> >  obj-$(CONFIG_MACH_AT91RM9200EK)			+= at91rm9200ek/
> >  obj-$(CONFIG_MACH_AT91SAM9260EK)		+= at91sam9260ek/
> >  obj-$(CONFIG_MACH_AT91SAM9261EK)		+= at91sam9261ek/
> > diff --git a/arch/arm/boards/am62lx-evm/Makefile b/arch/arm/boards/am62lx-evm/Makefile
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..562535d391d66ae2068377967c4c84844cddd380
> > --- /dev/null
> > +++ b/arch/arm/boards/am62lx-evm/Makefile
> > @@ -0,0 +1 @@
> > +pbl-y += lowlevel.o
> > diff --git a/arch/arm/boards/am62lx-evm/lowlevel.c b/arch/arm/boards/am62lx-evm/lowlevel.c
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..c2f5771dcf53fb49f3d7e1cf9fd0e8a93d0323d7
> > --- /dev/null
> > +++ b/arch/arm/boards/am62lx-evm/lowlevel.c
> > @@ -0,0 +1,37 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +
> > +#include <common.h>
> > +#include <asm/barebox-arm-head.h>
> > +#include <asm/barebox-arm.h>
> > +#include <mach/k3/debug_ll.h>
> > +#include <debug_ll.h>
> > +#include <pbl.h>
> > +#include <cache.h>
> > +#include <pbl/handoff-data.h>
> > +#include <compressed-dtb.h>
> > +#include <mach/k3/common.h>
> > +
> > +#define SECURE_SIZE 0x600000
> > +
> > +static noinline void am62lx_evm_continue(void)
> > +{
> > +	extern char __dtb_z_k3_am62l3_evm_start[];
> > +
> > +	pbl_set_putc((void *)debug_ll_ns16550_putc, IOMEM(AM62X_UART_UART0_BASE));
> 
> Why do you need to cast the function pointer?

pbl_set_putc() takes a void(void *ctx, int c) argument whereas debug_ll_ns16550_putc
has the prototype void debug_ll_ns16550_putc(void __iomem *base, char c)

I guess this needs some cleanup.

Sascha


> 
> > +
> > +	putc_ll('>');
> > +
> > +	barebox_arm_entry(0x80000000 + SECURE_SIZE, SZ_2G - SECURE_SIZE, __dtb_z_k3_am62l3_evm_start);
> > +}
> > +
> > +ENTRY_FUNCTION_WITHSTACK(start_am62lx_evm, 0x80800000, r0, r1, r2)
> > +{
> > +	writel(0x00000000, 0x040841b8);
> > +
> > +	k3_debug_ll_init(IOMEM(AM62X_UART_UART0_BASE));
> > +
> > +	relocate_to_current_adr();
> > +	setup_c();
> > +
> > +	am62lx_evm_continue();
> > +}
> > diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> > index 3044c9bf120f9ece9564164b3fa569f4b7be1881..6612a514523103fdaaae026527f3441ebc57d228 100644
> > --- a/arch/arm/dts/Makefile
> > +++ b/arch/arm/dts/Makefile
> > @@ -7,6 +7,7 @@ obj- += dummy.o
> >  lwl-$(CONFIG_MACH_ADVANTECH_ROM_742X) += imx6dl-advantech-rom-7421.dtb.o
> >  lwl-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
> >  lwl-$(CONFIG_MACH_AM625_SK) += k3-am625-sk.dtb.o k3-am625-r5-sk.dtb.o k3-am625sip-r5-sk.dtb.o
> > +lwl-$(CONFIG_MACH_AM62LX_EVM) += k3-am62l3-evm.dtb.o
> >  lwl-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
> >  lwl-$(CONFIG_MACH_BEAGLEPLAY) += k3-am625-beagleplay.dtb.o k3-am625-r5-beagleplay.dtb.o
> >  lwl-$(CONFIG_MACH_CLEP7212) += ep7212-clep7212.dtb.o
> > diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
> > index cda44807e8a1db7c2f701309948c7bd1a863d365..338421a8af1715c72a23adc41fb7a21d69091585 100644
> > --- a/arch/arm/mach-k3/Kconfig
> > +++ b/arch/arm/mach-k3/Kconfig
> > @@ -46,6 +46,12 @@ config MACH_BEAGLEPLAY
> >  	help
> >  	  Say Y here if you are using a TI AM62x based BeaglePlay board
> >  
> > +config MACH_AM62LX_EVM
> > +	bool "TI AM62Lx EVM"
> > +	select MACH_AM62LX
> > +	help
> > +	  Say Y here if you are using a TI AM62Lx EVM board
> > +
> >  config ARCH_K3_AUTHENTICATE_IMAGE
> >  	bool "Force authentication of FIP image against ROM API"
> >  	help
> > diff --git a/images/Makefile.k3 b/images/Makefile.k3
> > index 12db9c59a96eade62679987aedb9b5433cec3c2f..ed8cdf126a9d4487e3423fcb6959c2d2a1fff3bf 100644
> > --- a/images/Makefile.k3
> > +++ b/images/Makefile.k3
> > @@ -17,6 +17,9 @@ image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay.img
> >  
> >  endif
> >  
> > +KEY_custmpk=$(srctree)/arch/arm/mach-k3/custMpk.pem
> > +KEY_degenerate=$(srctree)/arch/arm/mach-k3/ti-degenerate-key.pem
> > +
> >  ifdef CONFIG_MACH_K3_CORTEX_R5
> >  
> >  SYSFWDATA_am625=$(objtree)/arch/arm/mach-k3/combined-sysfw-cfg-am62x.k3cfg
> > @@ -24,8 +27,6 @@ DMDATA_am625=$(objtree)/arch/arm/mach-k3/combined-dm-cfg-am62x.k3cfg
> >  SYSFW_am625_hs_fs=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62x-hs-fs-enc.bin
> >  SYSFW_am625_gp=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62x-gp.bin
> >  INNERDATA_am625=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62x-hs-fs-cert.bin
> > -KEY_custmpk=$(srctree)/arch/arm/mach-k3/custMpk.pem
> > -KEY_degenerate=$(srctree)/arch/arm/mach-k3/ti-degenerate-key.pem
> >  
> >  ## TI am625(sip)-SK ##
> >  SYSFW_start_am625_sk_r5.pblb.k3_am62x_img=$(SYSFW_am625_hs_fs)
> > @@ -60,6 +61,29 @@ image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay-r5.img
> >  
> >  endif
> >  
> > +SYSFWDATA_am62lx=$(objtree)/arch/arm/mach-k3/combined-sysfw-cfg-am62l.k3cfg
> > +SYSFW_am62lx_hs_fs=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62lx-hs-fs-enc.bin
> > +INNERDATA_am62lx=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62lx-hs-fs-cert.bin
> > +
> > +## TI am62lx-EVM ##
> > +SYSFW_start_am62lx_evm.pblb.k3_am62lx_img=$(SYSFW_am62lx_hs_fs)
> > +SYSFWDATA_start_am62lx_evm.pblb.k3_am62lx_img=$(SYSFWDATA_am62lx)
> > +TFA_start_am62lx_evm.pblb.k3_am62lx_img=$(FIRMWARE_DIR)/am62lx-bl31.bin
> > +INNERDATA_start_am62lx_evm.pblb.k3_am62lx_img=$(INNERDATA_am62lx)
> > +KEY_start_am62lx_evm.pblb.k3_am62lx_img=$(KEY_custmpk)
> > +
> > +SYSFW_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(SYSFW_am62lx_hs_fs)
> > +SYSFWDATA_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(SYSFWDATA_am62lx)
> > +INNERDATA_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(INNERDATA_am62lx)
> > +TFA_BL1_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(FIRMWARE_DIR)/am62lx-bl1.bin
> > +KEY_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(KEY_custmpk)
> > +
> > +pblb-$(CONFIG_MACH_AM62LX_EVM) += start_am62lx_evm
> > +FILE_barebox-am62lx-evm.img = start_am62lx_evm.pblb.k3_am62lx_img
> > +image-$(CONFIG_MACH_AM62LX_EVM) += barebox-am62lx-evm.img barebox-am62lx-evm-tiboot3.img
> > +
> > +FILE_barebox-am62lx-evm-tiboot3.img = start_am62lx_evm.pblb.k3_am62lx_tiboot3_img
> > +
> >  quiet_cmd_k3_am62x_image = K3_am62x_IMG   $@
> >        cmd_k3_am62x_image = \
> >  		if [ -n "$(INNERDATA_$(@F))" ]; then				\
> > @@ -74,5 +98,40 @@ quiet_cmd_k3_am62x_image = K3_am62x_IMG   $@
> >  			$(DMDATA_$(@F)):17:16:0:43c3a800			\
> >  			--key $(KEY_$(@F)) --out $@
> >  
> > +quiet_cmd_k3_am62lx_image = K3_am62lx_IMG   $@
> > +      cmd_k3_am62lx_image = \
> > +		if [ -n "$(INNERDATA_$(@F))" ]; then				\
> > +			inner="$(INNERDATA_$(@F)):3:0:0:00000000";		\
> > +		fi;								\
> > +										\
> > +		if [ -n "$(FIRMWARE_DIR)/am62lx-bl32.bin" ]; then		\
> > +			optee=$(FIRMWARE_DIR)/am62lx-bl32.bin:17:16:0:80200000;	\
> > +		fi;								\
> > +										\
> > +		$(srctree)/scripts/k3img					\
> > +			$(TFA_$(@F)):1:16:0:80000000				\
> > +			$(SYSFW_$(@F)):2:0:0:00040000				\
> > +			$(SYSFWDATA_$(@F)):18:0:0:0006c000			\
> > +			$$inner							\
> > +			$$optee							\
> > +			$<:17:16:0:82000000					\
> > +			--key $(KEY_$(@F)) --out $@
> > +
> > +quiet_cmd_k3_am62lx_tiboot3_image = K3_am62lx_tiboot3_IMG   $@
> > +      cmd_k3_am62lx_tiboot3_image = \
> > +		$(srctree)/scripts/k3img					\
> > +			$(TFA_BL1_$(@F)):1:16:160:70800000			\
> > +			$(SYSFW_$(@F)):2:0:0:00040000				\
> > +			$(SYSFWDATA_$(@F)):18:0:0:0006c000			\
> > +			$(INNERDATA_$(@F)):3:0:0:00000000			\
> > +			--key $(KEY_$(@F))					\
> > +			--out $@
> > +
> >  $(obj)/%.k3_am62x_img: $(obj)/% scripts/k3img FORCE
> >  	$(call if_changed,k3_am62x_image)
> > +
> > +$(obj)/%.k3_am62lx_img: $(obj)/% scripts/k3img FORCE
> > +	$(call if_changed,k3_am62lx_image)
> > +
> > +$(obj)/%.k3_am62lx_tiboot3_img: $(obj)/% scripts/k3img FORCE
> > +	$(call if_changed,k3_am62lx_tiboot3_image)
> > 
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


