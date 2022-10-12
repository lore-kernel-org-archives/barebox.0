Delivery-date: Wed, 12 Oct 2022 13:08:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiZax-005ztH-A8
	for lore@lore.pengutronix.de; Wed, 12 Oct 2022 13:08:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiZav-0006zy-8c
	for lore@pengutronix.de; Wed, 12 Oct 2022 13:08:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jhTTMBQq6TWVYV4SUWKJKUSnY+Gi2GuqySWpRO6mX5w=; b=K0v4Kd4XvE9lOZggy67IG2pvXs
	iO8nCnxuXtxv5WUKk4Yn9BS1Gy3Z0/hxPkSiXS1OjXUQ6t8lphoQN9P4a3AvKky5PzWffWbRpWw1p
	lC2JiFUMvI1/CxORNDQ6RELdZMoSOQRwx01XqC0VNN03U3wjBIirK+l/QtCxRzuH5BwJOzPOHSmWk
	iPAE3mMX0aRAkMZk6YE5pywURzWowLc3Q31gs8Wjh0AbhygpoJlYDBmQhOHPR1pEjhvZjz2yzoLlg
	CHJBfZN5Of3lGm7rkWZZGGtQl8jmKI4TetxEzbQnMGazlm1Z4N1JlAX6G66FvmCF6ivBjHnZZUurh
	gA73pKzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiZYk-007mgU-OG; Wed, 12 Oct 2022 11:05:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiZYe-007mf7-UH
	for barebox@lists.infradead.org; Wed, 12 Oct 2022 11:05:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1oiZYW-0006ec-A6; Wed, 12 Oct 2022 13:05:44 +0200
Message-ID: <38615520-9d59-f5de-5299-5c59334fbf13@pengutronix.de>
Date: Wed, 12 Oct 2022 13:05:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20221011114927.546670-1-a.fatoum@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20221011114927.546670-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_040553_006699_0909A3F7 
X-CRM114-Status: GOOD (  27.58  )
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
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v3 1/2] ARM: MXS: fix breakage for non-DT boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 10/11/22 13:49, Ahmad Fatoum wrote:
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

Tested-by: Bastian Krause <bst@pengutronix.de>

Regards,
Bastian

> ---
> v2 -> v3:
>    - move variable reference into non-naked noinline function (Sascha)
> v1 -> v2:
>    - Do full relocation instead of get_runtime_offset(). This is
>      required, because GCC[1] generated a pc-relative reference
>      to boarddata as it's in the same translation unit and as
>      such get_runtime_offset() being added was wrong.
>      Instead of relying on compiler whims, we instead set up
>      a full C environment and play it safe.
>    -  s/MACHINE_TYPE/MACH_TYPE/ (Bastian)
> ---
>   arch/arm/boards/chumby_falconwing/lowlevel.c     | 16 +++++++++++++++-
>   arch/arm/boards/crystalfontz-cfa10036/lowlevel.c | 16 +++++++++++++++-
>   arch/arm/boards/freescale-mx23-evk/lowlevel.c    | 16 +++++++++++++++-
>   arch/arm/boards/imx233-olinuxino/lowlevel.c      | 15 ++++++++++++++-
>   arch/arm/boards/karo-tx28/lowlevel.c             | 15 ++++++++++++++-
>   5 files changed, 73 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boards/chumby_falconwing/lowlevel.c b/arch/arm/boards/chumby_falconwing/lowlevel.c
> index 091dd1955260..f0c3143e8d03 100644
> --- a/arch/arm/boards/chumby_falconwing/lowlevel.c
> +++ b/arch/arm/boards/chumby_falconwing/lowlevel.c
> @@ -7,8 +7,22 @@
>   #include <mach/imx23-regs.h>
>   #include <generated/mach-types.h>
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
>   ENTRY_FUNCTION(start_chumby_falconwing, r0, r1, r2)
>   {
>   	arm_cpu_lowlevel_init();
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, (void *)MACH_TYPE_CHUMBY);
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	continue_imx_entry(SZ_64M);
>   }
> diff --git a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
> index 92b42aa89350..8ebea0fedc9c 100644
> --- a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
> +++ b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
> @@ -7,8 +7,22 @@
>   #include <mach/imx28-regs.h>
>   #include <generated/mach-types.h>
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
>   ENTRY_FUNCTION(start_cfa10036, r0, r1, r2)
>   {
>   	arm_cpu_lowlevel_init();
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, (void *)MACH_TYPE_CFA10036);
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	continue_imx_entry(SZ_128M);
>   }
> diff --git a/arch/arm/boards/freescale-mx23-evk/lowlevel.c b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
> index 62560bbff733..319e9784a4fd 100644
> --- a/arch/arm/boards/freescale-mx23-evk/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
> @@ -7,8 +7,22 @@
>   #include <asm/barebox-arm.h>
>   #include <mach/imx23-regs.h>
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
>   ENTRY_FUNCTION(start_imx23_evk, r0, r1, r2)
>   {
>   	arm_cpu_lowlevel_init();
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_32M, (void *)MACH_TYPE_MX23EVK);
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	continue_imx_entry(SZ_32M);
>   }
> diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
> index 71fc379f0487..6e80e6889b51 100644
> --- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
> +++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
> @@ -11,9 +11,22 @@
>   #include <mach/iomux.h>
>   #include <generated/mach-types.h>
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
>   ENTRY_FUNCTION(start_barebox_olinuxino_imx23, r0, r1, r2)
>   {
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, (void *)MACH_TYPE_IMX233_OLINUXINO);
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	continue_imx_entry(SZ_64M);
>   }
>   
>   static const uint32_t pad_setup[] = {
> diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
> index 28d96f3e1a5f..9e90e40926e8 100644
> --- a/arch/arm/boards/karo-tx28/lowlevel.c
> +++ b/arch/arm/boards/karo-tx28/lowlevel.c
> @@ -15,9 +15,22 @@
>   #include <stmp-device.h>
>   #include <generated/mach-types.h>
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
>   ENTRY_FUNCTION(start_barebox_karo_tx28, r0, r1, r2)
>   {
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, (void *)MACH_TYPE_TX28);
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	continue_imx_entry(SZ_128M);
>   }
>   
>   static const uint32_t iomux_pads[] = {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



