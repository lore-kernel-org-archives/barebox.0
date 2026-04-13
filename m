Delivery-date: Mon, 13 Apr 2026 17:08:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIu9-00BkqQ-0I
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 17:08:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIu7-0004Fu-Nl
	for lore@pengutronix.de; Mon, 13 Apr 2026 17:08:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:From:
	To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gGIC3fGSJbthX+7GnQqvKRIzGilGy/gMXnvO43W/HmI=; b=ndIwsG2gAaYwpoxakzJEJraPVm
	8vJrUrnOwpZtw7/DE8JQyfwFwrwLD+hi2BPeOmR2BKbkGHMRChk2Pcmr9ZpwcZhePdkEkPT8QmL+H
	ZULt0fgayRcggJGoAmh77p1hcB2yv54T4gvbMAPPaeMHrcOzFBuVEedRkl8oczwN63zxBFaS+MFMb
	2LrBsDzWZVKbG+rM+N0eFrr/kY3Gx/2NDdp/c8o9BCCsPifGIysWlGMnNxLlTAlHN+SvqMnwmOd8E
	NpAMEDWiWUN9N+ziMj8KTbhA6FrCr+6ZNIegzlS8bHof+OGwoXYJHM2mBOyBWvDZCdAoXLuOl0DCR
	8VmynKQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIta-0000000FvxY-0JxZ;
	Mon, 13 Apr 2026 15:08:14 +0000
Received: from mail-24426.protonmail.ch ([109.224.244.26])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCItX-0000000FvvY-1N9J
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 15:08:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1776092886; x=1776352086;
	bh=gGIC3fGSJbthX+7GnQqvKRIzGilGy/gMXnvO43W/HmI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Ntlo4B1ch7ijfRHYW2wKaB+Q7KH0V3cntJY8x5d8T3k+VMVCoT/w3KYZY/P6nU444
	 8aEBq+8Qxw5SXXhQKiFZyvafGGomiTILpoGtouQm81u0nQj7zG/dygd9AdnAtR88Dg
	 ghvOjKqesqt4+kztr5bG0qcDG4oeADicNJA2e7k1bGeD3tMrn6m1/qnoYkPWPBZ0UN
	 n8Iwzoe9PIz9gBFoRI8juoR+lbCh+vRGVUne+Hher45AHoryoQIjAgimdRYl07MqqA
	 6ij4S0fIMo0YxReegxIsAZ3tRzeZfQ6n/18voWggbOJuH7gOU/Bz62SiGt+vu7RcVt
	 uDfQ4+vgo0pbA==
Date: Mon, 13 Apr 2026 15:08:01 +0000
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
From: =?utf-8?Q?Micha=C5=82_Kruszewski?= <mkru@protonmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Alexander Shiyan <eagle.alexander923@gmail.com>
Message-ID: <lH_4VFZmrwSWbTeYb5JYSuVn11cyjDvh8fzjXlW8s9sEAdEK7cVl7oiaMWMap6_n2N6iLCxLiYk7x229wjNiR7n7rwAQr3KZpl2DVpcHsNk=@protonmail.com>
In-Reply-To: <efaf763d-eee6-4897-b592-93d4294029df@pengutronix.de>
References: <mO0lDEdknvuZ-6R4RSHJePbDBcwiBmMAZB_d_sZMBEWJKoRltrWPiQqPxiF3Pukxv8_JAhFxG7-RFL5VUbOnDpwOEJ2_HkmE7lfSVEFA5bs=@protonmail.com> <HwgwAP9KjUztYR9V4ATyVNq5qwsrMJg60gqfmSoqZiIBTjWxsSnl-9onCczoMYZV0xPuGsvHSpLULwjqaFuVS-iWjJgCsbYv0uzAw3Ivn4w=@protonmail.com> <01a6de41-3e26-474f-9a90-d69e5d54cfe4@pengutronix.de> <3ncy-rlTwRP1gwmOxD_5J8SJ1F83HGNRqDo6esA_cyWD39ZOYX77Smf4Utanw7Lw94P6owMxtKeH2-Ej3wOti6mFH6dToHXe_Bqrtby0l18=@protonmail.com> <3b66a66c-bf1f-4248-9e71-8320cbdf2bb4@pengutronix.de> <9yV-_PJ1IiFlBtdCQbg6-KMPRN6SV1Byj0nc6TbEwSzN0VfsAoHTwiKdZ6u-E3vJpn1Nv6fvqp9cF_4WKjjL8gsAw8PjCSzVAkp6GBaRmE4=@protonmail.com> <9f7738f9-83c2-4184-a37e-731788dd3346@pengutronix.de> <XOn3RSpzP3jVFW1SXqcqdHfwK6CtQ7u5QSSrhdU8JVtjPIGns9eUXuhmcmm2BSWcFc__ueTblugV3A_oJEHqsY8Jqjc6B2ndmSzUstTki3s=@protonmail.com> <efaf763d-eee6-4897-b592-93d4294029df@pengutronix.de>
Feedback-ID: 2463531:user:proton
X-Pm-Message-ID: 3b2fb2eb52c960b63ad9eae76141f2afa026d25d
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_080811_686562_BF2B72A6 
X-CRM114-Status: GOOD (  57.51  )
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
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: Compiling barebox without PBL and using dts from Linux dts upstream for Zynq SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Good news.
I am able to boot barebox and Linux now.
Just one minor issue.
barebox prints some garbage before it starts:

FSBL Status =3D 0xE0001000

=EF=BF=BD=3D=EF=BF=BDH=EF=BF=BD
         !1k=CC=A8=EF=BF=BD!H=EF=BF=BDsH=EF=BF=BDo=EF=BF=BD9=EF=BF=BD<9=
=CF=ADsMJ!=EF=BF=BDH=EF=BF=BDN=EF=BF=BDo=EF=BF=BDMJ=EF=BF=BDH=EF=BF=BDN=
=EF=BF=BDo=EF=BF=BDMJ!=EF=BF=BDH=EF=BF=BDN=EF=BF=BDo=EF=BF=BD9
                                                                =EF=BF=
=BDkMJKJH=EF=BF=BDN=EF=BF=BDo=EF=BF=BDJH=EF=BF=BDN=EF=BF=BDo=EF=BF=BDSwitch=
 to console [cs1]


barebox 2026.03.0-02720-g57db6e3f7c05 #8 Mon Apr 13 16:53:33 CEST 2026


Board: Zynq Z-Turn MYIR Board V5
deep-probe: disabled in device tree
ERROR: could not get clock /axi/dma-controller@f8003000:apb_pclk(0)
ERROR: could not get clock /axi/etb@f8801000:apb_pclk(0)
ERROR: could not get clock /axi/tpiu@f8803000:apb_pclk(0)
ERROR: could not get clock /axi/funnel@f8804000:apb_pclk(0)
ERROR: could not get clock /axi/ptm@f889c000:apb_pclk(0)
ERROR: could not get clock /axi/ptm@f889d000:apb_pclk(0)
mdio_bus: miibus0: probed
macb e000b000.ethernet@e000b000.of: Cadence GEM at 0xe000b000
arasan-sdhci e0100000.mmc@e0100000.of: registered as mmc0
malloc space: 0x17e00000 -> 0x1fdfffff (size 128 MiB)
arasan-sdhci e0100000.mmc@e0100000.of: error while transferring data for co=
mmand 6
arasan-sdhci e0100000.mmc@e0100000.of: state =3D 0x01ff0202 , interrupt =3D=
 0x00208000
mmc0: Card's startup fails with -74
barebox-environment chosen:environment-sd.of: probe failed: No such file or=
 directory
environment load /dev/env0: No such file or directory
Maybe you have to create the partition.

Hit any to stop autoboot:    1
barebox@Zynq Z-Turn MYIR Board V5:/



Regards,
Micha=C5=82 Kruszewski


Sent with Proton Mail secure email.

On Monday, April 13th, 2026 at 3:58 PM, Ahmad Fatoum <a.fatoum@pengutronix.=
de> wrote:

> Hello,
>=20
> On 4/13/26 9:31 AM, Micha=C5=82 Kruszewski wrote:
> >> It isn't if the FSBL isn't able to load position-independent executabl=
es.
> >
> > I am pretty sure bootgen uses the PhysAddr (or VirtAddr) to determine w=
here to load the partition.
> > The address from at 0x0 is OCM, not DDR.
> > I have never seen people loading the second or third stage bootloaders =
to OCM.
> >
> > I tried barebox-myir-zturn.elf.exe, no change.
> >
> > Partition Number: 12884901890
> > Header Dump
> > Image Word Len: 0x0000C06B
> > Data Word Len: 0x0000C06B
> > Partition Word Len:0x0000C06B
> > Load Addr: 0x00000000
> > Exec Addr: 0x04000000
> > Partition Start: 0x000FDE20
> > Partition Attr: 0x00000010
> > Partition Checksum Offset: 0x00000000
> > Section Count: 0x00000001
> > Checksum: 0xFBEDDE2D
> > Application
> > Handoff Address: 0x00000000
> > In FsblHookBeforeHandoff function
> > No Execution Address JTAG handoff
> >
> > I think we need position code with PhysAddr and VirtAddr other than 0x0=
.
> > Or maybe position independent code, but with another address.
>=20
> That it was saying 0 was not intended. I pushed my branch again, it
> looks like this now:
>=20
> Program Headers:
>   Type        Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align
>   LOAD        0x001000 0x04000000 0x04000000 0x2faf0 0x2faf0 RW  0x1000
>   GNU_STACK   0x000000 0x00000000 0x00000000 0x00000 0x00000 RW  0x10
>=20
> Let me know how it goes.
>=20
> Cheers,
> Ahmad
>=20
>=20
> >
> > Regards,
> > Micha=C5=82 Kruszewski
> >
> >
> > Sent with Proton Mail secure email.
> >
> > On Sunday, April 12th, 2026 at 8:50 PM, Ahmad Fatoum <a.fatoum@pengutro=
nix.de> wrote:
> >
> >> Hello Micha=C5=82,
> >>
> >> On 4/12/26 16:42, Micha=C5=82 Kruszewski wrote:
> >>>
> >>> It does not work.
> >>> No matter whether I change ENTRY_FUNCTION_WITHSTACK() to 0x200000.
> >>>
> >>> I see that both VirtAddr and PhysAddr of the executable section in yo=
ur case are set to 0.
> >>> I am not sure this is safe.
> >>> u-boot uses 0x04000000.
> >>
> >> It isn't if the FSBL isn't able to load position-independent executabl=
es.
> >>
> >>> I enabled Zynq FSBL logging.
> >>> In the case of barebox, the FSBL for some reason thinks there is no s=
ection to hand off to.
> >>>
> >>> This is the log for u-boot:
> >>
> >> Thanks, this is useful. Could you pull my rft-myir-zturn branch again,
> >> build it and test barebox-myir-zturn.elf.exe?
> >>
> >> Same procedure as before with each of the two stack addresses.
> >>
> >> If it doesn't work, I am interested to see the FSBL log output.
> >>
> >> Thanks,
> >> Ahmad
> >>
> >>>
> >>> FPGA Done !
> >>> In FsblHookAfterBitstreamDload function
> >>> Partition Number: 12884901890
> >>> Header Dump
> >>> Image Word Len: 0x000423FC
> >>> Data Word Len: 0x000423FC
> >>> Partition Word Len:0x000423FC
> >>> Load Addr: 0x04000000
> >>> Exec Addr: 0x04000000
> >>> Partition Start: 0x000FDE20
> >>> Partition Attr: 0x00000010
> >>> Partition Checksum Offset: 0x00000000
> >>> Section Count: 0x00000001
> >>> Checksum: 0xF7E3B37A
> >>> Application
> >>> Handoff Address: 0x04000000
> >>> In FsblHookBeforeHandoff function
> >>> SUCCESSFUL_HANDOFF
> >>> FSBL Status =3D 0xE0001000
> >>> U-Boot 2026.01-00518-gc05dba22f1f2-dirty (Feb 06 2026 - 13:18:15 +010=
0)
> >>>
> >>> and this is the log for barebox:
> >>>
> >>> FPGA Done !
> >>> In FsblHookAfterBitstreamDload function
> >>> Partition Number: 17179869186
> >>> Header Dump
> >>> Image Word Len: 0x000017EA
> >>> Data Word Len: 0x000017EA
> >>> Partition Word Len:0x000017EA
> >>> Load Addr: 0x00000000
> >>> Exec Addr: 0x00000000
> >>> Partition Start: 0x000FDE20
> >>> Partition Attr: 0x00000010
> >>> Partition Checksum Offset: 0x00000000
> >>> Section Count: 0x00000002
> >>> Checksum: 0xFFEFD7AF
> >>> Application
> >>> Handoff Address: 0x00000000
> >>> In FsblHookBeforeHandoff function
> >>> No Execution Address JTAG handoff
> >>>
> >>>
> >>> Best regards,
> >>> Micha=C5=82 Kruszewski
> >>>
> >>>
> >>> Sent with Proton Mail secure email.
> >>>
> >>> On Friday, April 10th, 2026 at 1:11 PM, Ahmad Fatoum <a.fatoum@pengut=
ronix.de> wrote:
> >>>
> >>>> Hi,
> >>>>
> >>>> On 4/8/26 7:43 AM, Micha=C5=82 Kruszewski wrote:
> >>>>>> But first can you verify that using images/start_avnet_zedboard.pb=
l with
> >>>>>> DT replaced as described in a previous message of mine successfull=
y
> >>>>>> boots to shell?
> >>>>>
> >>>>> No, it does not boot to shell.
> >>>>> I have replaced:
> >>>>>
> >>>>> -#include <arm/xilinx/zynq-zed.dts>
> >>>>> +/include/ "../../../dts/src/arm/xilinx/zynq-zturn-v5.dts"
> >>>>>
> >>>>> in arch/arm/dts/zynq-zed.dts file.
> >>>>>
> >>>>> Then I used images/start_avnet_zedboard.pbl for boot.bin generation=
.
> >>>>> I see no barebox output in terminal.
> >>>>
> >>>> Please give this patch a try:
> >>>>
> >>>> https://github.com/a3f/barebox/commit/1dc352b5de6e03429010a23ce6804a=
3e4c7109e1
> >>>>
> >>>> The image will be called start_myir_zturn.elf.
> >>>>
> >>>> If this is also completely silent, try changing the zero in
> >>>> ENTRY_FUNCTION_WITHSTACK() to 0x200000.
> >>>>
> >>>> Cheers,
> >>>> Ahmad
> >>>>
> >>>>>
> >>>>> Regards,
> >>>>> Micha=C5=82 Kruszewski
> >>>>>
> >>>>>
> >>>>> Sent with Proton Mail secure email.
> >>>>>
> >>>>> On Tuesday, April 7th, 2026 at 3:22 PM, Ahmad Fatoum <a.fatoum@peng=
utronix.de> wrote:
> >>>>>
> >>>>>> Hello Micha=C5=82,
> >>>>>>
> >>>>>> I hope you had a please Easter.
> >>>>>>
> >>>>>> On 3/27/26 11:37 AM, Micha=C5=82 Kruszewski wrote:
> >>>>>>> Of course, due to the hurry, I made a mistake in my previous mess=
age.
> >>>>>>> The program for the boot.bin generation is called bootgen not boo=
tbin.
> >>>>>>>
> >>>>>>> You can find AMD bootgen user guide here:
> >>>>>>>   https://docs.amd.com/r/en-US/ug1283-bootgen-user-guide/Introduc=
tion.
> >>>>>>>
> >>>>>>> The ELF file provided to the bootgen can have multiple loadable s=
ections, each of which forms a partition in the boot image.
> >>>>>>> The AMD/Xilinx FSBL will load and hand-off execution to the next =
executable partition found in the boot.bin file.
> >>>>>>> The u-boot.elf file has one LOAD section:
> >>>>>>>   [user@host] readelf -l u-boot.elf
> >>>>>>>   Elf file type is EXEC (Executable file)
> >>>>>>>   Entry point 0x4000000
> >>>>>>>   There is 1 program header, starting at offset 52
> >>>>>>>   Program Headers:
> >>>>>>>     Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz =
 Flg Align
> >>>>>>>     LOAD           0x010000 0x04000000 0x04000000 0x108ff0 0x108f=
f0 RW  0x10000
> >>>>>>>    Section to Segment mapping:
> >>>>>>>     Segment Sections...
> >>>>>>>      00     .data
> >>>>>>> The readelf for barebox shows 3 LOAD sections and 1 DYNAMIC secti=
on.
> >>>>>>
> >>>>>> This is true for the "barebox" binary, but if you check the
> >>>>>> images/start_avnet_zedboard.pbl, the situation is different. It do=
es
> >>>>>> have multiple sections too, but the initial LOAD section contains
> >>>>>> everything placed linearly.
> >>>>>>
> >>>>>>> The second difference is that Elf file type for u-boot is EXEC (E=
xecutable file), for barebox DYN (Position-Independent Executable file).
> >>>>>>
> >>>>>> I suspect that the ELF type doesn't actually matter, but we can
> >>>>>> easily change it should it really be needed.
> >>>>>>
> >>>>>>> The bootgen user guide has the table 49 with the following note f=
or the ELF file format:
> >>>>>>> "Symbols and headers removed."
> >>>>>>> However, it is not clear whether bootgen automatically removes sy=
mbosls and headers, or whether it expects the elf file without symbols and =
headers.
> >>>>>>
> >>>>>> This is easily done with the strip command.
> >>>>>>
> >>>>>>> Now, I would like to describe a few ideas and potential problems.
> >>>>>>> I am by far not bootloaders expert.
> >>>>>>> However, I had to boot and debug booting on a few custom and off-=
the-shelf boards with AMD/Xilinx SoCs and MPSoCs.
> >>>>>>> All the things I write below are related to booting ADM/Xilinx ch=
ips only.
> >>>>>>>
> >>>>>>>
> >>>>>>> There are 2 alternative paths you may chose when trying to boot A=
MD/Xilinx SoCs.
> >>>>>>>
> >>>>>>> Path 1: The no-FSBL path
> >>>>>>> This is the path currently supported by barebox.
> >>>>>>> You do not want to utilize the AMD/Xilinx automatically generated=
 FSBL.
> >>>>>>> In such a case, you have to define a board, and provide C code fo=
r the low-level board initialization.
> >>>>>>> The barebox PBL does the FSBL job in this case.
> >>>>>>> I think this path is fine for hobby projects and off-the-shelf bo=
ards when you want to quickly get things running.
> >>>>>>> However, I am not a fan of this path in professional projects bec=
ause of the following reasons:
> >>>>>>>   a) The FSBL code is automatically generated, it may include som=
e workarounds or fixes for hardware bugs.
> >>>>>>>      The copied low-level initialization C code may potentially m=
iss them.
> >>>>>>
> >>>>>> If you don't update your FPGA toolchain, you may miss these issues=
 also
> >>>>>> and we have been burnt a lot in the past with FPGA toolchains addi=
ng
> >>>>>> subtle breakage all around.
> >>>>>>
> >>>>>>>   b) Forget about getting official support from AMD/Xilinx if you=
 mention you don't use the official FSBL for boot.
> >>>>>>
> >>>>>> Yes, if you need FAE support, they may require you to reproduce us=
ing
> >>>>>> their bootloader.
> >>>>>>
> >>>>>>>
> >>>>>>> Path 2: The FSBL path
> >>>>>>> For me, this is the way to go in professional projects.
> >>>>>>> Barebox currently does not support this path.
> >>>>>>> In this case, you do not want to be forced to define a board.
> >>>>>>> This is simply pointless, the FSBL is responsible for initializin=
g the low-level stuff.
> >>>>>>> All you need to boot Linux when FSBL stops execution is some SSBL=
 and device tree.
> >>>>>>
> >>>>>> I see your point.
> >>>>>>
> >>>>>>> Now, what a support for path 2 in the barebox could look like.
> >>>>>>> We could use the concept of the virtual board.
> >>>>>>> The virtual board is a board that:
> >>>>>>>   - is assumed to already be low-level initialized when barebox s=
tarts running,
> >>>>>>>   - can accept arbitrary device tree,
> >>>>>>>   - should not be bound to any specific device tree by default.
> >>>>>>> The boilerplate related to the board definition should not exist =
for the virtual board.
> >>>>>>
> >>>>>> Well, the boilerplate will exist, but you wouldn't need to modify =
it.
> >>>>>> The generic board would be just an extra image produced in the bar=
ebox
> >>>>>> build.
> >>>>>>
> >>>>>>> What the user experience would look like:
> >>>>>>>   1. make zynq_virt_defconfig,
> >>>>>>>   2. open menuconfig,
> >>>>>>>   3. find and set config containing path for the device tree file=
 (can be out of tree),
> >>>>>>
> >>>>>> Linux regularly breaks forward and to a lesser degree backwards
> >>>>>> compatibility for device tree. We can make it possible to referenc=
e a
> >>>>>> device tree in dts/, but I don't want to make it possible to point=
 an
> >>>>>> arbitrary device tree where it's unclear if the binding are compat=
ible
> >>>>>> with barebox.
> >>>>>>
> >>>>>> If someone wants to inject a device tree, they should copy its sou=
rce
> >>>>>> into barebox.
> >>>>>>
> >>>>>>>   4. make,
> >>>>>>>   5. copy the required elf and/or bin files to your project.
> >>>>>>
> >>>>>> This is doable, but I'd prefer a new images/barebox-zynq-ssbl.img =
that's
> >>>>>> just an extra image generated from the normal zynq_virt_defconfig.
> >>>>>>
> >>>>>>
> >>>>>>>
> >>>>>>> The u-boot has a similar concept of virt defconfigs, for example:
> >>>>>>> xilinx_versal_virt_defconfig
> >>>>>>> xilinx_zynqmp_virt_defconfig
> >>>>>>> xilinx_zynq_virt_defconfig
> >>>>>>
> >>>>>> I see. I haven't worked myself with the Zynq, so I was not aware o=
f how
> >>>>>> it's handled in U-Boot.
> >>>>>>
> >>>>>>> What potential problems do I see?
> >>>>>>> The bootgen handles elf files with multiple loadable sections by =
putting each section into a separate partition.
> >>>>>>> The FSBL simply loads and hands-off to the next executable partit=
ion from the boot.bin.
> >>>>>>> I do not know how barebox works and prepares images.
> >>>>>>
> >>>>>> That's not a problem. As mentioned in previous mails, barebox/vmba=
rebox
> >>>>>> is the wrong image to use however you look at it. You always need =
an
> >>>>>> image with PBL, even if the PBL only does decompression and passin=
g
> >>>>>> along the DT without any lowlevel HW initialization at all.
> >>>>>>
> >>>>>>> However I can see 3 potential scenarios.
> >>>>>>
> >>>>>> [snip]
> >>>>>>
> >>>>>>> Unfortunately, I do not have enough skills to apply required chan=
ges to barebox to test these ideas on my own.
> >>>>>>> However, I would be more than happy to test your changes.
> >>>>>>
> >>>>>> Thanks and I would like to take you up on the offer.
> >>>>>>
> >>>>>> But first can you verify that using images/start_avnet_zedboard.pb=
l with
> >>>>>> DT replaced as described in a previous message of mine successfull=
y
> >>>>>> boots to shell?
> >>>>>>
> >>>>>> Once we know that the ELF generated is ok in principle I can look =
into
> >>>>>> implementing a virt/ssbl image
> >>>>>>
> >>>>>>> Let me know what you think.
> >>>>>>
> >>>>>> Cheers,
> >>>>>> Ahmad
> >>>>>>
> >>>>>>>
> >>>>>>> Regards,
> >>>>>>> Micha=C5=82 Kruszewski
> >>>>>>>
> >>>>>>
> >>>>>> --
> >>>>>> Pengutronix e.K.                  |                             |
> >>>>>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> >>>>>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> >>>>>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> >>>>>>
> >>>>>>
> >>>>>>
> >>>>>
> >>>>
> >>>> --
> >>>> Pengutronix e.K.                  |                             |
> >>>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> >>>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> >>>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> >>>>
> >>>>
> >>>>
> >>>
> >>
> >>
> >> --
> >> Pengutronix e.K.                           |                          =
   |
> >> Steuerwalder Str. 21                       | http://www.pengutronix.de=
/  |
> >> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0 =
   |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-55=
55 |
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


