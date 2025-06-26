Delivery-date: Thu, 26 Jun 2025 19:24:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUqKn-00BLG9-1Z
	for lore@lore.pengutronix.de;
	Thu, 26 Jun 2025 19:24:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUqKm-0000KH-Ny
	for lore@pengutronix.de; Thu, 26 Jun 2025 19:24:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2Ljj0LsYRTHo3tlzWNbJU4oMA8rPnKRNQclLLQONo7s=; b=ki9iCfrBJ1pSzHryp1Yg3v4wPV
	8Q9eqQk+MqrufHuGd2dYqyhQJWbX+jPrUMs9oWMv57yZXwjn/gabxfeBtgK7S1CfQ4ijb3G8fP4Ps
	4yCzMVzqrCE58Dmuq1BoTk+GYYfmiE+G6s5zRJnnRiFMceCOfk1FxAkcuoax/Yz9ZWnxsp9VxHru/
	Ro//tYB13lI8zwAwdBsYck9LvyaUKHjbNJQWBhmeYofbdobKv9N9D1RPi8tCo4/r5cab8N+fENCNi
	LIB/FDfkl7qrBq9tj20IKNRJPqccn0hkl8511g1bv/KHsqxevGiOffNTG0CPMgRR2zGidxWKH1MtW
	/1K+yqAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUqKT-0000000CMgh-1TpB;
	Thu, 26 Jun 2025 17:24:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUofS-0000000C9Ru-2YKv
	for barebox@lists.infradead.org;
	Thu, 26 Jun 2025 15:37:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uUofP-0007vg-WB; Thu, 26 Jun 2025 17:37:36 +0200
Message-ID: <70b41f3b-4329-48f7-827f-1924e002ab04@pengutronix.de>
Date: Thu, 26 Jun 2025 17:37:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250626140329.418033-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250626140329.418033-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_083738_652158_B0C3C5ED 
X-CRM114-Status: GOOD (  30.25  )
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
Subject: Re: [PATCH 1/2] ARM: i.MX: tqma6ulx: fix barebox chainloading with
 OP-TEE enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 6/26/25 16:03, Sascha Hauer wrote:
> Chainloading barebox when OP-TEE is enabled has multiple bugs, fix them.
> 
> When barebox starts we have to guess if we have to start OP-TEE or not.
> As we can't detect the exception level on ARMv7 we do this by checking
> if a first stage loader has passed us a device tree.
> 
> First of all the device tree is passed in r2, not in r0, so fix the
> register we use.
> 
> Then we have to check if r2 is within the SDRAM. We check against
> MX6_MMDC_P0_BASE_ADDR which is the base of the SDRAM controller. Use the
> base address of the SDRAM instead.
> 
> Finally we manipulate the TZASC which we are obviously not allowed in
> EL1, so move the manipulation to the code which is only executed in EL2.

EL1/EL2 are ARMv8-specific.

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/tqma6ulx/lowlevel.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boards/tqma6ulx/lowlevel.c b/arch/arm/boards/tqma6ulx/lowlevel.c
> index 5fd997d2ec..ce330c37af 100644
> --- a/arch/arm/boards/tqma6ulx/lowlevel.c
> +++ b/arch/arm/boards/tqma6ulx/lowlevel.c
> @@ -66,7 +66,7 @@ static void *read_eeprom(void)
>  	return fdt;
>  }
>  
> -static void noinline start_mba6ulx(u32 r0)
> +static void noinline start_mba6ulx(u32 r2)
>  {
>  	void *fdt;
>  	int tee_size;
> @@ -76,16 +76,15 @@ static void noinline start_mba6ulx(u32 r0)
>  
>  	fdt = read_eeprom();
>  
> -	/* Enable normal/secure r/w for TZC380 region0 */
> -	writel(0xf0000000, 0x021D0108);
> -
>  	/*
>  	 * Chainloading barebox will pass a device tree within the RAM in r0,
>  	 * skip OP-TEE early loading in this case
>  	 */
>  	if (IS_ENABLED(CONFIG_FIRMWARE_TQMA6UL_OPTEE) &&
> -	    !(r0 > MX6_MMDC_P0_BASE_ADDR &&
> -	      r0 < MX6_MMDC_P0_BASE_ADDR + SZ_256M)) {
> +	    !(r2 > MX6_MMDC_PORT0_BASE_ADDR && r2 < MX6_MMDC_PORT0_BASE_ADDR + SZ_256M)) {
> +		/* Enable normal/secure r/w for TZC380 region0 */
> +		writel(0xf0000000, 0x021D0108);

I think this is problematic:

  - robustness-wise: We have no guarantee that there isn't some lesser
    used BootROM code path that happens to leave a suitable DRAM
    look-alike address that would trick us here.

  - security wise, even if we check for FDT header if r2 points into
    DRAM, a compromised OS could spray RAM with FDT magic,
    trigger a warm reset that has the BootROM produce a DRAM lookalike
    pointer in r2 and then OP-TEE loading is skipped and the kernel
    starts in the highest privilege level.

To address this, we need some way to set a sticky bit that's cleared
only on reset. One way, would be to set up an IVT and try to access the
L2 cache controller while data_abort_mask() is active, like
imx6_cannot_write_l2x0 is doing.

Cheers,
Ahmad

> +
>  		get_builtin_firmware(mba6ul_optee_bin, &tee, &tee_size);
>  
>  		memset((void *)OPTEE_OVERLAY_LOCATION, 0, 0x1000);
> @@ -112,5 +111,5 @@ ENTRY_FUNCTION(start_imx6ul_mba6ulx, r0, r1, r2)
>  	setup_c();
>  	barrier();
>  
> -	start_mba6ulx(r0);
> +	start_mba6ulx(r2);
>  }

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



