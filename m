Delivery-date: Fri, 24 Apr 2026 09:28:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wGAxH-00Flte-1K
	for lore@lore.pengutronix.de;
	Fri, 24 Apr 2026 09:28:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wGAxG-0006QZ-Py
	for lore@pengutronix.de; Fri, 24 Apr 2026 09:28:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3zB9XWW0e+wlT77jIT4l/3w/N2fW6feXxky1/HmyDtY=; b=h7mXBQPnvmrwPZTqvQHU1tVQQt
	OJbVEDZqF6euUHErLmTK4tihMs4/5lks5Z5dVXzIDz8ywDWC1D9u2FYMZ+KWtNOHqZH6eWv39NGRc
	aiTRhb/WxfrBHAwAQRoQTw+GT1a0zbFZ1CFhGg277p2QrllFYn0NvIAIeTUgVkqwCAAyh4iHIfw+g
	z9J3k4a5I5gCf0qpdh1ioyqXzLoCggFQ20NrP4/d659ITR7S9L6mEXfx22OaD7dN+TuAq5OyK7SzC
	S3ix83FmYehKpAILAuREHe+1Q2QC6CBXMKIOwK74+ieqttQiJZBjppV/Xgi93jSs96UHRF81jJQ1m
	1Gr615AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGAwg-0000000CoK9-15Lf;
	Fri, 24 Apr 2026 07:27:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGAwd-0000000CoJD-0bIi
	for barebox@lists.infradead.org;
	Fri, 24 Apr 2026 07:27:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1wGAwZ-0006Fg-9X; Fri, 24 Apr 2026 09:27:19 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: ML_Barebox <barebox@lists.infradead.org>,  abbotti@mev.co.uk
In-Reply-To: <aeaec45e-ef30-462b-a28f-53d2b82d6387@clermont.in2p3.fr> (David
	Picard's message of "Thu, 23 Apr 2026 14:00:12 +0200")
References: <aeaec45e-ef30-462b-a28f-53d2b82d6387@clermont.in2p3.fr>
User-Agent: mu4e 1.12.13; emacs 30.2
Date: Fri, 24 Apr 2026 09:27:18 +0200
Message-ID: <87mrysizs9.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260424_002723_180721_DE74C57E 
X-CRM114-Status: GOOD (  16.05  )
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

On 2026-04-23 at 14:00 +02, David Picard <david.picard@clermont.in2p3.fr> w=
rote:

Hi,

> Hello,
>=20
> @Stephen and Ian: I Cc you since I spotted you authored commits related t=
o Intel
> SoC FPGA pin muxing.
>

long time ago ;)

> I'm trying to enable the I2C1 bus on a Cyclone V-base module, mounted on =
a base
> board. The I2C1 lines connect to a 2.54mm header, on which I attached a I=
=C2=B2C
> device with pull-up resistors at address 0x40.
> https://www.enclustra.com/en/products/system-on-chip-modules/mercury-sa2/
>=20
> I can't detect the I=C2=B2C device, nor can I see any pulse on the SCL li=
ne, which is
> constantly at +3.3V.
>=20
> I changed the pin muxing in Quartus, updated the handoff files, changed t=
he
> devicetree. The I2C1 bus is visible in Barebox and Linux. More detail her=
e:
> https://community.altera.com/discussions/fpga-device/cyclone-v-hps-i2c1-i=
ssue-no-activity-on-bus/352583
>

I remember, that iocsr was 'underdocumented' to say the least...

Wasn't it possible to change drive strength and those settings or was that =
with Xilinx/Zynq?

> As documented on the Barebox website, I generated the BSP files with the =
Quartus
> script bsp-create-settings and copied the handoff files to the Barebox bu=
ild
> directory. After that, I could see that iocsr_config_cyclone5.c and
> pinmux_config.c had changed.
> https://www.barebox.org/doc/2025.05.0/boards/socfpga.html#updating-handof=
f-files
> https://www.intel.com/content/www/us/en/docs/programmable/683187/20-1/bsp=
-create-settings.html
>=20
> If someone could give me some hint, that would be really great!

I see, that the Terasic DE10 Nano uses i2c1. Maybe compare the changed iocs=
r with those?


Best regards,
Steffen

--=20
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |


