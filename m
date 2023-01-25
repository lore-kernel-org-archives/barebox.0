Delivery-date: Wed, 25 Jan 2023 15:06:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKgPs-001YbF-8u
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 15:06:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKgPp-0008Mw-Ei
	for lore@pengutronix.de; Wed, 25 Jan 2023 15:06:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y0TioT9e0L6yFrYM8gk3fyXTOTdleL5j95UH6skqn3o=; b=lMH3pD3xiuNpWS4mYjbSCwbE+f
	PN6/n6md8WsngNgD5SH2uq9bt2OGbDRTbJ1+IZRQ5PiZ8dz6Lm3B3DC1IPktZukfMJ1jXlG67v7xC
	9JzCtaNPd1z+gZUo18jxkGvOBlYh1dXlxzXvTinOAAV88dnuKxMOkjjE1RugCQdzqSXI0yqoBMZZt
	Past0gg34/KUU2I+e8cz7ksWDnJgzDZTfZebI0CGQfd0bzl9QKGn4AxwEpxwhw6ojfOdVoZIAx0b9
	J3wbV3F8gekwQaIde3Vuix0Mgr3Ym1GhegMeu82v+zCBGDKvFD0eSQd3c0Q1PInt3INUVSeB4m5Kx
	TZW/jWVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKgOI-007S5s-8j; Wed, 25 Jan 2023 14:04:42 +0000
Received: from out0.migadu.com ([2001:41d0:2:267::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKgOA-007S3v-Nj
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 14:04:37 +0000
Date: Thu, 26 Jan 2023 01:04:13 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674655472;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Y0TioT9e0L6yFrYM8gk3fyXTOTdleL5j95UH6skqn3o=;
	b=ysY5OwAt1NJIQgxoyveUXYN1TZEKZ698ngNMQ9myd9MGbUyZdPyPtuqjIycJbXRKGleU49
	ddvTioW3gldkJTLyOmikb6QwK/Z/L9YrmcV+1rENJ25aHlxTbEk5dbSc6QCN5RnyzKZ/mx
	jUfL/TtJt9R/jPZFYG83IPg1XU0VXJhvvILUlW4zT0Er7EQClOFXQ4kflnf8DM+76nc3ml
	AuRfOhrT1yfEIxfpU6MPtuwK/ouCPTlbULVTro0EbVPe4h/BxgZqNAZsgKhnlvQC5MAnk3
	x7iQiiZpYQVGLlukonGOfQiD8IR2VF+hOPb0vxUiKfmNpKYOpwSxV91e1VzjYQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <Y9E23b56PcfZWsum@novena-choice-citizen>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230122175141.119834-5-contact@jookia.org>
 <20230123093305.GS24755@pengutronix.de>
 <Y9AlCQieCBIEOjs5@novena-choice-citizen>
 <20230125080406.GW24755@pengutronix.de>
 <Y9DkOI1yxte95PYg@novena-choice-citizen>
 <20230125081923.GY24755@pengutronix.de>
 <Y9EvGHjLUX1ykAxU@novena-choice-citizen>
 <072ab8ce-d92f-8841-a44e-621a3ba345a4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <072ab8ce-d92f-8841-a44e-621a3ba345a4@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_060435_966929_98299A78 
X-CRM114-Status: GOOD (  10.98  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 02:48:20PM +0100, Ahmad Fatoum wrote:
> regulator-fixed only understands vin-supply.

Right, changed. I was under the assumption that ANY node could specify an
X-supply.

> I actually updated the eeprom node to use
> > reg_3p3v as vcc-supply and things were still probed in the wrong order.
> 
> That's odd. You can enable CONFIG_DEBUG_PROBES to see in what order
> probes happened and at what depth (each probe within a probe is
> indented more than its parent).

Should that even work? The vcc-supply property isn't a real one.

Currently the probe log is this:

detected i.MX6 Quad revision 1.2
i.MX6 Quad unique ID: c1d99d4d8191854
    probe-> 21e8000.serial@21e8000.of
        probe-> 20e0000.pinctrl@20e0000.of
    probe-> 21b0000.memory-controller@21b0000.of
    probe-> ramfs0
    probe-> devfs0
    probe-> mem0
    probe-> mem1
netconsole: port not set
netconsole: registered as netconsole-1
    probe-> machine
        probe-> 21a8000.i2c@21a8000.of
            probe-> 24c5120
Unable to read Novena EEPROM: Connection timed out
    probe-> ldb.of
imx-ldb ldb.of: Neither display timings in ldb node nor remote panel found
imx-ldb ldb.of: dual-channel mode, ignoring second output
    probe-> usbphynop1.of
    probe-> usbphynop2.of
    probe-> 110000.dma-apbh@110000.of
    probe-> 120000.hdmi@120000.of
imx-hdmi 120000.hdmi@120000.of: Detected HDMI controller 0x13:0xa:0xa0:0xc1
    probe-> 2010000.spi@2010000.of
    probe-> 2080000.pwm@2080000.of
    probe-> 209c000.gpio@209c000.of
    probe-> 20a0000.gpio@20a0000.of
    probe-> 20a4000.gpio@20a4000.of
    probe-> 20a8000.gpio@20a8000.of
    probe-> 20ac000.gpio@20ac000.of
    probe-> 20b0000.gpio@20b0000.of
    probe-> 20b4000.gpio@20b4000.of
    probe-> 20bc000.watchdog@20bc000.of
    probe-> 20c9000.usbphy@20c9000.of
    probe-> 20ca000.usbphy@20ca000.of
    probe-> 20d8000.reset-controller@20d8000.of
    probe-> 2184000.usb@2184000.of
        probe-> 2184800.usbmisc@2184800.of
        probe-> regulator-usb-otg-vbus.of
    probe-> 2184200.usb@2184200.of
        probe-> 21a4000.i2c@21a4000.of
            probe-> pfuze1000
imx-usb 2184200.usb@2184200.of: Cannot get vbus regulator: No such device (ignoring)
imx-usb 2184200.usb@2184200.of: USB EHCI 1.00
    probe-> 2188000.ethernet@2188000.of
mdio_bus: miibus0: probed
    probe-> 2194000.mmc@2194000.of
imx-esdhc 2194000.mmc@2194000.of: registered as mmc1
    probe-> 2198000.mmc@2198000.of
imx-esdhc 2198000.mmc@2198000.of: registered as mmc2
    probe-> 21a0000.i2c@21a0000.of
    probe-> 21bc000.efuse@21bc000.of
    probe-> 21ec000.serial@21ec000.of
    probe-> 21f0000.serial@21f0000.of
    probe-> 2400000.ipu@2400000.of
imx-ipuv3 2400000.ipu@2400000.of: IPUv3H probed
    probe-> 2200000.sata@2200000.of
    probe-> 2800000.ipu@2800000.of
imx-ipuv3 2800000.ipu@2800000.of: IPUv3H probed
    probe-> gpio-keys.of
    probe-> leds.of
    probe-> regulator-2p5v.of
    probe-> regulator-3p3v.of
    probe-> regulator-5p0v.of
    probe-> regulator-audio-codec.of
    probe-> regulator-display.of
    probe-> regulator-lvds-lcd.of
    probe-> regulator-pcie.of
    probe-> regulator-sata.of
malloc space: 0xbfcf55c0 -> 0xffcf55bf (size 1 GiB)
    probe-> imx-ipuv3-crtc0
    probe-> imx-ipuv3-crtc1
    probe-> imx-ipuv3-crtc2
    probe-> imx-ipuv3-crtc3

> 
> Cheers,
> Ahmad

John.


