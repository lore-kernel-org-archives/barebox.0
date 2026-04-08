Delivery-date: Wed, 08 Apr 2026 07:44:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wALiC-009pc4-1i
	for lore@lore.pengutronix.de;
	Wed, 08 Apr 2026 07:44:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wALiB-0005Yd-F9
	for lore@pengutronix.de; Wed, 08 Apr 2026 07:44:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:From:
	To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bGzGHKw//RBR0t+p9x3RV8jVjXFR9GNjJlEwAiIJFL8=; b=1jKr0TgiJ0A7JA5HWvkHn059LU
	n75c6wsNPqAZmtTp8Eh7a88FNgHSsADdupHyMM7e3IGwrqQAX0ks0D7Qw4lw92N8JC/zxbs1mnN06
	yv9viFvPThBNg2IDR7gh4h1p+248Bq5d5MgL0qWScfxxVaxG+CEIHSEJc6EGvhZZX9Nk30boVJ9/h
	bvC8tnI2Y5FAtdZXhe0O/KX1Zj+4hJKs5U+GeGRcbaES9eobUlWNNfRzypAavXAIE0Tk+2HLfVgZv
	G32763ZJcLHZMrag5WSfZ0+GYhpGev9SOS/GAk/yx6Zh4D99+ChB8u48r4h8xuahAOW3/8pQpu+yx
	Zw509LQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wALhT-00000008IPm-2oME;
	Wed, 08 Apr 2026 05:43:39 +0000
Received: from mail-24430.protonmail.ch ([109.224.244.30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wALhR-00000008IPL-04iy
	for barebox@lists.infradead.org;
	Wed, 08 Apr 2026 05:43:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1775627012; x=1775886212;
	bh=bGzGHKw//RBR0t+p9x3RV8jVjXFR9GNjJlEwAiIJFL8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=G7inJuPbsL+UsEvi0zcZvczVNW74HvnDyMCKH7ds1AErD10FArEHkDhGJFmTBRVpD
	 xnwj9fl2+ZUyQtGquq9HPDoyjmgK0Vwb3apzP6RvBPaYbPXV1StYfdi3Ath0XK5WF3
	 xx5VLq5V2bhUe/CTJllYWjUXX6gCqOVQNgBvzeA7Vavb1skbO9bU+I/kY4pLo7kt/H
	 ZCWzJCSPuFWoOiKX9KlWZ56XIheVrnzBNt4Q8BtBqScAOhIKi3B+7v4G88aUO25v0C
	 dxUPNMfSqdBJAQEOOXYrdu3XqLAR4LDdL3ZM9NK0942k/cn0I9dVFa3sXmc5yX8ISH
	 ElwFtaCkIQgFQ==
Date: Wed, 08 Apr 2026 05:43:26 +0000
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
From: =?utf-8?Q?Micha=C5=82_Kruszewski?= <mkru@protonmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Alexander Shiyan <eagle.alexander923@gmail.com>
Message-ID: <3ncy-rlTwRP1gwmOxD_5J8SJ1F83HGNRqDo6esA_cyWD39ZOYX77Smf4Utanw7Lw94P6owMxtKeH2-Ej3wOti6mFH6dToHXe_Bqrtby0l18=@protonmail.com>
In-Reply-To: <01a6de41-3e26-474f-9a90-d69e5d54cfe4@pengutronix.de>
References: <mO0lDEdknvuZ-6R4RSHJePbDBcwiBmMAZB_d_sZMBEWJKoRltrWPiQqPxiF3Pukxv8_JAhFxG7-RFL5VUbOnDpwOEJ2_HkmE7lfSVEFA5bs=@protonmail.com> <be11f271-1d48-4db4-b06e-f3862264105f@pengutronix.de> <mTw4y_xR5aiHEkjdE2rA6eEGvVkxqees8prnFukfaV5DSv4qcIUBmdtZJ--nwcZQjjf_84O-TDQ8cBHlZubeOfUZeInYOK76kyxGVFxrbvc=@protonmail.com> <9ae2b9e7-c83d-478e-83b3-9a6f82562259@pengutronix.de> <uQ0wdkwojjz9oEqfuP5-wjYVdqShnu7Gb_zBE2IF0Nam7xR4HVUhENT8jTlVwnpDeG0NPB-ACdZSShnYWT_nLatBEhXq6pJ6YfEpBkxOqZs=@protonmail.com> <85359e8c-33a0-46d4-8f3c-df0250af1e9e@pengutronix.de> <HwgwAP9KjUztYR9V4ATyVNq5qwsrMJg60gqfmSoqZiIBTjWxsSnl-9onCczoMYZV0xPuGsvHSpLULwjqaFuVS-iWjJgCsbYv0uzAw3Ivn4w=@protonmail.com> <01a6de41-3e26-474f-9a90-d69e5d54cfe4@pengutronix.de>
Feedback-ID: 2463531:user:proton
X-Pm-Message-ID: 82d0a06ffed1944f7913f5cee2fd911fc435b2ec
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_224337_214318_87BD6270 
X-CRM114-Status: GOOD (  61.54  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Compiling barebox without PBL and using dts from Linux dts upstream for Zynq SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

> But first can you verify that using images/start_avnet_zedboard.pbl with
> DT replaced as described in a previous message of mine successfully
> boots to shell?

No, it does not boot to shell.
I have replaced:

-#include <arm/xilinx/zynq-zed.dts>
+/include/ "../../../dts/src/arm/xilinx/zynq-zturn-v5.dts"

in arch/arm/dts/zynq-zed.dts file.

Then I used images/start_avnet_zedboard.pbl for boot.bin generation.
I see no barebox output in terminal.

Regards,
Micha=C5=82 Kruszewski


Sent with Proton Mail secure email.

On Tuesday, April 7th, 2026 at 3:22 PM, Ahmad Fatoum <a.fatoum@pengutronix.=
de> wrote:

> Hello Micha=C5=82,
>=20
> I hope you had a please Easter.
>=20
> On 3/27/26 11:37 AM, Micha=C5=82 Kruszewski wrote:
> > Of course, due to the hurry, I made a mistake in my previous message.
> > The program for the boot.bin generation is called bootgen not bootbin.
> >
> > You can find AMD bootgen user guide here:
> >   https://docs.amd.com/r/en-US/ug1283-bootgen-user-guide/Introduction.
> >
> > The ELF file provided to the bootgen can have multiple loadable section=
s, each of which forms a partition in the boot image.
> > The AMD/Xilinx FSBL will load and hand-off execution to the next execut=
able partition found in the boot.bin file.
> > The u-boot.elf file has one LOAD section:
> >   [user@host] readelf -l u-boot.elf
> >   Elf file type is EXEC (Executable file)
> >   Entry point 0x4000000
> >   There is 1 program header, starting at offset 52
> >   Program Headers:
> >     Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg A=
lign
> >     LOAD           0x010000 0x04000000 0x04000000 0x108ff0 0x108ff0 RW =
 0x10000
> >    Section to Segment mapping:
> >     Segment Sections...
> >      00     .data
> > The readelf for barebox shows 3 LOAD sections and 1 DYNAMIC section.
>=20
> This is true for the "barebox" binary, but if you check the
> images/start_avnet_zedboard.pbl, the situation is different. It does
> have multiple sections too, but the initial LOAD section contains
> everything placed linearly.
>=20
> > The second difference is that Elf file type for u-boot is EXEC (Executa=
ble file), for barebox DYN (Position-Independent Executable file).
>=20
> I suspect that the ELF type doesn't actually matter, but we can
> easily change it should it really be needed.
>=20
> > The bootgen user guide has the table 49 with the following note for the=
 ELF file format:
> > "Symbols and headers removed."
> > However, it is not clear whether bootgen automatically removes symbosls=
 and headers, or whether it expects the elf file without symbols and header=
s.
>=20
> This is easily done with the strip command.
>=20
> > Now, I would like to describe a few ideas and potential problems.
> > I am by far not bootloaders expert.
> > However, I had to boot and debug booting on a few custom and off-the-sh=
elf boards with AMD/Xilinx SoCs and MPSoCs.
> > All the things I write below are related to booting ADM/Xilinx chips on=
ly.
> >
> >
> > There are 2 alternative paths you may chose when trying to boot AMD/Xil=
inx SoCs.
> >
> > Path 1: The no-FSBL path
> > This is the path currently supported by barebox.
> > You do not want to utilize the AMD/Xilinx automatically generated FSBL.
> > In such a case, you have to define a board, and provide C code for the =
low-level board initialization.
> > The barebox PBL does the FSBL job in this case.
> > I think this path is fine for hobby projects and off-the-shelf boards w=
hen you want to quickly get things running.
> > However, I am not a fan of this path in professional projects because o=
f the following reasons:
> >   a) The FSBL code is automatically generated, it may include some work=
arounds or fixes for hardware bugs.
> >      The copied low-level initialization C code may potentially miss th=
em.
>=20
> If you don't update your FPGA toolchain, you may miss these issues also
> and we have been burnt a lot in the past with FPGA toolchains adding
> subtle breakage all around.
>=20
> >   b) Forget about getting official support from AMD/Xilinx if you menti=
on you don't use the official FSBL for boot.
>=20
> Yes, if you need FAE support, they may require you to reproduce using
> their bootloader.
>=20
> >
> > Path 2: The FSBL path
> > For me, this is the way to go in professional projects.
> > Barebox currently does not support this path.
> > In this case, you do not want to be forced to define a board.
> > This is simply pointless, the FSBL is responsible for initializing the =
low-level stuff.
> > All you need to boot Linux when FSBL stops execution is some SSBL and d=
evice tree.
>=20
> I see your point.
>=20
> > Now, what a support for path 2 in the barebox could look like.
> > We could use the concept of the virtual board.
> > The virtual board is a board that:
> >   - is assumed to already be low-level initialized when barebox starts =
running,
> >   - can accept arbitrary device tree,
> >   - should not be bound to any specific device tree by default.
> > The boilerplate related to the board definition should not exist for th=
e virtual board.
>=20
> Well, the boilerplate will exist, but you wouldn't need to modify it.
> The generic board would be just an extra image produced in the barebox
> build.
>=20
> > What the user experience would look like:
> >   1. make zynq_virt_defconfig,
> >   2. open menuconfig,
> >   3. find and set config containing path for the device tree file (can =
be out of tree),
>=20
> Linux regularly breaks forward and to a lesser degree backwards
> compatibility for device tree. We can make it possible to reference a
> device tree in dts/, but I don't want to make it possible to point an
> arbitrary device tree where it's unclear if the binding are compatible
> with barebox.
>=20
> If someone wants to inject a device tree, they should copy its source
> into barebox.
>=20
> >   4. make,
> >   5. copy the required elf and/or bin files to your project.
>=20
> This is doable, but I'd prefer a new images/barebox-zynq-ssbl.img that's
> just an extra image generated from the normal zynq_virt_defconfig.
>=20
>=20
> >
> > The u-boot has a similar concept of virt defconfigs, for example:
> > xilinx_versal_virt_defconfig
> > xilinx_zynqmp_virt_defconfig
> > xilinx_zynq_virt_defconfig
>=20
> I see. I haven't worked myself with the Zynq, so I was not aware of how
> it's handled in U-Boot.
>=20
> > What potential problems do I see?
> > The bootgen handles elf files with multiple loadable sections by puttin=
g each section into a separate partition.
> > The FSBL simply loads and hands-off to the next executable partition fr=
om the boot.bin.
> > I do not know how barebox works and prepares images.
>=20
> That's not a problem. As mentioned in previous mails, barebox/vmbarebox
> is the wrong image to use however you look at it. You always need an
> image with PBL, even if the PBL only does decompression and passing
> along the DT without any lowlevel HW initialization at all.
>=20
> > However I can see 3 potential scenarios.
>=20
> [snip]
>=20
> > Unfortunately, I do not have enough skills to apply required changes to=
 barebox to test these ideas on my own.
> > However, I would be more than happy to test your changes.
>=20
> Thanks and I would like to take you up on the offer.
>=20
> But first can you verify that using images/start_avnet_zedboard.pbl with
> DT replaced as described in a previous message of mine successfully
> boots to shell?
>=20
> Once we know that the ELF generated is ok in principle I can look into
> implementing a virt/ssbl image
>=20
> > Let me know what you think.
>=20
> Cheers,
> Ahmad
>=20
> >
> > Regards,
> > Micha=C5=82 Kruszewski
> >
>=20
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>=20
>=20
> 


