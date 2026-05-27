Delivery-date: Wed, 27 May 2026 14:23:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSDI2-004O1w-3D
	for lore@lore.pengutronix.de;
	Wed, 27 May 2026 14:23:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSDI1-0002Jj-Fh
	for lore@pengutronix.de; Wed, 27 May 2026 14:23:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qkQEzGU3txvOvm9Jax/jlBfcPD7nGe0XaMDaxUXeeUY=; b=j7v7yp8oVQvKlJ
	JmNL1M+5Ia7CshAKzUxmqIiqxGDsWK4d82cAzpEiTO6bffK+fGK+wW2ngierbUbgPUmjYaTdTeyvY
	QvGtEO2AYcPIk/mnUXD4AwMzRWP2GS63IQ7uI2TSq9bcoJsg7znp/HoBpI5LHBShLjUqCOrV3QP3U
	AEbjr9sP5ZP0bpRl+wkFwuZMoTGVQuCJA3/xd1XDI92fal/VB8KP5y7HjVz/S4NCA0URBtwu9lUAE
	OTJokNfhALZaZE73cbutq9HRmFQ+kpGkNYEu0krEfd23pg60aL5P11FnN5Mpl8FgdPBPa1d7dxAST
	Ktmo2Kb8H0B518vqNWRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSDH0-000000044uS-3yJP;
	Wed, 27 May 2026 12:22:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSDGu-000000044t9-3qjq
	for barebox@lists.infradead.org;
	Wed, 27 May 2026 12:22:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSDGt-00028m-82; Wed, 27 May 2026 14:22:03 +0200
Message-ID: <30ef7c90-998f-451a-8113-30883514e084@pengutronix.de>
Date: Wed, 27 May 2026 14:22:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>
References: <CAP1tNvQh2dCn9_+dwiOzRgCeNFT6AC9n4rJNC39AB2tNYC_W-w@mail.gmail.com>
 <E1wPgnR-0000000264u-3MOI@pty.whiteo.stw.pengutronix.de>
 <CAP1tNvR-jMbSk7e=TvQU_8COWAoYWsz=P5Pa58g86hKi8=_GYw@mail.gmail.com>
 <4637a71c-3a3d-4489-82a6-804701a655b8@pengutronix.de>
 <CAP1tNvQxK74rPXgrFqXjMAYpTr0hQNjVYOe+HTPOaGTjMCzn2A@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <CAP1tNvQxK74rPXgrFqXjMAYpTr0hQNjVYOe+HTPOaGTjMCzn2A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_052205_263399_4C859D53 
X-CRM114-Status: GOOD (  14.21  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: v2026.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Alexander,

On 5/25/26 8:06 PM, Alexander Shiyan wrote:
> Hello Ahmad.
> 
> I typically use the master branch for my validation work.
> This is also why I haven't been able to send the extlinux patch v3 yet
> - the necessary code changes aren't currently in master.
> If you could provide the required commits as a set that can be
> cherry-picked directly onto master, I'd be happy to run a full test.

v2 is based off master. You can apply it with:

b4 shazam 'https://lore.kernel.org/barebox/20260527121649.3365172-1-a.fatoum@pengutronix.de/T/#t'

In case you didn't know, b4 shazam -H automatically tries to find a suitable
base and then applies the patches onto it and points FETCH_HEAD there.

Cheers,
Ahmad

> 
> Thanks!
> 
> пт, 22 мая 2026 г. в 14:00, Ahmad Fatoum <a.fatoum@pengutronix.de>:
>>
>> Hello Alexander,
>>
>> On 5/20/26 3:27 PM, Alexander Shiyan wrote:
>>> Hello Sascha.
>>>
>>> Yes, that's how it works.
>>
>> Can you also give this here a test:
>> https://lore.barebox.org/barebox/20260522105852.2681680-1-a.fatoum@pengutronix.de/
>>
>> Thanks!
>> Ahmad
>>
>>>
>>> The new version adds a different trap, but it's most likely a board
>>> issue; I'll investigate.
>>>
>>> Thanks!
>>>
>>>> rockchip-dmc: rockchip_sdram_size(reg2=1000ea01, reg3=30000031)
>>> rockchip-dmc: rank 2 cs0_col 10 cs1_col 10 bk 3 cs0_row 17 cs1_row 17
>>> bw 2 row_3_4 0
>>> rockchip-dmc: rk3568_ram_sizes() = 8589934592
>>> uncompress.c: memory at 0x00a00000, size 0xef600000
>>> endmem                = 0xf0000000
>>> arm_mem_optee         = 0xee000000+0x02000000
>>> arm_mem_scratch       = 0xedff8000+0x00008000
>>> arm_mem_stack         = 0xedff0000+0x00008000
>>> arm_mem_ttb           = 0xedf80000+0x00040000
>>> arm_mem_barebox_image = 0xedc00000+0x00400000
>>> arm_mem_early_malloc  = 0xedbe0000+0x00020000
>>> membase               = 0x00a00000+0xef600000
>>> mmu: enabling MMU, ttb @ 0xedf80000
>>> mmu: __arch_remap_range: 0x00000000+0x8000000000 type UNCACHED
>>> mmu: __arch_remap_range: 0x8000000000+0x8000000000 type UNCACHED
>>> mmu: __arch_remap_range: 0x00a00000+0xef600000 type RWX
>>> mmu: __arch_remap_range: 0x08400000+0x2000000 type FAULT
>>> mmu: __arch_remap_range: 0x00b00000+0x60000 type RWX
>>> uncompress.c: uncompressing barebox ELF at 0x0000000000b60680 (size
>>> 0x000737a4) to 0xedc00000 (uncompressed size: 0x001bb598)
>>> uncompress.c: relocating ELF in place
>>> In-place ELF relocation: text_vaddr=0x0, text_offset=0x10000,
>>> load_addr=00000000edc00000, offset=0xedc10000
>>> In-place ELF relocation completed successfully
>>> pbl-mmu: Setting up MMU from ELF segments
>>> pbl-mmu: Segment 0 not page-aligned, rounding
>>> pbl-mmu: Segment 0: addr=0xedc10000 size=0x000b6000 flags=0x5 [R-X] ->
>>> mmu_flags=0x3
>>> mmu: __arch_remap_range: 0xedc10000+0xb6000 type CODE
>>> pbl-mmu: Segment 1 not page-aligned, rounding
>>> pbl-mmu: Segment 1: addr=0xedcc6000 size=0x000b9000 flags=0x4 [R--] ->
>>> mmu_flags=0x4
>>> mmu: __arch_remap_range: 0xedcc6000+0xb9000 type RO
>>> pbl-mmu: Segment 3 not page-aligned, rounding
>>> pbl-mmu: Segment 3: addr=0xedd7f000 size=0x00047000 flags=0x6 [RW-] ->
>>> mmu_flags=0x1
>>> mmu: __arch_remap_range: 0xedd7f000+0x47000 type CACHED
>>> pbl-mmu: MMU setup from ELF complete
>>> uncompress.c: jumping to ELF entry point at 0x00000000edcc2c9c
>>> start.c: memory at 0x00a00000, size 0xef600000
>>> start.c: initializing malloc pool at 0xadc10000 (size 0x40000000)
>>> start.c: starting barebox...
>>> initcall-> command_slice_init+0x0/0x3c
>>> initcall-> globalvar_init+0x0/0x8c
>>> initcall-> register_bus_class+0x0/0x20
>>> initcall-> platform_init+0x0/0x1c
>>> initcall-> mdio_bus_init+0x0/0x1c
>>> initcall-> register_mii_class+0x0/0x20
>>> initcall-> usb_bus_init+0x0/0x1c
>>> initcall-> otg_bus_init+0x0/0x1c
>>> initcall-> register_udc_class+0x0/0x20
>>> initcall-> spi_bus_init+0x0/0x1c
>>> initcall-> i2c_bus_init+0x0/0x1c
>>> initcall-> register_i2c_adapter_class+0x0/0x20
>>> initcall-> register_mmc_class+0x0/0x20
>>> initcall-> register_fb_class+0x0/0x20
>>> initcall-> register_backlight_class+0x0/0x20
>>> initcall-> nvmem_init+0x0/0x14
>>> initcall-> register_nvmem_class+0x0/0x20
>>> initcall-> register_watchdog_class+0x0/0x20
>>> initcall-> gpio_desc_alloc+0x0/0x24
>>> initcall-> pci_bus_init+0x0/0x1c
>>> initcall-> scmi_bus_driver_init+0x0/0x40
>>> initcall-> register_phy_class+0x0/0x20
>>> initcall-> register_eth_class+0x0/0x20
>>> initcall-> fs_bus_init+0x0/0x1c
>>> initcall-> defaultenv_init+0x0/0x6c
>>> initcall-> console_common_init+0x0/0xac
>>> initcall-> partitions_init+0x0/0x50
>>> initcall-> genpd_bus_init+0x0/0x1c
>>> initcall-> rk_clk_gate_link_driver_register+0x0/0x1c
>>> initcall-> clk_rk3568_driver_register+0x0/0x1c
>>> initcall-> clk_rk3588_driver_register+0x0/0x1c
>>> initcall-> scmi_clocks_driver_register+0x0/0x1c
>>> initcall-> gated_fixed_clk_driver_register+0x0/0x1c
>>> initcall-> gpio_gate_clock_driver_register+0x0/0x1c
>>> initcall-> syscon_driver_register+0x0/0x1c
>>> initcall-> rockchip_gpio_driver_register+0x0/0x1c
>>> initcall-> rockchip_pinctrl_driver_register+0x0/0x1c
>>> initcall-> simple_pm_bus_driver_register+0x0/0x1c
>>> initcall-> scmi_drv_register+0x0/0x1c
>>> initcall-> scmi_reset_driver_register+0x0/0x1c
>>> initcall-> arm_scmi_driver_register+0x0/0x1c
>>> initcall-> scmi_power_domain_driver_register+0x0/0x1c
>>> initcall-> aarch64_init_vectors+0x0/0x50
>>> initcall-> of_arm_init+0x0/0x2c
>>> deep-probe: enabled in device tree
>>> initcall-> register_autoboot_vars+0x0/0x7c
>>> initcall-> system_partitions_var_init+0x0/0x50
>>> initcall-> register_env_vars+0x0/0x30
>>> initcall-> mipi_dsi_bus_init+0x0/0x1c
>>> initcall-> arm_arch_timer_driver_register+0x0/0x1c
>>> initcall-> of_init_early_vars+0x0/0x8
>>> initcall-> of_timer_init+0x0/0x20
>>> initcall-> rockchip_pm_domain_drv_register+0x0/0x1c
>>> initcall-> net_init+0x0/0x94
>>> initcall-> init_fs+0x0/0x2c
>>> initcall-> rockchip_init+0x0/0xe8
>>> initcall-> ns16550_serial_driver_register+0x0/0x1c
>>> initcall-> dos_partition_init+0x0/0x1c
>>> initcall-> efi_partition_init+0x0/0x1c
>>> initcall-> of_stdoutpath_init+0x0/0x28
>>> Switch to console [cs0]
>>>
>>>
>>> barebox 2026.05.0-00773-g4ba3c57b6144-dirty #5 Wed May 20 16:20:30 MSK 2026
>>>
>>>
>>> Board: Diasom DS-RK3568-SMARC-EVB
>>> start.c: memory at 0x00a00000, size 0xef600000
>>> start.c: initializing malloc pool at 0xadc10000 (size 0x40000000)
>>> start.c: starting barebox...
>>> initcall-> command_slice_init+0x0/0x3c
>>> initcall-> globalvar_init+0x0/0x8c
>>> initcall-> register_bus_class+0x0/0x20
>>> initcall-> platform_init+0x0/0x1c
>>> initcall-> mdio_bus_init+0x0/0x1c
>>> initcall-> register_mii_class+0x0/0x20
>>> initcall-> usb_bus_init+0x0/0x1c
>>> initcall-> otg_bus_init+0x0/0x1c
>>> initcall-> register_udc_class+0x0/0x20
>>> initcall-> spi_bus_init+0x0/0x1c
>>> initcall-> i2c_bus_init+0x0/0x1c
>>> initcall-> register_i2c_adapter_class+0x0/0x20
>>> initcall-> register_mmc_class+0x0/0x20
>>> initcall-> register_fb_class+0x0/0x20
>>> initcall-> register_backlight_class+0x0/0x20
>>> initcall-> nvmem_init+0x0/0x14
>>> initcall-> register_nvmem_class+0x0/0x20
>>> initcall-> register_watchdog_class+0x0/0x20
>>> initcall-> gpio_desc_alloc+0x0/0x24
>>> initcall-> pci_bus_init+0x0/0x1c
>>> initcall-> scmi_bus_driver_init+0x0/0x40
>>> initcall-> register_phy_class+0x0/0x20
>>> initcall-> register_eth_class+0xinitcall-> of_probe_memory+0x0/0x60
>>> initcall-> rockchip_dmc_driver_init+0x0/0x324
>>> rockchip-dmc memory-controller.of: Detected memory size: 0x200000000
>>> initcall-> __image_start+0x0/0x74
>>> initcall-> mem_register_barebox+0x0/0x4c
>>> initcall-> of_reserved_mem_walk+0x0/0x1bc
>>> initcall-> mmu_init+0x0/0x1e0
>>> initcall-> mem_malloc_resource+0x0/0xdc
>>> initcall-> reset_source_init+0x0/0x50
>>> initcall-> usbgadget_globalvars_init+0x0/0x44
>>> initcall-> bootsource_init+0x0/0x40
>>> initcall-> usb_udc_init+0x0/0x20
>>> initcall-> rockchip_spi_driver_register+0x0/0x1c
>>> initcall-> rk3x_i2c_driver_register+0x0/0x1c
>>> initcall-> rk808_spi_driver_register+0x0/0x28
>>> initcall-> rk808_i2c_driver_register+0x0/0x28
>>> initcall-> regulator_fixed_driver_register+0x0/0x1c
>>> initcall-> rockchip_usb2phy_driver_register+0x0/0x1c
>>> initcall-> rockchip_combphy_driver_register+0x0/0x1c
>>> initcall-> rockchip_p3phy_driver_register+0x0/0x1c
>>> initcall-> rk_udphy_driver_register+0x0/0x1c
>>> initcall-> rockchip_iodomain_driver_register+0x0/0x1c
>>> initcall-> digest_hmac_initcall+0x0/0x44
>>> initcall-> sha1_digest_register+0x0/0x1c
>>> initcall-> sha256_digest_register+0x0/0x1c
>>> initcall-> ext_init+0x0/0x1c
>>> initcall-> ramfs_init+0x0/0x1c
>>> initcall-> tftp_init+0x0/0x38
>>> initcall-> nfs_init+0x0/0x5c
>>> initcall-> fat_init+0x0/0x1c
>>> initcall-> diasom_rk3568_driver_register+0x0/0x1c
>>> initcall-> diasom_rk3588_driver_register+0x0/0x1c
>>> initcall-> psci_driver_register+0x0/0x1c
>>> initcall-> arm_request_stack+0x0/0x4c
>>> initcall-> mount_root+0x0/0x74
>>> initcall-> binfmt_sh_init+0x0/0x1c
>>> initcall-> binfmt_uimage_init+0x0/0x1c
>>> initcall-> png_init+0x0/0x1c
>>> initcall-> extlinux_init+0x0/0x1c
>>> initcall-> of_kernel_init+0x0/0x28
>>> initcall-> console_ctrlc_init+0x0/0x30
>>> initcall-> firmware_init+0x0/0x38
>>> initcall-> bootdef_entry_init+0x0/0x1c
>>> initcall-> fastboot_globalvars_init+0x0/0x12c
>>> initcall-> genphy_driver_register+0x0/0x1c
>>> initcall-> realtek_drvs_register+0x0/0x20
>>> initcall-> mdio_gpio_driver_register+0x0/0x1c
>>> initcall-> rk_gmac_driver_register+0x0/0x1c
>>> initcall-> rtl8169_eth_driver_register+0x0/0x1c
>>> initcall-> usb_hub_init+0x0/0x1c
>>> initcall-> dwc3_driver_register+0x0/0x1c
>>> initcall-> usb_stor_init+0x0/0x1c
>>> initcall-> ehci_driver_register+0x0/0x1c
>>> initcall-> xhci_driver_register+0x0/0x1c
>>> initcall-> gsermod_init+0x0/0x1c
>>> initcall-> acmmod_init+0x0/0x1c
>>> initcall-> dfumod_init+0x0/0x1c
>>> initcall-> fastbootmod_init+0x0/0x1c
>>> initcall-> umsmod_init+0x0/0x1c
>>> initcall-> onboard_dev_driver_register+0x0/0x1c
>>> initcall-> pca954x_driver_register+0x0/0x28
>>> initcall-> rk_sdhci_driver_register+0x0/0x1c
>>> initcall-> dw_mmc_driver_register+0x0/0x1c
>>> initcall-> backlight_pwm_of_driver_register+0x0/0x1c
>>> initcall-> vop2_driver_register+0x0/0x1c
>>> initcall-> dw_hdmi_rockchip_driver_register+0x0/0x1c
>>> initcall-> dw_mipi_dsi_rockchip_driver_register+0x0/0x1c
>>> initcall-> led_gpio_of_driver_register+0x0/0x1c
>>> initcall-> at24_driver_register+0x0/0x28
>>> initcall-> rockchip_pwm_driver_register+0x0/0x1c
>>> initcall-> sram_driver_register+0x0/0x1c
>>> initcall-> mem_init+0x0/0x90
>>> initcall-> nvmem_cells_driver_register+0x0/0x1c
>>> initcall-> rmem_driver_register+0x0/0x1c
>>> initcall-> rockchip_otp_driver_register+0x0/0x1c
>>> initcall-> dw_wdt_driver_register+0x0/0x1c
>>> initcall-> pca953x_driver_register+0x0/0x28
>>> initcall-> rk_rng_driver_register+0x0/0x1c
>>> initcall-> of_partition_init+0x0/0x48
>>> initcall-> of_overlay_init+0x0/0x104
>>> initcall-> fan53555_regulator_driver_register+0x0/0x28
>>> initcall-> rk808_regulator_driver_register+0x0/0x1c
>>> initcall-> rockchip_pcie_driver_register+0x0/0x1c
>>> initcall-> inno_dsidphy_driver_register+0x0/0x1c
>>> initcall-> rockchip_saradc_driver_register+0x0/0x1c
>>> initcall-> nvme_driver_register+0x0/0x1c
>>> initcall-> gpio_restart_driver_register+0x0/0x1c
>>> initcall-> prng_init+0x0/0x40
>>> initcall-> null_init+0x0/0x40
>>> initcall-> full_init+0x0/0x40
>>> initcall-> zero_init+0x0/0x40
>>> initcall-> md5_digest_register+0x0/0x1c
>>> initcall-> sha224_digest_register+0x0/0x1c
>>> initcall-> init_net_poll+0x0/0x24
>>> initcall-> netconsole_init+0x0/0x12c
>>> netconsole: registered as netconsole-1
>>> initcall-> diasom_rk3568_init+0x0/0x448
>>> CPU version 0x03 detected.
>>> rk808 rk8090: chip id: 0x8090
>>> vcc_ddr: Bringing 500000uV into 1100000-1100000uV
>>> vdd_npu: Bringing 500000uV into 850000-850000uV
>>> vdda0v9_image: Bringing 600000uV into 900000-900000uV
>>> vcca1v8_image: Bringing 600000uV into 1800000-1800000uV
>>> rockchip_saradc fe720000.saradc@fe720000.of: registered as aiodev0
>>> SOM version 2+ detected.
>>> SMARC version 3 used.
>>> arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware version 0x0
>>> psci psci.of: detected version 1.1
>>> xHCI xHCI0: USB XHCI 1.10
>>> xHCI xHCI1: USB XHCI 1.10
>>> ehci fd800000.usb@fd800000.of: USB EHCI 1.00
>>> ehci fd880000.usb@fd880000.of: USB EHCI 1.00
>>> fan53555-regulator tcs45250: FAN53555 Option[12] Rev[15] Detected!
>>> mdio_bus: miibus0: probed
>>> dwhdmi-rockchip fe0a0000.hdmi@fe0a0000.of: registered I2C bus driver
>>> dwhdmi-rockchip fe0a0000.hdmi@fe0a0000.of: Detected HDMI TX controller
>>> v2.11a with HDCP (DWC HDMI 2.0 TX PHY)
>>> rockchip-vop2 fe040000.vop@fe040000.of: Registered fb0 on VP0, window
>>> Smart0-win0, type primary
>>> rockchip-vop2 fe040000.vop@fe040000.of: Registered fb0_0 on VP0,
>>> window Smart1-win0, type overlay
>>> rockchip-vop2 fe040000.vop@fe040000.of: Registered fb0_1 on VP0,
>>> window Esmart1-win0, type overlay
>>> rockchip-vop2 fe040000.vop@fe040000.of: Registered fb0_2 on VP0,
>>> window Esmart0-win0, type overlay
>>> rockchip-dw-pcie 3c0000000.pcie@fe260000.of: Phy link never came up
>>> dw_mmc fe2b0000.mmc@fe2b0000.of: registered as mmc1
>>> mmc1: detected SD card version 3.0
>>> WARNING: mmc1: GPT:Primary header thinks Alt. header is not at the end
>>> of the disk.
>>> WARNING: mmc1: GPT:2669671 != 62333951
>>> WARNING: mmc1: GPT:Alternate GPT header not at the end of the disk.
>>> WARNING: mmc1: GPT:2669671 != 62333951
>>> mmc1: GPT: will repair later if global.system.gpt_refresh=1
>>> mmc1: registered mmc1
>>> rk3568-dwcmshc-sdhci fe310000.mmc@fe310000.of: registered as mmc0
>>> mmc0: detected MMC card version 5.1
>>> mmc0: registered mmc0.boot0
>>> mmc0: registered mmc0.boot1
>>> mmc0: registered mmc0
>>> i2c2: Added multiplexed i2c bus 6
>>> i2c2: Added multiplexed i2c bus 7
>>> i2c2: Added multiplexed i2c bus 8
>>> i2c2: Added multiplexed i2c bus 9
>>> pca954x pca95460: registered 4 multiplexed busses for I2C switch
>>> phy6: lane number 0, val 1
>>> phy6: lane number 1, val 2
>>> phy6: bifurcation enabled
>>> rockchip-dw-pcie 3c0800000.pcie@fe280000.of: Phy link never came up
>>> mdio_bus: miibus1: probed
>>> mdio_bus: miibus2: probed
>>> PANIC: unable to handle NULL pointer dereference at address 0x0000000000000018
>>> DABT (current EL) (ESR 0x9600000b)
>>> elr: 00000000edc6ff00 lr : 00000000edc6ff00
>>> x0 : 00000000edcd5c17 x1 : 00000000edd7f000
>>> x2 : 0000000000000000 x3 : 0000000000000030
>>> x4 : 0000000000000000 x5 : 00000000edff7d18
>>> x6 : 0000000000000002 x7 : 0000000000000000
>>> x8 : 00000000aff3aa90 x9 : 6f2e726f74616c75
>>> x10: 63702d3376336363 x11: 6b6c632d30336569
>>> x12: 00000000edff7b30 x13: 00000000ffffffc8
>>> x14: 0000000000000001 x15: 0000000000000000
>>> x16: 00000000edccb95f x17: 0000000000000000
>>> x18: 000000000000000a x19: 00000000aff3aa60
>>> x20: 0000000000000000 x21: 0000000000000010
>>> x22: 0000000000000000 x23: 00000000edcd5c17
>>> x24: 0000000000000000 x25: 00000000f0000000
>>> x26: 00000000000737a4 x27: 00000000001bb598
>>> x28: 0000000000000000 x29: 00000000edff7dd0
>>>
>>> Call trace:
>>> [<edc6ff00>] (__of_new_property+0x38/0x74) from [<edc6ff94>]
>>> (of_new_property+0x58/0x6c)
>>> [<edc6ff94>] (of_new_property+0x58/0x6c) from [<edc700d0>]
>>> (of_property_write_bool+0x5c/0x68)
>>> [<edc700d0>] (of_property_write_bool+0x5c/0x68) from [<edc7013c>]
>>> (of_set_root_node+0x60/0x88)
>>> [<edc7013c>] (of_set_root_node+0x60/0x88) from [<edcc0854>]
>>> (diasom_rk3568_init+0x230/0x448)
>>> [<edcc0854>] (diasom_rk3568_init+0x230/0x448) from [<edc125f4>]
>>> (start_barebox+0x84/0xa4)
>>> [<edc125f4>] (start_barebox+0x84/0xa4) from [<edcc2d74>]
>>> (barebox_non_pbl_start+0xd8/0xe8)
>>> [<edcc2d74>] (barebox_non_pbl_start+0xd8/0xe8) from [<00b02cfc>] (0xb02cfc)
>>> [<00b02cfc>] (0xb02cfc) from [<00b020c4>] (0xb020c4)
>>>
>>> ### ERROR ### Please RESET the board ###
>>>
>>> ср, 20 мая 2026 г. в 16:17, Sascha Hauer <s.hauer@pengutronix.de>:
>>>>
>>>> On 2026-05-20 15:11, Alexander Shiyan wrote:
>>>>> Here is output with lowlevel debug:
>>>>> DDR 03ea844c5d typ 24/09/03-10:42:57,fwver: v1.23
>>>>> In
>>>>> ...
>>>>> out
>>>>>> rockchip-dmc: rockchip_sdram_size(reg2=1000ea01, reg3=30000031)
>>>>> rockchip-dmc: rank 2 cs0_col 10 cs1_col 10 bk 3 cs0_row 17 cs1_row 17
>>>>> bw 2 row_3_4 0
>>>>> rockchip-dmc: rk3568_ram_sizes() = 8589934592
>>>>> mmu: enabling MMU, ttb @ 0xedf80000
>>>>> mmu: __arch_remap_range: 0x00000000+0x8000000000 type UNCACHED
>>>>> mmu: __arch_remap_range: 0x8000000000+0x8000000000 type UNCACHED
>>>>> mmu: __arch_remap_range: 0x00a00000+0xef600000 type RWX
>>>>> mmu: __arch_remap_range: 0xee000000+0x2000000 type FAULT
>>>>> mmu: __arch_remap_range: 0x00b00000+0x60000 type RWX
>>>>
>>>> Damn. I introduced this:
>>>>
>>>>         pbl_malloc_init(membase[0] + memsize[0] - PBL_MALLOC_SIZE, PBL_MALLOC_SIZE);
>>>>
>>>> This exactly ends up in the area marked as FAULT above (reserved for
>>>> OP-TEE).
>>>>
>>>> Try this:
>>>>
>>>>         pbl_malloc_init(membase[0] + memsize[0] - OPTEE_SIZE - PBL_MALLOC_SIZE,
>>>>                         PBL_MALLOC_SIZE);
>>>>
>>>> You have XZ as image compression, right?
>>>>
>>>> The rockchip_v8_defconfig uses LZ4 which doesn't need any dynamic memory
>>>> for decompression. I tested with XZ as well, but the configuration I
>>>> used for this test doesn't have OP-TEE enabled, so the faulting area was
>>>> not there.
>>>>
>>>> Sascha
>>>>
>>>> --
>>>> Pengutronix e.K.                           |                             |
>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>
>>>
>>
>> --
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



