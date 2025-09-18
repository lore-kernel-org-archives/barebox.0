Delivery-date: Thu, 18 Sep 2025 08:22:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz81s-004Mb8-1N
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 08:22:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz81r-00019v-QH
	for lore@pengutronix.de; Thu, 18 Sep 2025 08:22:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SKZQK55TbW51Tqb9vh2odLgnzMRuR4OR7EV/XKpb+BI=; b=uFaEYrD0cl2m1gECR67kad0Hyf
	ZYtwI2mvMwIY51g+t8am705KP7VeT1bUWOC67g3t1SZBZLlk20rdjaym4+h0wXi+BAaLtE+xxAZLq
	SUDp1MIftgeSQDIrZbBDBKIfxJe6AtLUhgT59rh+ZVjOlWEOwv3Zx9MdjGcDe+unTcpapdG62g23y
	JulVlkJK1bQS3VwrJeWtaY6c2Bzm4apvbu1/x3HA76fs2ehvwOeIlMafb4Ly5ocYjJ+4rMjUrI3Vf
	+YT3kAFbKpOI4TpjV64qgoGaWOCDoaxCAEIa8epSN7ieIj1OpYIdNo/Ab8sVnxKRn1Hv8xSBq+M5x
	z4IExbgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz81Q-0000000GP9X-3fyk;
	Thu, 18 Sep 2025 06:21:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz81O-0000000GP8z-40gs
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 06:21:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uz81N-00014N-F3; Thu, 18 Sep 2025 08:21:33 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uz81N-001tFk-0t;
	Thu, 18 Sep 2025 08:21:33 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uz81N-00FlyB-0a;
	Thu, 18 Sep 2025 08:21:33 +0200
Date: Thu, 18 Sep 2025 08:21:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aMuk7XXfbzPu0P_A@pengutronix.de>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
 <20250917-boards-enclustra-sa2-add-support-v1-2-2de8f69107a1@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250917-boards-enclustra-sa2-add-support-v1-2-2de8f69107a1@clermont.in2p3.fr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_232134_993741_6357625F 
X-CRM114-Status: GOOD (  22.32  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 02/11] Add Enclustra Mercury+ SA2 module
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 17, 2025 at 05:22:05PM +0200, David Picard wrote:
> Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
> ---
>  arch/arm/boards/Makefile                      |  1 +
>  arch/arm/boards/enclustra-sa2/Makefile        |  2 ++
>  arch/arm/boards/enclustra-sa2/board.c         | 32 +++++++++++++++++++++++++++
>  arch/arm/boards/enclustra-sa2/lowlevel.c      | 13 +++++++++++
>  arch/arm/configs/socfpga-xload_defconfig      |  1 +
>  arch/arm/configs/socfpga_defconfig            |  3 +--
>  arch/arm/dts/Makefile                         |  1 +
>  arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts | 31 ++++++++++++++++++++++++++
>  arch/arm/mach-socfpga/Kconfig                 |  4 ++++
>  images/Makefile.socfpga                       |  8 +++++++
>  10 files changed, 94 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index ac1fa74d4c03de7a462746cb93a061017cd2b64d..3c3801aaae8425689f2f070321d4ec2fd38ad90a 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -118,6 +118,7 @@ obj-$(CONFIG_MACH_SEEED_ODYSSEY)		+= seeed-odyssey/
>  obj-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK)		+= altera-socdk/
>  obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
>  obj-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1)	+= enclustra-aa1/
> +obj-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_SA2)	+= enclustra-sa2/
>  obj-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES)	+= reflex-achilles/
>  obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC)	+= terasic-de0-nano-soc/
>  obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO)	+= terasic-de10-nano/
> diff --git a/arch/arm/boards/enclustra-sa2/Makefile b/arch/arm/boards/enclustra-sa2/Makefile
> new file mode 100644
> index 0000000000000000000000000000000000000000..8c927fe291a6b3eb20a32a2db96c73f231ab4697
> --- /dev/null
> +++ b/arch/arm/boards/enclustra-sa2/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += lowlevel.o board.o
> +pbl-y += lowlevel.o
> diff --git a/arch/arm/boards/enclustra-sa2/board.c b/arch/arm/boards/enclustra-sa2/board.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..834d0ab91871d0329af20f89a13af65e194b21c3
> --- /dev/null
> +++ b/arch/arm/boards/enclustra-sa2/board.c
> @@ -0,0 +1,32 @@
> +#include <common.h>
> +#include <types.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <asm/armlinux.h>
> +#include <linux/mdio.h>
> +#include <linux/micrel_phy.h>
> +#include <linux/phy.h>
> +#include <linux/sizes.h>
> +#include <fcntl.h>
> +#include <fs.h>
> +#include <mach/socfpga/cyclone5-regs.h>
> +
> +/*
> + * Ethernet PHY: Microchip/Micrel KSZ9031RNX
> + */
> +static int phy_fixup(struct phy_device *dev)
> +{
> +	return 0;
> +}
> +
> +static int socfpga_init(void)
> +{
> +	if (!of_machine_is_compatible("altr,socfpga-cyclone5"))
> +		return 0;

This is too broad and fixed later in this series. Please start with the
correct compatible here instead of fixing it later.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


