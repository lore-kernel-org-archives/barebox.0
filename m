Delivery-date: Tue, 08 Apr 2025 12:48:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u26V2-009x4u-0Q
	for lore@lore.pengutronix.de;
	Tue, 08 Apr 2025 12:48:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u26V1-0003aG-Hi
	for lore@pengutronix.de; Tue, 08 Apr 2025 12:48:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zt3P/anDzMoxQUuORBHSG8G1zpkCl+KZSZ744VAriYA=; b=f7xzFu32tScmaCWwFccEmGwuJE
	sFNuWqDZOYUhDBYYTbA5Ucciiwn2ipv3+Vp2jJOfmJNAXIiFvxeiXwRSqQ9YICW8sUcZ60SI55hE7
	o3K++LlqNap3auw66Wh2s0go54JP6SpkM3qk2pW/DbNCDaAqOIFIJZZluNRZqkgIAnI0iqw1YGe+o
	FK5U8zBNz4X0RPkLGjp35Gk8c6LvECVHKQzP2lPYRNKlynC8YppDyRxVEEQQp63js4VxW73wAEcUZ
	urCynUvvP9XQRu/0MnaWFWA2qwJ5xxzykpWG71QOeVQhC/9rrbN9c6k+FQ+gpwdKf65B5nh2gyp2Z
	vJ+cWJgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u26Tz-00000003jAJ-15nY;
	Tue, 08 Apr 2025 10:47:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u25ep-00000003Wx7-0x2i
	for barebox@lists.infradead.org;
	Tue, 08 Apr 2025 09:54:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1u25em-00027n-6V; Tue, 08 Apr 2025 11:54:12 +0200
Message-ID: <0eafad113fb0ff1278a216c1083e71d6bae6093b.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Renaud Barbier <Renaud.Barbier@ametek.com>, Barebox List
	 <barebox@lists.infradead.org>
Date: Tue, 08 Apr 2025 11:54:09 +0200
In-Reply-To: <DM5PR07MB35326053D9A1078A2B35A979ECAA2@DM5PR07MB3532.namprd07.prod.outlook.com>
References: <DM5PR07MB35326053D9A1078A2B35A979ECAA2@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_025415_264216_1BD781EB 
X-CRM114-Status: GOOD (  10.91  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: PCI memory mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Renaud,

Am Montag, dem 07.04.2025 um 14:55 +0000 schrieb Renaud Barbier:
> Hello,
> Barebox version: 2024-09
>=20
> I am porting the Linux PCIE driver for Broadcom Cortex-A9 (ARMv7) chip.
> So far I am able to detect the bridge and NVME device attach to it:
>=20
> pci: pci_scan_bus for bus 0
> pci:  last_io =3D 0x00000000, last_mem =3D 0x20000000, last_mem_pref =3D =
0x00000000
> pci: class =3D 00000604, hdr_type =3D 00000001
> pci: 00:00 [14e4:b170]
>=20
> pci: pci_scan_bus for bus 1
> pci:  last_io =3D 0x00000000, last_mem =3D 0x20000000, last_mem_pref =3D =
0x00000000
> pci: class =3D 00000108, hdr_type =3D 00000000
> pci: 01:00 [126f:2263]
> ERROR: pci: last_mem =3D 0x20000000, 16384
> pci: pbar0: mask=3Dffffc004 NP-MEM 16384 bytes
> ...
> pci: class =3D 00000108, hdr_type =3D 00000000
> pci: 01:f8 [126f:2263]
> ERROR: pci: last_mem =3D 0x2007c000, 16384
> pci: pbar0: mask=3Dffffc004 NP-MEM 16384 bytes
> pci: pci_scan_bus returning with max=3D02
> pci: bridge NP limit at 0x20100000
>=20
I highly doubt that your NVMe device actually occupies all those BDF
addresses.

Either you host driver isn't properly reporting bus timeouts on the
PCI_VENDOR_ID config space access, to make it appear like there are
multiple devices on the bus to the topology walk, or more likely from
the symptoms you report, your host driver doesn't properly set up the
DF part of the BDF for the config space requests. In that case the
first device on the bus may correctly answer to all the config space
requests, which again will make it appear like there are multiple
devices, but the endpoint will actually get configured with the BAR
setup from the last "device" on the bus. If you then try to access the
MMIO space of the first device, there is no EP configured to handle the
request, causing a bus abort.

Regards,
Lucas


