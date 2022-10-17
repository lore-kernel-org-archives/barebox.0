Delivery-date: Mon, 17 Oct 2022 15:33:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okQFJ-00BenQ-By
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 15:33:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okQFG-0007hG-TX
	for lore@pengutronix.de; Mon, 17 Oct 2022 15:33:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u1lbwmBDu4a/oDMAq9f/EG+dAnlijGl6jejixY//nIg=; b=zGL5kFQq++ektlvXg1yV5fwI+q
	RYSipnqTah3SLF7Zwt2fiYUHXryixr8ZLTi+oKDpWvgU6drioRYWn53J6SKiY2iLOLB1C+VpdfCeZ
	jyaLdIAZ3gWCa7SwmfV30Mr5m2/2nSA6QYEYoLtJaR0W8FNHgAcD8S6xTJUTs+Uz+TapSKGYzc/fq
	mCt2iVl4Cr1BPmR8SqHDhbEmIgiq//lk7+2WLjr8V5Qi5UH1ONzQuvifq3nFPCNryK8YZwAsnrSNH
	stQFm/1IUs5BfoEZpSNpbXk3YcRbhOCBT0kVNlY3MiRt1zWZqiRSpdK6nZuwixwJaodzpOkizDs5Y
	wGeGtXnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okQDi-00C7aD-Qk; Mon, 17 Oct 2022 13:31:54 +0000
Received: from smtp79.iad3b.emailsrvr.com ([146.20.161.79])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okQDe-00C7ZJ-Kx
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 13:31:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20190130-41we5z8j; t=1666013507;
	bh=ZLhYtYUMvSoRMLIAbj+IovjnJg3PYFhlNJoUWKyd+i4=;
	h=Date:Subject:From:To:From;
	b=GWms9wTcCneEjM3wHVDHCUxRxvMgv1K6PhP2x4rylJKSRIvyk7gUKK+PAonnnmrzp
	 n4o+26pzlIL6Xn6gFBpOcRWj+qYaF1aZCMcyj5lVyqueJp4EhaN5xR6e5BBoXzcQEM
	 OZJat3ENvUvQ4APwWpSE3xn4Y62ZaceAhn4NUAug=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp18.relay.iad3b.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 60D68E0104;
	Mon, 17 Oct 2022 09:31:47 -0400 (EDT)
Message-ID: <f3c3e7d3-2d47-06a9-65d1-a80c48c862d4@mev.co.uk>
Date: Mon, 17 Oct 2022 14:31:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-GB
From: Ian Abbott <abbotti@mev.co.uk>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <98fb1314-e0c9-c75c-c89f-7bcc36a2b9c0@mev.co.uk>
 <dcd83566-6923-dff8-4329-bce9fa473e6e@pengutronix.de>
 <15b5c180-09f0-0a6e-da52-4c21051ec403@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <15b5c180-09f0-0a6e-da52-4c21051ec403@mev.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Classification-ID: b92c6fd5-5e23-40a6-a8ae-be419f317434-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_063150_831746_3990E0DE 
X-CRM114-Status: GOOD (  11.44  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [v2022.10.0] initcall of of_probe_memory failed (EBUSY)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17/10/2022 14:10, Ian Abbott wrote:
> On 17/10/2022 13:24, Ahmad Fatoum wrote:
>> On 17.10.22 14:03, Ian Abbott wrote:
>>> Barebox v2022.10.0 seems to work for me, but I now get this 
>>> (harmless?) error during initialization:
>>>
>>> initcall of_probe_memory+0x1/0x34 failed: Device or resource busy
>>>
>>> (This is on a 32-bit ARM SoCFPGA/CycloneV based system.)
>>>
>>> git bisect is blaming commit d0b5f6bde15b ("of: reserved-mem: reserve 
>>> regions prior to mmu_initcall()").
>>
>> Can you define #define DEBUG at the top of common/resource.c and paste
>> the output?
> 
> Here is what I get for a Terasic DE0-Nano-SoC.  (I was using a custom 
> board for the original report, but the symptoms are the same.)
> 
> [snip]

Here is the same thing with "Trace initcalls" and "Trace driver 
probes/removes" turned on:

lowlevel init done
SDRAM setup...
SDRAM calibration...
done


barebox 2022.10.0-dirty #33 Mon Oct 17 14:26:52 BST 2022


Board: Terasic DE-0(Atlas)
rm_init+0x1/0xc
initcall-> mdio_bus_init+0x1/0xc
initcall-> spi_bus_init+0x1/0xc
initcall-> i2c_bus_init+0x1/0xc
initcall-> gpio_desc_alloc+0x1/0x18
initcall-> fs_bus_init+0x1/0xc
initcall-> socfpga_ccm_driver_register+0x1/0xc
initcall-> syscon_driver_register+0x1/0xc
initcall-> socfpga_init+0x1/0x58
__request_region ok: 0x00000000:0x3fffffff flags=0x0
initcall-> socfpga_boot_save_loc+0x1/0x34
initcall-> of_arm_init+0x1/0x38
     probe-> ffd04000.clkmgr@ffd04000.of
__request_region ok: 0xffd04000:0xffd04fff flags=0x0
initcall-> unwind_init+0x1/0x30
initcall-> register_autoboot_vars+0x1/0x60
initcall-> arm_arch_timer_driver_register+0x1/0xc
initcall-> of_timer_init+0x1/0x14
initcall-> socfpga_reset_driver_register+0x1/0xc
     probe-> ffd05000.rstmgr@ffd05000.of
__request_region ok: 0xffd05000:0xffd05fff flags=0x0
initcall-> net_init+0x1/0x74
initcall-> init_fs+0x1/0x30
initcall-> ns16550_serial_driver_register+0x1/0xc
     probe-> ffc02000.serial0@ffc02000.of
__request_region ok: 0xffc02000:0xffc02fff flags=0x0
     probe-> ffc03000.serial1@ffc03000.of
__request_region ok: 0xffc03000:0xffc03fff flags=0x0
initcall-> socfpga_init+0x1/0x2c
initcall-> dos_partition_init+0x1/0xc
initcall-> of_stdoutpath_init+0x1/0x14
initcall-> of_probe_memory+0x1/0x34
__request_region: 0x00000000:0x3fffffff (ram0) conflicts with 
0x00000000:0x3fffffff (ram0)
initcall of_probe_memory+0x1/0x34 failed: Device or resource busy
initcall-> __exceptions_stop+0x1/0x44
initcall-> of_reserved_mem_walk+0x1/0xfc
__request_region ok: 0x00000000:0x00000fff flags=0x80000200
initcall-> mmu_init+0x1/0x60
__request_region ok: 0x3ffe4000:0x3ffe7fff flags=0x200
__request_region: 0x00000000:0x00000fff (zero page) conflicts with 
0x00000000:0x00000fff (fdt-memreserve-0)
initcall-> mem_malloc_resource+0x1/0x94
__request_region ok: 0x1fefd960:0x3fdfb2bf flags=0x200
__request_region ok: 0x3fe00000:0x3fe71f2b flags=0x200
__request_region ok: 0x3fe71f2c:0x3fe8284f flags=0x200
__request_region ok: 0x3fe82850:0x3fe85e3f flags=0x200
initcall-> bootsource_init+0x1/0x38
initcall-> reset_source_init+0x1/0x40
initcall-> register_mtdoob+0x1/0x14
initcall-> i2c_dw_driver_register+0x1/0xc
     probe-> ffc04000.i2c@ffc04000.of
__request_region ok: 0xffc04000:0xffc04fff flags=0x0
initcall-> clk_gpio_init+0x1/0x10
initcall-> smp_twd_driver_register+0x1/0xc
     probe-> fffec600.timer@fffec600.of
__request_region ok: 0xfffec600:0xfffec6ff flags=0x0
initcall-> mc13xxx_spi_driver_register+0x1/0x20
initcall-> mc13xxx_i2c_driver_register+0x1/0x20
initcall-> ext_init+0x1/0xc
initcall-> ramfs_init+0x1/0xc
initcall-> devfs_init+0x1/0xc
initcall-> ubifs_init+0x1/0x70
initcall-> tftp_init+0x1/0x30
initcall-> nfs_init+0x1/0x34
initcall-> fat_init+0x1/0xc
initcall-> restart_register_feature+0x1/0x1c
initcall-> arm_request_stack+0x1/0x50
__request_region ok: 0x3ffe8000:0x3ffeffff flags=0x200
initcall-> mount_root+0x1/0x58
     probe-> ramfs0
     probe-> devfs0
initcall-> binfmt_sh_init+0x1/0xc
initcall-> binfmt_uimage_init+0x1/0xc
initcall-> console_common_init+0x1/0x54
initcall-> of_kernel_init+0x1/0x1c
initcall-> blspec_init+0x1/0xc
initcall-> console_ctrlc_init+0x1/0x20
initcall-> firmware_init+0x1/0x28
initcall-> genphy_driver_register+0x1/0xc
initcall-> ksphy_driver_register+0x1/0x10
initcall-> socfpga_dwc_ether_driver_register+0x1/0xc
     probe-> ff702000.ethernet@ff702000.of
__request_region ok: 0xff702000:0xff703fff flags=0x0
socfpga_designware_eth ff702000.ethernet@ff702000.of: user ID: 0x10, 
Synopsys ID: 0x37
mdio_bus: miibus0: probed
initcall-> cqspi_driver_register+0x1/0xc
initcall-> dw_mmc_driver_register+0x1/0x10
     probe-> ff704000.dwmmc0@ff704000.of
__request_region ok: 0xff704000:0xff704fff flags=0x0
dw_mmc ff704000.dwmmc0@ff704000.of: registered as mmc0
initcall-> mem_init+0x1/0x60
     probe-> mem0
     probe-> mem1
initcall-> dw_wdt_driver_register+0x1/0xc
     probe-> ffd02000.watchdog@ffd02000.of
__request_region ok: 0xffd02000:0xffd02fff flags=0x0
initcall-> of_partition_init+0x1/0x4c
initcall-> socfpga_fpgamgr_driver_register+0x1/0x10
     probe-> ff706000.fpgamgr@ff706000.of
__request_region ok: 0xff706000:0xff706fff flags=0x0
__request_region ok: 0xffb90000:0xffb90003 flags=0x0
initcall-> prng_init+0x1/0x28
initcall-> null_init+0x1/0x28
initcall-> full_init+0x1/0x28
initcall-> zero_init+0x1/0x28
initcall-> md5_digest_register+0x1/0xc
initcall-> init_net_poll+0x1/0x14
initcall-> barebox_memory_areas_init+0x1/0x2c
__request_region ok: 0x3fdfb2c0:0x3fdfffc9 flags=0x200
initcall-> barebox_of_populate+0x1/0x14
initcall-> of_register_memory_fixup+0x1/0x10
initcall-> dummy_csrc_warn+0x1/0x2c
initcall-> bootm_init+0x1/0x128
initcall-> init_command_list+0x1/0x2c
initcall-> display_meminfo+0x1/0x34
malloc space: 0x1fefd960 -> 0x3fdfb2bf (size 511 MiB)
initcall-> of_register_bootargs_fixup+0x1/0x2c
initcall-> init_boot+0x1/0x74
initcall-> device_probe_deferred+0x1/0xc0
initcall-> of_init_hostname+0x1/0x18
initcall-> barebox_of_driver_init+0x1/0x44
     probe-> chosen:environment.of
mmc0: detected SD card version 2.0
mmc0: registered mmc0
         probe-> fat0
initcall-> eth_register_of_fixup+0x1/0x10
initcall-> dhcp_global_init+0x1/0xf8
initcall-> ifup_all_init+0x1/0x20
initcall-> ubifs_init+0x1/0x48
initcall-> armlinux_register_image_handler+0x1/0x74
initcall-> load_environment+0x1/0x2c
initcall-> of_populate_ethaddr+0x1/0x90
initcalls done
[?25hExecuting '/env/init/automount'...
Executing '/env/init/automount-ratp'...
Executing '/env/init/ps1'...

Hit any to stop autoboot:    3


-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-



