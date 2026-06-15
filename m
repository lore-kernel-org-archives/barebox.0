Delivery-date: Mon, 15 Jun 2026 08:46:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ15T-0062xn-2c
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 08:46:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ15T-00078D-5p
	for lore@pengutronix.de; Mon, 15 Jun 2026 08:46:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=p/Rve/2h1AZc7+uKFOmDietKG0vDtb5Rn2TTu5ihKWU=; b=XZtuDMZUJ5ODjxKSsRgTqhwJg7
	5eBMpMm2TDliqgTtthv9PNwSvekbjwloXurmYPU9z+KVXRyQUhVkP5mCw/BDOlGeir6Hf1Qa1llsZ
	COpBJncxlNKmAiMUl9iPY3e8hpIGLZOcMsoPH6CCYv0GwCf2/wdxHjGwlHhUbHNc+r1v+34Ti7Ikz
	ZF438w2AkkD0OdpjTmk+UK4kcnWUFcH8GNXvpSO3gB8Wtw+qwRvziFs+yfllU+wUNjoyhUkpstr92
	bQBHWEsECsyugck2VlL/BoBK9GJp/k2D1V+FG+mUYYyugEeQ2otfmyEMCcm6gH0TpHTYdp1MFCNS+
	Iuu39o4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ14A-0000000DhXd-2tA3;
	Mon, 15 Jun 2026 06:45:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ147-0000000DhWd-4AaW
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 06:45:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ145-0006qc-C2; Mon, 15 Jun 2026 08:44:57 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ145-002ono-11;
	Mon, 15 Jun 2026 08:44:57 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ145-00000006Dfc-0ux4;
	Mon, 15 Jun 2026 08:44:57 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
Cc: "Bastian Krause" <bst@pengutronix.de>, barebox@lists.infradead.org, "Marco
 Felsch" <mfe@pengutronix.de>
In-Reply-To: <c3ffa653-e2e8-4b11-a5b4-4a9e1c60e2e9@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 06:44:57 +0000
Message-Id: <E1wZ145-00000006Dfc-0ux4@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_234500_036862_4B3431DC 
X-CRM114-Status: GOOD (  13.39  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: i.MX8MP FRDM: remove memory node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-06-12 16:15, Ahmad Fatoum wrote:
> Hello,
>=20
> On 6/12/26 13:58, Bastian Krause wrote:
> > Since f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles") the esdctl
> > driver is used. This causes the errors below since barebox tries to add
> > the memory twice:
> >=20
> >   imx-esdctl 3d400000.memory-controller@3d400000.of: probe failed: Devi=
ce or resource busy
> >   initcall imx_esdctl_driver_init+0x0/0x2c failed: No such device
>=20
> Can you share the full output? -EBUSY here is not expected for
> the issues you describe. barebox has been tolerant of the same
> memory bank being registered by different means for a number
> of years now.

They are likely not recognized as the same memory bank. The frdm board
has:

        memory@40000000 {
                device_type =3D "memory";
                reg =3D <0x0 0x40000000 0 0xc0000000>,
                      <0x1 0x00000000 0 0x40000000>;
        };

Whereas the esdctl driver will register only a single region.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


