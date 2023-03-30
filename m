Delivery-date: Thu, 30 Mar 2023 16:19:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pht86-002nOK-9E
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 16:19:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pht85-00084P-Pj
	for lore@pengutronix.de; Thu, 30 Mar 2023 16:19:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VIuTw70K79vcq1gnLpiBj8nNaUpSzl3fw6UWMyV6QXc=; b=Vi0nB2sWAhuxYxP4UV9NmkVaxX
	u7DpUsPlHfBHfftIWhm3DelDXgg7aepJFwpbCQC1q+wiiGCFYQ5z2a+JZKxGppbOr4OXK0ThEr36/
	Huwrr0UgObgp5LUlcu0Yp+ThTsZGb56+PSX7NAbtpdM+zn/AkppX5/yqok1+rV2186Z562qsPpnVW
	ooii6QhaSZLtEwdq4PN8juJNWsxj12Eok1sAR/X/phgrH6eHGY5VXwPVMijmIVJVICYrDIrUmY9gx
	ZZb/Zjuup4zDTM3T3M0t9XCROXtkHBOuQB62GCuXcXwfC4XZ4QCfL5gvk6Ho35q4BSkOurrlT4Skg
	bYBErNsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pht6q-00414t-2z;
	Thu, 30 Mar 2023 14:18:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pht5v-0040Po-0z
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 14:17:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1pht5p-0007Yv-TC; Thu, 30 Mar 2023 16:17:33 +0200
Message-ID: <6bdf136861036d5c9362360db82ea153d576ec3c.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Renaud Barbier <Renaud.Barbier@ametek.com>, Ahmad Fatoum
	 <a.fatoum@pengutronix.de>, Barebox List <barebox@lists.infradead.org>
Date: Thu, 30 Mar 2023 16:17:32 +0200
In-Reply-To: <BL0PR07MB566562459F73E606BF3BB629EC8E9@BL0PR07MB5665.namprd07.prod.outlook.com>
References: 	<BL0PR07MB5665003604A904B8AFBEB466EC8E9@BL0PR07MB5665.namprd07.prod.outlook.com>
	 <9b5975a7-8b1d-0861-ce01-9206a3ddfc7d@pengutronix.de>
	 <BL0PR07MB566562459F73E606BF3BB629EC8E9@BL0PR07MB5665.namprd07.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3 (3.46.3-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_071739_349231_243C4C75 
X-CRM114-Status: GOOD (  18.61  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: LS1021A performance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Renaud,

Am Donnerstag, dem 30.03.2023 um 13:31 +0000 schrieb Renaud Barbier:
>=20
> =20
> > Can you compare SHA256 instead and see if the difference is still as st=
ark?
> > Make sure that CONFIG_DIGEST_SHA256_ARM is enabled.
> The SHA256 is enabled. SHA256 on a 1 MB file:
> Barebox: 843ms
> Linux:=20
> [root@openware]# time sha256sum /tmp/mtd0
> eef67a3327e3eaa50ee7b1dad87901465f00d76a6308e360a2fedab82c79f493  /tmp/mt=
d0
>=20
> real    0m0.059s
> user    0m0.056s
> sys     0m0.001s
>=20
> On another note, the boot loader using the LS1021A is much slower than us=
ing the PPC P1014.
> I compare those two as we used the LS1021A as a replacement for P1014 on =
a board (same peripherals, same boot sequence)
> The P1014 reach the prompt in 200ms while the LS1021 takes 700ms.
>=20
> Also, I noticed that the pageflags is different for the DDR memory on Bar=
ebox and Linux as seen by the Lauterbach:
> Barebox: write-back/no allocate
> Linux : Inner:write-back/allocate outer: write-back/allocate
> Could that mean the L2 cache Is not used?
> >=20
> > Do barebox and Linux run at the same CPU frequency?
> According to the Lauterbach, clock ratio have not changed in the clocking=
 registers
> >=20

As the LS1021A is based on a Cortex A7 your board lowlevel init needs
to call cortex_a7_lowlevel_init() for the caches to work properly.

It's probably a good idea to add a ls1021 lowlevel init function which
calls both of those functions together, like
imx6ul_cpu_lowlevel_init().

Regards,
Lucas

> > Cheers,
> > Ahmad
> >=20
> > >=20
> > > Cheers,
> > > Renaud
> > >=20
> > >=20
> > >=20
> > >=20
> >=20
> > --
> > Pengutronix e.K.                           |                           =
  |
> > Steuerwalder Str. 21                       |
> > https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!D
> > 4uFepgqngTTHamr_7tlQeQoRJqSLL8npxTFBWFF-
> > kjpZuHgzi1quS6EE1ecjCKr_O_FJGPfkAnWXQyfONKJxqgrtQQ$   |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0  =
  |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |
>=20



