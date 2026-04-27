Delivery-date: Mon, 27 Apr 2026 12:21:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHJ5j-00GuQe-0M
	for lore@lore.pengutronix.de;
	Mon, 27 Apr 2026 12:21:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHJ5i-0001So-Cp
	for lore@pengutronix.de; Mon, 27 Apr 2026 12:21:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o+Ah9FJE78UXTL9JE99glj+AP7Zbz6rFqz2K3vfe7U8=; b=gHpxyXlZYnQD385kf8cjEw6ef1
	I/Tfa0YXZZa2SLrTh32vtdsY1Br5pNwNmvglSaDLySorSbu1Ni5AWLXJR9yIhreqMeavPyfK0uAYj
	75l+OU6llVADK+HIiC4KsRMHISfasqBs68mh8jjTz+Md29/0yHrjIHXz5uPtLNrwrgiUA8tsrzfHB
	EeoKWDYYz4GImg4pG26x6ipUj68TSTSzWoknIX3WW7rIaKw7otSuQCjoryJQWyQ049hYCDswJP7xc
	7MiHfnck0uV/lAfWGPj00sU2BB/lDm1zRvQmjAePzXuZeartxblpjkx+uxpyEDBReeobEF1hZFEuj
	SKKwoyuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHJ5F-0000000GgSW-0oVc;
	Mon, 27 Apr 2026 10:20:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHJ5A-0000000GgS8-3KjG
	for barebox@lists.infradead.org;
	Mon, 27 Apr 2026 10:20:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1wHJ58-0001Iy-Li; Mon, 27 Apr 2026 12:20:50 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: ML_Barebox <barebox@lists.infradead.org>,  abbotti@mev.co.uk
In-Reply-To: <09c2d997-08e5-484a-a7ea-3204b304f3b8@clermont.in2p3.fr> (David
	Picard's message of "Mon, 27 Apr 2026 12:09:24 +0200")
References: <aeaec45e-ef30-462b-a28f-53d2b82d6387@clermont.in2p3.fr>
	<87mrysizs9.fsf@pengutronix.de>
	<09c2d997-08e5-484a-a7ea-3204b304f3b8@clermont.in2p3.fr>
User-Agent: mu4e 1.12.13; emacs 30.2
Date: Mon, 27 Apr 2026 12:20:50 +0200
Message-ID: <871pg0vh4t.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_032052_876525_18A79FC8 
X-CRM114-Status: GOOD (  32.16  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: ARM: socfpga: enclustra-sa2: issue with I2C1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-04-27 at 12:09 +02, David Picard <david.picard@clermont.in2p3.fr> w=
rote:

Hi,

> Hi Stephen, thanks for your reply,
>=20
> Pins SDA and SCL, GPIO51 and GPIO52 respectively, are specified with the =
I/O
> standard 3.3V LVCMOS and a drive strength of 2mA, which is way more than =
needed,
> given my 10K pull-up resistors (3.3 / 10K =3D 0.33mA). I know that 10K is=
 bigger
> than the usual 2.2K, but probably not big enough to prevent any change on=
 the
> SCL line. I just see a perfect flat line when I probe the bus.
>

:(

> I compared iocsr_config_cyclone5.c and pinmux_config.c in the terasic-de1=
0-nano/
> and enclustra-sa2/ directories. There are a lot of differences. But the l=
ines
> that changed in enclustra-sa2/ when I tried to enable the I2C1 bus are no=
w the
> same as in the terasic-de10-nano/ directory, which probably makes sense.
>

Makes sence, yes and was what I hoped for. But, doesn't seem to change anyt=
hing.

> Does Barebox have to decipher every bit in those cryptic files?
>

barebox knows nothing about the meaning of the iocsr registers. Those value=
s a just written to the hardware and can't be changed afterwards.
AFAIK there still is no linux driver that might read and decipher the setti=
ngs.

Sadly, I don't have any more ideas at the top of my head why it doesn't wor=
k. Everything sounds correct.


Best regards,
Steffen

>=20
> David
>=20
>=20
> Le 24/04/2026 =C3=A0 09:27, Steffen Trumtrar a =C3=A9crit=C2=A0:
> > On 2026-04-23 at 14:00 +02, David Picard <david.picard@clermont.in2p3.f=
r>
> > wrote:
> >
> > Hi,
> >
> >> Hello,
> >>
> >> @Stephen and Ian: I Cc you since I spotted you authored commits relate=
d to
> >> Intel
> >> SoC FPGA pin muxing.
> >>
> >
> > long time ago ;)
> >
> >> I'm trying to enable the I2C1 bus on a Cyclone V-base module, mounted =
on a
> >> base
> >> board. The I2C1 lines connect to a 2.54mm header, on which I attached =
a I=C2=B2C
> >> device with pull-up resistors at address 0x40.
> >> https://www.enclustra.com/en/products/system-on-chip-modules/mercury-s=
a2/ I
> >> can't detect the I=C2=B2C device, nor can I see any pulse on the SCL l=
ine, which
> >> is
> >> constantly at +3.3V.
> >>
> >> I changed the pin muxing in Quartus, updated the handoff files, change=
d the
> >> devicetree. The I2C1 bus is visible in Barebox and Linux. More detail =
here:
> >> https://community.altera.com/discussions/fpga-device/cyclone-v-hps-i2c=
1-issue-no-activity-on-bus/352583=20
> >
> > I remember, that iocsr was 'underdocumented' to say the least...
> >
> > Wasn't it possible to change drive strength and those settings or was t=
hat
> > with Xilinx/Zynq?
> >
> >> As documented on the Barebox website, I generated the BSP files with t=
he
> >> Quartus
> >> script bsp-create-settings and copied the handoff files to the Barebox=
 build
> >> directory. After that, I could see that iocsr_config_cyclone5.c and
> >> pinmux_config.c had changed.
> >> https://www.barebox.org/doc/2025.05.0/boards/socfpga.html#updating-han=
doff-files
> >> https://www.intel.com/content/www/us/en/docs/programmable/683187/20-1/=
bsp-create-settings.html
> >> If someone could give me some hint, that would be really great!
> >
> > I see, that the Terasic DE10 Nano uses i2c1. Maybe compare the changed =
iocsr
> > with those?
> >
> >
> > Best regards,
> > Steffen
> >

--=20
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |


