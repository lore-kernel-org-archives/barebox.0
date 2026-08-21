Delivery-date: Fri, 21 Aug 2026 12:09:00 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wxMBH-005XnJ-24
	for lore@lore.pengutronix.de;
	Fri, 21 Aug 2026 12:09:00 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DF14E20190E
	for <lore@pengutronix.de>; Fri, 21 Aug 2026 12:08:59 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oDgwGuct;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vhPqGABLDnN7vxHAkl7oK3qr7MwLfFEBzEr6oIhX3iI=; b=oDgwGuct5YDug0s2+szo3ELT4L
	oJMloDYP698Bdu1Dev2vhpzsmgUzFbTahOy5cN7kN8LqXqKGGK11e38fUNz//6e0up6QJq5H8+cPk
	6CAHcIn6ZnLEZSkOo0K/yTxP4+0H44K2ouQRZHTNVQ6j28D4aj+dK+OUMmNGMQXIfUpfNHBgo+j/1
	RQ3S7xEUB5Q179eXGET4NhDG9riaCXHJg8A8cx6/kPR59PJkFzHfFxAQqpbP0DccgkEjGo2Rept/g
	8Et5P031aAP9ARdZmmfgfDRwtBxOG1ZeLOQ4ddOD6TOfKrMPHp3MOBzm28on4ymKDgEc3qR6YFxmz
	VBd/Ru2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxMA4-0000000D1n2-2MM8;
	Fri, 21 Aug 2026 10:07:44 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxM9y-0000000D1lx-3l2f
	for barebox@lists.infradead.org;
	Fri, 21 Aug 2026 10:07:41 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 97DC5201B9A;
	Fri, 21 Aug 2026 12:07:35 +0200 (CEST)
Message-ID: <7edf91af-0fa0-4f9d-945f-b50e2fa62948@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v4 01/14] ARM: mvebu: add Netgear RN102 support
To: "Luca Lauro" <famlauro93l@gmail.com>
In-Reply-To: <CANRe2WJY2P7u03Luwmt1_uk+wU8Ct-v=8nCShTfMJedYXQE=eQ@mail.gmail.com>
References: <aoQYLq5MTUbqzQCg@monoceros>
 <6a85585d.5770c427.2e0747.7f3dSMTPIN_ADDED_MISSING@mx.google.com>
 <CANRe2WJY2P7u03Luwmt1_uk+wU8Ct-v=8nCShTfMJedYXQE=eQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 21 Aug 2026 10:07:35 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260821_030739_082301_A2225BF4 
X-CRM114-Status: GOOD (  42.96  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Luca, On 2026-08-20 19:59, Luca Lauro wrote: > Il giorno
    mer 19 ago 2026 alle ore 09:16 Sascha Hauer > <s.hauer@pengutronix.de> ha
    scritto: > > > > Hi Uwe, > > > > On 2026-08-18 10:44, Uwe Kleine-König wro
    [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, =?utf-8?b?VXdlIEtsZWluZS1L?= =?utf-8?b?w7ZuaWc=?= <ukleinek@kernel.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: pjd91ax87sy6pctwgt6j9e6umf3ijo3t
X-Spamd-Result: default: False [-5.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:famlauro93l@gmail.com,m:barebox@lists.infradead.org,m:ukleinek@kernel.org,s:lore@pengutronix.de];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: DF14E20190E

Hi Luca,

On 2026-08-20 19:59, Luca Lauro wrote:
> Il giorno mer 19 ago 2026 alle ore 09:16 Sascha Hauer
> <s.hauer@pengutronix.de> ha scritto:
> >
> > Hi Uwe,
> >
> > On 2026-08-18 10:44, Uwe Kleine-K=C3=B6nig wrote:
> > > >
> > > > The only difference I can spot here between this function and the
> > > > existing variant in arch/arm/mach-mvebu/common.c is:
> > > >
> > > > #define  DDR_SIZE_MASK                       0xff000000
> > > >
> > > > whereas the common.c variant uses:
> > > >
> > > > #define ARMADA_370_XP_DDR_SIZE_MASK     0xffff0000
> > >
> > > Apart from the different value, the latter name is the better one B-)
> > >
> > > > The latter goes down to this:
> > > >
> > > > > commit 7351b6b5c59c7a280787998006f39a5cd3a2f18b
> > > > > Author: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> > > > > Date:   Tue Jun 13 00:37:49 2017 +0200
> > > > >
> > > > >     ARM: mvebu: fix size mask for RAM window
> > > > >
> > > > >     The size field in the window control register occupies bits 3=
1:16. So
> > > > >     adapt ARMADA_370_XP_DDR_SIZE_MASK accordingly. This fixes det=
ection of
> > > > >     RAM chips smaller than 32 MiB and so probably doesn't affect =
any
> > > > >     supported machine.
> > > > >
> > > > >     Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutr=
onix.de>
> > > > >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > >
> > > > > diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/c=
ommon.c
> > > > > index 06bfb72615..fa971da11e 100644
> > > > > --- a/arch/arm/mach-mvebu/common.c
> > > > > +++ b/arch/arm/mach-mvebu/common.c
> > > > > @@ -47,7 +47,7 @@
> > > > >  #define ARMADA_370_XP_SDRAM_BASE       (IOMEM(MVEBU_REMAP_INT_RE=
G_BASE) + 0x20000)
> > > > >  #define ARMADA_370_XP_DDR_SIZE_CSn(n)  (0x184 + ((n) * 0x8))
> > > > >  #define ARMADA_370_XP_DDR_SIZE_ENABLED BIT(0)
> > > > > -#define ARMADA_370_XP_DDR_SIZE_MASK    0xff000000
> > > > > +#define ARMADA_370_XP_DDR_SIZE_MASK    0xffff0000
> > > > >
> > > > >  /*
> > > > >   * Marvell MVEBU SoC id and revision can be read from any PCIe
> > > >
> > > > @Uwe, Where did you get that information from. Could it be that we
> > > > should just revert this one given that it seems to be untested on y=
our
> > > > side?
> > >
> > > 0xffff0000 is in line with
> > > https://datasheet.datasheetarchive.com/originals/crawler/marvell.com/=
002fa441a27967d992f905776d519926.pdf
> > > (page 630). So I'd expect that 0xffff0000 is correct, but I don't care
> > > much.
> >
> > Page 630 describes the register at offset 0x20000. I think the correct
> > page to look at is 626 which describes 0x20184 aka ARMADA_370_XP_DDR_SI=
ZE_CSn(0).
> >
> > That one has the window size in the upper 8 bit. Looks like we should
> > just revert 7351b6b5c59c. @Luca, does the SDRAM size detection work for
> > you with that patch reverted?
>=20
> Hi Sascha,
>=20
> I tested with kwboot on my RN102...
> SDRAM detection:
> With the generic lowlevel path (armada_370_xp_barebox_entry) the board
> does not reach the banner at all; independently from
> ARMADA_370_XP_DDR_SIZE_MASK value. With the previous
> workaround-based lowlevel code restored, the board boots reliably and
> reports the correct 512 MiB of DRAM. So at the moment I cannot verify
> the generic SDRAM detection on RN102 because the board does not boot
> with that path.

I believe ARMADA_370_XP_DDR_SIZE_MASK 0xff000000 is correct and we
should revert Uwes patch. This however doesn't seem to be your problem.

Could you experiment with the placing of mvebu_remap_registers()? You
may call this only once. First of all, when using
armada_370_xp_barebox_entry(), have you removed the call from
mvebu_remap_registers() from your board code? Otherwise it won't work.

Then, could you remove the call to mvebu_remap_registers() from
armada_370_xp_barebox_entry() and do it in your board code instead?

There's something going on and the memory detection itself doesn't seem
to make the difference.

>=20
> GPIO / LED blink:
> Even with deep-probe enabled and with explicit
> of_device_ensure_probed_by_alias("gpio0"), "gpio1" and "gpio2", the
> GPIO blink logic cannot access the controller registers:
>=20
>     WARNING: gpio0 regmap not available
>=20
> The mvebu GPIO controller is not a syscon device, so
> syscon_node_to_regmap() always returns an error. As a result, the blink
> logic cannot use regmap to access the GPIO registers, and the LEDs are
> not initialized in time during early disk power-on.
>=20
> The previous implementation used direct MMIO access to the GPIO
> registers, which worked correctly on RN102/RN104, but was removed during
> the cleanup. Without either restoring that path or providing a regmap
> backend for the mvebu GPIO controller, the LED blink feature cannot
> function.
>=20
> Let me know which direction you prefer. I can restore the direct MMIO
> access for the blink logic if that is acceptable.

When I first looked at it I didn't realize that the whole GPIO code in the
board code was to enable a hardware blinking feature that is not
available through the GPIO API.

Linux provides an extra PWM driver for this purpose and doing the same
would be my preferred solution. You might consider this overkill and not
worth the additional work, so I won't insist on it. My second best
solution would be some marvell_orion_gpio_blink() function that takes
the Controller's base address and some other parameters to let the GPIO
blink. That would allow us to share it between boards.

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



