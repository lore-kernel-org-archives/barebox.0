Delivery-date: Wed, 12 Oct 2022 14:20:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiaim-0064wO-Cb
	for lore@lore.pengutronix.de; Wed, 12 Oct 2022 14:20:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiaik-0008CB-5Z
	for lore@pengutronix.de; Wed, 12 Oct 2022 14:20:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bpL5nYDI1lNW2hyJ8yJxMvDz1tDtZ1+YA8SGc0JBZGg=; b=MAx17CZdwSpW+HO1XWSiq5epCT
	36r23T5bVJ6FoRXeCfttLKLWMOLpijS3Gkqn/k1Gv7t79Fm4F386A5lRJpKaSidGXLg/eoQk3eyZI
	e1Id55vuuTyn49zxA3uQNDc0IvfuQaOo3a75kYUzHHGg9rkLtoNItdWBkEjHI6c8yPjz7COWY3l0u
	v9RrZhUAhM1A7w5HWuPbdaFRtCBX/Wb2ZqjkO2ak/GQYLOdIRdrQjZlINkYYKamB2HAun3DxK64Oc
	t/Fd5pZ5xPm2tWNKA1FLl1/rdr0d3JffOFoB9bty9Khi/3IAxfEERcY9bW1GvBsaoRYjMc+qXDAd4
	aLhJp1rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiagq-007xV3-JR; Wed, 12 Oct 2022 12:18:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiagc-007xRE-LJ
	for barebox@lists.infradead.org; Wed, 12 Oct 2022 12:18:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oiagX-0007vU-AV; Wed, 12 Oct 2022 14:18:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oiagX-00058k-3L; Wed, 12 Oct 2022 14:18:05 +0200
Date: Wed, 12 Oct 2022 14:18:05 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, bst@pengutronix.de
Message-ID: <20221012121805.GA6702@pengutronix.de>
References: <20221011114927.546670-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221011114927.546670-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_051810_903609_E963E0E4 
X-CRM114-Status: GOOD (  30.27  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v3 1/2] ARM: MXS: fix breakage for non-DT boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Oct 11, 2022 at 01:49:26PM +0200, Ahmad Fatoum wrote:
> boarddata, the third argument passed from barebox PBL to barebox proper,
> is usually either a pointer to an optionally compressed flattened device tree
> or a machien type integer casted to a pointer.
> 
> In order to support device trees located in the first 8192 bytes of
> address space, barebox has been trying to dereference boarddata, before
> falling back to treating it as integer.
> 
> This resulted in breakage as boarddata may be an integer not divisible
> by 4 and thus an unaligned exception would occur.
> 
> The already existing barebox_arm_boarddata mechanism sidesteps this
> issue: With it, the machine type integer is not passed as is, but the
> address of a suitably aligned structure that contains it is passed
> instead.
> 
> Searching for MACH_TYPE in arch/arm/boards shows 5 boards to be
> affected in-tree, which are all fixed with this commit.
> 
> Fixes: 390bc7834ffc ("ARM: start: check for machine type last")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied, thanks

Sascha

> v2 -> v3:
>   - move variable reference into non-naked noinline function (Sascha)
> v1 -> v2:
>   - Do full relocation instead of get_runtime_offset(). This is
>     required, because GCC[1] generated a pc-relative reference
>     to boarddata as it's in the same translation unit and as
>     such get_runtime_offset() being added was wrong.
>     Instead of relying on compiler whims, we instead set up
>     a full C environment and play it safe.
>   -  s/MACHINE_TYPE/MACH_TYPE/ (Bastian)
> ---
>  arch/arm/boards/chumby_falconwing/lowlevel.c     | 16 +++++++++++++++-
>  arch/arm/boards/crystalfontz-cfa10036/lowlevel.c | 16 +++++++++++++++-
>  arch/arm/boards/freescale-mx23-evk/lowlevel.c    | 16 +++++++++++++++-
>  arch/arm/boards/imx233-olinuxino/lowlevel.c      | 15 ++++++++++++++-
>  arch/arm/boards/karo-tx28/lowlevel.c             | 15 ++++++++++++++-
>  5 files changed, 73 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boards/chumby_falconwing/lowlevel.c b/arch/arm/boards/chumby_falconwing/lowlevel.c
> index 091dd1955260..f0c3143e8d03 100644
> --- a/arch/arm/boards/chumby_falconwing/lowlevel.c
> +++ b/arch/arm/boards/chumby_falconwing/lowlevel.c
> @@ -7,8 +7,22 @@
>  #include <mach/imx23-regs.h>
>  #include <generated/mach-types.h>
>  
> +static noinline void continue_imx_entry(size_t size)
> +{
> +	static struct barebox_arm_boarddata boarddata = {
> +		.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
> +		.machine = MACH_TYPE_CHUMBY,
> +	};
> +
> +	barebox_arm_entry(IMX_MEMORY_BASE, size, &boarddata);
> +}
> +
>  ENTRY_FUNCTION(start_chumby_falconwing, r0, r1, r2)
>  {
>  	arm_cpu_lowlevel_init();
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, (void *)MACH_TYPE_CHUMBY);
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	continue_imx_entry(SZ_64M);
>  }
> diff --git a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
> index 92b42aa89350..8ebea0fedc9c 100644
> --- a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
> +++ b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
> @@ -7,8 +7,22 @@
>  #include <mach/imx28-regs.h>
>  #include <generated/mach-types.h>
>  
> +static noinline void continue_imx_entry(size_t size)
> +{
> +	static struct barebox_arm_boarddata boarddata = {
> +		.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
> +		.machine = MACH_TYPE_CFA10036,
> +	};
> +
> +	barebox_arm_entry(IMX_MEMORY_BASE, size, &boarddata);
> +}
> +
>  ENTRY_FUNCTION(start_cfa10036, r0, r1, r2)
>  {
>  	arm_cpu_lowlevel_init();
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, (void *)MACH_TYPE_CFA10036);
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	continue_imx_entry(SZ_128M);
>  }
> diff --git a/arch/arm/boards/freescale-mx23-evk/lowlevel.c b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
> index 62560bbff733..319e9784a4fd 100644
> --- a/arch/arm/boards/freescale-mx23-evk/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
> @@ -7,8 +7,22 @@
>  #include <asm/barebox-arm.h>
>  #include <mach/imx23-regs.h>
>  
> +static noinline void continue_imx_entry(size_t size)
> +{
> +	static struct barebox_arm_boarddata boarddata = {
> +		.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
> +		.machine = MACH_TYPE_MX23EVK,
> +	};
> +
> +	barebox_arm_entry(IMX_MEMORY_BASE, size, &boarddata);
> +}
> +
>  ENTRY_FUNCTION(start_imx23_evk, r0, r1, r2)
>  {
>  	arm_cpu_lowlevel_init();
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_32M, (void *)MACH_TYPE_MX23EVK);
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	continue_imx_entry(SZ_32M);
>  }
> diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
> index 71fc379f0487..6e80e6889b51 100644
> --- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
> +++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
> @@ -11,9 +11,22 @@
>  #include <mach/iomux.h>
>  #include <generated/mach-types.h>
>  
> +static noinline void continue_imx_entry(size_t size)
> +{
> +	static struct barebox_arm_boarddata boarddata = {
> +		.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
> +		.machine = MACH_TYPE_IMX233_OLINUXINO,
> +	};
> +
> +	barebox_arm_entry(IMX_MEMORY_BASE, size, &boarddata);
> +}
> +
>  ENTRY_FUNCTION(start_barebox_olinuxino_imx23, r0, r1, r2)
>  {
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, (void *)MACH_TYPE_IMX233_OLINUXINO);
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	continue_imx_entry(SZ_64M);
>  }
>  
>  static const uint32_t pad_setup[] = {
> diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
> index 28d96f3e1a5f..9e90e40926e8 100644
> --- a/arch/arm/boards/karo-tx28/lowlevel.c
> +++ b/arch/arm/boards/karo-tx28/lowlevel.c
> @@ -15,9 +15,22 @@
>  #include <stmp-device.h>
>  #include <generated/mach-types.h>
>  
> +static noinline void continue_imx_entry(size_t size)
> +{
> +	static struct barebox_arm_boarddata boarddata = {
> +		.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
> +		.machine = MACH_TYPE_TX28,
> +	};
> +
> +	barebox_arm_entry(IMX_MEMORY_BASE, size, &boarddata);
> +}
> +
>  ENTRY_FUNCTION(start_barebox_karo_tx28, r0, r1, r2)
>  {
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, (void *)MACH_TYPE_TX28);
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	continue_imx_entry(SZ_128M);
>  }
>  
>  static const uint32_t iomux_pads[] = {
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


