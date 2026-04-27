Delivery-date: Mon, 27 Apr 2026 14:26:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHL2G-00GwV9-1C
	for lore@lore.pengutronix.de;
	Mon, 27 Apr 2026 14:26:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHL2F-0004K9-Ip
	for lore@pengutronix.de; Mon, 27 Apr 2026 14:26:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jd/P8dVqOxExTUzfDD5e2UP3HAK5RX8h0y+MgsUru0w=; b=HWGYT8imkC2V7F4pg/x611txyI
	Pkwd6lSZhCI2K0prS2SdT1CpuviNoTJZcSuc2y2VJWVWXTGk4Lzc/Q/ZNn++SvODOeNkCtuMKHHhV
	qTu0kkysKYAbWS0T6mqWSodosl5lGyKDXBHg5H6q5aKyYwBrGoGRS1koIOTECkn9DRFchkcujLJqC
	Ja5rbFab2YNoHBdiBeh9k7GU4G77o1X2kC64Ji0rMa1apqItASyII9fR6lFGH0kXb1CUlOteeKWl0
	M+UabtAfCacs/mX1q2gggSrNtujgvZPr7+SwIuzQ5OL6IaJh6AHovYqUjGth+cIri0zooeM8qU57W
	tBvAs+sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL1m-0000000Gu3v-1XAw;
	Mon, 27 Apr 2026 12:25:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL1j-0000000Gu3b-2sBV
	for barebox@lists.infradead.org;
	Mon, 27 Apr 2026 12:25:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1wHL1h-0004AF-VC; Mon, 27 Apr 2026 14:25:26 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: ML_Barebox <barebox@lists.infradead.org>,  abbotti@mev.co.uk
In-Reply-To: <c952a0cc-1b0c-474e-8e5a-d40303825d5a@clermont.in2p3.fr> (David
	Picard's message of "Mon, 27 Apr 2026 14:13:48 +0200")
References: <aeaec45e-ef30-462b-a28f-53d2b82d6387@clermont.in2p3.fr>
	<87mrysizs9.fsf@pengutronix.de>
	<09c2d997-08e5-484a-a7ea-3204b304f3b8@clermont.in2p3.fr>
	<871pg0vh4t.fsf@pengutronix.de>
	<c952a0cc-1b0c-474e-8e5a-d40303825d5a@clermont.in2p3.fr>
User-Agent: mu4e 1.12.13; emacs 30.2
Date: Mon, 27 Apr 2026 14:25:25 +0200
Message-ID: <87pl3ktwsq.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_052527_785426_F66D590D 
X-CRM114-Status: GOOD (  40.33  )
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

On 2026-04-27 at 14:13 +02, David Picard <david.picard@clermont.in2p3.fr> w=
rote:

> Too bad you don't have an idea. Sorry for misspelling your name,
>

no problem ;)

>=20
> I'm not sure it's related, but I get errors with the socfpga_import_prelo=
ader
> script only if I use the --embedded-sdk option. I couldn't figure out wha=
t this
> option changes.
> https://paste.debian.net/hidden/fffbb190
>

Hm, the script is obviously pretty hacked together and not very error proof.
With the embedded-sdk provided, it generates the handoff-files without the
option, the handoff files need to be generated manually.

Maybe the Python script in the SDK changed since adding this option and doe=
sn't
copy the files that are stat'ed.


Steffen

> David
>=20
> Le 27/04/2026 =C3=A0 12:20, Steffen Trumtrar a =C3=A9crit=C2=A0:
> > On 2026-04-27 at 12:09 +02, David Picard <david.picard@clermont.in2p3.f=
r>
> > wrote:
> >
> > Hi,
> >
> >> Hi Stephen, thanks for your reply,
> >>
> >> Pins SDA and SCL, GPIO51 and GPIO52 respectively, are specified with t=
he I/O
> >> standard 3.3V LVCMOS and a drive strength of 2mA, which is way more th=
an
> >> needed,
> >> given my 10K pull-up resistors (3.3 / 10K =3D 0.33mA). I know that 10K=
 is
> >> bigger
> >> than the usual 2.2K, but probably not big enough to prevent any change=
 on the
> >> SCL line. I just see a perfect flat line when I probe the bus.
> >>
> >
> > :(
> >
> >> I compared iocsr_config_cyclone5.c and pinmux_config.c in the
> >> terasic-de10-nano/
> >> and enclustra-sa2/ directories. There are a lot of differences. But th=
e lines
> >> that changed in enclustra-sa2/ when I tried to enable the I2C1 bus are=
 now
> >> the
> >> same as in the terasic-de10-nano/ directory, which probably makes sens=
e.
> >>
> >
> > Makes sence, yes and was what I hoped for. But, doesn't seem to change
> > anything.
> >
> >> Does Barebox have to decipher every bit in those cryptic files?
> >>
> >
> > barebox knows nothing about the meaning of the iocsr registers. Those v=
alues a
> > just written to the hardware and can't be changed afterwards.
> > AFAIK there still is no linux driver that might read and decipher the
> > settings.
> >
> > Sadly, I don't have any more ideas at the top of my head why it doesn't=
 work.
> > Everything sounds correct.
> >
> >
> > Best regards,
> > Steffen
> >
> >>
> >> David
> >>
> >>
> >> Le 24/04/2026 =C3=A0 09:27, Steffen Trumtrar a =C3=A9crit=C2=A0:
> >> > On 2026-04-23 at 14:00 +02, David Picard <david.picard@clermont.in2p=
3.fr>
> >> > wrote:
> >> >
> >> > Hi,
> >> >
> >> >> Hello,
> >> >>
> >> >> @Stephen and Ian: I Cc you since I spotted you authored commits rel=
ated to
> >> >> Intel
> >> >> SoC FPGA pin muxing.
> >> >>
> >> >
> >> > long time ago ;)
> >> >
> >> >> I'm trying to enable the I2C1 bus on a Cyclone V-base module, mount=
ed on a
> >> >> base
> >> >> board. The I2C1 lines connect to a 2.54mm header, on which I attach=
ed a
> >> I=C2=B2C
> >> >> device with pull-up resistors at address 0x40.
> >> >> https://www.enclustra.com/en/products/system-on-chip-modules/mercur=
y-sa2/
> >> I
> >> >> can't detect the I=C2=B2C device, nor can I see any pulse on the SC=
L line,
> >> which
> >> >> is
> >> >> constantly at +3.3V.
> >> >>
> >> >> I changed the pin muxing in Quartus, updated the handoff files, cha=
nged
> >> the
> >> >> devicetree. The I2C1 bus is visible in Barebox and Linux. More deta=
il
> >> here:
> >> >>
> >> https://community.altera.com/discussions/fpga-device/cyclone-v-hps-i2c=
1-issue-no-activity-on-bus/352583
> >> >
> >> > I remember, that iocsr was 'underdocumented' to say the least...
> >> >
> >> > Wasn't it possible to change drive strength and those settings or wa=
s that
> >> > with Xilinx/Zynq?
> >> >
> >> >> As documented on the Barebox website, I generated the BSP files wit=
h the
> >> >> Quartus
> >> >> script bsp-create-settings and copied the handoff files to the Bare=
box
> >> build
> >> >> directory. After that, I could see that iocsr_config_cyclone5.c and
> >> >> pinmux_config.c had changed.
> >> >>
> >> https://www.barebox.org/doc/2025.05.0/boards/socfpga.html#updating-han=
doff-files
> >> >>
> >> https://www.intel.com/content/www/us/en/docs/programmable/683187/20-1/=
bsp-create-settings.html
> >> >> If someone could give me some hint, that would be really great!
> >> >
> >> > I see, that the Terasic DE10 Nano uses i2c1. Maybe compare the chang=
ed
> >> iocsr
> >> > with those?
> >> >
> >> >
> >> > Best regards,
> >> > Steffen
> >> >
> >

--=20
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |


