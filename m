Delivery-date: Wed, 14 Jan 2026 13:15:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzmj-001EIl-2g
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:15:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzmg-0002Sm-FC
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:15:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n6v4+MSP96mDtmMe+UbUxkw99sWZfmvcIZct9sLWcD0=; b=AEg4nxe+p2xLI1g38v/r2an2jA
	3OyhFwgfUqm3eSqoEMUu4WUTnhHq4NDlC37ghmRLiK5aGqfgJ1NEYF9PxLy/BnRyBd/UyRkDDVZgG
	51dS5dAI9a39/XFcCj+l5rpgIOdZI89zRcTlkXWyVBdN/tKcFTViqpLq1uerUoeD3UdnrZuHx8pu3
	mrbxsxW963XekHO5u9ZOFuBsbysmHgC+pMYH5YWNEpFWKt3VDBSNt2/lERhTJvU+IDdCqR0t+Vdpf
	Gs5tAZWyeJBO182dKWoxaF5PPB1INuXVp/qdByBIe6Pibh0yllF5m9G7hSwUqzuZpjC7xAVz6tRtc
	+sNUbQDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzm5-000000098OM-1nqf;
	Wed, 14 Jan 2026 12:14:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzm2-000000098LI-4BGK
	for barebox@bombadil.infradead.org;
	Wed, 14 Jan 2026 12:14:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=n6v4+MSP96mDtmMe+UbUxkw99sWZfmvcIZct9sLWcD0=; b=jT+8XSgoWAH2/TM5lPkDWZRLvT
	NxMIMroYv6vv1vTHlwQYqQmrMsE7HxvYe3nrwF6MUbsyqdTsZW1fsNJATtus0xmOFiSR5LuVnA+lB
	EAA8+G2iYsAmWpBpK2r28HqeXOrMrP419tQy+r8jlfsWtkFE84h3yd7WMMqAwvOkoKPbcmTCbbUNw
	6HvTA97v++cv+mABRrgozXlkK65aO6WQ8PBHG7Y4/VvE5l+XwF4L0ncprKmgITaExBzd9pljNTaiA
	xfriR54jtEOEkt6iGa8geNvYtiMlmrpzHoFoRtIWwXu+SQ4d755ujqCm1hmTAfoqwuAAVRzTS2kPx
	aPMrhXCQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzlz-00000004mwC-3IA9
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:14:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzlw-0001sI-Px; Wed, 14 Jan 2026 13:14:48 +0100
Message-ID: <df2aa615-ac27-42d9-a1f2-38d0d6dd5b50@pengutronix.de>
Date: Wed, 14 Jan 2026 13:14:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-4-8f0625ac5471@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-4-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_121452_077441_F73ECCF5 
X-CRM114-Status: GOOD (  24.85  )
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
Subject: Re: [PATCH 04/23] ARM: i.MX8M: add support to pass DT via
 imx8m{m,n,q,p}_load_and_start_image_via_tfa()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 11/10/25 9:34 PM, Marco Felsch wrote:
> The internal barebox DTB isn't passed to other BL3x stages albeit it can
> be very useful, e.g. OP-TEE (as BL32) could parse the memory
> configuration from the DTB.
> 
> Extending the common TF-A (ATF) loader helpers is the first step to be
> able to pass the board DTB to other BL3x firmware images.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

There are upstream device trees that, instead of dropping /memory and
fix it up dynamically from scratch, list the smallest memory size across
variants in the DT:

  - If the bootloader updates it to total memory size, good
  - If it doesn't, the DT still works across variants

barebox supports such device trees by merging memory banks that overlap.
It's not clear to me if the change introduced here would not introduce
an issue with OP-TEE.

Furthermore, I don't like that we do so much in PBL via parameter
passing and the breakage this patch would introduce for out-of-tree
board code.

My suggestion is for the entry points calls handoff_data_add_entry()
with the device tree and then it can be consumed as the places needed in
an optional manner. If there's a device tree, good. If not, ist just
doesn't pass along anything.

Cheers,
Ahmad

> ---
>  arch/arm/boards/congatec-qmx8p/lowlevel.c          |  6 +++---
>  arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c    |  2 +-
>  arch/arm/boards/karo-qsxp-ml81/lowlevel.c          |  2 +-
>  arch/arm/boards/mnt-reform/lowlevel.c              |  2 +-
>  arch/arm/boards/nxp-imx8mm-evk/lowlevel.c          | 15 +++++++++-----
>  arch/arm/boards/nxp-imx8mn-evk/lowlevel.c          | 11 ++++++----
>  arch/arm/boards/nxp-imx8mp-evk/lowlevel.c          |  2 +-
>  arch/arm/boards/nxp-imx8mq-evk/lowlevel.c          |  2 +-
>  arch/arm/boards/phytec-som-imx8mm/lowlevel.c       |  2 +-
>  arch/arm/boards/phytec-som-imx8mq/lowlevel.c       |  2 +-
>  arch/arm/boards/polyhex-debix/lowlevel.c           |  6 +++---
>  arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c   |  2 +-
>  arch/arm/boards/skov-imx8mp/lowlevel.c             |  6 +++---
>  arch/arm/boards/tqma8mpxl/lowlevel.c               |  2 +-
>  .../variscite-dt8mcustomboard-imx8mp/lowlevel.c    |  2 +-
>  arch/arm/boards/zii-imx8mq-dev/lowlevel.c          | 21 ++++++++++---------
>  arch/arm/mach-imx/atf.c                            | 24 +++++++++++-----------
>  include/mach/imx/xload.h                           | 16 +++++++--------
>  18 files changed, 67 insertions(+), 58 deletions(-)
> 
> diff --git a/arch/arm/boards/congatec-qmx8p/lowlevel.c b/arch/arm/boards/congatec-qmx8p/lowlevel.c
> index 1889b9bb3318a2cfc4d31cabbe0476060cfeae22..fb969bcf9c0330c22134a20f21893041174316a7 100644
> --- a/arch/arm/boards/congatec-qmx8p/lowlevel.c
> +++ b/arch/arm/boards/congatec-qmx8p/lowlevel.c
> @@ -87,7 +87,7 @@ static void power_init_board(void)
>  
>  extern struct dram_timing_info dram_timing_4g;
>  
> -static void start_tfa(void)
> +static void start_tfa(char dtb[])
>  {
>  	/*
>  	 * If we are in EL3 we are running for the first time and need to
> @@ -102,14 +102,14 @@ static void start_tfa(void)
>  
>  	imx8mp_ddr_init(&dram_timing_4g, DRAM_TYPE_LPDDR4);
>  
> -	imx8mp_load_and_start_image_via_tfa();
> +	imx8mp_load_and_start_image_via_tfa(dtb);
>  }
>  
>  static __noreturn noinline void congatec_qmx8p_start(char dtb[])
>  {
>  	setup_uart();
>  
> -	start_tfa();
> +	start_tfa(dtb);
>  
>  	/*
>  	 * Standard entry we hit once we initialized both DDR and ATF
> diff --git a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
> index a779c1f0ac1919cf024c8a5bd7f692b6caee6e38..fe25d74cd423235af399dd62c71255852f71b167 100644
> --- a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
> +++ b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
> @@ -92,7 +92,7 @@ ENTRY_FUNCTION(start_innocomm_wb15_evk, r0, r1, r2)
>  
>  		imx8mm_ddr_init(&innocomm_wb15_dram_timing, DRAM_TYPE_LPDDR4);
>  
> -		imx8mm_load_and_start_image_via_tfa();
> +		imx8mm_load_and_start_image_via_tfa(__dtb_z_imx8mm_innocomm_wb15_evk_start);
>  	}
>  
>  	/* Standard entry we hit once we initialized both DDR and ATF */
> diff --git a/arch/arm/boards/karo-qsxp-ml81/lowlevel.c b/arch/arm/boards/karo-qsxp-ml81/lowlevel.c
> index 506a9c9930e5b27c4de40504f5e9dbb59805c7ed..fba57446173257222a61c5cb8fd7cd9f2a13779a 100644
> --- a/arch/arm/boards/karo-qsxp-ml81/lowlevel.c
> +++ b/arch/arm/boards/karo-qsxp-ml81/lowlevel.c
> @@ -94,7 +94,7 @@ ENTRY_FUNCTION(start_karo_qsxp_ml81, r0, r1, r2)
>  
>  		imx8mp_ddr_init(&karo_qsxp_ml81_dram_timing, DRAM_TYPE_LPDDR4);
>  
> -		imx8mp_load_and_start_image_via_tfa();
> +		imx8mp_load_and_start_image_via_tfa(__dtb_z_imx8mp_karo_qsxp_ml81_qsbase4_start);
>  	}
>  
>  	/* Standard entry we hit once we initialized both DDR and ATF */
> diff --git a/arch/arm/boards/mnt-reform/lowlevel.c b/arch/arm/boards/mnt-reform/lowlevel.c
> index 9f951508dfdd5fba5d980a7ebd5538731a2f58fa..de54f3cd7212f9d6f2fae1f7cd3bc2b6b41b2ecb 100644
> --- a/arch/arm/boards/mnt-reform/lowlevel.c
> +++ b/arch/arm/boards/mnt-reform/lowlevel.c
> @@ -123,7 +123,7 @@ static __noreturn noinline void mnt_reform_start(void)
>  
>  		imx8mq_ddr_init(&mnt_reform_dram_timing, DRAM_TYPE_LPDDR4);
>  
> -		imx8mq_load_and_start_image_via_tfa();
> +		imx8mq_load_and_start_image_via_tfa(__dtb_z_imx8mq_mnt_reform2_start);
>  	}
>  
>  	/*
> diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
> index 881d8285b60ef0d2e0ca408f6847a18d17dbe5d4..7dbcfdc878eb855d6d54b35c8e9fefd3689e565a 100644
> --- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
> +++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
> @@ -21,6 +21,10 @@
>  #include <mach/imx/xload.h>
>  #include <soc/imx8m/ddr.h>
>  
> +extern char __dtb_z_imx8mm_evk_start[];
> +extern char __dtb_z_imx8mm_evkb_start[];
> +static void *fdt;
> +
>  #define UART_PAD_CTRL	MUX_PAD_CTRL(PAD_CTL_DSE_3P3V_45_OHM)
>  
>  static void setup_uart(void)
> @@ -87,10 +91,13 @@ static void power_init_board(void)
>  
>  	i2c = imx8m_i2c_early_init(IOMEM(MX8MQ_I2C1_BASE_ADDR));
>  
> -	if (i2c_dev_probe(i2c, 0x25, true) == 0)
> +	if (i2c_dev_probe(i2c, 0x25, true) == 0) {
>  		pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
> -	else
> +		fdt = __dtb_z_imx8mm_evkb_start;
> +	} else {
>  		pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837_cfg));
> +		fdt = __dtb_z_imx8mm_evk_start;
> +	}
>  }
>  
>  extern struct dram_timing_info imx8mm_evk_dram_timing;
> @@ -109,7 +116,7 @@ static void start_atf(void)
>  	power_init_board();
>  	imx8mm_ddr_init(&imx8mm_evk_dram_timing, DRAM_TYPE_LPDDR4);
>  
> -	imx8mm_load_and_start_image_via_tfa();
> +	imx8mm_load_and_start_image_via_tfa(fdt);
>  }
>  
>  /*
> @@ -130,9 +137,7 @@ static void start_atf(void)
>   */
>  static __noreturn noinline void nxp_imx8mm_evk_start(void)
>  {
> -	extern char __dtb_z_imx8mm_evk_start[], __dtb_z_imx8mm_evkb_start[];
>  	struct pbl_i2c *i2c;
> -	void *fdt;
>  
>  	setup_uart();
>  
> diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
> index a1a501b1d962c202be5bb06bb20a2743728eb642..032c2421693614aa0e0eaabccf9482c8cd22bca8 100644
> --- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
> +++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
> @@ -25,6 +25,10 @@
>  #include <mfd/bd71837.h>
>  #include <soc/imx8m/ddr.h>
>  
> +extern char __dtb_z_imx8mn_evk_start[];
> +extern char __dtb_z_imx8mn_ddr4_evk_start[];
> +static void *fdt;
> +
>  static void setup_uart(void)
>  {
>  	void __iomem *uart = IOMEM(MX8M_UART2_BASE_ADDR);
> @@ -104,12 +108,14 @@ static void start_atf(void)
>  	if (i2c_dev_probe(i2c, 0x25, true) == 0) {
>  		pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
>  		imx8mn_ddr_init(&imx8mn_evk_lpddr4_timing, DRAM_TYPE_LPDDR4);
> +		fdt = __dtb_z_imx8mn_evk_start;
>  	} else {
>  		pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837_cfg));
>  		imx8mn_ddr_init(&imx8mn_evk_ddr4_timing, DRAM_TYPE_DDR4);
> +		fdt = __dtb_z_imx8mn_ddr4_evk_start;
>  	}
>  
> -	imx8mn_load_and_start_image_via_tfa();
> +	imx8mn_load_and_start_image_via_tfa(fdt);
>  }
>  
>  /*
> @@ -130,9 +136,6 @@ static void start_atf(void)
>   */
>  static __noreturn noinline void nxp_imx8mn_evk_start(void)
>  {
> -	extern char __dtb_z_imx8mn_evk_start[], __dtb_z_imx8mn_ddr4_evk_start[];
> -	void *fdt;
> -
>  	setup_uart();
>  
>  	start_atf();
> diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> index 969947d2ec4ec23a092c58de6c683a5d655640b9..5e0cab38235966503e402f519d251e9cb6c96fe7 100644
> --- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> +++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> @@ -103,7 +103,7 @@ static void start_atf(void)
>  
>  	imx8mp_ddr_init(&imx8mp_evk_dram_timing, DRAM_TYPE_LPDDR4);
>  
> -	imx8mp_load_and_start_image_via_tfa();
> +	imx8mp_load_and_start_image_via_tfa(__dtb_z_imx8mp_evk_start);
>  }
>  
>  /*
> diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
> index d1a517dddbd93aee33e27b012d3287cfde1ea017..861664f94fd52c7f4e3ea27538d6d7f2600b8cc4 100644
> --- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
> +++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
> @@ -67,7 +67,7 @@ static __noreturn noinline void nxp_imx8mq_evk_start(void)
>  	if (current_el() == 3) {
>  		ddr_init();
>  
> -		imx8mq_load_and_start_image_via_tfa();
> +		imx8mq_load_and_start_image_via_tfa(__dtb_z_imx8mq_evk_start);
>  	}
>  
>  	/*
> diff --git a/arch/arm/boards/phytec-som-imx8mm/lowlevel.c b/arch/arm/boards/phytec-som-imx8mm/lowlevel.c
> index 26f0f4d3e12e3c467c86deb5b9a1f921fcc43eb5..835bb66d659ab60c0e0c449c0d1b6ece9650a522 100644
> --- a/arch/arm/boards/phytec-som-imx8mm/lowlevel.c
> +++ b/arch/arm/boards/phytec-som-imx8mm/lowlevel.c
> @@ -110,7 +110,7 @@ static void start_phyboard_polis_rdk_common(enum phytec_imx8m_ddr_size size)
>  
>  		phyboard_polis_rdk_ddr_init(size);
>  
> -		imx8mm_load_and_start_image_via_tfa();
> +		imx8mm_load_and_start_image_via_tfa(__dtb_z_imx8mm_phyboard_polis_rdk_start);
>  	}
>  
>  	/* Standard entry we hit once we initialized both DDR and ATF */
> diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
> index 362b3ed823c1337a84fc653e0334f3fb859ad723..7ec05c3d01e9fa4c86f4b70bdea6f09b53caf441 100644
> --- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
> +++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
> @@ -65,7 +65,7 @@ static __noreturn noinline void phytec_phycore_imx8mq_start(void)
>  	 * loadting ATF blob again
>  	 */
>  	if (current_el() == 3)
> -		imx8mq_load_and_start_image_via_tfa();
> +		imx8mq_load_and_start_image_via_tfa(__dtb_z_imx8mq_phytec_phycore_som_start);
>  
>  	/*
>  	 * Standard entry we hit once we initialized both DDR and ATF
> diff --git a/arch/arm/boards/polyhex-debix/lowlevel.c b/arch/arm/boards/polyhex-debix/lowlevel.c
> index fa49fcb5c1430617d8b2cce5c5d3024e5ff95452..707287100e30a6d6a2f75afcd93f2e56a2c126cb 100644
> --- a/arch/arm/boards/polyhex-debix/lowlevel.c
> +++ b/arch/arm/boards/polyhex-debix/lowlevel.c
> @@ -84,7 +84,7 @@ static void power_init_board(void)
>  extern struct dram_timing_info imx8mp_debix_dram_timing;
>  extern struct dram_timing_info imx8mp_debix_8g_dram_timing;
>  
> -static void start_atf(struct dram_timing_info *dram_timing)
> +static void start_atf(struct dram_timing_info *dram_timing, void *dtb)
>  {
>  	/*
>  	 * If we are in EL3 we are running for the first time and need to
> @@ -100,7 +100,7 @@ static void start_atf(struct dram_timing_info *dram_timing)
>  
>  	imx8mp_ddr_init(dram_timing, DRAM_TYPE_LPDDR4);
>  
> -	imx8mp_load_and_start_image_via_tfa();
> +	imx8mp_load_and_start_image_via_tfa(dtb);
>  }
>  
>  /*
> @@ -124,7 +124,7 @@ imx8mp_debix_start(struct dram_timing_info *dram_timing, void *dtb)
>  {
>  	setup_uart();
>  
> -	start_atf(dram_timing);
> +	start_atf(dram_timing, dtb);
>  
>  	/*
>  	 * Standard entry we hit once we initialized both DDR and ATF
> diff --git a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
> index 711316ae4be71134e45537019fc8cdc61cec8969..f040509a0f7c1f4fcd70dc9296e4709b565bc8a6 100644
> --- a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
> +++ b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
> @@ -49,7 +49,7 @@ static void start_atf(void)
>  
>  	imx8mm_ddr_init(&prt8mm_dram_timing, DRAM_TYPE_LPDDR4);
>  
> -	imx8mm_load_and_start_image_via_tfa();
> +	imx8mm_load_and_start_image_via_tfa(__dtb_z_imx8mm_prt8mm_start);
>  }
>  
>  /*
> diff --git a/arch/arm/boards/skov-imx8mp/lowlevel.c b/arch/arm/boards/skov-imx8mp/lowlevel.c
> index 1fd665d676753ed1210dc82b98e40adf24f0e5a0..7859240eec10b2d3f8d351c04966fc68045d8b55 100644
> --- a/arch/arm/boards/skov-imx8mp/lowlevel.c
> +++ b/arch/arm/boards/skov-imx8mp/lowlevel.c
> @@ -149,7 +149,7 @@ static void power_init_board(void)
>  
>  extern struct dram_timing_info imx8mp_skov_dram_timing;
>  
> -static void start_atf(struct dram_timing_info *dram_timing)
> +static void start_atf(struct dram_timing_info *dram_timing, void *dtb)
>  {
>  	/*
>  	 * If we are in EL3 we are running for the first time and need to
> @@ -165,7 +165,7 @@ static void start_atf(struct dram_timing_info *dram_timing)
>  
>  	imx8mp_ddr_init(dram_timing, DRAM_TYPE_LPDDR4);
>  
> -	imx8mp_load_and_start_image_via_tfa();
> +	imx8mp_load_and_start_image_via_tfa(dtb);
>  }
>  
>  /*
> @@ -189,7 +189,7 @@ imx8mp_skov_start(struct dram_timing_info *dram_timing, void *dtb)
>  {
>  	setup_uart();
>  
> -	start_atf(dram_timing);
> +	start_atf(dram_timing, dtb);
>  
>  	/*
>  	 * Standard entry we hit once we initialized both DDR and ATF
> diff --git a/arch/arm/boards/tqma8mpxl/lowlevel.c b/arch/arm/boards/tqma8mpxl/lowlevel.c
> index e0a0f17d3aa43435ba46c55f5609aabd1abf4300..4ab3bd934aab30b925f4496ae6883a71348053f0 100644
> --- a/arch/arm/boards/tqma8mpxl/lowlevel.c
> +++ b/arch/arm/boards/tqma8mpxl/lowlevel.c
> @@ -96,7 +96,7 @@ static __noreturn noinline void tqma8mpxl_start(void)
>  
>  		imx8mp_ddr_init(&dram_timing_2gb_no_ecc, DRAM_TYPE_LPDDR4);
>  
> -		imx8mp_load_and_start_image_via_tfa();
> +		imx8mp_load_and_start_image_via_tfa(__dtb_z_imx8mp_tqma8mpql_mba8mpxl_start);
>  	}
>  
>  	imx8mp_barebox_entry(__dtb_z_imx8mp_tqma8mpql_mba8mpxl_start);
> diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
> index c9907ebf0a35597798a3b5d073e750ae2d6d8fdf..96869e86ed8f48de821eafe0882c2a78cb0aae3d 100644
> --- a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
> +++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
> @@ -95,7 +95,7 @@ static void start_atf(void)
>  
>  	imx8mp_ddr_init(&var_dart_imx8mp_dram_timing, DRAM_TYPE_LPDDR4);
>  
> -	imx8mp_load_and_start_image_via_tfa();
> +	imx8mp_load_and_start_image_via_tfa(__dtb_z_imx8mp_var_dart_dt8mcustomboard_start);
>  }
>  
>  static __noreturn noinline void variscite_imx8mp_dart_cb_start(void)
> diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
> index 4184748cd858848df3d47a2e01f2bbaa86934202..53cdf52562991932656015a8ebf9f0a311e9ef5d 100644
> --- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
> +++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
> @@ -122,16 +122,6 @@ static __noreturn noinline void zii_imx8mq_dev_start(void)
>  		 */
>  		zii_imx8mq_dev_sram_setup();
>  	}
> -	/*
> -	 * Straight from the power-on we are at EL3, so the following
> -	 * code _will_ load and jump to ATF.
> -	 *
> -	 * However when we are re-executed upon exit from ATF's
> -	 * initialization routine, it is EL2 which means we'll skip
> -	 * loadting ATF blob again
> -	 */
> -	if (current_el() == 3)
> -		imx8mq_load_and_start_image_via_tfa();
>  
>  	system_type = get_system_type();
>  
> @@ -153,6 +143,17 @@ static __noreturn noinline void zii_imx8mq_dev_start(void)
>  		break;
>  	}
>  
> +	/*
> +	 * Straight from the power-on we are at EL3, so the following
> +	 * code _will_ load and jump to ATF.
> +	 *
> +	 * However when we are re-executed upon exit from ATF's
> +	 * initialization routine, it is EL2 which means we'll skip
> +	 * loadting ATF blob again
> +	 */
> +	if (current_el() == 3)
> +		imx8mq_load_and_start_image_via_tfa(fdt);
> +
>  	/*
>  	 * Standard entry we hit once we initialized both DDR and ATF
>  	 */
> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
> index 11fe0334059d104a003ee084c618ff6f0d66ea3c..42ab9e9a23e433c50a1df1739d0163049174e6a6 100644
> --- a/arch/arm/mach-imx/atf.c
> +++ b/arch/arm/mach-imx/atf.c
> @@ -141,12 +141,12 @@ static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32
>  	*bl32_image += sizeof(*hdr);
>  }
>  
> -__noreturn void imx8mm_load_and_start_image_via_tfa(void)
> +__noreturn void imx8mm_load_and_start_image_via_tfa(void *fdt)
>  {
> -	__imx8mm_load_and_start_image_via_tfa((void *)MX8M_ATF_BL33_BASE_ADDR);
> +	__imx8mm_load_and_start_image_via_tfa(fdt, (void *)MX8M_ATF_BL33_BASE_ADDR);
>  }
>  
> -__noreturn void __imx8mm_load_and_start_image_via_tfa(void *bl33)
> +__noreturn void __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33)
>  {
>  	const void *bl31;
>  	size_t bl31_size;
> @@ -215,12 +215,12 @@ void imx8mp_load_bl33(void *bl33)
>  	memcpy(bl33, __image_start, barebox_pbl_size);
>  }
>  
> -__noreturn void imx8mp_load_and_start_image_via_tfa(void)
> +__noreturn void imx8mp_load_and_start_image_via_tfa(void *fdt)
>  {
> -	__imx8mp_load_and_start_image_via_tfa((void *)MX8M_ATF_BL33_BASE_ADDR);
> +	__imx8mp_load_and_start_image_via_tfa(fdt, (void *)MX8M_ATF_BL33_BASE_ADDR);
>  }
>  
> -__noreturn void __imx8mp_load_and_start_image_via_tfa(void *bl33)
> +__noreturn void __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33)
>  {
>  	const void *bl31;
>  	size_t bl31_size;
> @@ -290,12 +290,12 @@ void imx8mn_load_bl33(void *bl33)
>  	memcpy(bl33, __image_start, barebox_pbl_size);
>  }
>  
> -__noreturn void imx8mn_load_and_start_image_via_tfa(void)
> +__noreturn void imx8mn_load_and_start_image_via_tfa(void *fdt)
>  {
> -	__imx8mn_load_and_start_image_via_tfa((void *)MX8M_ATF_BL33_BASE_ADDR);
> +	__imx8mn_load_and_start_image_via_tfa(fdt, (void *)MX8M_ATF_BL33_BASE_ADDR);
>  }
>  
> -__noreturn void __imx8mn_load_and_start_image_via_tfa(void *bl33)
> +__noreturn void __imx8mn_load_and_start_image_via_tfa(void *fdt, void *bl33)
>  {
>  	const void *bl31;
>  	size_t bl31_size;
> @@ -358,12 +358,12 @@ void imx8mq_load_bl33(void *bl33)
>  	memcpy(bl33, __image_start, barebox_pbl_size);
>  }
>  
> -__noreturn void imx8mq_load_and_start_image_via_tfa(void)
> +__noreturn void imx8mq_load_and_start_image_via_tfa(void *fdt)
>  {
> -	__imx8mq_load_and_start_image_via_tfa((void *)MX8M_ATF_BL33_BASE_ADDR);
> +	__imx8mq_load_and_start_image_via_tfa(fdt, (void *)MX8M_ATF_BL33_BASE_ADDR);
>  }
>  
> -__noreturn void __imx8mq_load_and_start_image_via_tfa(void *bl33)
> +__noreturn void __imx8mq_load_and_start_image_via_tfa(void *fdt, void *bl33)
>  {
>  	const void *bl31;
>  	size_t bl31_size;
> diff --git a/include/mach/imx/xload.h b/include/mach/imx/xload.h
> index 396c728547614091fc710de50dc1583c6b6e2a68..749b936cb840373d1a3905620ee8dabdf84e8d32 100644
> --- a/include/mach/imx/xload.h
> +++ b/include/mach/imx/xload.h
> @@ -29,14 +29,14 @@ void imx8mn_load_bl33(void *bl33);
>  void imx8mp_load_bl33(void *bl33);
>  void imx8mq_load_bl33(void *bl33);
>  
> -void __noreturn imx8mm_load_and_start_image_via_tfa(void);
> -void __noreturn imx8mn_load_and_start_image_via_tfa(void);
> -void __noreturn imx8mp_load_and_start_image_via_tfa(void);
> -void __noreturn imx8mq_load_and_start_image_via_tfa(void);
> -void __noreturn __imx8mm_load_and_start_image_via_tfa(void *bl33);
> -void __noreturn __imx8mn_load_and_start_image_via_tfa(void *bl33);
> -void __noreturn __imx8mp_load_and_start_image_via_tfa(void *bl33);
> -void __noreturn __imx8mq_load_and_start_image_via_tfa(void *bl33);
> +void __noreturn imx8mm_load_and_start_image_via_tfa(void *fdt);
> +void __noreturn imx8mn_load_and_start_image_via_tfa(void *fdt);
> +void __noreturn imx8mp_load_and_start_image_via_tfa(void *fdt);
> +void __noreturn imx8mq_load_and_start_image_via_tfa(void *fdt);
> +void __noreturn __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33);
> +void __noreturn __imx8mn_load_and_start_image_via_tfa(void *fdt, void *bl33);
> +void __noreturn __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33);
> +void __noreturn __imx8mq_load_and_start_image_via_tfa(void *fdt, void *bl33);
>  
>  void __noreturn imx93_load_and_start_image_via_tfa(void);
>  void __noreturn __imx93_load_and_start_image_via_tfa(void *bl33);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



