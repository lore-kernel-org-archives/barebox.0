Delivery-date: Mon, 12 Aug 2024 17:27:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdWwr-008thx-2m
	for lore@lore.pengutronix.de;
	Mon, 12 Aug 2024 17:27:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdWwr-0001Gj-7j
	for lore@pengutronix.de; Mon, 12 Aug 2024 17:27:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-type:MIME-Version:Subject:Date:Message-ID:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Lq4dMYq7HWmaKrOfkQTDc6Rj4qUMXJSD+HTfBbWzrAg=; b=vLL7MjBjAMesSLw9JBWDAMFgIg
	OkUaLGQX8j5RUYdWXtIBQ8B540QsJE9afLlv9p5DUmhQxvonbAKKHlIpv93GD6sUrt8T0b29sRYCY
	TtSOWVRCKgGt3LNrPOM0q7OEGvROd0qhI1kAfEIzKX83KyB+d9lXhC/omod7n4zZJbG/+nrSmzF5Z
	TJZepfxRjqCWZC1MZ5Tk3pDhuwa5Xt/NH7oawo3bkvJxIMMMiJFc4s+FGKEywfA1wc6rzVqNrzmn4
	BfAJly91xH3XOU1upMI9kKX6gHNaoKDsn5bC2HkuF8fTNZSCSX1pX+0nCNAL3tKG+2pcE+FrBN/iW
	9GR9XjvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdWwI-00000000j5c-1Sqy;
	Mon, 12 Aug 2024 15:26:30 +0000
Received: from mr4.vodafonemail.de ([145.253.228.164])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdWwE-00000000j4c-12SO
	for barebox@lists.infradead.org;
	Mon, 12 Aug 2024 15:26:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arcor.de;
	s=vfde-mb-mr2-23sep; t=1723476378;
	bh=Lq4dMYq7HWmaKrOfkQTDc6Rj4qUMXJSD+HTfBbWzrAg=;
	h=From:To:Message-ID:Date:Subject:Content-type:From;
	b=T4TvVlMbDhkxm63+06KVNE2xRoyoghQ+Gk/ezGFG4I+Rp8WCdYXzMN7uKmOoR9Loo
	 e0G3AzoJ3mQExMWvb+X8VmttxWRoTTRk6Ayyp2NlNmcS1CJtPIfuvtT1m6G3Bks4w4
	 wjKFIFUp/ZQHfsR9xK5rRDW4rgSvlDWplS86K8cY=
Received: from mp100.fra-mediabeam.com (unknown [10.0.0.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mr4.vodafonemail.de (Postfix) with ESMTPS id 4WjJJV4Y9dz1xxV;
	Mon, 12 Aug 2024 15:26:18 +0000 (UTC)
Received: from mailbackend01 (unknown [10.0.0.2])
	by mp100.fra-mediabeam.com (Postfix) with ESMTP id 4WjJJV3j3dz2xc9;
	Mon, 12 Aug 2024 15:26:18 +0000 (UTC)
Received: from [212.43.72.26]
	by mail.vodafone.de via HTTP; Mon, 12 Aug 2024 17:26:17 +0200
From: giorgio.nicole@arcor.de
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>,	
   barebox@lists.infradead.org
Message-ID: <c0c7c38e7f7d49c6ba08f8e43259e0d2@arcor.de>
Date: Mon, 12 Aug 2024 17:26:17 +0200
X-Priority: 3
MIME-Version: 1.0
Content-type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-purgate-type: clean
X-purgate: clean
X-purgate-size: 2218
X-purgate-ID: 155817::1723476378-5C3DD11D-B998B914/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_082626_743129_D1EECFEB 
X-CRM114-Status: GOOD (  17.28  )
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
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MALFORMED_FREEMAIL,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: AW: Re: barebox on EFI bios and secure boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hallo Ahmad,


thank you for the answer,


>> I use barebox to boot a linux kernel on an Intel atom based PC with =
an EFI bios and this just works=2E
>>=20
>> Now I wanted to configure the bios to enable the secure boot mode: t=
his means I tried to write some
>> EFI variables (db, dbx, KEK, PK); for this I used the efitools utils=
 (efi-updatevar for example) but it didn't
>> worked: I always get an 'Invalid argument' error=2E

> In this case, neither barebox or the kernel are signed, right?

yes, I can write the efi vars with the keys and certificates with the B=
ios gui and then enable the secure boot: then
the bios will only load properly signed bootloader or kernel images=2E
This already works=2E

>> After some unsuccessful tries I booted the linux kernel directly fro=
m the bios, without barebox and in this
>> case the efi-updatevar tool worked as expected; so I suppose that st=
arting barebox has some kind of effect
>> on the persistent store for the efi vars=2E

> I am not familiar with UEFI secure boot, so I don't know if there is =
some lock
> down happening here or what could cause this=2E

Experimenting with the barebox configuration / source code (2024=2E8=2E=
0) I found that if I disable the PCI bus support
in the barebox configuration (CONFIG_PCI) then my Invalid argument prob=
lem disappears=2E

Then I tried to follow the pci bus initialization in the barebox source=
 at: drivers/pci/pci=2Ec and found that in the function
pci_scan_bus(), in the for loop at devfn =3D=3D 105 (0x69) there appear=
 a device with IDs 8086:5a94: as soon as I include
this device in the enumeration I have my Invalid argument problem, if I=
 skip the device, with a hacky:

if (devfn =3D=3D 105) continue;

at the beginning of the loop then the problem disappears=2E

It seems something very special actually and I'm not really a guru abou=
t PCI initialization=2E=2E=2E

I just hope someone with more experience on the matter can suggest a so=
lution here; maybe the device should
really be skipped (but not with my hacky if condition)=2E

If requested I could provide some more detail about the device=2E=2E=2E

thanks again,
giorgio




