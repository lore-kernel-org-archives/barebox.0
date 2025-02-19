Delivery-date: Wed, 19 Feb 2025 14:55:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkkYR-004KbB-1Z
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 14:55:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkkYQ-0000Tt-7i
	for lore@pengutronix.de; Wed, 19 Feb 2025 14:55:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yf/oSGLyUrUk6tqo+xkbOiwPLd3WzvEz5/NuaqGScIU=; b=kChAah+fHv718h+NnmIpywCxMk
	LyhWIfQgrBSO+qM+pWJorHq2pbcBI3rPsSGrBkBS9a2tj47DMpYC7VwmD6wCaCMiWBi9cCbZj9TCc
	d1p4sAjA7w8BXe1sVf0yA2uFk9HPLscn7sbTIRA8WTcP/EFFqUEUhUNwW2IdUQOGMQh7woQ6hOn9c
	+oM8hjuKpx9flbLhxujxGveOmbbPYRzpfL4lJSazSH1A21buBSv2OuY1+Yc7jH/INBvHmrmsTwJmv
	pjVc3qI2E7EIsAahbPDijAhM6NW4TTRiL0+XJlkUw0aKnni1rPADbMONa9Gk1leQKOSYCCgWB5OIm
	sXtZ+avA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkkXx-0000000D6Hp-11BK;
	Wed, 19 Feb 2025 13:55:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkkXH-0000000D62Q-3moe
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 13:54:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tkkXG-00008Z-K3; Wed, 19 Feb 2025 14:54:46 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tkkXG-001mCz-1N;
	Wed, 19 Feb 2025 14:54:46 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tkkXG-006Gl9-12;
	Wed, 19 Feb 2025 14:54:46 +0100
Date: Wed, 19 Feb 2025 14:54:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z7XipiIsN9Vk1Lpu@pengutronix.de>
References: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-0-30b6f507810b@pengutronix.de>
 <20250218-v2024-10-0-topic-socfpga-agilex5-v2-10-30b6f507810b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-10-30b6f507810b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_055447_938487_C2B2CB81 
X-CRM114-Status: GOOD (  20.51  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 10/10] ARM: socfpga: add Arrow AXE5 Agilex5 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Feb 18, 2025 at 10:21:35AM +0100, Steffen Trumtrar wrote:
> diff --git a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..b736ca643f86b031dc070baf62f15a4a09e5aaba
> --- /dev/null
> +++ b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
> @@ -0,0 +1,74 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include <common.h>
> +#include <io.h>
> +#include <linux/sizes.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/system.h>
> +#include <pbl.h>
> +#include <mach/socfpga/debug_ll.h>
> +#include <mach/socfpga/init.h>
> +#include <mach/socfpga/generic.h>
> +#include <mach/socfpga/mailbox_s10.h>
> +#include <mach/socfpga/soc64-firewall.h>
> +#include <mach/socfpga/soc64-regs.h>
> +#include <mach/socfpga/soc64-sdram.h>
> +#include <mach/socfpga/soc64-system-manager.h>
> +
> +extern char __dtb_z_socfpga_agilex5_axe5_eagle_start[];
> +
> +#define AXE5_STACKTOP	(SZ_512K)
> +
> +static noinline void axe5_eagle_continue(void)
> +{
> +	void *fdt;
> +
> +	agilex5_clk_init();
> +
> +	socfpga_uart_setup_ll();
> +	pbl_set_putc(socfpga_uart_putc, (void *) SOCFPGA_UART0_ADDRESS);
> +
> +	pr_debug("Lowlevel init done\n");
> +
> +	printk("Change the pullup values on EMAC2 HPS mii signals\n");

debugging leftover?

> +	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x224);
> +	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x228);
> +	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x23c);
> +	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x234);
> +	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x248);
> +	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x24c);
> +
> +	writel(0x410, 0x10c03304);
> +	writel(0x410, 0x10c03300);
> +	/* reset the phy via GPIO10. We currently haven't got enough space
> +	 * to enable the gpio driver in barebox. */
> +	writel(0x000, 0x10c03300);
> +	mdelay(1000);

Quite a long time. Is this necessary?

> +	writel(0x410, 0x10c03300);
> +
> +	if (current_el() == 3) {
> +		agilex5_initialize_security_policies();
> +		pr_debug("Security policies initialized\n");
> +
> +		agilex5_ddr_init_full();
> +
> +		socfpga_mailbox_s10_init();
> +		socfpga_mailbox_s10_qspi_open();
> +
> +		agilex5_load_and_start_image_via_tfa(SZ_1G);
> +	}
> +
> +	fdt = __dtb_z_socfpga_agilex5_axe5_eagle_start;
> +
> +	barebox_arm_entry(SOCFPGA_AGILEX5_DDR_BASE + SZ_1M, SZ_1G - SZ_1M, fdt);
> +}
> +
> +ENTRY_FUNCTION_WITHSTACK(start_socfpga_agilex5_axe5_eagle, AXE5_STACKTOP, r0, r1, r2)
> +{
> +	if (current_el() == 3)
> +		socfpga_agilex5_cpu_lowlevel_init();
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	axe5_eagle_continue();
> +}
> diff --git a/arch/arm/configs/socfpga-agilex5_defconfig b/arch/arm/configs/socfpga-agilex5_defconfig
> new file mode 100644
> index 0000000000000000000000000000000000000000..b443a1281e6ad621d7270cade3ea0d60ccdc9af5
> --- /dev/null
> +++ b/arch/arm/configs/socfpga-agilex5_defconfig

Do we need another defconfig? Can we add it to multi_v8_defconfig
instead?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


