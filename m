Delivery-date: Sun, 12 Apr 2026 16:43:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wBw21-00BO3p-03
	for lore@lore.pengutronix.de;
	Sun, 12 Apr 2026 16:43:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wBw1z-0005O7-Qk
	for lore@pengutronix.de; Sun, 12 Apr 2026 16:43:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:From:
	To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xhcgz1zBID5Rr6swH1kFqrM9pjrzAOykdb0l/FA2cOw=; b=vmKfLe/K6l5bmPRz6966R+y2YI
	cBD1VHplVDsxh8JfC2Ve/TjZMH2veFUqS8IU8V02UH8S5gE2vvnAdfwYE+Vgm8bevJ8mpC/8C5MGi
	RXSonBt9XHFXXdg66aafUKuQhfEv4Ul0TnS4m4Q9u1sEMD8X0bIpimC5S6qbYAEqck48dWS89atzD
	M2S7nPvKM8qWP87k+xbRiV75HkEvFyI9w5HbvgXgj1O+iH3P8rcTGw8VMeGfYSaSC/bnecmEOE8FQ
	s3bYXmyDwaQd3c/DT1x+04AX8dSQ6EyT5y4M+j+Zo/vl6aECa34qDAqHzWws8h6w9VcI1GSnJ4kuS
	lDRhRI/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBw1C-0000000EOwy-1fnu;
	Sun, 12 Apr 2026 14:42:34 +0000
Received: from mail-43167.protonmail.ch ([185.70.43.167])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBw18-0000000EOwd-1MyO
	for barebox@lists.infradead.org;
	Sun, 12 Apr 2026 14:42:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1776004943; x=1776264143;
	bh=Xhcgz1zBID5Rr6swH1kFqrM9pjrzAOykdb0l/FA2cOw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=xjLAMmYrH5UMMQdoI4AkOTtfllDfJK4IJbCVW+yY/Z+mJu/yH4Dw9/EGK9ww/dYzC
	 K06lsBbAv+7madhgcdcrmR6Dro8O/5UqjjpPo7DdJe4r+I/PYzpUYwpcauJP9+ANsv
	 jiYlH0ejOd8LDcCzVq8Bhy+4vU7aax8BpH3XvbC7SlKWPQE+GLRiptApXTAHkAlUix
	 RyvMrDe6hfk1A5nyJY8zosMMYNusBo5MRSVBVjQb0WqVM65iuyGcJHHuEGJE2VqgYD
	 yxGScDfRLLVdZWzHZjeD4282ntTExrav0RZaNZXUF97j9loV83FMwxLg6kO6bDUTCL
	 R/HrpjmhbfGTQ==
Date: Sun, 12 Apr 2026 14:42:20 +0000
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
From: =?utf-8?Q?Micha=C5=82_Kruszewski?= <mkru@protonmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Alexander Shiyan <eagle.alexander923@gmail.com>
Message-ID: <9yV-_PJ1IiFlBtdCQbg6-KMPRN6SV1Byj0nc6TbEwSzN0VfsAoHTwiKdZ6u-E3vJpn1Nv6fvqp9cF_4WKjjL8gsAw8PjCSzVAkp6GBaRmE4=@protonmail.com>
In-Reply-To: <3b66a66c-bf1f-4248-9e71-8320cbdf2bb4@pengutronix.de>
References: <mO0lDEdknvuZ-6R4RSHJePbDBcwiBmMAZB_d_sZMBEWJKoRltrWPiQqPxiF3Pukxv8_JAhFxG7-RFL5VUbOnDpwOEJ2_HkmE7lfSVEFA5bs=@protonmail.com> <be11f271-1d48-4db4-b06e-f3862264105f@pengutronix.de> <mTw4y_xR5aiHEkjdE2rA6eEGvVkxqees8prnFukfaV5DSv4qcIUBmdtZJ--nwcZQjjf_84O-TDQ8cBHlZubeOfUZeInYOK76kyxGVFxrbvc=@protonmail.com> <9ae2b9e7-c83d-478e-83b3-9a6f82562259@pengutronix.de> <uQ0wdkwojjz9oEqfuP5-wjYVdqShnu7Gb_zBE2IF0Nam7xR4HVUhENT8jTlVwnpDeG0NPB-ACdZSShnYWT_nLatBEhXq6pJ6YfEpBkxOqZs=@protonmail.com> <85359e8c-33a0-46d4-8f3c-df0250af1e9e@pengutronix.de> <HwgwAP9KjUztYR9V4ATyVNq5qwsrMJg60gqfmSoqZiIBTjWxsSnl-9onCczoMYZV0xPuGsvHSpLULwjqaFuVS-iWjJgCsbYv0uzAw3Ivn4w=@protonmail.com> <01a6de41-3e26-474f-9a90-d69e5d54cfe4@pengutronix.de> <3ncy-rlTwRP1gwmOxD_5J8SJ1F83HGNRqDo6esA_cyWD39ZOYX77Smf4Utanw7Lw94P6owMxtKeH2-Ej3wOti6mFH6dToHXe_Bqrtby0l18=@protonmail.com> <3b66a66c-bf1f-4248-9e71-8320cbdf2bb4@pengutronix.de>
Feedback-ID: 2463531:user:proton
X-Pm-Message-ID: a65dcc7c5d1d08dff1c0c2f02cb971bcffc5248e
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260412_074230_570430_B7BE14BA 
X-CRM114-Status: GOOD (  65.41  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Compiling barebox without PBL and using dts from Linux dts upstream for Zynq SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


It does not work.
No matter whether I change ENTRY_FUNCTION_WITHSTACK() to 0x200000.

I see that both VirtAddr and PhysAddr of the executable section in your cas=
e are set to 0.
I am not sure this is safe.
u-boot uses 0x04000000.

I enabled Zynq FSBL logging.
In the case of barebox, the FSBL for some reason thinks there is no section=
 to hand off to.

This is the log for u-boot:

FPGA Done !
In FsblHookAfterBitstreamDload function
Partition Number: 12884901890
Header Dump
Image Word Len: 0x000423FC
Data Word Len: 0x000423FC
Partition Word Len:0x000423FC
Load Addr: 0x04000000
Exec Addr: 0x04000000
Partition Start: 0x000FDE20
Partition Attr: 0x00000010
Partition Checksum Offset: 0x00000000
Section Count: 0x00000001
Checksum: 0xF7E3B37A
Application
Handoff Address: 0x04000000
In FsblHookBeforeHandoff function
SUCCESSFUL_HANDOFF
FSBL Status =3D 0xE0001000
U-Boot 2026.01-00518-gc05dba22f1f2-dirty (Feb 06 2026 - 13:18:15 +0100)

and this is the log for barebox:

FPGA Done !
In FsblHookAfterBitstreamDload function
Partition Number: 17179869186
Header Dump
Image Word Len: 0x000017EA
Data Word Len: 0x000017EA
Partition Word Len:0x000017EA
Load Addr: 0x00000000
Exec Addr: 0x00000000
Partition Start: 0x000FDE20
Partition Attr: 0x00000010
Partition Checksum Offset: 0x00000000
Section Count: 0x00000002
Checksum: 0xFFEFD7AF
Application
Handoff Address: 0x00000000
In FsblHookBeforeHandoff function
No Execution Address JTAG handoff


Best regards,
Micha=C5=82 Kruszewski


Sent with Proton Mail secure email.

On Friday, April 10th, 2026 at 1:11 PM, Ahmad Fatoum <a.fatoum@pengutronix.=
de> wrote:

> Hi,
>=20
> On 4/8/26 7:43 AM, Micha=C5=82 Kruszewski wrote:
> >> But first can you verify that using images/start_avnet_zedboard.pbl wi=
th
> >> DT replaced as described in a previous message of mine successfully
> >> boots to shell?
> >
> > No, it does not boot to shell.
> > I have replaced:
> >
> > -#include <arm/xilinx/zynq-zed.dts>
> > +/include/ "../../../dts/src/arm/xilinx/zynq-zturn-v5.dts"
> >
> > in arch/arm/dts/zynq-zed.dts file.
> >
> > Then I used images/start_avnet_zedboard.pbl for boot.bin generation.
> > I see no barebox output in terminal.
>=20
> Please give this patch a try:
>=20
> https://github.com/a3f/barebox/commit/1dc352b5de6e03429010a23ce6804a3e4c7=
109e1
>=20
> The image will be called start_myir_zturn.elf.
>=20
> If this is also completely silent, try changing the zero in
> ENTRY_FUNCTION_WITHSTACK() to 0x200000.
>=20
> Cheers,
> Ahmad
>=20
> >
> > Regards,
> > Micha=C5=82 Kruszewski
> >
> >
> > Sent with Proton Mail secure email.
> >
> > On Tuesday, April 7th, 2026 at 3:22 PM, Ahmad Fatoum <a.fatoum@pengutro=
nix.de> wrote:
> >
> >> Hello Micha=C5=82,
> >>
> >> I hope you had a please Easter.
> >>
> >> On 3/27/26 11:37 AM, Micha=C5=82 Kruszewski wrote:
> >>> Of course, due to the hurry, I made a mistake in my previous message.
> >>> The program for the boot.bin generation is called bootgen not bootbin=
.
> >>>
> >>> You can find AMD bootgen user guide here:
> >>>   https://docs.amd.com/r/en-US/ug1283-bootgen-user-guide/Introduction=
.
> >>>
> >>> The ELF file provided to the bootgen can have multiple loadable secti=
ons, each of which forms a partition in the boot image.
> >>> The AMD/Xilinx FSBL will load and hand-off execution to the next exec=
utable partition found in the boot.bin file.
> >>> The u-boot.elf file has one LOAD section:
> >>>   [user@host] readelf -l u-boot.elf
> >>>   Elf file type is EXEC (Executable file)
> >>>   Entry point 0x4000000
> >>>   There is 1 program header, starting at offset 52
> >>>   Program Headers:
> >>>     Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg=
 Align
> >>>     LOAD           0x010000 0x04000000 0x04000000 0x108ff0 0x108ff0 R=
W  0x10000
> >>>    Section to Segment mapping:
> >>>     Segment Sections...
> >>>      00     .data
> >>> The readelf for barebox shows 3 LOAD sections and 1 DYNAMIC section.
> >>
> >> This is true for the "barebox" binary, but if you check the
> >> images/start_avnet_zedboard.pbl, the situation is different. It does
> >> have multiple sections too, but the initial LOAD section contains
> >> everything placed linearly.
> >>
> >>> The second difference is that Elf file type for u-boot is EXEC (Execu=
table file), for barebox DYN (Position-Independent Executable file).
> >>
> >> I suspect that the ELF type doesn't actually matter, but we can
> >> easily change it should it really be needed.
> >>
> >>> The bootgen user guide has the table 49 with the following note for t=
he ELF file format:
> >>> "Symbols and headers removed."
> >>> However, it is not clear whether bootgen automatically removes symbos=
ls and headers, or whether it expects the elf file without symbols and head=
ers.
> >>
> >> This is easily done with the strip command.
> >>
> >>> Now, I would like to describe a few ideas and potential problems.
> >>> I am by far not bootloaders expert.
> >>> However, I had to boot and debug booting on a few custom and off-the-=
shelf boards with AMD/Xilinx SoCs and MPSoCs.
> >>> All the things I write below are related to booting ADM/Xilinx chips =
only.
> >>>
> >>>
> >>> There are 2 alternative paths you may chose when trying to boot AMD/X=
ilinx SoCs.
> >>>
> >>> Path 1: The no-FSBL path
> >>> This is the path currently supported by barebox.
> >>> You do not want to utilize the AMD/Xilinx automatically generated FSB=
L.
> >>> In such a case, you have to define a board, and provide C code for th=
e low-level board initialization.
> >>> The barebox PBL does the FSBL job in this case.
> >>> I think this path is fine for hobby projects and off-the-shelf boards=
 when you want to quickly get things running.
> >>> However, I am not a fan of this path in professional projects because=
 of the following reasons:
> >>>   a) The FSBL code is automatically generated, it may include some wo=
rkarounds or fixes for hardware bugs.
> >>>      The copied low-level initialization C code may potentially miss =
them.
> >>
> >> If you don't update your FPGA toolchain, you may miss these issues als=
o
> >> and we have been burnt a lot in the past with FPGA toolchains adding
> >> subtle breakage all around.
> >>
> >>>   b) Forget about getting official support from AMD/Xilinx if you men=
tion you don't use the official FSBL for boot.
> >>
> >> Yes, if you need FAE support, they may require you to reproduce using
> >> their bootloader.
> >>
> >>>
> >>> Path 2: The FSBL path
> >>> For me, this is the way to go in professional projects.
> >>> Barebox currently does not support this path.
> >>> In this case, you do not want to be forced to define a board.
> >>> This is simply pointless, the FSBL is responsible for initializing th=
e low-level stuff.
> >>> All you need to boot Linux when FSBL stops execution is some SSBL and=
 device tree.
> >>
> >> I see your point.
> >>
> >>> Now, what a support for path 2 in the barebox could look like.
> >>> We could use the concept of the virtual board.
> >>> The virtual board is a board that:
> >>>   - is assumed to already be low-level initialized when barebox start=
s running,
> >>>   - can accept arbitrary device tree,
> >>>   - should not be bound to any specific device tree by default.
> >>> The boilerplate related to the board definition should not exist for =
the virtual board.
> >>
> >> Well, the boilerplate will exist, but you wouldn't need to modify it.
> >> The generic board would be just an extra image produced in the barebox
> >> build.
> >>
> >>> What the user experience would look like:
> >>>   1. make zynq_virt_defconfig,
> >>>   2. open menuconfig,
> >>>   3. find and set config containing path for the device tree file (ca=
n be out of tree),
> >>
> >> Linux regularly breaks forward and to a lesser degree backwards
> >> compatibility for device tree. We can make it possible to reference a
> >> device tree in dts/, but I don't want to make it possible to point an
> >> arbitrary device tree where it's unclear if the binding are compatible
> >> with barebox.
> >>
> >> If someone wants to inject a device tree, they should copy its source
> >> into barebox.
> >>
> >>>   4. make,
> >>>   5. copy the required elf and/or bin files to your project.
> >>
> >> This is doable, but I'd prefer a new images/barebox-zynq-ssbl.img that=
's
> >> just an extra image generated from the normal zynq_virt_defconfig.
> >>
> >>
> >>>
> >>> The u-boot has a similar concept of virt defconfigs, for example:
> >>> xilinx_versal_virt_defconfig
> >>> xilinx_zynqmp_virt_defconfig
> >>> xilinx_zynq_virt_defconfig
> >>
> >> I see. I haven't worked myself with the Zynq, so I was not aware of ho=
w
> >> it's handled in U-Boot.
> >>
> >>> What potential problems do I see?
> >>> The bootgen handles elf files with multiple loadable sections by putt=
ing each section into a separate partition.
> >>> The FSBL simply loads and hands-off to the next executable partition =
from the boot.bin.
> >>> I do not know how barebox works and prepares images.
> >>
> >> That's not a problem. As mentioned in previous mails, barebox/vmbarebo=
x
> >> is the wrong image to use however you look at it. You always need an
> >> image with PBL, even if the PBL only does decompression and passing
> >> along the DT without any lowlevel HW initialization at all.
> >>
> >>> However I can see 3 potential scenarios.
> >>
> >> [snip]
> >>
> >>> Unfortunately, I do not have enough skills to apply required changes =
to barebox to test these ideas on my own.
> >>> However, I would be more than happy to test your changes.
> >>
> >> Thanks and I would like to take you up on the offer.
> >>
> >> But first can you verify that using images/start_avnet_zedboard.pbl wi=
th
> >> DT replaced as described in a previous message of mine successfully
> >> boots to shell?
> >>
> >> Once we know that the ELF generated is ok in principle I can look into
> >> implementing a virt/ssbl image
> >>
> >>> Let me know what you think.
> >>
> >> Cheers,
> >> Ahmad
> >>
> >>>
> >>> Regards,
> >>> Micha=C5=82 Kruszewski
> >>>
> >>
> >> --
> >> Pengutronix e.K.                  |                             |
> >> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> >> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> >> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> >>
> >>
> >>
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


