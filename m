Delivery-date: Tue, 14 Apr 2026 13:11:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCbfg-00C3Qa-2B
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 13:11:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCbfg-0004zm-3A
	for lore@pengutronix.de; Tue, 14 Apr 2026 13:11:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OtvnuDW1xH9cQ9fd2qPk+EWB6UoC3k3eeB2n09QlRwM=; b=gmMairu+C60GXTQU4kKR9GxPPZ
	PSVz7K6Y5QspY8YzB09GyqS4D4z3GIWZZdPl40mTZ5WntfBrLQ5jVgd6vjep0WyxEEBlFE/rTH4iC
	drkxC+zeuvisU+SGYggp7urpa5L3PNXNQUOBnpBw7RmLq4usm9JBo1kZgANfEgHHbZcnKDHexkmzF
	yPlihEytaRT2bSfY57XOUKfU29TVFIgLg4frir1F2WUGx+5GOGgHUoJZX0th1UFHVUO7H01Ft37Li
	KcobAcJq7UyvmbjlVtgUtl4aA0deCAinTfX6cVi16gxotJiIAmRWC4DPxwJFHPxmfe++7RvG96Tv7
	hGjx7KFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCbfH-0000000HDET-4AFi;
	Tue, 14 Apr 2026 11:10:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCbfG-0000000HDE8-0QeL
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 11:10:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wCbfE-0004ut-EL; Tue, 14 Apr 2026 13:10:40 +0200
Message-ID: <1bbc8d371d0aacf39039d4f3f2c38c657ba7915a.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>,  BAREBOX <barebox@lists.infradead.org>
Date: Tue, 14 Apr 2026 13:10:40 +0200
In-Reply-To: <012c0d74-7a91-4294-9d7d-06e87ed57b02@pengutronix.de>
References: <20260330-v2026-03-0-topic-soc_bin_id-v1-0-11292f75b196@pengutronix.de>
	 <012c0d74-7a91-4294-9d7d-06e87ed57b02@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_041042_164218_D3E455C1 
X-CRM114-Status: GOOD (  19.04  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] Add additional globalvar for soc_uid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hey,

On Mon, 2026-04-13 at 10:21 +0200, Jonas Rebmann wrote:
> Hi Fabian,
>=20
> On 2026-03-30 14:24, Fabian Pflug wrote:
> > The binary representation was used to compare against,
>=20
> What was compared against soc_uid_bin? Or is it still?

It is still used to compare against, but now also exposed to userspace.

>=20
> tlv_bind_soc_uid?
>=20
> > but never exposed to userspace to query, as the exposed variables
> > could correlate with the value, but did not.
>=20
> The exposed string representation is encoded in a manufacturer-specific
> manner, hence for use in scripting, soc_uid_bin should be accessible in
> a generic representation.
>=20
> > For example on i.MX8MP the byte order was reversed in comparing
> > the return value of barebox_get_soc_uid_bin and $global.soc_uid.
>=20
> This was discussed with regard to i.MX8MP, where the byte order of
> $global.soc_uid and linux' /sys/devices/soc0/serial_number is reversed
> compared to barebox_get_soc_uid_bin.
>=20
> Regardless of whether the current value of barebox_get_soc_uid_bin is
> correct, barebox_get_soc_uid_bin should be used for scripting.

I can't follow you on this one. Scripting in my understanding means barebox=
 commands on the commandline or in boot-
scripts for example.
barebox_get_soc_uid_bin is a C function and not available on the commandlin=
e.

Could you elaborate what you mean here?

Fabian

>=20
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> > Fabian Pflug (2):
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 common: misc: add soc_uid_bin to g=
lobalvar
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 i.MX: HAB: update text for HABV4_C=
SF_UNLOCK_UID
> >=20
> > =C2=A0 arch/arm/mach-imx/Kconfig | 11 +++--------
> > =C2=A0 common/misc.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 8 ++++++--
> > =C2=A0 2 files changed, 9 insertions(+), 10 deletions(-)
> > ---
> > base-commit: 1d386a53086d28a0c4eda138ae9408a418b97b7e
> > change-id: 20260330-v2026-03-0-topic-soc_bin_id-d12a84d7b1b5
> >=20
> > Best regards,


