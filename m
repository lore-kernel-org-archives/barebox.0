Delivery-date: Wed, 10 Jun 2026 13:58:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXHZQ-004KQL-26
	for lore@lore.pengutronix.de;
	Wed, 10 Jun 2026 13:58:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXHZP-0002gU-VL
	for lore@pengutronix.de; Wed, 10 Jun 2026 13:58:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RzCWv2O2YR12K8HcAawuLbNLh7ajhdujZlzOIIBagRE=; b=J+0G3kep55f3pBNAltwuZx37Jq
	nCXMQa9/aL5wd+YF11jEHY29lIcTJwdm726Eq8n8UW5HtUKG9LuBUI7CJmAWRAiDbkoA/4BxlQqj8
	GnnyZstdC11g//MKm3r/p+4ssR1Y/1T9ol4B7vDYjyWtSTq94DGRFJNGe3BKhUBqJdSZWNHLlXM9E
	JUhecQBolbu090fkbxtWfh1CFmZVM0EIkBYuof0ZqDmPkkBDs7KRZVTZyycalsdlnt7wf/3ztOhLw
	n7RXkrFF3hHgyDGTJsYQPYcxOrXv1rWkTnKt1eVIj5tC51Uf0pc3vgc+WksfKpKIzhgmrkFcchi38
	Hy2dErig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHX0-00000007Zxv-3F1i;
	Wed, 10 Jun 2026 11:55:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHWx-00000007Zx0-30RI
	for barebox@lists.infradead.org;
	Wed, 10 Jun 2026 11:55:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wXHWu-0002BX-Gg; Wed, 10 Jun 2026 13:55:32 +0200
Message-ID: <8dfb3266069c6be5293510c70b3f0536ed19e172.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
Date: Wed, 10 Jun 2026 13:55:32 +0200
In-Reply-To: <20260609160939.2032936-1-a.fatoum@barebox.org>
References: <20260609160939.2032936-1-a.fatoum@barebox.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_045535_756714_1350FD9E 
X-CRM114-Status: GOOD (  12.40  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFT] ARM: lib32: bootm: support booting EFI-stubbed
 kernels without EFI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 2026-06-09 at 18:09 +0200, Ahmad Fatoum wrote:
> The bootm_efi_check_image callback implements the global.bootm.efi aware
> handling for EFI-stubbed kernels:
>=20
> =C2=A0 - If no CONFIG_EFI_LOADER support is compiled in, boot normally
> =C2=A0 - If CONFIG_EFI_LOADER=3Dy, consult global.bootm.efi
>=20
> In absence of this callback, the filetype match is taken literally,
> which will just lead to EFI-stubbed kernel images being refused
> outright.
>=20
> Align ARM32 with what ARM64 and RISC-V already do and set
> image_handler::check_image appropriately.
>=20
> Fixes: 0fca24055c57 ("filetype: add new filetype for efi-stubbed ARM zIma=
ges")
> Reported-by: Fabian Pflug <f.pflug@pengutronix.de>

Tested-by: Fabian Pflug <f.pflug@pengutronix.de>

> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
> =C2=A0arch/arm/lib32/bootm.c | 2 ++
> =C2=A01 file changed, 2 insertions(+)
>=20
> diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
> index 4bca29c3fbf8..e94bb979eff9 100644
> --- a/arch/arm/lib32/bootm.c
> +++ b/arch/arm/lib32/bootm.c
> @@ -515,12 +515,14 @@ static int do_bootz_linux(struct image_data *data)
> =C2=A0static struct image_handler zimage_handler =3D {
> =C2=A0	.name =3D "ARM zImage",
> =C2=A0	.bootm =3D do_bootz_linux,
> +	.check_image =3D bootm_efi_check_image,
> =C2=A0	.filetype =3D filetype_arm_zimage,
> =C2=A0};
> =C2=A0
> =C2=A0static struct image_handler barebox_handler =3D {
> =C2=A0	.name =3D "ARM barebox",
> =C2=A0	.bootm =3D do_bootm_linux,
> +	.check_image =3D bootm_efi_check_image,
> =C2=A0	.filetype =3D filetype_arm_barebox,
> =C2=A0};
> =C2=A0


