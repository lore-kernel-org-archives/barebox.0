Delivery-date: Mon, 10 Oct 2022 11:55:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohpVd-003DUW-LX
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 11:55:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohpVb-00058f-E5
	for lore@pengutronix.de; Mon, 10 Oct 2022 11:55:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W1YOUcAPagU0wSKXYy3Z0VyZ0J4HNPStqLRNdUpTH6s=; b=jRRySQSKfcBSMB3NryCs3pKWnG
	DtBxOOb8bYzYLn3bo85lfdhg7q02XNhXqNY0aPANiW2UjShX1G3gmg7bExpV+4bo8CDRDr80JQid8
	BsLA9FZaT+/Ys2dOL7EgntZ8JVVWFqttjjKJGzSm2bB1tQVynctRC1TXB41UWj4Dy0Z7XkE4Rsjvo
	pao7ziBgihJvKpt1HpRMGmX8zPdR/T2dAQx37qkVsd0mJ/JHgPvcMqfZbxT/wOXXjuWc+zZnoWMFP
	xIKJFM1L3JmDlDi5knUBjU8DPTEP/nUecXxACeUe+7ilgK8ExZMkAsV7dklNuR5hhW/OIXPL9Tk9c
	XM9ynJ4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohpTp-000GxO-7p; Mon, 10 Oct 2022 09:53:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohpTi-000GwR-FJ
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 09:53:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1ohpTc-0004zy-6w; Mon, 10 Oct 2022 11:53:36 +0200
Message-ID: <cef33a0d-c2d3-d954-ed74-320cfbba6500@pengutronix.de>
Date: Mon, 10 Oct 2022 11:53:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: lst@pengutronix.de
References: <20221010061235.2084562-1-a.fatoum@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20221010061235.2084562-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_025342_541332_61130974 
X-CRM114-Status: GOOD (  27.01  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFT PATCH master 1/2] ARM: MXS: fix breakage for non-DT boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 10/10/22 08:12, Ahmad Fatoum wrote:
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
> Searching for MACHINE_TYPE in arch/arm/boards shows 5 boards to be
> affected in-tree, which are all fixed with this commit.

No matches for MACHINE_TYPE in arch/arm/boards. The search string should
probably be something like ".machine =", right?

> 
> Fixes: 390bc7834ffc ("ARM: start: check for machine type last")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> @Bastian, could you give this a test on your i.MX23 board?

This does not work, yet. The board code is not executed.

Regards,
Bastian

> ---
>   arch/arm/boards/chumby_falconwing/lowlevel.c     | 10 +++++++++-
>   arch/arm/boards/crystalfontz-cfa10036/lowlevel.c | 10 +++++++++-
>   arch/arm/boards/freescale-mx23-evk/lowlevel.c    | 10 +++++++++-
>   arch/arm/boards/imx233-olinuxino/lowlevel.c      | 10 +++++++++-
>   arch/arm/boards/karo-tx28/lowlevel.c             | 10 +++++++++-
>   5 files changed, 45 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boards/chumby_falconwing/lowlevel.c b/arch/arm/boards/chumby_falconwing/lowlevel.c
> index 091dd1955260..367f348ee829 100644
> --- a/arch/arm/boards/chumby_falconwing/lowlevel.c
> +++ b/arch/arm/boards/chumby_falconwing/lowlevel.c
> @@ -7,8 +7,16 @@
>   #include <mach/imx23-regs.h>
>   #include <generated/mach-types.h>
>   
> +static struct barebox_arm_boarddata boarddata = {
> +	.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
> +	.machine = MACH_TYPE_CHUMBY,
> +};
> +
>   ENTRY_FUNCTION(start_chumby_falconwing, r0, r1, r2)
>   {
> +	void *bd = &boarddata;
> +
>   	arm_cpu_lowlevel_init();
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, (void *)MACH_TYPE_CHUMBY);
> +	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M,
> +			  bd + get_runtime_offset());
>   }
> diff --git a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
> index 92b42aa89350..794cbd89a13a 100644
> --- a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
> +++ b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
> @@ -7,8 +7,16 @@
>   #include <mach/imx28-regs.h>
>   #include <generated/mach-types.h>
>   
> +static struct barebox_arm_boarddata boarddata = {
> +	.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
> +	.machine = MACH_TYPE_CFA10036,
> +};
> +
>   ENTRY_FUNCTION(start_cfa10036, r0, r1, r2)
>   {
> +	void *bd = &boarddata;
> +
>   	arm_cpu_lowlevel_init();
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, (void *)MACH_TYPE_CFA10036);
> +	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M,
> +			  bd + get_runtime_offset());
>   }
> diff --git a/arch/arm/boards/freescale-mx23-evk/lowlevel.c b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
> index 62560bbff733..c795019d8b76 100644
> --- a/arch/arm/boards/freescale-mx23-evk/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
> @@ -7,8 +7,16 @@
>   #include <asm/barebox-arm.h>
>   #include <mach/imx23-regs.h>
>   
> +static struct barebox_arm_boarddata boarddata = {
> +	.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
> +	.machine = MACH_TYPE_MX23EVK,
> +};
> +
>   ENTRY_FUNCTION(start_imx23_evk, r0, r1, r2)
>   {
> +	void *bd = &boarddata;
> +
>   	arm_cpu_lowlevel_init();
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_32M, (void *)MACH_TYPE_MX23EVK);
> +	barebox_arm_entry(IMX_MEMORY_BASE, SZ_32M,
> +			  bd + get_runtime_offset());
>   }
> diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
> index 71fc379f0487..9dd45e78062b 100644
> --- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
> +++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
> @@ -11,9 +11,17 @@
>   #include <mach/iomux.h>
>   #include <generated/mach-types.h>
>   
> +static struct barebox_arm_boarddata boarddata = {
> +	.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
> +	.machine = MACH_TYPE_IMX233_OLINUXINO,
> +};
> +
>   ENTRY_FUNCTION(start_barebox_olinuxino_imx23, r0, r1, r2)
>   {
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, (void *)MACH_TYPE_IMX233_OLINUXINO);
> +	void *bd = &boarddata;
> +
> +	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M,
> +			  bd + get_runtime_offset());
>   }
>   
>   static const uint32_t pad_setup[] = {
> diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
> index 28d96f3e1a5f..868218f83b86 100644
> --- a/arch/arm/boards/karo-tx28/lowlevel.c
> +++ b/arch/arm/boards/karo-tx28/lowlevel.c
> @@ -15,9 +15,17 @@
>   #include <stmp-device.h>
>   #include <generated/mach-types.h>
>   
> +static struct barebox_arm_boarddata boarddata = {
> +	.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
> +	.machine = MACH_TYPE_TX28,
> +};
> +
>   ENTRY_FUNCTION(start_barebox_karo_tx28, r0, r1, r2)
>   {
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, (void *)MACH_TYPE_TX28);
> +	void *bd = &boarddata;
> +
> +	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M,
> +			  bd + get_runtime_offset());
>   }
>   
>   static const uint32_t iomux_pads[] = {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



