Delivery-date: Thu, 07 May 2026 10:38:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKuFW-001u4K-1r
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 10:38:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKuFU-0000it-75
	for lore@pengutronix.de; Thu, 07 May 2026 10:38:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=3THkTXF3yQocTbtUFVxk2ksLK94GWoNiS/BQVmalUL0=; b=RGZ8igJHOshi6SY11RihoPjgly
	QQaiXFpxQ3WwyE+Dbsy4vXfmDEUqIzmHPOOoutPHi24mLZ5gpSVTaY3oUKbDDn9L8bSoXpRcj0Xnb
	O3KWoUVnIWxOMquiAnvRYoW6QBIGV6EcnIdv5xrVSKLtwy5EPvbUn0THmCf6YXCqCKRON7GrPgcKD
	oDBW6MbmdzxYEWu3VAQ7Mhz02cev3Iu1s+woeBQRImQMPAb4K6AJ/HkUBQFHwCdbTkHmJjvWEVFe6
	p6y4ORXE2NUyWoNNLrnIoH1ve672CJHLUWL8zl4DPoXwtjx/gyTDCPxD/zf0P0m48nRSlQ7EFoqqv
	dSlTAW6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKuE6-00000003CIl-06Va;
	Thu, 07 May 2026 08:36:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKuE3-00000003CI9-1ov0
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 08:36:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wKuE1-0008Hn-HA; Thu, 07 May 2026 10:36:53 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wKuE0-000tAM-2t;
	Thu, 07 May 2026 10:36:53 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wKuE1-00000005iw8-104H;
	Thu, 07 May 2026 10:36:53 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <7cc7c207-bc4f-43b9-a9dc-4939316c4169@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 07 May 2026 08:36:53 +0000
Message-Id: <E1wKuE1-00000005iw8-104H@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_013655_476303_967F365A 
X-CRM114-Status: GOOD (  12.80  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/6] mci: sdhci: rockchip: officially support HS200
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-07 10:15, Ahmad Fatoum wrote:
> Hi,
>=20
> On 5/7/26 9:02 AM, Sascha Hauer wrote:
> > "officially" is meant in the way that even with the SDHCI_QUIRK2_BROKEN=
_HS200
> > flag set the driver already does HS200 when the device tree mandates it.
>=20
> Shouldn't we change mci-core.c to evaluate MMC_CAP2_HS200 then?

It already does. The problem is that when the device tree has the
"mmc-hs200-1_8v" property than it's authorative. The SDHCI_QUIRK2_BROKEN_HS=
200
only prevents the MMC_CAP2_HS200 from being set based on other caps, but
it doesn't clear MMC_CAP2_HS200 when SDHCI_QUIRK2_BROKEN_HS200 is set.
The behaviour is the same as in Linux, so I hesitated from changing this.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


