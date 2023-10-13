Delivery-date: Fri, 13 Oct 2023 12:54:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrFoL-006yHu-63
	for lore@lore.pengutronix.de; Fri, 13 Oct 2023 12:54:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrFoH-0006GZ-DH
	for lore@pengutronix.de; Fri, 13 Oct 2023 12:54:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vjVFZNHA2L9YK2Nupgc3pdbE48jcY1J1x4qBRvNSH7k=; b=DOx2oQvRelaBullMSLds/k8HuG
	uf+m/COwYik3clxMn971tegnfxcEHQq2Mj0lIvlrVT2EpnoskZ57pQFQQHwLb+VBEJFXHgphsZFyS
	tn5c3AfT+C2NVujnNaq56dTW/UbpGgy1ZlH5r8fDELPZTNcGfsqqj/gnq7Wgtv609Wa/9YwiNSEOT
	5XlU/n+szJH/tRvk2kcJ1y9Zbnry2BOxZoMZXNdTkAycXMDOE3Dnw4BTHv8kCS9j54r0r1qRRcRRh
	7D7A3EtkSK+r2SwYWyr7rfr6p2c2TJ7qEr5y9Ul6STgxogUACJCbOpy8qRTx/GgQ2w7gVbzzj984+
	uZY2IsQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFn7-003FEz-2F;
	Fri, 13 Oct 2023 10:53:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFn4-003FEf-2W
	for barebox@lists.infradead.org;
	Fri, 13 Oct 2023 10:53:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1qrFn2-00065U-0U; Fri, 13 Oct 2023 12:53:08 +0200
Message-ID: <d6f8e7f2487c9abc1086bbdb6533f9d439370e7f.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>, Barebox List
	 <barebox@lists.infradead.org>
Date: Fri, 13 Oct 2023 12:53:07 +0200
In-Reply-To: <CAP1tNvRpgjbBKxCV94cOHdvFtgwmRz0fRX3B2=-FjYXCY+Z_MA@mail.gmail.com>
References: <CAP1tNvRpgjbBKxCV94cOHdvFtgwmRz0fRX3B2=-FjYXCY+Z_MA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_035310_838096_E59EF02A 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: RK3568 some question
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Freitag, dem 13.10.2023 um 11:12 +0300 schrieb Alexander Shiyan:
> Hello.
>=20
[...]
> I'm not too familiar with the PCI subsystem, but after briefly looking
> at the code,
> I saw in the setup_device() function the line:
> pci_write_config_dword(dev, pci_base_address_0, 0xfffffffe);
> On Linux and u-boot this value is ~0.
> The question is, are we doing the right thing here?

We can change this to be consistent with Linux, but in practice it
probably won't matter, as this bit signifies if the BAR is a memory or
IO resource and is hardcoded in any real device and not dependent on
writing ones to the BAR register to return the correct value.

Regards,
Lucas


