Delivery-date: Tue, 07 Apr 2026 15:22:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA6O6-009Zhb-2z
	for lore@lore.pengutronix.de;
	Tue, 07 Apr 2026 15:22:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA6O5-00052l-TF
	for lore@pengutronix.de; Tue, 07 Apr 2026 15:22:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BSGbJDvqAb/tIzkeOUShMGvvpuzxqHivMBPEetOgino=; b=H0BZKeHsO6yT5pZ19NHbsXptUe
	TJ9T8F6B6b1teKVtbxub1Eu8XPrEux45UCGYaflfTP1TBROgcVyPw8GQCum/0UkQfxoa9i11zYxFf
	+MDz874Y6BF5nBQMCupb7kYuIpmsrVx1UcCb8mm9PvB96gdS0ZM86Ex0CwTBFBImMdrHouPMcxsyf
	EQltHBNK6vuTLG0s48LSuAs8X6lTc/c9k4BBhXyxpdmjSqYsBWOf2AlRSHgelHsbwBHuAMT6c8CYE
	bdoWZZ0c/s0fag/kf3IuDDAsIAAHRrz52jWbxQ8luA67is0W54+ay++xNN4SDx0sj3+dtl3sMw2u4
	ZtQtmP0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA6NP-00000006W49-3R26;
	Tue, 07 Apr 2026 13:21:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA6NN-00000006W3V-0ap4
	for barebox@lists.infradead.org;
	Tue, 07 Apr 2026 13:21:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wA6NL-0004s8-KK; Tue, 07 Apr 2026 15:21:51 +0200
Message-ID: <01a6de41-3e26-474f-9a90-d69e5d54cfe4@pengutronix.de>
Date: Tue, 7 Apr 2026 15:21:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Micha=C5=82_Kruszewski?= <mkru@protonmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 Alexander Shiyan <eagle.alexander923@gmail.com>
References: <mO0lDEdknvuZ-6R4RSHJePbDBcwiBmMAZB_d_sZMBEWJKoRltrWPiQqPxiF3Pukxv8_JAhFxG7-RFL5VUbOnDpwOEJ2_HkmE7lfSVEFA5bs=@protonmail.com>
 <be11f271-1d48-4db4-b06e-f3862264105f@pengutronix.de>
 <mTw4y_xR5aiHEkjdE2rA6eEGvVkxqees8prnFukfaV5DSv4qcIUBmdtZJ--nwcZQjjf_84O-TDQ8cBHlZubeOfUZeInYOK76kyxGVFxrbvc=@protonmail.com>
 <9ae2b9e7-c83d-478e-83b3-9a6f82562259@pengutronix.de>
 <uQ0wdkwojjz9oEqfuP5-wjYVdqShnu7Gb_zBE2IF0Nam7xR4HVUhENT8jTlVwnpDeG0NPB-ACdZSShnYWT_nLatBEhXq6pJ6YfEpBkxOqZs=@protonmail.com>
 <85359e8c-33a0-46d4-8f3c-df0250af1e9e@pengutronix.de>
 <HwgwAP9KjUztYR9V4ATyVNq5qwsrMJg60gqfmSoqZiIBTjWxsSnl-9onCczoMYZV0xPuGsvHSpLULwjqaFuVS-iWjJgCsbYv0uzAw3Ivn4w=@protonmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <HwgwAP9KjUztYR9V4ATyVNq5qwsrMJg60gqfmSoqZiIBTjWxsSnl-9onCczoMYZV0xPuGsvHSpLULwjqaFuVS-iWjJgCsbYv0uzAw3Ivn4w=@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_062153_344331_59ECBDFD 
X-CRM114-Status: GOOD (  51.28  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Compiling barebox without PBL and using dts from Linux dts
 upstream for Zynq SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Michał,

I hope you had a please Easter.

On 3/27/26 11:37 AM, Michał Kruszewski wrote:
> Of course, due to the hurry, I made a mistake in my previous message.
> The program for the boot.bin generation is called bootgen not bootbin.
> 
> You can find AMD bootgen user guide here:
>   https://docs.amd.com/r/en-US/ug1283-bootgen-user-guide/Introduction.
> 
> The ELF file provided to the bootgen can have multiple loadable sections, each of which forms a partition in the boot image.
> The AMD/Xilinx FSBL will load and hand-off execution to the next executable partition found in the boot.bin file.
> The u-boot.elf file has one LOAD section:
>   [user@host] readelf -l u-boot.elf
>   Elf file type is EXEC (Executable file)
>   Entry point 0x4000000
>   There is 1 program header, starting at offset 52
>   Program Headers:
>     Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align
>     LOAD           0x010000 0x04000000 0x04000000 0x108ff0 0x108ff0 RW  0x10000
>    Section to Segment mapping:
>     Segment Sections...
>      00     .data
> The readelf for barebox shows 3 LOAD sections and 1 DYNAMIC section.

This is true for the "barebox" binary, but if you check the
images/start_avnet_zedboard.pbl, the situation is different. It does
have multiple sections too, but the initial LOAD section contains
everything placed linearly.

> The second difference is that Elf file type for u-boot is EXEC (Executable file), for barebox DYN (Position-Independent Executable file).

I suspect that the ELF type doesn't actually matter, but we can
easily change it should it really be needed.

> The bootgen user guide has the table 49 with the following note for the ELF file format:
> "Symbols and headers removed."
> However, it is not clear whether bootgen automatically removes symbosls and headers, or whether it expects the elf file without symbols and headers.

This is easily done with the strip command.

> Now, I would like to describe a few ideas and potential problems.
> I am by far not bootloaders expert.
> However, I had to boot and debug booting on a few custom and off-the-shelf boards with AMD/Xilinx SoCs and MPSoCs.
> All the things I write below are related to booting ADM/Xilinx chips only.
> 
> 
> There are 2 alternative paths you may chose when trying to boot AMD/Xilinx SoCs.
> 
> Path 1: The no-FSBL path
> This is the path currently supported by barebox.
> You do not want to utilize the AMD/Xilinx automatically generated FSBL.
> In such a case, you have to define a board, and provide C code for the low-level board initialization.
> The barebox PBL does the FSBL job in this case.
> I think this path is fine for hobby projects and off-the-shelf boards when you want to quickly get things running.
> However, I am not a fan of this path in professional projects because of the following reasons:
>   a) The FSBL code is automatically generated, it may include some workarounds or fixes for hardware bugs.
>      The copied low-level initialization C code may potentially miss them.

If you don't update your FPGA toolchain, you may miss these issues also
and we have been burnt a lot in the past with FPGA toolchains adding
subtle breakage all around.

>   b) Forget about getting official support from AMD/Xilinx if you mention you don't use the official FSBL for boot.

Yes, if you need FAE support, they may require you to reproduce using
their bootloader.

> 
> Path 2: The FSBL path
> For me, this is the way to go in professional projects.
> Barebox currently does not support this path.
> In this case, you do not want to be forced to define a board.
> This is simply pointless, the FSBL is responsible for initializing the low-level stuff.
> All you need to boot Linux when FSBL stops execution is some SSBL and device tree.

I see your point.

> Now, what a support for path 2 in the barebox could look like.
> We could use the concept of the virtual board.
> The virtual board is a board that:
>   - is assumed to already be low-level initialized when barebox starts running,
>   - can accept arbitrary device tree,
>   - should not be bound to any specific device tree by default.
> The boilerplate related to the board definition should not exist for the virtual board.

Well, the boilerplate will exist, but you wouldn't need to modify it.
The generic board would be just an extra image produced in the barebox
build.

> What the user experience would look like:
>   1. make zynq_virt_defconfig,
>   2. open menuconfig,
>   3. find and set config containing path for the device tree file (can be out of tree),

Linux regularly breaks forward and to a lesser degree backwards
compatibility for device tree. We can make it possible to reference a
device tree in dts/, but I don't want to make it possible to point an
arbitrary device tree where it's unclear if the binding are compatible
with barebox.

If someone wants to inject a device tree, they should copy its source
into barebox.

>   4. make,
>   5. copy the required elf and/or bin files to your project.

This is doable, but I'd prefer a new images/barebox-zynq-ssbl.img that's
just an extra image generated from the normal zynq_virt_defconfig.


> 
> The u-boot has a similar concept of virt defconfigs, for example:
> xilinx_versal_virt_defconfig
> xilinx_zynqmp_virt_defconfig
> xilinx_zynq_virt_defconfig

I see. I haven't worked myself with the Zynq, so I was not aware of how
it's handled in U-Boot.

> What potential problems do I see?
> The bootgen handles elf files with multiple loadable sections by putting each section into a separate partition.
> The FSBL simply loads and hands-off to the next executable partition from the boot.bin.
> I do not know how barebox works and prepares images.

That's not a problem. As mentioned in previous mails, barebox/vmbarebox
is the wrong image to use however you look at it. You always need an
image with PBL, even if the PBL only does decompression and passing
along the DT without any lowlevel HW initialization at all.

> However I can see 3 potential scenarios.

[snip]

> Unfortunately, I do not have enough skills to apply required changes to barebox to test these ideas on my own.
> However, I would be more than happy to test your changes.

Thanks and I would like to take you up on the offer.

But first can you verify that using images/start_avnet_zedboard.pbl with
DT replaced as described in a previous message of mine successfully
boots to shell?

Once we know that the ELF generated is ok in principle I can look into
implementing a virt/ssbl image

> Let me know what you think.

Cheers,
Ahmad

> 
> Regards,
> Michał Kruszewski
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



