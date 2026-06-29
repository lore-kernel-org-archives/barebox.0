Delivery-date: Mon, 29 Jun 2026 11:05:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we7vk-00B3wr-1A
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 11:05:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we7vj-00043M-L1
	for lore@pengutronix.de; Mon, 29 Jun 2026 11:05:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=IkKoCuIky3p9j2s9//pSc0/n5ovq35nRrFW0H7cxUpk=; b=IFvBpc9WljqRTInqcRIMzhQQZT
	Apz/RI5lKtIv3bR9BJzlBGpzRgslc3nvHxjFAci2wi5yPgmL4lnK4rCjQh2cDvi1UuXx/pLDKLlR1
	3Pb8AgfDAHC24RWqcFwQbyI7H8VaHUghkwtZ9X6P9cc0CxSJHlg2YxTYXSBWJNCAitKVa0qi1Nav1
	E7/v7Cizl/MqFF52IqDM0KPSD5GMxx8EcchXU4mpq4fZcO1juDdyxonWBtbgb69IaNisCbswnFkgt
	qXw8tqf+SK7yL8AsjZ6Z41uBnX3X2C3uGvBqpAy5+CpJPklLCxL5pwr94LCF4IYP6kv7jorD0Q90L
	iljvpfCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7uj-0000000E64c-1MeY;
	Mon, 29 Jun 2026 09:04:25 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7ug-0000000E646-1aAM
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 09:04:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 449BD20094B;
	Mon, 29 Jun 2026 11:04:20 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1we7ue-005DaQ-0d;
	Mon, 29 Jun 2026 11:04:20 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1we7ue-00000005edp-0RmS;
	Mon, 29 Jun 2026 11:04:20 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@barebox.org>
In-Reply-To: <9f66c07d-b0f4-4a7c-bee3-3b3bf9caca17@barebox.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 09:04:20 +0000
Message-Id: <E1we7ue-00000005edp-0RmS@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_020422_569827_45C83607 
X-CRM114-Status: GOOD (  21.88  )
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

On 2026-06-29 10:51, Ahmad Fatoum wrote:
> Hello Sascha,
>=20
> On 6/29/26 10:47 AM, Sascha Hauer wrote:
> > On 2026-06-26 18:19, Ahmad Fatoum wrote:
> >> QEMU can expose eMMC through the class-compliant sdhci-pci device, but
> >> barebox only had platform SDHCI glue. Add a PCI host driver that maps =
BAR0,
> >> enables bus mastering, initializes the SDHCI core and registers an MCI=
 host.
> >>
> >> This is intentionally small and PIO-based, which is enough for the QEM=
U RPMB
> >> test environment while reusing the common SDHCI helpers.
> >=20
> > Is this comment wrong? The driver depends on HAS_DMA and even calls
> > sdhci_setup_adma().
>=20
> Yes, I had problems getting RPMB access to work with PIO and ADMA fixed
> that and I had not dug deeper.
>=20
> Can you remove that paragraph when applying?
> >> index 4413fd1655aa..d6746fbec28f 100644
> >> --- a/drivers/mci/mci-core.c
> >> +++ b/drivers/mci/mci-core.c
> >> @@ -2942,7 +2942,7 @@ static struct device_node *mci_get_partition_nod=
e(struct device_node *hwnode,
> >>  	struct device_node *np;
> >>  	char partnodename[sizeof("bootx-partitions")];
> >> =20
> >> -	if (index > 8)
> >> +	if (!hwnode || index > 8)
> >>  		return NULL;
> >=20
> > Should this be an extra patch?
>=20
> This is the first non-DT instantiated device and thus there is no DT
> node. I can split this off if you like. The rest of the file seems to
> handle non-existence of a DT node just fine.

Back in the old days non-DT instantiated devices were the normal case,
so 15cc1fa00c ("mci: parse upstream boot/gp partition binding") might
have introduced a regression, so I would prefer to have this as a
separate patch.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


