Delivery-date: Mon, 21 Mar 2022 23:19:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWQMo-001qcm-K5
	for lore@lore.pengutronix.de; Mon, 21 Mar 2022 23:19:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWQMq-0007uR-MM
	for lore@pengutronix.de; Mon, 21 Mar 2022 23:19:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Pc17pUJ9Q8HfMe41ULKK/C0tbuuXnlZ1APVrwfJUIc=; b=3PvTjDz7w5cM+sB7zQVDIv8+cw
	v7GWpXqr5f0ZFExdWTrJ9eQ641JaGbrczwZqKow0U+qpixwR2g8bR9YXLggqpqTI2TZobgt1gvFh5
	tv4eUoq1fzv7w15yXUV9NfpVMLFV1nucYdWtYCDG7NqmaFphG7QoE8Kpop+pdo0Hbttg4stHNA9Sv
	rwsUMCdQm07W+myIBRDH4NvxUeYCFk8Ryko+0v3OzUvT5vbFwf+0zhQ+81K9S2WP0dexUv8QRuXE+
	ZUgVRBeIQ6mL1dK2/uU/j5YGX3xLiqkkuMGpDizBpuC6T4ax3sGMADCj7D5PHjBxpufxLtjo8h72o
	7k+jChnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWQLB-009DN4-E8; Mon, 21 Mar 2022 22:17:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWQL6-009DM5-Gk
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 22:17:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>)
 id 1nWQL0-0007qB-Io; Mon, 21 Mar 2022 23:17:18 +0100
Received: from mgr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>)
 id 1nWQKz-0004fL-Qz; Mon, 21 Mar 2022 23:17:17 +0100
Date: Mon, 21 Mar 2022 23:17:17 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20220321221717.GJ11246@pengutronix.de>
References: <20201221003251.83042-1-ahmad@a3f.at>
 <20201221003251.83042-2-ahmad@a3f.at>
 <20210106100543.GO19063@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20210106100543.GO19063@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 23:13:44 up 101 days,  6:59, 52 users,  load average: 0.07, 0.12,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_151724_578192_A6376459 
X-CRM114-Status: GOOD (  25.00  )
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
Content-Type: multipart/mixed; boundary="===============3540469262916358971=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] fixup! usb: dwc2: Add support for optional usb phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============3540469262916358971==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fKov5AqTsvseSZ0Z"
Content-Disposition: inline


--fKov5AqTsvseSZ0Z
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ahmad!

On Wed, Jan 06, 2021 at 11:05:43AM +0100, Sascha Hauer wrote:
>On Mon, Dec 21, 2020 at 01:32:50AM +0100, Ahmad Fatoum wrote:
>> Linux doesn't seem to enforce a fixed order between phy_init and
>> phy_power_on. The Linux dwc2 driver does power_on and then phy_init,
>> which is the inverse of what barebox is currently doing.
>>
>> The PHYs normally used with dwc2 are written with this in mind.
>> For example, our stm32-usbphyc driver fails to disable:
>>
>>   ERROR: stm32-usbphyc 5a006000.usbphyc@5a006000.of: PLL not reset
>>   ERROR: phy1: phy exit failed --> -5
>>
>> Because Linux does exit -> power_off, but barebox does power_off ->
>> exit.
>>
>> Issue was raised upstream:
>> https://lore.kernel.org/lkml/6cd01e79-fdc0-3bd4-32b5-a85142533f8a@pengut=
ronix.de/T/#t
>>
>> Until this is settled, swap the order to follow what Linux does.
>> This is suboptimal, because it means controller drivers have different
>> order of the operations and that you can't combine arbitrary PHYs and
>> controllers, but it seems unlikely we will support combinations that
>> aren't supported by Linux in the first place anyway.
>
>This is valuable information and I don't want it to be lost, so instead
>of applying this as a fixup I rewrote the subject to:
>
>usb: dwc2: swap order of phy_init and phy_power_on to what Linux does
>
>and applied it as a separate patch.

With this patch applied, some stm32mp1 do seem to timeout when
addressing the core.

WARNING: dwc2 49000000.usb-otg@49000000.of: dwc2_core_reset: Timeout! Waiti=
ng for Core Soft Reset
ERROR: dwc2 49000000.usb-otg@49000000.of: probe failed: Connection timed out

When I revert this patch. Everything works fine again.

Is it possible that we can revert it in mainline now?
How can I reproduce the case this was fixing in the first place?

Rergards,
Michael

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--fKov5AqTsvseSZ0Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAmI4+WsACgkQC+njFXoe
LGSl4RAAqjFNgX5bneos7S1rp+Oi69Le8gIk1mBFgtcheXtD6nObKliHF/XwjCnH
v3affkFp10aPy1J1nysNhuubMU7CZ+GkDHanKB3oioDxc2IoaKWR13nv1N7bXQHS
xSVgJlZ0RkMKXobVYhXl85l8rXA3rSBq/8KWDN/EiiKyKqSWPImLgE/6SMSjp6yS
ozOILcq6OmOyTCCu6cazCvAdPr3khnauIZHw5Bn/tembUc79/wse5x6HRh0d9xcn
M9Cxf8n2zmDLKhd+bYUPyVHRijLbM3KObkz1Oxy9QRqnm5fK3CYPI396AFYhrNnz
9ra9f6B1OxjmR4RFUejPtslq80GAdNZhuIBITSzLahU5wZfTdZss9iZV9QM9MD45
khLRuLpTdAoZq+/iBiW9vIzhamr4x0YtpsiMrVIUugikW1uh39RUr+NKfngWohF8
m0OCENdMneGrFIkLIYzhIfnLz45e0NgzgwGOKQh8gYxgw4ouqXtNOOdAn8G+wKRb
OPVNUbHPcmQow14zi0apSA33R/sWGgf5dRjCMmqj0u6759Kc4Py6DYL2jlacxJ0u
PKXI710XAb9x7j4hioyj9ZTjd3zx33MxOygzqE1PYr6HmDI5oQTN9DAWzKSX48Eu
jNMFUXhgQGlMINeJuUvYVSfwGDjEl/ivrYbnnQdSpc5RZuuMnu4=
=fCbr
-----END PGP SIGNATURE-----

--fKov5AqTsvseSZ0Z--


--===============3540469262916358971==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3540469262916358971==--


