Delivery-date: Mon, 17 Mar 2025 17:41:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuDWP-000gbJ-2n
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 17:41:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuDWO-0000UH-JO
	for lore@pengutronix.de; Mon, 17 Mar 2025 17:41:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MNrLK9Qs08V4JZ0kgGo5WuK/mGVzIhwrajTvaVvUciI=; b=HzfkEw8VnofYEEasscH77zi5kz
	+onm2JcQsqL5T75eLNl0O3/gcMPwUzbg8EaUwRvmMFsOrHG1sYLee/nb45XmUGPkNXiIBnbLFFR/M
	yJQcwfziGjdOo7bCl2d02N1JSvx+5cwTF2hc26gMD8AK4hgYEz/i8ZQWOjSa6NKFHGpdN2DG+YIrt
	QRAtRRWZQ2rNl2UKXa+/2QtdWKpLki5XE1WwznvbngSD/aqbwg+HB93+B8mbqIApUR6tfusr5Deev
	bGx4H9hDLvZ+Xnt/YFUy8bHTAXh181jy+5jBjamfj9mMzyoR1IT9JMWJtZxvFg7vZnuVCJvHLWwFd
	pC+eSUKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuDVm-00000003MXh-29T3;
	Mon, 17 Mar 2025 16:40:22 +0000
Received: from algol.kleine-koenig.org ([2a01:4f8:c010:8611::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuDU0-00000003M1y-2y9U
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 16:38:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742229508;
	bh=mwIu+/IJ7VErY8tcHDvk+LLhHRJmPEi40xGRFsCYZMg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kOwdETX2loN0qie5PrwC9XmH2Zt40jAgHRRAgwFCCarwrFr61WDkDj0Ys9D/UU1zq
	 zkqcUYjW1bgdY99Hi6WpP133aMvpwwmhol7qzBx353Wqu89qA3ASjOJNgL0h75HvZp
	 LgU/MVtvtM7MAUS4EEXUQ75zEXfVg3AB436bT2NpnizULjqVZFNH1f7LcyLXOOALHz
	 V8Ak4WwAEK537S1u/mlbTT/6Js4i+PDxqIPP3MaCQssQ2yr9eec6aeR+vpQbuGD0h4
	 NxElXCzkCN6zEvOJ6MjvUvtMtkNNW8O3QAay5fqdHjdvZeoMR8UvXYQ7toTZw5xM9G
	 l/3a/d9SnCEow==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id A231CFC4241; Mon, 17 Mar 2025 17:38:28 +0100 (CET)
Date: Mon, 17 Mar 2025 17:38:28 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ft7kujxf2r52nbvndmel5qxxf5ddeugp45gvuhsyqaatsjjniz@g4jbaeh4n6sa>
References: <cover.1740846737.git.uwe@kleine-koenig.org>
 <Z8bEobxWH6sNRt6B@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tsvc2zfzlnqx33rb"
Content-Disposition: inline
In-Reply-To: <Z8bEobxWH6sNRt6B@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_093832_918991_EF361C8F 
X-CRM114-Status: GOOD (  26.64  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] Add support for QNAP's ts-433 4bay NAS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--tsvc2zfzlnqx33rb
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/4] Add support for QNAP's ts-433 4bay NAS
MIME-Version: 1.0

Hello Sascha,

thanks for picking up the first three patches
On Tue, Mar 04, 2025 at 10:15:13AM +0100, Sascha Hauer wrote:
> On Sat, Mar 01, 2025 at 05:36:17PM +0100, Uwe Kleine-K=F6nig wrote:
> > this is the result of my quick effort to make barebox run on QNAP's
> > ts-433 4bay NAS. The first 3 patches are IMHO fine to go in. The last
> > one adds the new machine. As writting in the commit log the NAS boots
> > with the resulting image, but neither network nor eMMC work.
> >=20
> > I also tried adding
> >=20
> > 	writel(RK_SETBITS(0x50), 0xfdc20140)
> >=20
> > in lowlevel.c, but that didn't make a difference. I'm open for other
> > ideas about what bit is missing.
>=20
> dts/src/arm64/rockchip/rk3568-qnap-ts433.dts lacks the pinctrl nodes for
> the sdhci controller. It might be that it works when booting from eMMC,
> but not when booting from USB.

When I add pinctrl info like that:

diff --git a/dts/src/arm64/rockchip/rk3568-qnap-ts433.dts b/dts/src/arm64/r=
ockchip/rk3568-qnap-ts433.dts
index e601d9271ba8..b65f2412023a 100644
--- a/dts/src/arm64/rockchip/rk3568-qnap-ts433.dts
+++ b/dts/src/arm64/rockchip/rk3568-qnap-ts433.dts
@@ -567,6 +567,8 @@ &sdhci {
 	bus-width =3D <8>;
 	max-frequency =3D <200000000>;
 	non-removable;
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
 	status =3D "okay";
 };

I get an error message when the driver probes (see below).

Enabling deep probe (which was an idea from #barebox) didn't change
anything here.

> No idea for networking though.

With rtl8169 driver disabled the internal eth driver probes successfully
(didn't work out the details, with both enabled I get=20
	ERROR: register_device: already registered eth
	ERROR: eqos-rockchip fe2a0000.ethernet@fe2a0000.of: probe failed: Invalid =
argument
) the full boot log is:

	barebox 2025.02.0-00004-g1ec0faa7cbbb-dirty #9 Mon Mar 17 17:29:30 CET 2025


	Board: Qnap TS-433-4G NAS System 4-Bay
	deep-probe: supported due to qnap,ts433
	rockchip-dmc memory-controller.of: Detected memory size: 0x100000000
	netconsole: registered as netconsole-1
	arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware version=
 0x0
	psci psci.of: detected version 1.1
	xHCI xHCI0: USB XHCI 1.10
	ehci fd800000.usb@fd800000.of: USB EHCI 1.00
	ehci fd880000.usb@fd880000.of: USB EHCI 1.00
	rk808 rk8090: chip id: 0x8090
	rk3568-dwcmshc-sdhci fe310000.mmc@fe310000.of: registered as mmc0
	ERROR: rk3568-dwcmshc-sdhci fe310000.mmc@fe310000.of: SDHCI timeout while =
waiting for idle
	WARNING: mmc0: Card's startup fails with -16
	phy6: lane number 0, val 1
	phy6: lane number 1, val 2
	phy6: bifurcation enabled
	mdio_bus: miibus0: probed
	malloc space: 0xafd00000 -> 0xefcfffff (size 1 GiB)
	environment load /dev/env0: No such file or directory
	Maybe you have to create the partition.

	Hit any to stop autoboot:    3
	eth0: 1000Mbps full duplex link detected
	barebox@QNAP TS-433:/ ifup eth0
	WARNING: eth0: No MAC address set. Using random address 22:e8:c9:ad:3e:45
	T T T T T T T T T T T T T T T T T T T T ifup: Connection timed out

I guess the next step is to try 2nd stage booting with U-Boot.

Best regards
Uwe

--tsvc2zfzlnqx33rb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmfYUAEACgkQj4D7WH0S
/k7diwf+Pd7yXSaqLTUIWk0kEszQDjtCXr3733GuAdVRxsHFZ8QUi7sWS+fJ5dzl
U3Y0HpZgnOV44gKT7Q8Wizy63pwUfEsc53pj5nn+mom6UWKmAL6728bpUH7WZXYv
VNKYQDo4GNvFM3W1ZFdY1i3nZwvhZ4geWTzG5Z5EgNSp6/J7ETIcD2F9TZxWE1V5
gn7XRINmEnIjoLyJeK3EUP+Q6LufaFRguH+zPPRCXEw/o4AFWunn95Upivu9aTxR
jqYtRyilI6tyHgQ4uoi0VCHSEAjxx4HsRfV+eBScFhqZ9fFLmJTe8cMtbqbe3qwV
rMXKIMjJSk3Ld6OLuK8NylBQqVKIjA==
=dwXg
-----END PGP SIGNATURE-----

--tsvc2zfzlnqx33rb--


