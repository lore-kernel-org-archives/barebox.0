Delivery-date: Thu, 04 May 2023 09:11:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puT7r-004HOE-Q0
	for lore@lore.pengutronix.de; Thu, 04 May 2023 09:11:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puT7p-00078I-TG
	for lore@pengutronix.de; Thu, 04 May 2023 09:11:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kDMFm2qOgWTfaE4ijVvH+Wqrp+EBfogKxlYVuzfgfJA=; b=ZH61WNTpuKQw/g0xJw88CE2Nte
	MncKQU71beHDRsJ4t1t5FkuPDcinbSOgAVLuwHjK097YekbllNSLWvEb2iOqgQnN82sNM3wz7SwAy
	IL+nZTqICBobupyVqEYxx7xxmlOhXKegsiMN/3P3DKiXquyWhcStKI5Fm66YgHdFQLI+hm2CtmJGb
	4V3XD143NHofjxb1d40hiKx0hnHYbxjgHHfh7KzxmrG/D/3AyfaQIrsnU3qn/GljgM+8tIFsxoaNK
	VxD4SVU68ou+PpNW4aOQewjin0TTTVFTKC3HTFiB5kcxbLYH59To5yg9K5R1QlRnDJSJsKshigxR1
	5W0UGtaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puT6b-006qyg-04;
	Thu, 04 May 2023 07:10:21 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puT6X-006qwF-1V
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 07:10:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=kDMFm2qOgWTfaE4ijVvH+Wqrp+EBfogKxlYVuzfgfJA=; b=gPZ/Orkjmzg3kSkdvQFcTM/P+8
	iM59SotCw4kiFM6Xswkz4/73NYG1hK9YcA/G5YWBnDfpghbZBEH3cJ/8MaPpj2y96dzr0At/cq/gN
	aw279fsgy9YmAFxujKbD227ie9yORKYUH6ujqQdAhRYe/oYSH+N5/Cvs7aTGqySQPKSx668KSv0rF
	aBI6gyPsLll2UpDvcuhc5PaOlP8qcfqrgnWSWLMonRHJ+OcgSPBmgAS5QeF6xOYuB+wcmwZm6ASp+
	br88+nzHIGurWlkA3HmzQPXkVV/W9rjeG7bwW3d6MIrQ1y4gBJd2MUKus7mzunwTsYciwdYz3iP+Y
	5Jxli4nw==;
Received: from p200300ccff0d59001a3da2fffebfd33a.dip0.t-ipconnect.de ([2003:cc:ff0d:5900:1a3d:a2ff:febf:d33a] helo=aktux)
	by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <andreas@kemnade.info>)
	id 1puT6P-0000Bo-8j; Thu, 04 May 2023 09:10:09 +0200
Date: Thu, 4 May 2023 09:10:07 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Juergen Borleis <jbe@pengutronix.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20230504091007.76bfa20a@aktux>
In-Reply-To: <9230126707a1938c0dee22efa0b3fbaab0098c7e.camel@pengutronix.de>
References: <20230426210936.7531e177@aktux>
	<20230427073630.GT13543@pengutronix.de>
	<9230126707a1938c0dee22efa0b3fbaab0098c7e.camel@pengutronix.de>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.24; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_001017_719717_D0941A8B 
X-CRM114-Status: GOOD (  19.61  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: rn5t618 vs. rn5t568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Tue, 02 May 2023 10:37:08 +0200
Juergen Borleis <jbe@pengutronix.de> wrote:

> Hi,
>=20
> Am Donnerstag, dem 27.04.2023 um 09:36 +0200 schrieb Sascha Hauer:
> > On Wed, Apr 26, 2023 at 09:09:36PM +0200, Andreas Kemnade wrote: =20
> > > Hi,
> > >=20
> > > just looked a bit around in the source and stumbled across drivers/mf=
d/rn5t568.c
> > >=20
> > > It contains
> > > =C2=A0* MFD core driver for Ricoh RN5T618 PMIC
> > >=20
> > > but the filename is rn5t568.c That is very confusing.
> > > =C2=A0a compatible ricoh,rn5t568 (but 567) does not exist in the kern=
el. =20
>=20
> 567 and 568 are pin compatible. As far as I know the 568 has some fixed O=
TP
> settings which are used after reset. Depending on the type extension (C, =
S, AD=E2=80=A6)
> the I=C2=B2C address differs and the default output voltages.
>=20
> > > So which chip this is really about? Did not analyse things deeper yet.
> > >=20
> > > I am also curious because I wrote most stuff in the kernel about the =
rn5t618/rc5t619. =20
> >=20
> > J=C3=BCrgen had to support the rn5t568 which is not yet supported in Li=
nux.
> > He took the Kernel rn5t618.c driver and adjusted it accordingly. J=C3=
=BCrgen
> > can't remember exactly, but he said the chips are quite similar. =20
>=20
> Due to the support of the 567 variant it is already supported in the kern=
el.
>=20
hmm, but if you do not share dt compatibles, you need to maintain different
devicetrees in kernel vs. barebox. I thought you try to keep them in sync as
much a possible. Also in mainline kernel the watchdog does not have its own
device tree node.

Regards,
Andreas


