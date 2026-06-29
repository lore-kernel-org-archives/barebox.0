Delivery-date: Mon, 29 Jun 2026 11:10:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we80L-00B4CK-29
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 11:10:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we80L-0000F8-0L
	for lore@pengutronix.de; Mon, 29 Jun 2026 11:10:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=6WKguJ8ChxgCxyO4uuQTYmDRU6UpsSeuRgB3PQevGhI=; b=tVhMVaxt7b9PZemmxaFcCJtlM1
	4vu5jLjqvGWVvbM1rv+xCsl7s+baxY2cBwA0PeDUCiLW+26G1HjPnaI9rZywqN5RIHE6xPAeZOjhB
	I5xW1ZFVqtkoXOiu6UezwbFG3R0QpAIf023hLlWoj7qFIKQin8ACurI1b3uf4IJwADKaOTczPrKal
	iUa8ytYNUe+naioooqtQklFNrHHjKALY4/aj9LtVlSNV//ume4pxGyzm3rF25/YSZMyAw2MxmIE8h
	4GgQi+xeMj2z3yxy7aoekDgQfTPtUuno3hoc6a6VcLUa/lDfF9xMafKjJyip1tWOpyLU3hMKjD45c
	zaWtZEWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7zR-0000000E6Yh-0JbS;
	Mon, 29 Jun 2026 09:09:17 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7zO-0000000E6Y9-2o8p
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 09:09:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A32092006B4;
	Mon, 29 Jun 2026 11:09:12 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1we7zM-005DfB-1s;
	Mon, 29 Jun 2026 11:09:12 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1we7zM-00000005ejF-21zr;
	Mon, 29 Jun 2026 11:09:12 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@barebox.org>
In-Reply-To: <548b8b37-146b-48c7-b495-b74a8425410c@barebox.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 09:09:12 +0000
Message-Id: <E1we7zM-00000005ejF-21zr@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_020914_859167_3F6DE72B 
X-CRM114-Status: GOOD (  24.21  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 7/9] mci: add PCI SDHCI controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-06-29 11:05, Ahmad Fatoum wrote:
> Hi,
>=20
> On 6/29/26 11:04 AM, Sascha Hauer wrote:
> > On 2026-06-29 10:51, Ahmad Fatoum wrote:
> >> Hello Sascha,
> >>
> >> On 6/29/26 10:47 AM, Sascha Hauer wrote:
> >>> On 2026-06-26 18:19, Ahmad Fatoum wrote:
> >>>> QEMU can expose eMMC through the class-compliant sdhci-pci device, b=
ut
> >>>> barebox only had platform SDHCI glue. Add a PCI host driver that map=
s BAR0,
> >>>> enables bus mastering, initializes the SDHCI core and registers an M=
CI host.
> >>>>
> >>>> This is intentionally small and PIO-based, which is enough for the Q=
EMU RPMB
> >>>> test environment while reusing the common SDHCI helpers.
> >>>
> >>> Is this comment wrong? The driver depends on HAS_DMA and even calls
> >>> sdhci_setup_adma().
> >>
> >> Yes, I had problems getting RPMB access to work with PIO and ADMA fixed
> >> that and I had not dug deeper.
> >>
> >> Can you remove that paragraph when applying?
> >>>> index 4413fd1655aa..d6746fbec28f 100644
> >>>> --- a/drivers/mci/mci-core.c
> >>>> +++ b/drivers/mci/mci-core.c
> >>>> @@ -2942,7 +2942,7 @@ static struct device_node *mci_get_partition_n=
ode(struct device_node *hwnode,
> >>>>  	struct device_node *np;
> >>>>  	char partnodename[sizeof("bootx-partitions")];
> >>>> =20
> >>>> -	if (index > 8)
> >>>> +	if (!hwnode || index > 8)
> >>>>  		return NULL;
> >>>
> >>> Should this be an extra patch?
> >>
> >> This is the first non-DT instantiated device and thus there is no DT
> >> node. I can split this off if you like. The rest of the file seems to
> >> handle non-existence of a DT node just fine.
> >=20
> > Back in the old days non-DT instantiated devices were the normal case,
> > so 15cc1fa00c ("mci: parse upstream boot/gp partition binding") might
> > have introduced a regression, so I would prefer to have this as a
> > separate patch.
>=20
> Fair enough.
>=20
> Should I resend all or just this patch?

Please resend the whole series. Easier to apply for me and likely easier
to handle for you as well.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


