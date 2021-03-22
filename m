Delivery-date: Mon, 22 Mar 2021 14:53:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOKzN-0003hZ-8A
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 14:53:01 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOKzM-00007I-1f
	for lore@pengutronix.de; Mon, 22 Mar 2021 14:53:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Df59yXVXIU2ZYeGMMnOds28DrqOCUKOsYE+Z+qYXZqk=; b=DRADLFMXKjCnDxPnjd47ER6iN
	Rh99f1W9+h5QBLNq1KW6imiDZZ1sX36JAh9O54xhcbyWs7Hv3U1Iv1dVwaY2hdUZNa20LpcJDcQdQ
	07kJKec+4hts7D9q2ca3UhWyc/SAR0AOiikje4TNLgXAMM0S4l9OQScN3EERe4BQyKV55GQvjPqKL
	CouJhTsyE+mSIeg56IeGGfR+TisqC90iBnM63TR7MwqbO5uTaOaW/HitPU2HYrIzgqDeV5QJYKuQ8
	EepzOWz9cuI2wpLswy85zVFwrCRRbqsxnIZuzrWmPnjRBdfhi4gPPJfVJtC/WqK10Ra94MbdOPdQL
	2LN5Q65DA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOKyA-00BjvZ-Ls; Mon, 22 Mar 2021 13:51:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOKy2-00Bjuz-6K
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 13:51:41 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lOKy1-0008OK-EE; Mon, 22 Mar 2021 14:51:37 +0100
To: Sascha Hauer <sha@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210322131134.GS23724@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <34cabb94-8817-e652-8f23-5515bea63d2b@pengutronix.de>
Date: Mon, 22 Mar 2021 14:51:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210322131134.GS23724@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_135138_911930_EF981CA0 
X-CRM114-Status: GOOD (  33.03  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: v2021.03.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22.03.21 14:11, Sascha Hauer wrote:
> =

> Hi All,
> =

> I am happy to announce barebox-2021.03.0. Developer of the month is once
> again Ahmad. He added VirtIO support to barebox which makes barebox
> better integrate into qemu. Also he added Sound card support, enough to
> play the imperial march on sandbox. Decide for yourself what you find
> more useful :)

Not only sandbox: You can play the GRUB tunes with any pwm-buzzer (e.g.
old-style PC piezo speakers) as as long as there is a PWM driver for your p=
latform.

> If you are like me bitten by watchdogs sometimes you might like a
> feature I added: A watchdog device now has a counter which counts down
> to zero from the point where we last fed it. With this we can see if an
> actual device reset matches the point in time that barebox thinks it
> should happen.
> Other than that we have the usual flow of patches, see below.
> =

> Have Fun!
>  Sascha
> =

> ----------------------------------------------------------------
> Ahmad Fatoum (56):
>       commands: usbgadget: remove deprecated s option from help text
>       usb: add fallback ->detect method for USB host drivers
>       usb: host: ehci: remove duplicated usb_host_detect() calls
>       ARM: i.MX8MM: fix sparse warnings in early clock code
>       ARM: i.MX8MM: move system counter enabling into imx8mm_cpu_lowlevel=
_init
>       ARM: <asm/io.h>: define macros for I/O memcpy/memset
>       asm-generic: define fallback memcpy and memset for device I/O
>       ppc: <asm/io.h>: remove duplicate definition
>       printk: port over Linux print_hex_dump_bytes/print_hex_dump_debug
>       sandbox: migrate to SDL 2.0
>       drivers: add sound card driver support
>       sound: add basic synthesizers for PCM beeper use
>       sound: add SDL 2.0 sound driver
>       commands: add beep command
>       sound: add PWM beeper support
>       sound: add gpio-beeper support
>       regulator: add regulator_get_voltage() to API
>       regulator: add support for struct regulator_desc::off_on_delay
>       regulator: add driver for stm32-vrefbuf
>       aiodev: add support for STM32 ADC
>       efi: declare prototype for close_protocol BootService
>       Kbuild: add compile_commands.json target
>       sandbox: increase MALLOC_SIZE from 4M to 16M
>       fs: increase reference count for backing store when loop mounting
>       sandbox: support 64-bit file IO in 32-bit build
>       ext4: ext_common.h: drop declaration of never-defined part_offset
>       fs: ext4: ext4fs.h: remove unused struct members of ext_filesystem
>       block: use 64-bit types for sector offset and count on all platforms
>       usb: storage: support USB disks up to 2TiB of size
>       fs: ext4: use sector_t and loff_t where appropriate
>       fs: ext4: support files exceeding 4G
>       show_progress: change HASHES_PER_LINE from 65 to 64 to avoid divisi=
on
>       include: <linux/math64.h>: include header for __always_inline defin=
ition
>       treewide: include <linux/math64.h> wrapper instead of <asm-generic/=
div64.h>
>       include: asm-generic: don't do 64-bit soft division on 64-bit platf=
orms
>       lib: remove duplicate __div64_32
>       drivers: replaces references to <asm-generic/*.h>
>       copy_file: fix progress bar for files larger than 2G
>       ARM: cpu: board-dt-2nd: rename of_find_mem for more generic use
>       pbl: provide externally visible fdt_find_mem
>       kbuild: add include/uapi to path
>       driver: Don't throw an error on probes that didn't find the device
>       drivers: add support for memory-mapped VirtIO paravirtualization
>       hw_random: add VirtIO RNG driver
>       serial: add basic VirtIO console driver
>       block: add VirtIO block device driver
>       ARM: vexpress: config: update for VirtIO support
>       Documentation: add Documentation on VirtIO for barebox
>       ARM: mmu64: fix build for non-MMU configurations
>       of: base: probe simple-pm-bus children as well
>       glob: use empty globfree when compiling without CONFIG_GLOB
>       common: boot: select dependency CONFIG_GLOB
>       common: shell: select dependency GLOB for SHELL_SIMPLE
>       commands: readline: fix memory leak on wrong usage
>       common: readline: fix possible buffer overflows
>       sandbox: fix use of initialized variable in error path
> =

> Alexander Kurz (1):
>       scripts: imx-image: fix iMX35 header generation
> =

> Alexander Shiyan (1):
>       ARM: dts: imx6qdl: pfla02: Use NAND pinmux entries from upstream
> =

> Andrej Picej (1):
>       ARM: i.MX: xload-gpmi-nand: apply errata 007117
> =

> Antony Pavlov (1):
>       Documentation: mips: fixup qemu-system-mipsel cmdline
> =

> Bastian Krause (1):
>       Documentation: state: recommend a partition type GUID for state GPT=
 partitions
> =

> Edoardo Scaglia (1):
>       mtd: nand: fix hardware ECC support in atmel_nand driver
> =

> Jules Maselbas (4):
>       usb: gadget: dfu: Use func_to_dfu
>       usb: gadget: dfu: Rework print messages
>       usb: gadget: dfu: Wrap fs operation in workqueue
>       usb: otg: Add support to register more than one otg dev
> =

> Marco Felsch (11):
>       of: overlay: split debug messages for of_overlay_apply_symbols
>       ARM: boards: kontron-samx6i: fix memory detection helper
>       ARM: boards: kontron-samx6i: simplify memory detection function
>       ARM: dts: imx6qdl-smarc-samx6i: remove iomuxc hog
>       ARM: dts: imx6qdl-samx6i: switch to SPDX license identifier
>       ARM: dts: imx6qdl-samx6i: use upstream device tree files
>       ARM: dts: imx6qdl-samx6i: cosmetic partition cleanup
>       nvmem: sync stub return values with linux code
>       nvmem: add missing stubs
>       nvmem: make nvmem_device_write/read public
>       nvmem: make id optional for of_nvmem_device_get()
> =

> Michael Grzeschik (2):
>       usb: imx: fix overcurrent polarity handling on i.MX7
>       usb: imx: add overcurrent polarity handling on i.MX6
> =

> Mike Nawrocki (1):
>       drivers: smc911x fix inverted wait_on_timeout
> =

> Primoz Fiser (1):
>       ARM: i.MX: move BCB structures to header file
> =

> Rouven Czerwinski (2):
>       commands: readline: use exit code macros
>       commands: readline: release command slice
> =

> Sascha Hauer (30):
>       dts: update to v5.11-rc4
>       dts: update to v5.11-rc5
>       ARM: i.MX: implement GPMI NAND xload
>       dts: update to v5.11-rc6
>       watchdog: Print seconds to expire
>       dts: update to v5.11-rc7
>       dts: update to v5.11
>       Merge branch 'for-next/aiodev'
>       Merge branch 'for-next/asm-generic'
>       Merge branch 'for-next/asm-io'
>       Merge branch 'for-next/dfu'
>       Merge branch 'for-next/dts'
>       Merge branch 'for-next/ext4'
>       Merge branch 'for-next/firmware'
>       Merge branch 'for-next/imx'
>       Merge branch 'for-next/misc'
>       Merge branch 'for-next/mtd'
>       Merge branch 'for-next/nvmem'
>       Merge branch 'for-next/sound'
>       Merge branch 'for-next/usb'
>       Merge branch 'for-next/virtio'
>       of: fdt: Add root name checks during unflattening
>       nios2: Remove architecture
>       Merge branch 'for-next/arch-remove'
>       Merge branch 'for-next/misc'
>       net: phy: fix waiting for link
>       net: e1000: Fix mtd compilation
>       printk: fix inverted logic in print_hex_dump_debug()
>       gpio: pl061: Fix driver registration
>       Release v2021.03.0
> =

> Stafford Horne (1):
>       openrisc: Define the elf binary entry point
> =

> Stefan Agner (1):
>       ARM: drop no-thumb-interwork in EABI mode
> =

> Stefan Riedmueller (1):
>       nand: nand-mxs: Fix marking BBT blocks as bad
> =

> Steffen Trumtrar (1):
>       ARM: add fncpy.h from linux v5.10
> =

> Thorsten Scherer (1):
>       Documentation: devicetree: include firmware in toctree
> =

> Uwe Kleine-K=F6nig (3):
>       scripts: Replace license and copyright boilerplate by SPDX identifi=
ers
>       ARM: davinci: Replace license and copyright boilerplate by SPDX ide=
ntifiers
>       bcm283X: Select OF clock providers
> =

> Yoshio Furuyama (1):
>       mtd: nand: Fix BBT update issue
> =

> jameszxj (1):
>       extend the test in bbu_std_file_handler() to also check for -ENOTSU=
P.
> =


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

