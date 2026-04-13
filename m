Delivery-date: Mon, 13 Apr 2026 17:38:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCJND-00BlQ9-2e
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 17:38:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCJNC-0007Lh-8a
	for lore@pengutronix.de; Mon, 13 Apr 2026 17:38:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:From:
	To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HUQOLJZEKNVX3lUj7hwENnlkT+elrAf7GexKsemWep4=; b=AYAb9NGq5brtPG3L1nmIpe84ct
	sX3+bThgQ0HLG8XlVRzBgbLXa45394aW5q7feqeyVFGWs+VgbgmJZDEJsUmdXv4tteyKX5W8ZajuW
	KoSNCRbJ/EMPou0a5j3kswU84EqxU+WnO2b7P00gE0ExSbuN47cEpRgl89GdKn0Xt9bQoV/e9Mf/8
	XiEcoxRXlM1utiOh1i6jIIi8pLp8KclS9/UA80YoSlV5YtYB+wpI/6UxH2igiQA6mvEmRXptdR82b
	YwAmn4djvZS+V4x/Cw8/IVowy4OhPP1TqGzDAkgcgHueXij7FnCOTIimEST8KAV2FxyfX4AZGV8b6
	ZPuazO/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCJMe-0000000Fysw-0WpF;
	Mon, 13 Apr 2026 15:38:16 +0000
Received: from mail-43166.protonmail.ch ([185.70.43.166])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCJMa-0000000Fysa-3eWo
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 15:38:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1776094687; x=1776353887;
	bh=HUQOLJZEKNVX3lUj7hwENnlkT+elrAf7GexKsemWep4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ebDJPgrB0bVUOAnOZbeyl2xlUmaoUKaulOUjMEUGqeZHCuoX/1BDIPPrKnukJnrau
	 JGGKmE4jgo6qHOpra1IbjIpRnURJDGjs/ULpkM4lCyEzPd5j7raygZU6eSxAlwXQMq
	 JBtpNRtPm8oQlpIzl76+BUB155MMdZQ0ohdsHWaK6PvYgAzfWzQ8xwKFOGyIkvQouW
	 NSMza0tifKXdjHfmSDDkgFOdyxRy8JeFF8tgOP2/6B66zjSo/a4lq83sPN2nLR+3It
	 Dst3E+yaksE8G1Z6rd+YcgU3HH/XP6x6ar8QGCSmWS/osP+8RD+k4ZcXXeC5VnSWLr
	 5LUNyp1gR19FQ==
Date: Mon, 13 Apr 2026 15:38:06 +0000
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
From: =?utf-8?Q?Micha=C5=82_Kruszewski?= <mkru@protonmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Alexander Shiyan <eagle.alexander923@gmail.com>
Message-ID: <fck65msjOL5YR7vaHFLBTijdm8cAMWRjIGUlTjRxij8hkA-IpQo7MsdkZQDtka_OZcRyR5OqLDPpSQq6ZIL6Ct5hzqfJdYNL7_XGBuqvuM4=@protonmail.com>
In-Reply-To: <04caeb3f-e9b1-40f7-9846-489d66ed6804@pengutronix.de>
References: <mO0lDEdknvuZ-6R4RSHJePbDBcwiBmMAZB_d_sZMBEWJKoRltrWPiQqPxiF3Pukxv8_JAhFxG7-RFL5VUbOnDpwOEJ2_HkmE7lfSVEFA5bs=@protonmail.com> <3ncy-rlTwRP1gwmOxD_5J8SJ1F83HGNRqDo6esA_cyWD39ZOYX77Smf4Utanw7Lw94P6owMxtKeH2-Ej3wOti6mFH6dToHXe_Bqrtby0l18=@protonmail.com> <3b66a66c-bf1f-4248-9e71-8320cbdf2bb4@pengutronix.de> <9yV-_PJ1IiFlBtdCQbg6-KMPRN6SV1Byj0nc6TbEwSzN0VfsAoHTwiKdZ6u-E3vJpn1Nv6fvqp9cF_4WKjjL8gsAw8PjCSzVAkp6GBaRmE4=@protonmail.com> <9f7738f9-83c2-4184-a37e-731788dd3346@pengutronix.de> <XOn3RSpzP3jVFW1SXqcqdHfwK6CtQ7u5QSSrhdU8JVtjPIGns9eUXuhmcmm2BSWcFc__ueTblugV3A_oJEHqsY8Jqjc6B2ndmSzUstTki3s=@protonmail.com> <efaf763d-eee6-4897-b592-93d4294029df@pengutronix.de> <lH_4VFZmrwSWbTeYb5JYSuVn11cyjDvh8fzjXlW8s9sEAdEK7cVl7oiaMWMap6_n2N6iLCxLiYk7x229wjNiR7n7rwAQr3KZpl2DVpcHsNk=@protonmail.com> <04caeb3f-e9b1-40f7-9846-489d66ed6804@pengutronix.de>
Feedback-ID: 2463531:user:proton
X-Pm-Message-ID: de3c2c24015cc993efb967fe1e5c17a40cd3866d
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_083813_254830_4DBB2CA0 
X-CRM114-Status: GOOD (  43.10  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Compiling barebox without PBL and using dts from Linux dts upstream for Zynq SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The buardate is correct:
CONFIG_BAUDRATE=3D115200
something else must be the problem.


> Just a guess, try swapping the order of
>  mci_of_parse(&arasan_sdhci->mci);
>  sdhci_setup_host(&arasan_sdhci->sdhci);
> in drivers/mci/arasan-sdhci.c and see if it makes a difference.

It didn't help.
=EF=BF=BD=3D=EF=BF=BDH=EF=BF=BD
         !1k=CC=A8=EF=BF=BD!H=EF=BF=BDsH=EF=BF=BDo=EF=BF=BD99=CF=ADsMJ!=
=EF=BF=BDH=EF=BF=BDN=EF=BF=BDo=EF=BF=BDMJ=EF=BF=BDH=EF=BF=BDN=EF=BF=BDo=
=EF=BF=BDMJ!=EF=BF=BDH=EF=BF=BDN=EF=BF=BDo=EF=BF=BD9
                                                              =EF=BF=BDkMJK=
JH=EF=BF=BDN=EF=BF=BDo=EF=BF=BDJH=EF=BF=BDN=EF=BF=BDo=EF=BF=BDSwitch to con=
sole [cs1]


barebox 2026.03.0-02720-g57db6e3f7c05-dirty #10 Mon Apr 13 17:30:00 CEST 20=
26


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

Hit any to stop autoboot:    3
barebox@Zynq Z-Turn MYIR Board V5:/


I carried out some experiment and realized that the sd card is initialized =
correctly once after the hard power reset.
No matter whether I swap the order of:
  mci_of_parse(&arasan_sdhci->mci);
  sdhci_setup_host(&arasan_sdhci->sdhci)
It is never initialized correctly after using reset button.

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
mmc0: detected SD card version 3.0
mmc0: registered mmc0
environment load /mnt/mmc0.0/barebox.env: No such file or directory
Maybe you have to create the partition.

Hit any to stop autoboot:    3
barebox@Zynq Z-Turn MYIR Board V5:/ ls /dev/
cs0                    cs1                    full
mdio0-phy03            mem                    mmc0
mmc0.0                 mmc0.1                 null
prng                   ram0                   xilinx-fpga-manager
zero
barebox@Zynq Z-Turn MYIR Board V5:/


Regards,
Micha=C5=82 Kruszewski


Sent with Proton Mail secure email.

On Monday, April 13th, 2026 at 5:19 PM, Ahmad Fatoum <a.fatoum@pengutronix.=
de> wrote:

> Hello Micha=C5=82,
>=20
> On 4/13/26 5:08 PM, Micha=C5=82 Kruszewski wrote:
> > Good news.
> > I am able to boot barebox and Linux now.
> > Just one minor issue.
> > barebox prints some garbage before it starts:
>=20
> Nice! The early PBL console output is before parsing the DT and it seems
> the baudrate was calculated incorrectly.
>=20
> Is CONFIG_BAUDRATE of the correct value?
>=20
> Next step would be to allow replacing the DT easily. I will let you know
> when there's something to test.
>=20
> > Board: Zynq Z-Turn MYIR Board V5
> > deep-probe: disabled in device tree
>=20
> I expect that wit barebox,disable-deep-probe removed in the DT, below
> errors should dsappear.
>=20
> > ERROR: could not get clock /axi/dma-controller@f8003000:apb_pclk(0)
> > ERROR: could not get clock /axi/etb@f8801000:apb_pclk(0)
> > ERROR: could not get clock /axi/tpiu@f8803000:apb_pclk(0)
> > ERROR: could not get clock /axi/funnel@f8804000:apb_pclk(0)
> > ERROR: could not get clock /axi/ptm@f889c000:apb_pclk(0)
> > ERROR: could not get clock /axi/ptm@f889d000:apb_pclk(0)
> > mdio_bus: miibus0: probed
> > macb e000b000.ethernet@e000b000.of: Cadence GEM at 0xe000b000
> > arasan-sdhci e0100000.mmc@e0100000.of: registered as mmc0
> > malloc space: 0x17e00000 -> 0x1fdfffff (size 128 MiB)
> > arasan-sdhci e0100000.mmc@e0100000.of: error while transferring data fo=
r command 6
> > arasan-sdhci e0100000.mmc@e0100000.of: state =3D 0x01ff0202 , interrupt=
 =3D 0x00208000
> > mmc0: Card's startup fails with -74
>=20
> That's MMC_CMD_SWITCH that's failing.
>=20
> Just a guess, try swapping the order of
>=20
>   mci_of_parse(&arasan_sdhci->mci);
>   sdhci_setup_host(&arasan_sdhci->sdhci);
>=20
> in drivers/mci/arasan-sdhci.c and see if it makes a difference.
>=20
> > barebox-environment chosen:environment-sd.of: probe failed: No such fil=
e or directory
> > environment load /dev/env0: No such file or directory
>=20
> This is expected when the MMC probe had failed.
>=20
> Cheers,
> Ahmad
>=20
> > Maybe you have to create the partition.
> >
> > Hit any to stop autoboot:    1
> > barebox@Zynq Z-Turn MYIR Board V5:/
> >
> >
> >
> > Regards,
> > Micha=C5=82 Kruszewski
> >
> >
> > Sent with Proton Mail secure email.
> >
> > On Monday, April 13th, 2026 at 3:58 PM, Ahmad Fatoum <a.fatoum@pengutro=
nix.de> wrote:
> >
> >> Hello,
> >>
> >> On 4/13/26 9:31 AM, Micha=C5=82 Kruszewski wrote:
> >>>> It isn't if the FSBL isn't able to load position-independent executa=
bles.
> >>>
> >>> I am pretty sure bootgen uses the PhysAddr (or VirtAddr) to determine=
 where to load the partition.
> >>> The address from at 0x0 is OCM, not DDR.
> >>> I have never seen people loading the second or third stage bootloader=
s to OCM.
> >>>
> >>> I tried barebox-myir-zturn.elf.exe, no change.
> >>>
> >>> Partition Number: 12884901890
> >>> Header Dump
> >>> Image Word Len: 0x0000C06B
> >>> Data Word Len: 0x0000C06B
> >>> Partition Word Len:0x0000C06B
> >>> Load Addr: 0x00000000
> >>> Exec Addr: 0x04000000
> >>> Partition Start: 0x000FDE20
> >>> Partition Attr: 0x00000010
> >>> Partition Checksum Offset: 0x00000000
> >>> Section Count: 0x00000001
> >>> Checksum: 0xFBEDDE2D
> >>> Application
> >>> Handoff Address: 0x00000000
> >>> In FsblHookBeforeHandoff function
> >>> No Execution Address JTAG handoff
> >>>
> >>> I think we need position code with PhysAddr and VirtAddr other than 0=
x0.
> >>> Or maybe position independent code, but with another address.
> >>
> >> That it was saying 0 was not intended. I pushed my branch again, it
> >> looks like this now:
> >>
> >> Program Headers:
> >>   Type        Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align
> >>   LOAD        0x001000 0x04000000 0x04000000 0x2faf0 0x2faf0 RW  0x100=
0
> >>   GNU_STACK   0x000000 0x00000000 0x00000000 0x00000 0x00000 RW  0x10
> >>
> >> Let me know how it goes.
> >>
> >> Cheers,
> >> Ahmad
> >>
> >>
> >>>
> >>> Regards,
> >>> Micha=C5=82 Kruszewski
> >>>
> >>>
> >>> Sent with Proton Mail secure email.
> >>>
> >>> On Sunday, April 12th, 2026 at 8:50 PM, Ahmad Fatoum <a.fatoum@pengut=
ronix.de> wrote:
> >>>
> >>>> Hello Micha=C5=82,
> >>>>
> >>>> On 4/12/26 16:42, Micha=C5=82 Kruszewski wrote:
> >>>>>
> >>>>> It does not work.
> >>>>> No matter whether I change ENTRY_FUNCTION_WITHSTACK() to 0x200000.
> >>>>>
> >>>>> I see that both VirtAddr and PhysAddr of the executable section in =
your case are set to 0.
> >>>>> I am not sure this is safe.
> >>>>> u-boot uses 0x04000000.
> >>>>
> >>>> It isn't if the FSBL isn't able to load position-independent executa=
bles.
> >>>>
> >>>>> I enabled Zynq FSBL logging.
> >>>>> In the case of barebox, the FSBL for some reason thinks there is no=
 section to hand off to.
> >>>>>
> >>>>> This is the log for u-boot:
> >>>>
> >>>> Thanks, this is useful. Could you pull my rft-myir-zturn branch agai=
n,
> >>>> build it and test barebox-myir-zturn.elf.exe?
> >>>>
> >>>> Same procedure as before with each of the two stack addresses.
> >>>>
> >>>> If it doesn't work, I am interested to see the FSBL log output.
> >>>>
> >>>> Thanks,
> >>>> Ahmad
> >>>>
> >>>>>
> >>>>> FPGA Done !
> >>>>> In FsblHookAfterBitstreamDload function
> >>>>> Partition Number: 12884901890
> >>>>> Header Dump
> >>>>> Image Word Len: 0x000423FC
> >>>>> Data Word Len: 0x000423FC
> >>>>> Partition Word Len:0x000423FC
> >>>>> Load Addr: 0x04000000
> >>>>> Exec Addr: 0x04000000
> >>>>> Partition Start: 0x000FDE20
> >>>>> Partition Attr: 0x00000010
> >>>>> Partition Checksum Offset: 0x00000000
> >>>>> Section Count: 0x00000001
> >>>>> Checksum: 0xF7E3B37A
> >>>>> Application
> >>>>> Handoff Address: 0x04000000
> >>>>> In FsblHookBeforeHandoff function
> >>>>> SUCCESSFUL_HANDOFF
> >>>>> FSBL Status =3D 0xE0001000
> >>>>> U-Boot 2026.01-00518-gc05dba22f1f2-dirty (Feb 06 2026 - 13:18:15 +0=
100)
> >>>>>
> >>>>> and this is the log for barebox:
> >>>>>
> >>>>> FPGA Done !
> >>>>> In FsblHookAfterBitstreamDload function
> >>>>> Partition Number: 17179869186
> >>>>> Header Dump
> >>>>> Image Word Len: 0x000017EA
> >>>>> Data Word Len: 0x000017EA
> >>>>> Partition Word Len:0x000017EA
> >>>>> Load Addr: 0x00000000
> >>>>> Exec Addr: 0x00000000
> >>>>> Partition Start: 0x000FDE20
> >>>>> Partition Attr: 0x00000010
> >>>>> Partition Checksum Offset: 0x00000000
> >>>>> Section Count: 0x00000002
> >>>>> Checksum: 0xFFEFD7AF
> >>>>> Application
> >>>>> Handoff Address: 0x00000000
> >>>>> In FsblHookBeforeHandoff function
> >>>>> No Execution Address JTAG handoff
> >>>>>
> >>>>>
> >>>>> Best regards,
> >>>>> Micha=C5=82 Kruszewski
> >>>>>
> >>>>>
> >>>>> Sent with Proton Mail secure email.
> >>>>>
> >>>>> On Friday, April 10th, 2026 at 1:11 PM, Ahmad Fatoum <a.fatoum@peng=
utronix.de> wrote:
> >>>>>
> >>>>>> Hi,
> >>>>>>
> >>>>>> On 4/8/26 7:43 AM, Micha=C5=82 Kruszewski wrote:
> >>>>>>>> But first can you verify that using images/start_avnet_zedboard.=
pbl with
> >>>>>>>> DT replaced as described in a previous message of mine successfu=
lly
> >>>>>>>> boots to shell?
> >>>>>>>
> >>>>>>> No, it does not boot to shell.
> >>>>>>> I have replaced:
> >>>>>>>
> >>>>>>> -#include <arm/xilinx/zynq-zed.dts>
> >>>>>>> +/include/ "../../../dts/src/arm/xilinx/zynq-zturn-v5.dts"
> >>>>>>>
> >>>>>>> in arch/arm/dts/zynq-zed.dts file.
> >>>>>>>
> >>>>>>> Then I used images/start_avnet_zedboard.pbl for boot.bin generati=
on.
> >>>>>>> I see no barebox output in terminal.
> >>>>>>
> >>>>>> Please give this patch a try:
> >>>>>>
> >>>>>> https://github.com/a3f/barebox/commit/1dc352b5de6e03429010a23ce680=
4a3e4c7109e1
> >>>>>>
> >>>>>> The image will be called start_myir_zturn.elf.
> >>>>>>
> >>>>>> If this is also completely silent, try changing the zero in
> >>>>>> ENTRY_FUNCTION_WITHSTACK() to 0x200000.
> >>>>>>
> >>>>>> Cheers,
> >>>>>> Ahmad
> >>>>>>
> >>>>>>>
> >>>>>>> Regards,
> >>>>>>> Micha=C5=82 Kruszewski
> >>>>>>>
> >>>>>>>
> >>>>>>> Sent with Proton Mail secure email.
> >>>>>>>
> >>>>>>> On Tuesday, April 7th, 2026 at 3:22 PM, Ahmad Fatoum <a.fatoum@pe=
ngutronix.de> wrote:
> >>>>>>>
> >>>>>>>> Hello Micha=C5=82,
> >>>>>>>>
> >>>>>>>> I hope you had a please Easter.
> >>>>>>>>
> >>>>>>>> On 3/27/26 11:37 AM, Micha=C5=82 Kruszewski wrote:
> >>>>>>>>> Of course, due to the hurry, I made a mistake in my previous me=
ssage.
> >>>>>>>>> The program for the boot.bin generation is called bootgen not b=
ootbin.
> >>>>>>>>>
> >>>>>>>>> You can find AMD bootgen user guide here:
> >>>>>>>>>   https://docs.amd.com/r/en-US/ug1283-bootgen-user-guide/Introd=
uction.
> >>>>>>>>>
> >>>>>>>>> The ELF file provided to the bootgen can have multiple loadable=
 sections, each of which forms a partition in the boot image.
> >>>>>>>>> The AMD/Xilinx FSBL will load and hand-off execution to the nex=
t executable partition found in the boot.bin file.
> >>>>>>>>> The u-boot.elf file has one LOAD section:
> >>>>>>>>>   [user@host] readelf -l u-boot.elf
> >>>>>>>>>   Elf file type is EXEC (Executable file)
> >>>>>>>>>   Entry point 0x4000000
> >>>>>>>>>   There is 1 program header, starting at offset 52
> >>>>>>>>>   Program Headers:
> >>>>>>>>>     Type           Offset   VirtAddr   PhysAddr   FileSiz MemSi=
z  Flg Align
> >>>>>>>>>     LOAD           0x010000 0x04000000 0x04000000 0x108ff0 0x10=
8ff0 RW  0x10000
> >>>>>>>>>    Section to Segment mapping:
> >>>>>>>>>     Segment Sections...
> >>>>>>>>>      00     .data
> >>>>>>>>> The readelf for barebox shows 3 LOAD sections and 1 DYNAMIC sec=
tion.
> >>>>>>>>
> >>>>>>>> This is true for the "barebox" binary, but if you check the
> >>>>>>>> images/start_avnet_zedboard.pbl, the situation is different. It =
does
> >>>>>>>> have multiple sections too, but the initial LOAD section contain=
s
> >>>>>>>> everything placed linearly.
> >>>>>>>>
> >>>>>>>>> The second difference is that Elf file type for u-boot is EXEC =
(Executable file), for barebox DYN (Position-Independent Executable file).
> >>>>>>>>
> >>>>>>>> I suspect that the ELF type doesn't actually matter, but we can
> >>>>>>>> easily change it should it really be needed.
> >>>>>>>>
> >>>>>>>>> The bootgen user guide has the table 49 with the following note=
 for the ELF file format:
> >>>>>>>>> "Symbols and headers removed."
> >>>>>>>>> However, it is not clear whether bootgen automatically removes =
symbosls and headers, or whether it expects the elf file without symbols an=
d headers.
> >>>>>>>>
> >>>>>>>> This is easily done with the strip command.
> >>>>>>>>
> >>>>>>>>> Now, I would like to describe a few ideas and potential problem=
s.
> >>>>>>>>> I am by far not bootloaders expert.
> >>>>>>>>> However, I had to boot and debug booting on a few custom and of=
f-the-shelf boards with AMD/Xilinx SoCs and MPSoCs.
> >>>>>>>>> All the things I write below are related to booting ADM/Xilinx =
chips only.
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>> There are 2 alternative paths you may chose when trying to boot=
 AMD/Xilinx SoCs.
> >>>>>>>>>
> >>>>>>>>> Path 1: The no-FSBL path
> >>>>>>>>> This is the path currently supported by barebox.
> >>>>>>>>> You do not want to utilize the AMD/Xilinx automatically generat=
ed FSBL.
> >>>>>>>>> In such a case, you have to define a board, and provide C code =
for the low-level board initialization.
> >>>>>>>>> The barebox PBL does the FSBL job in this case.
> >>>>>>>>> I think this path is fine for hobby projects and off-the-shelf =
boards when you want to quickly get things running.
> >>>>>>>>> However, I am not a fan of this path in professional projects b=
ecause of the following reasons:
> >>>>>>>>>   a) The FSBL code is automatically generated, it may include s=
ome workarounds or fixes for hardware bugs.
> >>>>>>>>>      The copied low-level initialization C code may potentially=
 miss them.
> >>>>>>>>
> >>>>>>>> If you don't update your FPGA toolchain, you may miss these issu=
es also
> >>>>>>>> and we have been burnt a lot in the past with FPGA toolchains ad=
ding
> >>>>>>>> subtle breakage all around.
> >>>>>>>>
> >>>>>>>>>   b) Forget about getting official support from AMD/Xilinx if y=
ou mention you don't use the official FSBL for boot.
> >>>>>>>>
> >>>>>>>> Yes, if you need FAE support, they may require you to reproduce =
using
> >>>>>>>> their bootloader.
> >>>>>>>>
> >>>>>>>>>
> >>>>>>>>> Path 2: The FSBL path
> >>>>>>>>> For me, this is the way to go in professional projects.
> >>>>>>>>> Barebox currently does not support this path.
> >>>>>>>>> In this case, you do not want to be forced to define a board.
> >>>>>>>>> This is simply pointless, the FSBL is responsible for initializ=
ing the low-level stuff.
> >>>>>>>>> All you need to boot Linux when FSBL stops execution is some SS=
BL and device tree.
> >>>>>>>>
> >>>>>>>> I see your point.
> >>>>>>>>
> >>>>>>>>> Now, what a support for path 2 in the barebox could look like.
> >>>>>>>>> We could use the concept of the virtual board.
> >>>>>>>>> The virtual board is a board that:
> >>>>>>>>>   - is assumed to already be low-level initialized when barebox=
 starts running,
> >>>>>>>>>   - can accept arbitrary device tree,
> >>>>>>>>>   - should not be bound to any specific device tree by default.
> >>>>>>>>> The boilerplate related to the board definition should not exis=
t for the virtual board.
> >>>>>>>>
> >>>>>>>> Well, the boilerplate will exist, but you wouldn't need to modif=
y it.
> >>>>>>>> The generic board would be just an extra image produced in the b=
arebox
> >>>>>>>> build.
> >>>>>>>>
> >>>>>>>>> What the user experience would look like:
> >>>>>>>>>   1. make zynq_virt_defconfig,
> >>>>>>>>>   2. open menuconfig,
> >>>>>>>>>   3. find and set config containing path for the device tree fi=
le (can be out of tree),
> >>>>>>>>
> >>>>>>>> Linux regularly breaks forward and to a lesser degree backwards
> >>>>>>>> compatibility for device tree. We can make it possible to refere=
nce a
> >>>>>>>> device tree in dts/, but I don't want to make it possible to poi=
nt an
> >>>>>>>> arbitrary device tree where it's unclear if the binding are comp=
atible
> >>>>>>>> with barebox.
> >>>>>>>>
> >>>>>>>> If someone wants to inject a device tree, they should copy its s=
ource
> >>>>>>>> into barebox.
> >>>>>>>>
> >>>>>>>>>   4. make,
> >>>>>>>>>   5. copy the required elf and/or bin files to your project.
> >>>>>>>>
> >>>>>>>> This is doable, but I'd prefer a new images/barebox-zynq-ssbl.im=
g that's
> >>>>>>>> just an extra image generated from the normal zynq_virt_defconfi=
g.
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>>
> >>>>>>>>> The u-boot has a similar concept of virt defconfigs, for exampl=
e:
> >>>>>>>>> xilinx_versal_virt_defconfig
> >>>>>>>>> xilinx_zynqmp_virt_defconfig
> >>>>>>>>> xilinx_zynq_virt_defconfig
> >>>>>>>>
> >>>>>>>> I see. I haven't worked myself with the Zynq, so I was not aware=
 of how
> >>>>>>>> it's handled in U-Boot.
> >>>>>>>>
> >>>>>>>>> What potential problems do I see?
> >>>>>>>>> The bootgen handles elf files with multiple loadable sections b=
y putting each section into a separate partition.
> >>>>>>>>> The FSBL simply loads and hands-off to the next executable part=
ition from the boot.bin.
> >>>>>>>>> I do not know how barebox works and prepares images.
> >>>>>>>>
> >>>>>>>> That's not a problem. As mentioned in previous mails, barebox/vm=
barebox
> >>>>>>>> is the wrong image to use however you look at it. You always nee=
d an
> >>>>>>>> image with PBL, even if the PBL only does decompression and pass=
ing
> >>>>>>>> along the DT without any lowlevel HW initialization at all.
> >>>>>>>>
> >>>>>>>>> However I can see 3 potential scenarios.
> >>>>>>>>
> >>>>>>>> [snip]
> >>>>>>>>
> >>>>>>>>> Unfortunately, I do not have enough skills to apply required ch=
anges to barebox to test these ideas on my own.
> >>>>>>>>> However, I would be more than happy to test your changes.
> >>>>>>>>
> >>>>>>>> Thanks and I would like to take you up on the offer.
> >>>>>>>>
> >>>>>>>> But first can you verify that using images/start_avnet_zedboard.=
pbl with
> >>>>>>>> DT replaced as described in a previous message of mine successfu=
lly
> >>>>>>>> boots to shell?
> >>>>>>>>
> >>>>>>>> Once we know that the ELF generated is ok in principle I can loo=
k into
> >>>>>>>> implementing a virt/ssbl image
> >>>>>>>>
> >>>>>>>>> Let me know what you think.
> >>>>>>>>
> >>>>>>>> Cheers,
> >>>>>>>> Ahmad
> >>>>>>>>
> >>>>>>>>>
> >>>>>>>>> Regards,
> >>>>>>>>> Micha=C5=82 Kruszewski
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>> --
> >>>>>>>> Pengutronix e.K.                  |                             =
|
> >>>>>>>> Steuerwalder Str. 21              | http://www.pengutronix.de/  =
|
> >>>>>>>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    =
|
> >>>>>>>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 =
|
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>
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
> >>>>
> >>>> --
> >>>> Pengutronix e.K.                           |                        =
     |
> >>>> Steuerwalder Str. 21                       | http://www.pengutronix.=
de/  |
> >>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-=
0    |
> >>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-=
5555 |
> >>>>
> >>>>
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


