Delivery-date: Sun, 26 Mar 2023 10:37:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pgLsU-00FCqL-NB
	for lore@lore.pengutronix.de; Sun, 26 Mar 2023 10:37:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pgLsU-0006sr-81
	for lore@pengutronix.de; Sun, 26 Mar 2023 10:37:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3GWRM0u2C53fGKW1iJnD5hK5y0YDsw2lQEeHt+OThkk=; b=4qmbOCVYfwMaTyAkMOGHg2O5AU
	53BE/gmiKM2YXSD0Pwgg2YichKc9BaDRv6jwCORgnVwmMbVMuCdhK2D2MP0eqEhilbekNMOqsRtbq
	trwexa9lrmtLK310uls52/sazLpMq+w1o6O0lvnggcgRw/w9m+Yyb08bZ0p9W39TuyLYdeTM03Z9p
	qCKVhIHDAvKfcbz6us7ymGlJslP1kufn+muiuOq6JjrhuAuUdJYBuOggn4sCy8rsNG0/B+XOFY6LZ
	NrPmcsaA+yeaaBbk3zqqTtZW7ec60MkLBPpR+5e7SJA+sd1nB0XfYL9ama5qw/NJ7LyDgDDH0DAUn
	uNo3wdhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgLrU-008Ben-2m;
	Sun, 26 Mar 2023 08:36:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgLrR-008Be6-0h
	for barebox@lists.infradead.org;
	Sun, 26 Mar 2023 08:36:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1pgLrP-0006gw-Pj; Sun, 26 Mar 2023 10:36:19 +0200
Message-ID: <d4d11e6d1eaff10c305a8219b2a42882f11d86f7.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List
	 <barebox@lists.infradead.org>
Date: Sun, 26 Mar 2023 10:36:19 +0200
In-Reply-To: <20230324140327.2154039-4-s.hauer@pengutronix.de>
References: <20230324140327.2154039-1-s.hauer@pengutronix.de>
	 <20230324140327.2154039-4-s.hauer@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_013621_261880_0AAD62A7 
X-CRM114-Status: GOOD (  15.57  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] ARM: Rockchip: Add rk3568 specific barebox entry
 function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Fri, 2023-03-24 at 15:03 +0100, Sascha Hauer wrote:
> Add a rk3568 specific barebox entry function to simplify board
> code.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> =C2=A0arch/arm/mach-rockchip/atf.c | 22 ++++++++++++++++++++++
> =C2=A0include/mach/rockchip/atf.h=C2=A0 |=C2=A0 2 ++
> =C2=A02 files changed, 24 insertions(+)
>=20
> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-
> rockchip/atf.c
> index 93025faf68..a7d626226e 100644
> --- a/arch/arm/mach-rockchip/atf.c
> +++ b/arch/arm/mach-rockchip/atf.c
> @@ -5,6 +5,9 @@
> =C2=A0#include <mach/rockchip/atf.h>
> =C2=A0#include <elf.h>
> =C2=A0#include <asm/atf_common.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/rockchip/dmc.h>
> +#include <mach/rockchip/rockchip.h>
> =C2=A0
> =C2=A0static unsigned long load_elf64_image_phdr(const void *elf)
> =C2=A0{
> @@ -69,3 +72,22 @@ void rk3568_atf_load_bl31(void *fdt)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rockchip_atf_load_bl31(RK=
3568, rk3568_bl31_bin,
> rk3568_op_tee_bin, fdt);
> =C2=A0}
> +
> +void __noreturn rk3568_barebox_entry(void *fdt)
> +{
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned long membase, memsize=
;
> +
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0membase =3D RK3568_DRAM_BOTTOM=
;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memsize =3D rk3568_ram0_size()=
 - RK3568_DRAM_BOTTOM;
> +
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (current_el() =3D=3D 3) {
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0setup_c();
> +
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0rk3568_lowlevel_init();
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0rk3568_atf_load_bl31(fdt);

At least on my board I have to replace the fdt with a NULL pointer to
get the downstream TF-A to work. What is the intention for barebox
here? Do we want to support both upstream and downstream? Or do we need
an fdt size check in the PBL to decide whether we want to pass the
pointer?

> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> +
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0barebox_arm_entry(membase, mem=
size, fdt);
> +}
> diff --git a/include/mach/rockchip/atf.h
> b/include/mach/rockchip/atf.h
> index e5d55af3d7..e1e68825d1 100644
> --- a/include/mach/rockchip/atf.h
> +++ b/include/mach/rockchip/atf.h
> @@ -28,4 +28,6 @@ static inline void rk3568_atf_load_bl31(void *fdt)
> { }
> =C2=A0#endif
> =C2=A0#endif
> =C2=A0
> +void __noreturn rk3568_barebox_entry(void *fdt);
> +
> =C2=A0#endif /* __MACH_ATF_H */

Best regards,
Rouven Czerwinski


