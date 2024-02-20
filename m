Delivery-date: Tue, 20 Feb 2024 10:26:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMOT-00FqNA-0k
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 10:26:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMOQ-00019J-IJ
	for lore@pengutronix.de; Tue, 20 Feb 2024 10:26:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=07ShBkSvo8pvT6udtjKYIFjKR8IY/gbJA4VrEjMu4bc=; b=grYSj4gI4ceEkVX8pPOUonz0HL
	JxAwi7/quP0hDYUJ9rUTFx1gVoQxfj3YgUNjB7nB/EXs//9BNxQpc6N17Cahjx8TjKysD6ebkmAre
	nitezqfsfl++7ojweKSu7HUGogM2xLI6TZC7pNtXBi9iKEmrevJO/LISK8OnQnLPJxXM74+z7Bo+C
	BT/s3Gj/AIQiyQgaBQrO0MnM9bYgZVho/H+lSyFVWeQWI6yisv3jZI5z2fg2s6tWkWkY7+z/ZoUb2
	Xm+5DN/tOfbmS+dLiVS1bqvWRlmaYBKWzauvT/j6qpZaBzLra+z1faPbOODLe8/I2cbYv+ICxg9wy
	FqQi3f8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMNi-0000000DxaW-0vWQ;
	Tue, 20 Feb 2024 09:25:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMNf-0000000DxZA-0rf0
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 09:25:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMNd-0000yY-U3; Tue, 20 Feb 2024 10:25:37 +0100
Message-ID: <fd232d89-e78f-4a51-b5f4-6778ca378c13@pengutronix.de>
Date: Tue, 20 Feb 2024 10:25:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
 <20240215163009.2172795-12-a.fatoum@pengutronix.de>
 <20240215222928.GA1462714@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240215222928.GA1462714@ravnborg.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_012539_281149_C5AEA142 
X-CRM114-Status: GOOD (  17.59  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 11/15] ARM: at91: skov-arm9cpu: Add SD-Card xload
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sam,


On 15.02.24 23:29, Sam Ravnborg wrote:
>> +static noinline void continue_skov_arm9cpu_xload_mmc(void)
>> +{
>> +	sam9263_lowlevel_init(0x2031B004, 0x10053001);
> Can this be made more verbose using the existing defines?
> The above hex codes are not friendly to read, and using the original
> defines used in the previous patch would help a lot on the readability.

I will use the defines for v2. I am not in favor or going back to define
it as a struct though as it make sit needlessly cumbersome to port board
support from at91bootstrap, where the straight hex values are used.

Thanks,
Ahmad

> 
> 	Sam
> 
>> +	sam92_dbgu_setup_ll(MASTER_CLOCK);
>> +
>> +	sam92_udelay_init(MASTER_CLOCK);
>> +	sam9263_sdramc_init();
>> +	sam9263_atmci_start_image(1, MASTER_CLOCK, 0);
>> +}
>> +
>> +SAM9_ENTRY_FUNCTION(start_skov_arm9cpu_xload_mmc)
>> +{
>> +	/* Configure system so we are less constrained */
>> +	arm_cpu_lowlevel_init();
>> +	relocate_to_current_adr();
>> +	setup_c();
>> +
>> +	continue_skov_arm9cpu_xload_mmc();
>>  }
>>  
>>  extern char __dtb_at91_skov_arm9cpu_start[];
>> @@ -118,10 +113,12 @@ AT91_ENTRY_FUNCTION(start_skov_arm9cpu, r0, r1, r2)
>>  {
>>  	void *fdt;
>>  
>> +	/*
>> +	 * We may be running after at91bootstrap, so redo the initialization to
>> +	 * be sure, everything is as we expect it.
>> +	 */
>>  	arm_cpu_lowlevel_init();
>>  
>> -	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE);
>>  	fdt = __dtb_at91_skov_arm9cpu_start + get_runtime_offset();
>> -
>> -	skov_arm9cpu_init(fdt);
>> +	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9263_get_sdram_size(0), fdt);
>>  }
>> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
>> index 69edf3dbdc4e..0e89916c9c32 100644
>> --- a/arch/arm/mach-at91/Kconfig
>> +++ b/arch/arm/mach-at91/Kconfig
>> @@ -603,9 +603,7 @@ config MACH_SKOV_ARM9CPU
>>  	select SOC_AT91SAM9263
>>  	select OFDEVICE
>>  	select COMMON_CLK_OF_PROVIDER
>> -	select HAVE_AT91_USB_CLK
>> -	select HAVE_AT91_BOOTSTRAP
>> -	select AT91SAM926X_BOARD_INIT
>> +	select MCI_ATMEL_PBL
>>  	help
>>  	  Say y here if you are using SKOV's ARM9 CPU board
>>  
>> diff --git a/images/Makefile.at91 b/images/Makefile.at91
>> index 523dc5f499f0..06f8936893ae 100644
>> --- a/images/Makefile.at91
>> +++ b/images/Makefile.at91
>> @@ -56,9 +56,13 @@ FILE_barebox-groboards-sama5d27-giantboard-xload-mmc.img = start_sama5d27_giantb
>>  MAX_PBL_IMAGE_SIZE_start_sama5d27_giantboard_xload_mmc = 0xffff
>>  image-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += barebox-groboards-sama5d27-giantboard-xload-mmc.img
>>  
>> +pblb-$(CONFIG_MACH_SKOV_ARM9CPU) += start_skov_arm9cpu_xload_mmc
>> +FILE_barebox-skov-arm9cpu-xload-mmc.img = start_skov_arm9cpu_xload_mmc.pblb
>> +MAX_PBL_MEMORY_SIZE_start_skov_arm9cpu = 0x12000
>> +image-$(CONFIG_MACH_SKOV_ARM9CPU) += barebox-skov-arm9cpu-xload-mmc.img
>> +
>>  pblb-$(CONFIG_MACH_SKOV_ARM9CPU) += start_skov_arm9cpu
>>  FILE_barebox-skov-arm9cpu.img = start_skov_arm9cpu.pblb
>> -MAX_PBL_MEMORY_SIZE_start_skov_arm9cpu = 0x12000
>>  image-$(CONFIG_MACH_SKOV_ARM9CPU) += barebox-skov-arm9cpu.img
>>  
>>  pblb-$(CONFIG_MACH_SAMA5D4_WIFX) += start_sama5d4_wifx_l1
>> -- 
>> 2.39.2
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



